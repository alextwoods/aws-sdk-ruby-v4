# frozen_string_literal: true

module AWS::SDK::Core
  # Static credential provider
  class StaticCredentialsProvider
    include CredentialProvider

    PROFILE = proc do |cfg|
      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if shared_config[:access_key_id] && shared_config[:secret_access_key]
        StaticCredentialsProvider.new(
          shared_config[:access_key_id],
          shared_config[:secret_access_key],
          shared_config[:session_token]
        )
      end
    end

    ENVIRONMENT = proc do |cfg|
      if ENV['AWS_ACCESS_KEY_ID'] && ENV['AWS_SECRET_ACCESS_KEY']
        StaticCredentialsProvider.new(
          ENV['AWS_ACCESS_KEY_ID'],
          ENV['AWS_SECRET_ACCESS_KEY'],
          ENV['AWS_SESSION_TOKEN']
        )
      end
    end

    def initialize(access_key_id, secret_access_key, session_token)
      @credentials = AWS::SDK::Core::Credentials.new(
        access_key_id,
        secret_access_key,
        session_token
      )
    end
  end
end
