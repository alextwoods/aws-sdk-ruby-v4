# frozen_string_literal: true

require 'securerandom'

module AWS::SDK::STS
  # An auto-refreshing credentials provider that assumes a role via
  # {AWS::SDK::STS::Client#assume_role_with_web_identity}.
  #
  #     provider = AWS::SDK::STS::AssumeRoleWebIdentityCredentialProvider.new(
  #       client: AWS::SDK::STS::Client.new(...),
  #       web_identity_token_file: "/path/to/token/file",
  #       role_arn: "linked::account::arn",
  #       role_session_name: "session-name"
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credentials_provider: provider)
  #
  # If you omit the `:client` option, a new {AWS::SDK::STS::Client} will be
  # created.
  #
  # @see AWS::SDK::STS::Client#assume_role_with_web_identity
  class AssumeRoleWebIdentityCredentialsProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

    # Raised when :web_identity_token_file parameter is not
    # provided or the file doesn't exist when initializing
    # or fetching credentials.
    class MissingWebIdentityTokenFile < RuntimeError; end

    # Initializes an instance of AssumeRoleWebIdentityCredentialProvider using
    # ENV.
    def self.from_env(_config)
      return unless ENV['AWS_ROLE_ARN'] && ENV['AWS_WEB_IDENTITY_TOKEN_FILE']

      new(
        web_identity_token_file: ENV['AWS_WEB_IDENTITY_TOKEN_FILE'],
        role_arn: ENV['AWS_ROLE_ARN'],
        role_session_name: ENV['AWS_ROLE_SESSION_NAME']
      )
    end

    # Initializes an instance of AssumeRoleWebIdentityCredentialProvider using
    # a profile.
    def self.from_profile(config, options = {})
      # TODO: add account ID support
      profile = options[:profile] || config[:profile]
      profile_config = AWS::SDK::Core.shared_config.profiles[profile]
      return unless profile_config &&
                    profile_config['web_identity_token_file'] &&
                    profile_config['role_arn']

      new(
        client: Client.new(profile: profile, credentials_provider: nil),
        web_identity_token_file: profile_config['web_identity_token_file'],
        role_arn: profile_config['role_arn'],
        role_session_name: profile_config['role_session_name']
      )
    end

    # @option options [String] :web_identity_token_file The absolute path to the
    #   file on disk containing the OIDC token.
    # @option options [String] :role_arn The IAM role to be assumed.
    # @option options [String] :role_session_name (Base64 UUID) The IAM session
    #   name used to distinguish a session.
    # @option options [AWS::SDK::STS::Client] :client
    #
    # Creates a new AssumeRoleWebIdentityCredentialProvider. Takes additional
    # parameters for {AWS::SDK::STS::Client#assume_role_with_web_identity}.
    #
    # @see AWS::SDK::STS::Client#assume_role_with_web_identity
    def initialize(options = {})
      @client = options.delete(:client) || Client.new(credentials_provider: nil)
      @web_identity_token_file = options.delete(:web_identity_token_file)
      options[:role_session_name] ||=
        ::Base64.strict_encode64(::SecureRandom.uuid)
      @assume_role_with_web_identity_params = options
      super()
    end

    # @return [Client]
    attr_reader :client

    private

    def refresh(_properties = {})
      # read from token file everytime it refreshes
      @assume_role_with_web_identity_params[:web_identity_token] =
        token_from_file

      c = @client.assume_role_with_web_identity(
        **@assume_role_with_web_identity_params
      ).data.credentials
      @identity = AWS::SDK::Core::Identities::Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end

    def token_from_file
      unless File.exist?(@web_identity_token_file)
        raise MissingWebIdentityTokenFile,
              "Web identity token file #{@web_identity_token_file} " \
              'does not exist.'
      end

      File.read(@web_identity_token_file)
    end
  end
end
