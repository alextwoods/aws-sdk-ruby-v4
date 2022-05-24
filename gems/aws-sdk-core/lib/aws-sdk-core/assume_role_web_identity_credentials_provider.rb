# frozen_string_literal: true

module AWS::SDK::Core
  # TODO
  class AssumeRoleWebIdentityCredentialsProvider
    include CredentialProvider

    PROFILE = proc do |cfg|
      return unless sts_loaded?

      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if shared_config[:web_identity_token_file] && shared_config[:role_arn]
        opts = {
          role_arn: shared_config[:role_arn],
          web_identity_token_file: shared_config[:web_identity_token_file],
          role_session_name: shared_config[:role_session_name]
        }
        opts[:region] = cfg.region if cfg.region
        new(opts)
      end
    end

    ENVIRONMENT = proc do |cfg|
      return unless sts_loaded?

      if ENV['AWS_ROLE_ARN'] && ENV['AWS_WEB_IDENTITY_TOKEN_FILE']
        opts = {
          role_arn: ENV['AWS_ROLE_ARN'],
          web_identity_token_file: ENV['AWS_WEB_IDENTITY_TOKEN_FILE'],
          role_session_name: ENV['AWS_ROLE_SESSION_NAME']
        }
        opts[:region] = cfg.region if cfg.region
        new(opts)
      end
    end

    # @param [Hash] options
    # @option options [required, String] :role_arn The IAM role
    #   to be assumed.
    # @option options [required, String] :web_identity_token_file
    #   The absolute path to the file on disk containing OIDC token.
    # @option options [String] :role_session_name The IAM session
    #   name used to distinguish session, when not provided, base64
    #   encoded UUID is generated as the session name.
    # @option options [AWS::SDK::STS::Client] :client
    #
    # This constructor also takes additional params for
    # {AWS::SDK::STS::Client#assume_role_with_web_identity}.
    def initialize(options = {})
      @client = options.delete(:client) || AWS::SDK::STS::Client.new
      token_file = options.delete(:web_identity_token_file)
      options[:web_identity_token] = File.read(token_file)
      options[:role_session_name] ||= Base64.strict_encode64(SecureRandom.uuid)
      @arwip = options
    end

    private

    def credentials
      c = @client.assume_role_with_web_identity(@arwip).data.credentials
      @credentials = Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token
      )
      @expiration = c.expiration
    end
  end
end
