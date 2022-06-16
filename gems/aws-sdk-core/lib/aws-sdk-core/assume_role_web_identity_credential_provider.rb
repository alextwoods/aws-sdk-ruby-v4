# frozen_string_literal: true

require 'securerandom'

module AWS::SDK::Core
  # An auto-refreshing credential provider that assumes a role via
  # {AWS::SDK::STS::Client#assume_role_with_web_identity}.
  #
  #     provider = AWS::SDK::Core::AssumeRoleWebIdentityCredentialProvider.new(
  #       client: AWS::SDK::STS::Client.new(...),
  #       web_identity_token_file: "/path/to/token/file",
  #       role_arn: "linked::account::arn",
  #       role_session_name: "session-name"
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credential_provider: provider)
  #
  # If you omit the `:client` option, a new {AWS::SDK::STS::Client} will be
  # created.
  #
  # @see AWS::SDK::STS::Client#assume_role_with_web_identity
  class AssumeRoleWebIdentityCredentialProvider
    include CredentialProvider
    include RefreshingCredentialProvider

    # Raised when :web_identity_token_file doesn't exist when
    # fetching credentials.
    class MissingWebIdentityTokenFile < RuntimeError; end

    PROFILE = proc do |cfg|
      return unless AWS::SDK::Core.sts_loaded?

      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if shared_config['web_identity_token_file'] && shared_config['role_arn']
        client = AWS::SDK::STS::Client.new(
          AWS::SDK::STS::Config.new(profile: cfg[:profile])
        )

        new(
          client: client,
          web_identity_token_file: shared_config['web_identity_token_file'],
          role_arn: shared_config['role_arn'],
          role_session_name: shared_config['role_session_name']
        )
      end
    end

    ENVIRONMENT = proc do |_cfg|
      return unless AWS::SDK::Core.sts_loaded?

      if ENV['AWS_ROLE_ARN'] && ENV['AWS_WEB_IDENTITY_TOKEN_FILE']
        new(
          web_identity_token_file: ENV['AWS_WEB_IDENTITY_TOKEN_FILE'],
          role_arn: ENV['AWS_ROLE_ARN'],
          role_session_name: ENV['AWS_ROLE_SESSION_NAME']
        )
      end
    end

    # @param [required, String] :web_identity_token_file
    #   The absolute path to the file on disk containing the OIDC token.
    #
    # @param [required, String] :role_arn The IAM role to be assumed.
    #
    # @param [String] :role_session_name The IAM session name used to
    #   distinguish session. By default, a base64 encoded UUID is generated.
    #
    # @param [AWS::SDK::STS::Client] :client
    #
    # @param [Callable] :before_refresh A proc called when AWS
    #   credentials are required and need to be refreshed.
    def initialize(web_identity_token_file:, role_arn:, role_session_name: nil,
                   client: nil, **options)
      unless AWS::SDK::Core.sts_loaded?
        raise 'aws-sdk-sts is required to create an '\
              'AssumeRoleWebIdentityCredentialProvider.'
      end

      @client = client || AWS::SDK::STS::Client.new
      @web_identity_token_file = web_identity_token_file
      @assume_role_with_web_identity_params = {
        role_arn: role_arn,
        role_session_name: role_session_name ||
                           ::Base64.strict_encode64(::SecureRandom.uuid)
      }
      super(options)
    end

    # @return [AWS::SDK::STS::Client]
    attr_reader :client

    private

    def _token_from_file
      unless File.exist?(@web_identity_token_file)
        raise MissingWebIdentityTokenFile,
              "Web identity token file #{@web_identity_token_file} "\
              'does not exist.'
      end

      File.read(@web_identity_token_file)
    end

    def fetch
      # read from token file everytime it refreshes
      @assume_role_with_web_identity_params[:web_identity_token] =
        _token_from_file

      c = @client.assume_role_with_web_identity(
        @assume_role_with_web_identity_params
      ).data.credentials
      @credentials = Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end
  end
end