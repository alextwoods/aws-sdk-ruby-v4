# frozen_string_literal: true

module AWS::SDK::Core
  # TODO
  class SSOCredentialsProvider
    include CredentialProvider

    # @api private
    SSO_REQUIRED_OPTS = %i[
      sso_account_id
      sso_region
      sso_role_name
      sso_start_url
    ].freeze

    # @api private
    SSO_LOGIN_GUIDANCE =
      'The SSO session associated with this profile has '\
      'expired or is otherwise invalid. To refresh this SSO session run '\
      '`aws sso login` with the corresponding profile.'

    PROFILE = proc do |cfg|
      return unless sso_loaded?

      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if shared_config[:sso_start_url] &&
         shared_config[:sso_region] &&
         shared_config[:sso_account_id] &&
         shared_config[:sso_role_name]
        new(
          sso_start_url: shared_config[:sso_start_url],
          sso_region: shared_config[:sso_region],
          sso_account_id: shared_config[:sso_account_id],
          sso_role_name: shared_config[:sso_role_name]
        )
      end
    end

    # @option options [required, String] :sso_account_id The AWS account ID
    #   that temporary AWS credentials will be resolved for
    #
    # @option options [required, String] :sso_region The AWS region where the
    #   SSO directory for the given sso_start_url is hosted.
    #
    # @option options [required, String] :sso_role_name The corresponding
    #   IAM role in the AWS account that temporary AWS credentials
    #   will be resolved for.
    #
    # @option options [required, String] :sso_start_url The start URL is
    #   provided by the SSO service via the console and is the URL used to
    #   login to the SSO directory. This is also sometimes referred to as
    #   the "User Portal URL"
    #
    # @option options [SSO::Client] :client Optional `AWS::SDK::SSO::Client`.
    #   If not provided, a client will be constructed.
    def initialize(options = {})
      missing_keys = SSO_REQUIRED_OPTS.select { |k| options[k].nil? }
      unless missing_keys.empty?
        raise ArgumentError, "Missing required keys: #{missing_keys}"
      end

      @sso_start_url = options.delete(:sso_start_url).encode('utf-8')
      @sso_region = options.delete(:sso_region)
      @sso_role_name = options.delete(:sso_role_name)
      @sso_account_id = options.delete(:sso_account_id)

      # validate we can read the token file
      read_cached_token

      client_opts = {}
      client_opts[:region] = options[:sso_region] if options[:sso_region]
      @client = options.delete(:client) ||
                AWS::SDK::SSO::Client.new(client_opts)
    end

    private

    def credentials
      cached_token = read_cached_token
      c = @client.get_role_credentials(
        account_id: @sso_account_id,
        role_name: @sso_role_name,
        access_token: cached_token['accessToken']
      ).data.role_credentials

      @credentials = Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token
      )
      @expiration = c.expiration
    end

    def read_cached_token
      cached_token = JSON.parse(File.read(sso_cache_file))
      # validation
      unless cached_token['accessToken'] && cached_token['expiresAt']
        raise ArgumentError,
              'Missing required field(s) accessToken or expiresAt'
      end

      expires_at = DateTime.parse(cached_token['expiresAt'])
      if expires_at < DateTime.now
        raise ArgumentError, 'Cached SSO Token is expired.'
      end

      cached_token
    rescue Errno::ENOENT, JSON::ParserError, ArgumentError
      raise ArgumentError, SSO_LOGIN_GUIDANCE
    end

    def sso_cache_file
      start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(@sso_start_url)
      File.join(Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json")
    rescue ArgumentError
      # Dir.home raises ArgumentError when ENV['home'] is not set
      raise "Unable to load sso_cache_file: ENV['HOME'] is not set."
    end
  end
end
