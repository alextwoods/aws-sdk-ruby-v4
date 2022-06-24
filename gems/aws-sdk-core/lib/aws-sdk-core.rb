# frozen_string_literal: true

require 'aws-sigv4'

# Namespace for AWS Ruby products
module AWS
  # Namespace for AWS SDK gems
  module SDK
    # Namespace for AWS::SDK Core components
    module Core; end
  end
end

# Credential Providers
require_relative 'aws-sdk-core/credential_provider'
require_relative 'aws-sdk-core/refreshing_credential_provider'

require_relative 'aws-sdk-core/assume_role_credential_provider'
require_relative 'aws-sdk-core/assume_role_web_identity_credential_provider'
require_relative 'aws-sdk-core/ec2_credential_provider'
require_relative 'aws-sdk-core/ecs_credential_provider'
require_relative 'aws-sdk-core/process_credential_provider'
require_relative 'aws-sdk-core/sso_credential_provider'
require_relative 'aws-sdk-core/static_credential_provider'

# Shared Config
require_relative 'aws-sdk-core/ini_parser'
require_relative 'aws-sdk-core/shared_config'
require_relative 'aws-sdk-core/shared_config_provider'

# Utilities
require_relative 'aws-sdk-core/ec2_metadata'

# Namespace for AWS::SDK Core components
module AWS::SDK::Core
  GEM_VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

  # This chain is the order in which Credential Providers are loaded.
  # @api private
  CREDENTIAL_PROVIDER_CHAIN = [
    AssumeRoleWebIdentityCredentialProvider::PROFILE,
    SSOCredentialProvider::PROFILE,
    AssumeRoleCredentialProvider::PROFILE,
    StaticCredentialProvider::PROFILE,
    ProcessCredentialProvider::PROFILE,
    StaticCredentialProvider::ENVIRONMENT,
    AssumeRoleWebIdentityCredentialProvider::ENVIRONMENT,
    ECSCredentialProvider::ENVIRONMENT,
    EC2CredentialProvider::ENVIRONMENT
  ].freeze

  # This chain is the used by the AssumeRoleCredentialProvider
  # when a source_profile is specified to resolve the credentials
  # from that source profile.
  # @api private
  ASSUME_ROLE_PROFILE_CREDENTIAL_PROVIDER_CHAIN = [
    StaticCredentialProvider::PROFILE,
    AssumeRoleCredentialProvider::PROFILE,
    AssumeRoleWebIdentityCredentialProvider::PROFILE,
    ProcessCredentialProvider::PROFILE,
    SSOCredentialProvider::PROFILE
  ].freeze

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
