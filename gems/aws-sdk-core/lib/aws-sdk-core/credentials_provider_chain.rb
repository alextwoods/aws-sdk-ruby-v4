# frozen_string_literal: true

module AWS::SDK::Core
  # @api private
  class CredentialsProviderChain < Hearth::IdentityProvider
    def initialize(config)
      @config = config
      super(nil)
    end

    def identity(_properties = {})
      return @identity if @identity

      providers.each do |method_name|
        provider = send(method_name)
        if provider
          @identity = provider.identity
          break
        end
      end
      @identity
    end

    private

    def providers
      %i[
        code_static_credentials
        env_static_credentials
        env_assume_role_web_identity_credentials
        profile_static_credentials
        profile_assume_role_web_identity_credentials
        profile_assume_role_credentials
        profile_sso_role_credentials
        profile_process_credentials
        container_credentials
        instance_credentials
      ]
    end

    def code_static_credentials
      StaticCredentialsProvider.from_code(@config)
    end

    def env_static_credentials
      StaticCredentialsProvider.from_env(@config)
    end

    def env_assume_role_web_identity_credentials
      return unless defined?(AWS::SDK::STS)

      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleWebIdentityCredentialsProvider)

      sts::AssumeRoleWebIdentityCredentialsProvider.from_env(@config)
    end

    def profile_static_credentials
      StaticCredentialsProvider.from_profile(@config)
    end

    # Web identity is checked first as an optimization and simplification
    # This differs from the specification slightly.
    def profile_assume_role_web_identity_credentials
      return unless defined?(AWS::SDK::STS)

      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleWebIdentityCredentialsProvider)

      sts::AssumeRoleWebIdentityCredentialsProvider.from_profile(@config)
    end

    def profile_assume_role_credentials
      return unless defined?(AWS::SDK::STS)

      sts = AWS::SDK::STS
      return unless defined?(sts::AssumeRoleCredentialsProvider)

      sts::AssumeRoleCredentialsProvider.from_profile(@config)
    end

    def profile_sso_role_credentials
      return unless defined?(AWS::SDK::SSO) && defined?(AWS::SDK::SSOOIDC)

      sso = AWS::SDK::SSO
      sso_oidc = AWS::SDK::SSOOIDC
      return unless defined?(sso::RoleCredentialsProvider)
      return unless defined?(sso_oidc::TokenProvider)

      sso::RoleCredentialsProvider.from_profile(@config)
    end

    def profile_process_credentials
      ProcessCredentialsProvider.from_profile(@config)
    end

    def container_credentials
      ContainerCredentialsProvider.from_env(@config)
    end

    def instance_credentials
      InstanceCredentialsProvider.from_env(@config)
    end
  end
end
