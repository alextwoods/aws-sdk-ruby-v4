# frozen_string_literal: true

module AWS::SDK::SSOOIDC
  # A refreshing identity provider that provides an HTTP Bearer Identity from
  # SSOOIDC. The SDK does not manage refreshing of the token value, but this
  # can be done by running `aws login` with the correct profile.
  #
  #     # You must first run aws sso login --profile your-sso-profile
  #     provider = AWS::SDK::SSOOIDC::TokenProvider.new(
  #       sso_region: "'s-east-1',
  #       sso_session: 'your-sso-session'
  #     )
  #     code_catalyst = AWS::SDK::CodeCatalyst::Client.new(
  #       http_bearer_provider: provider
  #     )
  class TokenProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

    # Raised when SSO Token is invalid
    class InvalidSSOToken < RuntimeError; end

    # @api private
    SSO_LOGIN_GUIDANCE =
      'The SSO session associated with this profile has expired or is ' \
      'otherwise invalid. To refresh this SSO session, run `aws sso login` ' \
      'with the corresponding profile.'

    # Initializes an instance of TokenProvider using a profile.
    def self.from_profile(config, options = {})
      profile = options[:profile] || config[:profile]
      profile_config = AWS::SDK::Core.shared_config.profiles[profile]
      return unless profile_config&['sso_session']

      sso_session_cfg = AWS::SDK::Core::SharedConfig.sso_session(
        AWS::SDK::Core.shared_config,
        cfg[:profile],
        profile_config['sso_session']
      )
      new(
        sso_region: sso_session_cfg['sso_region'],
        sso_session: profile_config['sso_session']
      )
    end

    # @param [String] :sso_region The AWS region where the SSO directory
    #   for the given sso_session is hosted.
    # @param [String] :sso_session The SSO Session used for fetching this token.
    # @param [AWS::SDK::SSOOIDC::Client] :client (Client.new)
    def initialize(sso_region:, sso_session:, client: nil)
      @sso_region = sso_region
      @sso_session = sso_session
      @client = client || AWS::SDK::SSOOIDC::Client.new(
        region: @sso_region,
        credentials_provider: nil
      )
      super()
    end

    # @return [AWS::SDK::SSOOIDC::Client]
    attr_reader :client

    private

    EXPIRATION_WINDOW = 5 * 60

    def refresh(_properties = {})
      # token is valid and not in refresh window - do not refresh it.
      return if @identity&.expiration && !near_expiration?(EXPIRATION_WINDOW)

      # token may not exist or is out of the expiration window
      # attempt to refresh from disk first
      # another process/application may have refreshed already
      token_json = read_cached_token
      @identity = Hearth::Identities::HTTPBearer.new(
        token: token_json['accessToken'], expiration: token_json['expiresAt']
      )
      return if @identity&.expiration && !near_expiration?(EXPIRATION_WINDOW)

      # The token is expired and needs to be refreshed
      attempt_refresh(token_json) if can_refresh_token?(token_json)

      return unless !@identity.expiration || @identity.expiration < Time.now

      # Token is hard expired, raise an exception
      raise InvalidSSOToken, 'Token is invalid and failed to refresh.'
    end

    # attempt to refresh the token
    # does not raise an error on failures
    def attempt_refresh(token_json)
      current_time = Time.now
      resp = @client.create_token(
        grant_type: 'refresh_token',
        client_id: token_json['clientId'],
        client_secret: token_json['clientSecret'],
        refresh_token: token_json['refreshToken']
      )
      token_json['accessToken'] = resp.data.access_token
      token_json['expiresAt'] = current_time + resp.data.expires_in
      @identity = Hearth::Identities::HTTPBearer.new(
        token: token_json['accessToken'],
        expiration: token_json['expiresAt']
      )

      if resp.data.refresh_token
        token_json['refreshToken'] = resp.data.refresh_token
      else
        token_json.delete('refreshToken')
      end

      update_token_cache(token_json)
    rescue StandardError
      # refresh has failed, continue attempting to use the token
      # if its not hard expired
    end

    def read_cached_token
      cached_token = Hearth::JSON.parse(File.read(sso_cache_file))
      # validation
      unless cached_token['accessToken'] && cached_token['expiresAt']
        raise ArgumentError, 'Missing required field(s)'
      end

      cached_token['expiresAt'] = Time.parse(cached_token['expiresAt'])
      cached_token
    rescue Errno::ENOENT, Hearth::JSON::ParseError, ArgumentError
      raise InvalidSSOToken, SSO_LOGIN_GUIDANCE
    end

    def update_token_cache(token_json)
      cached_token = token_json.dup
      cached_token['expiresAt'] = cached_token['expiresAt'].iso8601
      File.write(sso_cache_file, Hearth::JSON.dump(cached_token))
    end

    def sso_cache_file
      sso_session_sha1 = OpenSSL::Digest::SHA1.hexdigest(
        @sso_session.encode('utf-8')
      )
      File.join(
        Dir.home,
        '.aws', 'sso', 'cache', "#{sso_session_sha1}.json"
      )
    rescue ArgumentError
      # Dir.home raises ArgumentError when ENV['home'] is not set
      raise ArgumentError,
            "Unable to load sso_cache_file: ENV['HOME'] is not set."
    end

    # return true if all required fields are present
    # return false if registrationExpiresAt exists and is later than now
    def can_refresh_token?(token_json)
      if token_json['clientId'] &&
         token_json['clientSecret'] &&
         token_json['refreshToken']

        !token_json['registrationExpiresAt'] ||
          Time.parse(token_json['registrationExpiresAt']) > Time.now
      else
        false
      end
    end
  end
end
