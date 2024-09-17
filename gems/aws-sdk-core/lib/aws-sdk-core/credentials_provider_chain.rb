# frozen_string_literal: true

module AWS::SDK::Core
  class CredentialsProviderChain
    def call(config)
      providers.each do |method_name|
        provider = send(method_name, config)
        return provider if provider
      end
      nil
    end

    private

    def providers
      [
        :stubbed_credentials,
        # in-code credentials are resolved by Config
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

    def stubbed_credentials(config)
      return unless config[:stub_responses]

      Hearth::IdentityProvider.new(proc do
        Identities::Credentials.new(
          access_key_id: 'stubbed-akid',
          secret_access_key: 'stubbed-secret',
          session_token: 'stubbed-session'
        )
      end)
    end

    def env_static_credentials(config)
      StaticCredentialsProvider.from_env(config)
    end

    def env_assume_role_web_identity_credentials(config)
      return unless defined?(AWS::SDK::STS)
      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleWebIdentityCredentialsProvider)

      sts::AssumeRoleWebIdentityCredentialsProvider.from_env(config)
    end

    def profile_assume_role_credentials(config)
      return unless defined?(AWS::SDK::STS)
      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleCredentialsProvider)

      sts::AssumeRoleCredentialsProvider.from_profile(config)
    end

    def profile_static_credentials(config)
      StaticCredentialsProvider.from_profile(config)
    end

    def profile_assume_role_web_identity_credentials(config)
      return unless defined?(AWS::SDK::STS)
      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleWebIdentityCredentialsProvider)

      sts::AssumeRoleWebIdentityCredentialsProvider.from_profile(config)
    end

    def profile_sso_role_credentials(config)
      return unless defined?(AWS::SDK::SSO) && defined?(AWS::SDK::SSOOIDC)
      sso = AWS::SDK::SSO
      sso_oidc = AWS::SDK::SSOOIDC
      return unless defined?(sso::RoleCredentialsProvider)
      return unless defined?(sso_oidc::TokenProvider)

      sso::RoleCredentialsProvider.from_profile(config)
    end

    def profile_process_credentials(config)
      ProcessCredentialsProvider.from_profile(config)
    end

    def container_credentials(config)
      ContainerCredentialsProvider.from_env(config)
    end

    def instance_credentials(config)
      InstanceCredentialsProvider.from_env(config)
    end
  end
end
