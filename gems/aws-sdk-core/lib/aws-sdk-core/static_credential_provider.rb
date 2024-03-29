# frozen_string_literal: true

module AWS::SDK::Core
  # A class that provides credentials from a static location, either from
  # shared configuration files or through code implementations.
  #     provider = AWS::SDK::Core::StaticCredentialProvider.new(
  #       access_key_id: 'ACCESS_KEY_1',
  #       secret_access_key: 'SECRET_KEY_1',
  #       session_token: 'TOKEN_1'
  #     )
  #     ec2_config = AWS::SDK::EC2::Config.new(credential_provider: provider)
  #     ec2 = AWS::SDK::EC2::Client.new(ec2_config)
  class StaticCredentialProvider
    include CredentialProvider

    # Initializes an instance of StaticCredentialProvider using
    # shared config profile.
    # @api private
    PROFILE = proc do |cfg|
      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if profile_config['aws_access_key_id'] &&
         profile_config['aws_secret_access_key']
        new(
          access_key_id: profile_config['aws_access_key_id'],
          secret_access_key: profile_config['aws_secret_access_key'],
          session_token: profile_config['aws_session_token']
        )
      end
    end

    # Initializes an instance of StaticCredentialProvider using ENV.
    # @api private
    ENVIRONMENT = proc do |_cfg|
      if ENV['AWS_ACCESS_KEY_ID'] && ENV['AWS_SECRET_ACCESS_KEY']
        new(
          access_key_id: ENV['AWS_ACCESS_KEY_ID'],
          secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
          session_token: ENV.fetch('AWS_SESSION_TOKEN', nil)
        )
      end
    end

    def initialize(options = {})
      @credentials = AWS::SigV4::Credentials.new(
        access_key_id: options[:access_key_id],
        secret_access_key: options[:secret_access_key],
        session_token: options[:session_token]
      )
    end
  end
end
