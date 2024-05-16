# frozen_string_literal: true

require 'openssl'

module AWS::SDK::Core
  # An auto-refreshing credentials provider that assumes a role via
  # {AWS::SDK::SSO::Client#get_role_credentials} using a cached access
  # token. When `sso_session` is specified, token refresh logic from
  # {AWS::SDK::Core::SSOBearerProvider} will be used to refresh the token if
  # possible. This class does NOT implement the SSO login token flow - tokens
  # must generated separately by running `aws login` from the
  # AWS CLI with the correct profile. The `SSOCredentialsProvider` will
  # auto-refresh the AWS credentials from SSO.
  #
  #     # You must first run aws sso login --profile your-sso-profile
  #     provider = AWS::SDK::Core::SSOCredentialsProvider.new(
  #       sso_account_id: '123456789',
  #       sso_role_name: 'role_name',
  #       sso_region: 'us-east-1',
  #       sso_session: 'your-sso-profile'
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credentials_provider: provider)
  #
  # If you omit the `:client` option, a new {AWS::SDK::SSO::Client} object
  # will be constructed.
  #
  # @see AWS::SDK::SSO::Client#get_role_credentials
  # @see https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html
  class SSOCredentialsProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

    # @api private
    SSO_LOGIN_GUIDANCE =
      'The SSO session associated with this profile has ' \
      'expired or is otherwise invalid. To refresh this SSO session run ' \
      '`aws sso login` with the corresponding profile.'

    # Initializes an instance of SSOCredentialProvider using
    # shared config profile.
    # @api private
    PROFILE = proc do |cfg|
      next unless AWS::SDK::Core.sso_loaded? && AWS::SDK::Core.sso_oidc_loaded?

      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      warn_on_legacy_profile(cfg)

      if profile_config &&
         profile_config['sso_session'] &&
         profile_config['sso_account_id'] &&
         profile_config['sso_role_name']
        sso_session_cfg = AWS::SDK::Core::SharedConfig.sso_session(
          AWS::SDK::Core.shared_config,
          cfg[:profile],
          profile_config['sso_session']
        )
        new(
          sso_session: profile_config['sso_session'],
          sso_account_id: profile_config['sso_account_id'],
          sso_role_name: profile_config['sso_role_name'],
          sso_region: sso_session_cfg['sso_region']
        )
      end
    end

    # @param [required, String] :sso_session The SSO Session used to
    #   for fetching the SSO token.
    # @param [required, String] :sso_account_id The AWS account ID
    #   that temporary AWS credentials will be resolved for
    # @param [required, String] :sso_region The AWS region where the
    #   SSO directory for the given sso_session is hosted..
    # @param [required, String] :sso_role_name The corresponding
    #   IAM role in the AWS account that temporary AWS credentials
    #   will be resolved for.
    # @param [AWS::SDK::SSO::Client] :client Optional `AWS::SDK::SSO::Client`.
    #   If not provided, a client will be constructed.
    def initialize(sso_session:, sso_account_id:, sso_region:, sso_role_name:,
                   client: nil)
      unless AWS::SDK::Core.sso_loaded?
        raise 'aws-sdk-sso is required to create a SSOCredentialsProvider.'
      end

      @sso_session = sso_session
      @sso_region = sso_region
      @sso_role_name = sso_role_name
      @sso_account_id = sso_account_id

      @token_provider = SSOBearerProvider.new(
        sso_region: sso_region, sso_session: sso_session
      )

      @client = client || AWS::SDK::SSO::Client.new(region: sso_region)
      super()
    end

    # @return [AWS::SDK::SSO::Client]
    attr_reader :client

    private

    def refresh(_properties = {})
      c = @client.get_role_credentials(
        account_id: @sso_account_id,
        role_name: @sso_role_name,
        access_token: @token_provider.identity.token
      ).data.role_credentials

      @identity = AWS::SDK::Core::Identities::Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end

    private_class_method def self.warn_on_legacy_profile(cfg)
      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if profile_config &&
         profile_config['sso_start_url'] &&
         cfg[:logger]
        cfg[:logger].warn(
          "#{cfg[:profile]} is a legacy SSO profile and is " \
          'not supported.  Please configure an sso_session instead'
        )
      end
    end
  end
end
