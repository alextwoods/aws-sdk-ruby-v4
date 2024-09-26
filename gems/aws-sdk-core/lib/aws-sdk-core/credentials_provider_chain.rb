# frozen_string_literal: true

module AWS::SDK::Core
  # @api private
  module CredentialsProviderChain
    def self.call(config)
      providers.each do |method_name|
        provider = send(method_name, config)
        if provider
          puts "returning #{method_name}"
          return provider
        end
      end
      nil
    end

    private

    def self.providers
      [
        :code_static_credentials,
        :env_static_credentials,
        :env_assume_role_web_identity_credentials,
        :profile_assume_role_credentials,
        :profile_static_credentials,
        :profile_assume_role_web_identity_credentials,
        :profile_sso_role_credentials,
        :profile_process_credentials,
        :container_credentials,
        :instance_credentials
      ]
    end

    def self.code_static_credentials(config)
      StaticCredentialsProvider.from_code(config)
    end

    def self.env_static_credentials(config)
      StaticCredentialsProvider.from_env(config)
    end

    def self.env_assume_role_web_identity_credentials(config)
      return unless defined?(AWS::SDK::STS)
      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleWebIdentityCredentialsProvider)

      sts::AssumeRoleWebIdentityCredentialsProvider.from_env(config)
    end

    def self.profile_assume_role_credentials(config)
      return unless defined?(AWS::SDK::STS)
      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleCredentialsProvider)

      sts::AssumeRoleCredentialsProvider.from_profile(config)
    end

    def self.profile_static_credentials(config)
      StaticCredentialsProvider.from_profile(config)
    end

    def self.profile_assume_role_web_identity_credentials(config)
      return unless defined?(AWS::SDK::STS)
      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleWebIdentityCredentialsProvider)

      sts::AssumeRoleWebIdentityCredentialsProvider.from_profile(config)
    end

    def self.profile_sso_role_credentials(config)
      return unless defined?(AWS::SDK::SSO) && defined?(AWS::SDK::SSOOIDC)
      sso = AWS::SDK::SSO
      sso_oidc = AWS::SDK::SSOOIDC
      return unless defined?(sso::RoleCredentialsProvider)
      return unless defined?(sso_oidc::TokenProvider)

      sso::RoleCredentialsProvider.from_profile(config)
    end

    def self.profile_process_credentials(config)
      ProcessCredentialsProvider.from_profile(config)
    end

    def self.container_credentials(config)
      ContainerCredentialsProvider.from_env(config)
    end

    def self.instance_credentials(config)
      InstanceCredentialsProvider.from_env(config)
    end
  end
end
