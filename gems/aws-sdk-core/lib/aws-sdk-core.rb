# frozen_string_literal: true

require 'hearth'
require 'aws-sigv4'

# Namespace for AWS Ruby products
module AWS
  # Namespace for AWS SDK gems
  module SDK
    # Namespace for AWS::SDK Core components
    module Core
      # @return true if v4 aws-sdk-sts is available
      def self.sts_loaded?
        if @use_sts.nil?
          @use_sts =
            begin
              require 'aws-sdk-sts'
              true
            rescue LoadError, NameError
              false
            end
        end
        @use_sts
      end

      # @return true if v4 aws-sdk-sso is available
      def self.sso_loaded?
        if @use_sso.nil?
          @use_sso =
            begin
              require 'aws-sdk-sso'
              true
            rescue LoadError, NameError
              false
            end
        end
        @use_sso
      end

      # @return true if v4 aws-sdk-ssooidc is available
      def self.sso_loaded?
        if @use_ssooidc.nil?
          @use_ssooidc =
            begin
              require 'aws-sdk-ssooidc'
              true
            rescue LoadError, NameError
              false
            end
        end
        @use_ssooidc
      end

      # @return true if CRT is available
      def self.crt_loaded?
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
