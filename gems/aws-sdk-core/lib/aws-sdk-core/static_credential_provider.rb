# frozen_string_literal: true

module AWS::SDK::Core
  # A class that provides {Credentials} from a static location, either from
  # shared configuration files or through code implementations.
  class StaticCredentialProvider
    include CredentialProvider

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

    ENVIRONMENT = proc do |_cfg|
      if ENV['AWS_ACCESS_KEY_ID'] && ENV['AWS_SECRET_ACCESS_KEY']
        new(
          access_key_id: ENV['AWS_ACCESS_KEY_ID'],
          secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
          session_token: ENV['AWS_SESSION_TOKEN']
        )
      end
    end

    def initialize(options = {})
      @credentials = Credentials.new(
        access_key_id: options[:access_key_id],
        secret_access_key: options[:secret_access_key],
        session_token: options[:session_token]
      )
    end
  end
end
