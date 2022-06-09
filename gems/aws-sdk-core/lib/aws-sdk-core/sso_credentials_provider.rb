# frozen_string_literal: true

require 'openssl'

module AWS::SDK::Core
  # An auto-refreshing credential provider that assumes a role via
  # {AWS::SDK::SSO::Client#get_role_credentials} using a cached access
  # token. This class does NOT implement the SSO login token flow - tokens
  # must generated and refreshed separately by running `aws login` from the
  # AWS CLI with the correct profile.
  #
  # The `SSOCredentialsProvider` will auto-refresh the AWS credentials from SSO.
  # In addition to AWS credentials expiring after a given amount of time, the
  # access token generated and cached from `aws login` will also expire.
  # Once this token expires, it will not be usable to refresh AWS credentials,
  # and another token will be needed. The SDK does not manage refreshing of
  # the token value, but this can be done by running `aws login` with the
  # correct profile.
  #
  #     # You must first run aws sso login --profile your-sso-profile
  #     provider = AWS::SDK::Core::SSOCredentialsProvider.new(
  #       sso_account_id: '123456789',
  #       sso_role_name: "role_name",
  #       sso_region: "us-east-1",
  #       sso_start_url: 'https://your-start-url.awsapps.com/start'
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credential_provider: provider)
  #
  # If you omit the `:client` option, a new {AWS::SDK::SSO::Client} object
  # will be constructed.
  #
  # @see AWS::SDK::SSO::Client#get_role_credentials
  # @see https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html
  class SSOCredentialsProvider
    include CredentialProvider
    include RefreshingCredentialsProvider

    # @api private
    SSO_LOGIN_GUIDANCE =
      'The SSO session associated with this profile has '\
      'expired or is otherwise invalid. To refresh this SSO session run '\
      '`aws sso login` with the corresponding profile.'

    PROFILE = proc do |cfg|
      return unless AWS::SDK::Core.sso_loaded?

      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if shared_config['sso_start_url'] &&
         shared_config['sso_region'] &&
         shared_config['sso_account_id'] &&
         shared_config['sso_role_name']
        new(
          sso_start_url: shared_config['sso_start_url'],
          sso_region: shared_config['sso_region'],
          sso_account_id: shared_config['sso_account_id'],
          sso_role_name: shared_config['sso_role_name']
        )
      end
    end

    # @param [required, String] :sso_account_id The AWS account ID
    #   that temporary AWS credentials will be resolved for
    #
    # @param [required, String] :sso_region The AWS region where the
    #   SSO directory for the given sso_start_url is hosted.
    #
    # @param [required, String] :sso_role_name The corresponding
    #   IAM role in the AWS account that temporary AWS credentials
    #   will be resolved for.
    #
    # @param [required, String] :sso_start_url The start URL is
    #   provided by the SSO service via the console and is the URL used to
    #   login to the SSO directory. This is also sometimes referred to as
    #   the "User Portal URL"
    #
    # @param [AWS::SDK::SSO::Client] :client Optional `AWS::SDK::SSO::Client`.
    #   If not provided, a client will be constructed.
    #
    # @param [Callable] :before_refresh A proc called when AWS
    #   credentials are required and need to be refreshed.
    def initialize(sso_account_id:, sso_region:, sso_role_name:, sso_start_url:,
                   client: nil, **options)
      unless AWS::SDK::Core.sso_loaded?
        raise 'aws-sdk-sso is required to create a '\
              'SSOCredentialsProvider.'
      end
      @sso_start_url = sso_start_url.encode('utf-8')
      @sso_region = sso_region
      @sso_role_name = sso_role_name
      @sso_account_id = sso_account_id

      # validate we can read the token file
      read_cached_token

      sso_config = AWS::SDK::SSO::Config.new(region: sso_region)
      @client = client || AWS::SDK::SSO::Client.new(sso_config)
      super(options)
    end

    # @return [AWS::SDK::SSO::Client]
    attr_reader :client

    private

    def fetch
      cached_token = read_cached_token
      c = @client.get_role_credentials(
        account_id: @sso_account_id,
        role_name: @sso_role_name,
        access_token: cached_token['accessToken']
      ).data.role_credentials

      @credentials = Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end

    def read_cached_token
      cached_token = JSON.parse(File.read(sso_cache_file))
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
      start_url_sha1 = ::OpenSSL::Digest::SHA1.hexdigest(@sso_start_url)
      File.join(Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json")
    rescue ArgumentError
      # Dir.home raises ArgumentError when ENV['home'] is not set
      raise "Unable to load sso_cache_file: ENV['HOME'] is not set."
    end
  end
end
