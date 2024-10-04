# frozen_string_literal: true

module AWS::SDK::Core
  # @api private
  module HTTPBearerProviderChain
    def self.call(config)
      providers.each do |method_name|
        provider = send(method_name, config)
        return provider if provider
      end
      nil
    end

    def self.providers
      [
        # in-code token providers are resolved by Config
        :profile_ssooidc_token_provider
      ]
    end

    def self.profile_ssooidc_token_provider(config)
      return unless defined?(AWS::SDK::SSOOIDC)

      ssooidc = AWS::SDK::SSOOIDC
      return unless defined?(ssooidc::TokenProvider)

      ssooidc::TokenProvider.from_profile(config)
    end
  end
end
