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
  #     ec2_config = AWS::SDK::EC2::Config.new(credential_provider: provider)
  #     ec2 = AWS::SDK::EC2::Client.new(ec2_config)
  #
  # If you omit the `:client` option, a new {AWS::SDK::STS::Client} will be
  # created.
  #
  # @see AWS::SDK::STS::Client#assume_role_with_web_identity
  class AssumeRoleWebIdentityCredentialProvider
    include RefreshingCredentialProvider

    # Raised when :web_identity_token_file parameter is not
    # provided or the file doesn't exist when initializing
    # or fetching credentials.
    class MissingWebIdentityTokenFile < RuntimeError; end

    # Initializes an instance of AssumeRoleWebIdentityCredentialProvider using
    # shared config profile.
    # @api private
    PROFILE = proc do |cfg|
      return unless AWS::SDK::Core.sts_loaded?

      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if profile_config['web_identity_token_file'] && profile_config['role_arn']
        client = AWS::SDK::STS::Client.new(
          AWS::SDK::STS::Config.new(profile: cfg[:profile])
        )

        new(
          client: client,
          web_identity_token_file: profile_config['web_identity_token_file'],
          role_arn: profile_config['role_arn'],
          role_session_name: profile_config['role_session_name']
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

    # @option options [required, String] :web_identity_token_file
    #   The absolute path to the file on disk containing the OIDC token.
    # @option options [required, String] :role_arn The IAM role to be assumed.
    # @option options [String] :role_session_name The IAM session name used to
    #   distinguish session. By default, a base64 encoded UUID is generated.
    # @option options [AWS::SDK::STS::Client] :client
    #
    # Creates a new AssumeRoleWebIdentityCredentialProvider. Takes additional
    # parameters for {AWS::SDK::STS::Client#assume_role_with_web_identity}.
    #
    # @see AWS::SDK::STS::Client#assume_role_with_web_identity
    def initialize(options = {})
      unless AWS::SDK::Core.sts_loaded?
        raise 'aws-sdk-sts is required to create an '\
              'AssumeRoleWebIdentityCredentialProvider.'
      end

      @client = options.delete(:client) || AWS::SDK::STS::Client.new
      @web_identity_token_file = options.delete(:web_identity_token_file)
      @assume_role_with_web_identity_params = options
      @assume_role_with_web_identity_params[:role_session_name] ||=
        ::Base64.strict_encode64(::SecureRandom.uuid)
      super()
    end

    # @return [AWS::SDK::STS::Client]
    attr_reader :client

    private

    def fetch
      # read from token file everytime it refreshes
      @assume_role_with_web_identity_params[:web_identity_token] =
        token_from_file

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

    def token_from_file
      unless File.exist?(@web_identity_token_file)
        raise MissingWebIdentityTokenFile,
              "Web identity token file #{@web_identity_token_file} "\
              'does not exist.'
      end

      File.read(@web_identity_token_file)
    end
  end
end
