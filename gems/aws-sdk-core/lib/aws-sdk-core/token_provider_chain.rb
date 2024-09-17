# frozen_string_literal: true

module AWS::SDK::Core
  class TokenProviderChain
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
        :stubbed_token,
        # in-code token providers are resolved by Config
        :profile_ssooidc_token_provider
      ]
    end

    def stubbed_token(config)
      return unless config[:stub_responses]

      Hearth::IdentityProvider.new(proc do
        Hearth::Identities::HTTPBearer.new(token: 'token')
      end)
    end

    def profile_ssooidc_token_provider(config)
      return unless defined?(AWS::SDK::SSOOIDC)
      ssooidc = AWS::SDK::SSOOIDC
      return unless defined?(ssooidc::TokenProvider)

      ssooidc::TokenProvider.from_profile(config)
    end
  end
end
