# frozen_string_literal: true

# Credentials
require_relative 'aws-sdk-core/credential_provider'
require_relative 'aws-sdk-core/credentials'
require_relative 'aws-sdk-core/static_credentials_provider'

# Shared Config
require_relative 'aws-sdk-core/ini_parser'
require_relative 'aws-sdk-core/shared_config'

module AWS
  module SDK
    # Namespace for AWS::SDK Core components
    module Core
      GEM_VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

      def self.shared_config
        @shared_config ||= SharedConfig.load
      end
    end
  end
end
