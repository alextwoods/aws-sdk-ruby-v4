# frozen_string_literal: true

# Namespace for AWS Ruby products
module AWS
  # Namespace for AWS SDK gems
  module SDK
    # Namespace for AWS::SDK Core components
    module Core
      GEM_VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

      # CREDENTIAL_PROVIDER_CHAIN = [
      #   AssumeRoleWebIdentityCredentialsProvider::PROFILE,
      #   SSOCredentialsProvider::PROFILE,
      #   AssumeRoleCredentialsProvider::PROFILE,
      #   StaticCredentialsProvider::PROFILE,
      #   ProcessCredentialsProvider::PROFILE,
      #   StaticCredentialsProvider::ENVIRONMENT,
      #   AssumeRoleWebIdentityCredentialsProvider::ENVIRONMENT,
      #   ECSCredentialsProvider::ENVIRONMENT,
      #   EC2CredentialsProvider::ENVIRONMENT
      # ].freeze

      def self.shared_config
        @shared_config ||= SharedConfig.load
      end

      def self.sts_loaded?
        require 'aws-sdk-sts'
        true
      rescue LoadError
        false
      end

      def self.sso_loaded?
        require 'aws-sdk-sso'
        true
      rescue LoadError
        false
      end
    end
  end
end

# Credential Providers
require_relative 'aws-sdk-core/credentials'
require_relative 'aws-sdk-core/credential_provider'
require_relative 'aws-sdk-core/refreshing_credentials_provider'

require_relative 'aws-sdk-core/assume_role_credentials_provider'
require_relative 'aws-sdk-core/process_credentials_provider'
require_relative 'aws-sdk-core/sso_credentials_provider'
require_relative 'aws-sdk-core/static_credentials_provider'

# Shared Config
require_relative 'aws-sdk-core/ini_parser'
require_relative 'aws-sdk-core/shared_config'
