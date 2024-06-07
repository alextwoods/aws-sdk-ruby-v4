# frozen_string_literal: true

require 'hearth'
require 'aws-sigv4'

# Namespace for AWS Ruby products
module AWS
  # Namespace for AWS SDK gems
  module SDK
    # Namespace for AWS::SDK Core components
    module Core
      class << self
        # @return [Hash] Returns a hash of default configuration options shared
        #   by all constructed clients.
        def config
          @config ||= {}
        end

        # @param [Hash] config
        def config=(config)
          if config.is_a?(Hash)
            raise ArgumentError, 'configuration object must be a hash'
          end

          @config = config
        end

        ## Utility methods for checking if certain gems are available

        # @api private
        # TODO: we should major version bump this
        def crt_loaded?
          if @use_crt.nil?
            @use_crt =
              begin
                require 'aws-crt'
                true
              rescue LoadError
                false
              end
          end
          @use_crt
        end

        # @api private
        def sso_loaded?
          gem_loaded?('aws-sdk-sso')
        end

        # @api private
        def sso_oidc_loaded?
          gem_loaded?('aws-sdk-ssooidc')
        end

        # @api private
        def sts_loaded?
          gem_loaded?('aws-sdk-sts')
        end

        private

        def gem_loaded?(gem_name)
          name = "@use_#{gem_name.split('-').last}".to_sym
          is_loaded = instance_variable_get(name)
          return is_loaded unless is_loaded.nil?

          is_loaded =
            begin
              require gem_name
              true
            rescue LoadError, NameError
              false
            end
          instance_variable_set(name, is_loaded)
        end
      end
    end
  end
end

# SigV4
require_relative 'aws-sdk-core/auth_schemes/sigv4'
require_relative 'aws-sdk-core/identities/credentials'
require_relative 'aws-sdk-core/signers/sigv4'

# Credential Providers
require_relative 'aws-sdk-core/assume_role_credentials_provider'
require_relative 'aws-sdk-core/assume_role_web_identity_credentials_provider'
require_relative 'aws-sdk-core/ec2_credentials_provider'
require_relative 'aws-sdk-core/ecs_credentials_provider'
require_relative 'aws-sdk-core/process_credentials_provider'
require_relative 'aws-sdk-core/sso_credentials_provider'
require_relative 'aws-sdk-core/static_credentials_provider'

# HTTP Bearer token providers
require_relative 'aws-sdk-core/sso_bearer_provider'

# ARNS
require_relative 'aws-sdk-core/arn'
require_relative 'aws-sdk-core/arn_parser'

# Shared Config
require_relative 'aws-sdk-core/ini_parser'
require_relative 'aws-sdk-core/shared_config'
require_relative 'aws-sdk-core/shared_config_provider'

# Utilities
require_relative 'aws-sdk-core/ec2_metadata'

# Checksums
require_relative 'aws-sdk-core/checksums'

# Middleware
require_relative 'aws-sdk-core/middleware'

# Endpoint Rules
require_relative 'aws-sdk-core/endpoint_rules'

# Namespace for AWS::SDK Core components
module AWS::SDK::Core
  GEM_VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

  # This chain is the order in which Credential Providers are loaded.
  # @api private
  CREDENTIALS_PROVIDER_CHAIN = [
    AssumeRoleWebIdentityCredentialsProvider::PROFILE,
    SSOCredentialsProvider::PROFILE,
    AssumeRoleCredentialsProvider::PROFILE,
    StaticCredentialsProvider::PROFILE,
    ProcessCredentialsProvider::PROFILE,
    StaticCredentialsProvider::ENVIRONMENT,
    AssumeRoleWebIdentityCredentialsProvider::ENVIRONMENT,
    ECSCredentialsProvider::ENVIRONMENT,
    EC2CredentialsProvider::ENVIRONMENT
  ].freeze

  HTTP_BEARER_PROVIDER_CHAIN = [
    SSOBearerProvider::PROFILE
  ].freeze

  # This chain is the used by the AssumeRoleCredentialsProvider
  # when a source_profile is specified to resolve the credentials
  # from that source profile.
  # @api private
  ASSUME_ROLE_PROFILE_CREDENTIAL_PROVIDER_CHAIN = [
    StaticCredentialsProvider::PROFILE,
    AssumeRoleCredentialsProvider::PROFILE,
    AssumeRoleWebIdentityCredentialsProvider::PROFILE,
    ProcessCredentialsProvider::PROFILE,
    SSOCredentialsProvider::PROFILE
  ].freeze

  def self.shared_config
    @shared_config ||= SharedConfig.load
  end
end
