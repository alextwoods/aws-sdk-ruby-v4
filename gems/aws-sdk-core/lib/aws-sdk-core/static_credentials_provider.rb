# frozen_string_literal: true

module AWS::SDK::Core
  # A class that provides credentials from a static location, either from
  # shared configuration files or through code implementations.
  #     provider = AWS::SDK::Core::StaticCredentialsProvider.new(
  #       access_key_id: 'ACCESS_KEY_1',
  #       secret_access_key: 'SECRET_KEY_1',
  #       session_token: 'TOKEN_1',
  #       account_id: 'ACCOUNT_1'
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credentials_provider: provider)
  class StaticCredentialsProvider < Hearth::IdentityProvider
    # Initializes an instance of StaticCredentialsProvider using code options.
    def self.from_code(config)
      return unless config[:access_key_id] && config[:secret_access_key]

      new(
        access_key_id: config[:access_key_id],
        secret_access_key: config[:secret_access_key],
        session_token: config[:session_token],
        account_id: config[:account_id]
      )
    end

    # Initializes an instance of StaticCredentialsProvider using ENV.
    def self.from_env(_config)
      return unless ENV['AWS_ACCESS_KEY_ID'] && ENV['AWS_SECRET_ACCESS_KEY']

      new(
        access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
        secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
        session_token: ENV.fetch('AWS_SESSION_TOKEN', nil),
        account_id: ENV.fetch('AWS_ACCOUNT_ID', nil)
      )
    end

    # Initializes an instance of StaticCredentialsProvider using a profile.
    def self.from_profile(config, options = {})
      profile = options[:profile] || config[:profile]
      profile_config = AWS::SDK::Core.shared_config.profiles[profile]
      return unless profile_config &&
                    profile_config['aws_access_key_id'] &&
                    profile_config['aws_secret_access_key']

      new(
        access_key_id: profile_config['aws_access_key_id'],
        secret_access_key: profile_config['aws_secret_access_key'],
        session_token: profile_config['aws_session_token'],
        account_id: profile_config['aws_account_id']
      )
    end

    # Initializes an instance of StaticCredentialsProvider using options.
    # @param [String] access_key_id
    # @param [String] secret_access_key
    # @param [String] session_token (nil)
    # @param [String] account_id (nil)
    def initialize(access_key_id:, secret_access_key:, session_token: nil,
                   account_id: nil)
      @identity = Identities::Credentials.new(
        access_key_id: access_key_id,
        secret_access_key: secret_access_key,
        session_token: session_token,
        account_id: account_id
      )
      super
    end

    # @return [AWS::SDK::Core::Identities::Credentials]
    def identity(_properties = nil)
      @identity
    end
  end
end
