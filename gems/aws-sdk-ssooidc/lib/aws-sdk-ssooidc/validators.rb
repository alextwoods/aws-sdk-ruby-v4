# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  # @api private
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class AuthorizationPendingException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AuthorizationPendingException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class CreateTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateTokenInput, context: context)
        Hearth::Validator.validate_required!(input.client_id, context: "#{context}[:client_id]")
        Hearth::Validator.validate_types!(input.client_id, ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate_required!(input.client_secret, context: "#{context}[:client_secret]")
        Hearth::Validator.validate_types!(input.client_secret, ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate_required!(input.grant_type, context: "#{context}[:grant_type]")
        Hearth::Validator.validate_types!(input.grant_type, ::String, context: "#{context}[:grant_type]")
        Hearth::Validator.validate_types!(input.device_code, ::String, context: "#{context}[:device_code]")
        Hearth::Validator.validate_types!(input.code, ::String, context: "#{context}[:code]")
        Hearth::Validator.validate_types!(input.refresh_token, ::String, context: "#{context}[:refresh_token]")
        Scopes.validate!(input.scope, context: "#{context}[:scope]") unless input.scope.nil?
        Hearth::Validator.validate_types!(input.redirect_uri, ::String, context: "#{context}[:redirect_uri]")
        Hearth::Validator.validate_types!(input.code_verifier, ::String, context: "#{context}[:code_verifier]")
      end
    end

    class CreateTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateTokenOutput, context: context)
        Hearth::Validator.validate_types!(input.access_token, ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate_types!(input.token_type, ::String, context: "#{context}[:token_type]")
        Hearth::Validator.validate_types!(input.expires_in, ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate_types!(input.refresh_token, ::String, context: "#{context}[:refresh_token]")
        Hearth::Validator.validate_types!(input.id_token, ::String, context: "#{context}[:id_token]")
      end
    end

    class CreateTokenWithIAMInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateTokenWithIAMInput, context: context)
        Hearth::Validator.validate_required!(input.client_id, context: "#{context}[:client_id]")
        Hearth::Validator.validate_types!(input.client_id, ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate_required!(input.grant_type, context: "#{context}[:grant_type]")
        Hearth::Validator.validate_types!(input.grant_type, ::String, context: "#{context}[:grant_type]")
        Hearth::Validator.validate_types!(input.code, ::String, context: "#{context}[:code]")
        Hearth::Validator.validate_types!(input.refresh_token, ::String, context: "#{context}[:refresh_token]")
        Hearth::Validator.validate_types!(input.assertion, ::String, context: "#{context}[:assertion]")
        Scopes.validate!(input.scope, context: "#{context}[:scope]") unless input.scope.nil?
        Hearth::Validator.validate_types!(input.redirect_uri, ::String, context: "#{context}[:redirect_uri]")
        Hearth::Validator.validate_types!(input.subject_token, ::String, context: "#{context}[:subject_token]")
        Hearth::Validator.validate_types!(input.subject_token_type, ::String, context: "#{context}[:subject_token_type]")
        Hearth::Validator.validate_types!(input.requested_token_type, ::String, context: "#{context}[:requested_token_type]")
        Hearth::Validator.validate_types!(input.code_verifier, ::String, context: "#{context}[:code_verifier]")
      end
    end

    class CreateTokenWithIAMOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateTokenWithIAMOutput, context: context)
        Hearth::Validator.validate_types!(input.access_token, ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate_types!(input.token_type, ::String, context: "#{context}[:token_type]")
        Hearth::Validator.validate_types!(input.expires_in, ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate_types!(input.refresh_token, ::String, context: "#{context}[:refresh_token]")
        Hearth::Validator.validate_types!(input.id_token, ::String, context: "#{context}[:id_token]")
        Hearth::Validator.validate_types!(input.issued_token_type, ::String, context: "#{context}[:issued_token_type]")
        Scopes.validate!(input.scope, context: "#{context}[:scope]") unless input.scope.nil?
      end
    end

    class ExpiredTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExpiredTokenException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class GrantTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidClientException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidClientMetadataException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidClientMetadataException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidGrantException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidGrantException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidRedirectUriException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidRedirectUriException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidRequestRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidRequestRegionException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
        Hearth::Validator.validate_types!(input.endpoint, ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate_types!(input.region, ::String, context: "#{context}[:region]")
      end
    end

    class InvalidScopeException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidScopeException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class RedirectUris
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RegisterClientInput, context: context)
        Hearth::Validator.validate_required!(input.client_name, context: "#{context}[:client_name]")
        Hearth::Validator.validate_types!(input.client_name, ::String, context: "#{context}[:client_name]")
        Hearth::Validator.validate_required!(input.client_type, context: "#{context}[:client_type]")
        Hearth::Validator.validate_types!(input.client_type, ::String, context: "#{context}[:client_type]")
        Scopes.validate!(input.scopes, context: "#{context}[:scopes]") unless input.scopes.nil?
        RedirectUris.validate!(input.redirect_uris, context: "#{context}[:redirect_uris]") unless input.redirect_uris.nil?
        GrantTypes.validate!(input.grant_types, context: "#{context}[:grant_types]") unless input.grant_types.nil?
        Hearth::Validator.validate_types!(input.issuer_url, ::String, context: "#{context}[:issuer_url]")
        Hearth::Validator.validate_types!(input.entitled_application_arn, ::String, context: "#{context}[:entitled_application_arn]")
      end
    end

    class RegisterClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RegisterClientOutput, context: context)
        Hearth::Validator.validate_types!(input.client_id, ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate_types!(input.client_secret, ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate_types!(input.client_id_issued_at, ::Integer, context: "#{context}[:client_id_issued_at]")
        Hearth::Validator.validate_types!(input.client_secret_expires_at, ::Integer, context: "#{context}[:client_secret_expires_at]")
        Hearth::Validator.validate_types!(input.authorization_endpoint, ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate_types!(input.token_endpoint, ::String, context: "#{context}[:token_endpoint]")
      end
    end

    class Scopes
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SlowDownException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SlowDownException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class StartDeviceAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartDeviceAuthorizationInput, context: context)
        Hearth::Validator.validate_required!(input.client_id, context: "#{context}[:client_id]")
        Hearth::Validator.validate_types!(input.client_id, ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate_required!(input.client_secret, context: "#{context}[:client_secret]")
        Hearth::Validator.validate_types!(input.client_secret, ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate_required!(input.start_url, context: "#{context}[:start_url]")
        Hearth::Validator.validate_types!(input.start_url, ::String, context: "#{context}[:start_url]")
      end
    end

    class StartDeviceAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartDeviceAuthorizationOutput, context: context)
        Hearth::Validator.validate_types!(input.device_code, ::String, context: "#{context}[:device_code]")
        Hearth::Validator.validate_types!(input.user_code, ::String, context: "#{context}[:user_code]")
        Hearth::Validator.validate_types!(input.verification_uri, ::String, context: "#{context}[:verification_uri]")
        Hearth::Validator.validate_types!(input.verification_uri_complete, ::String, context: "#{context}[:verification_uri_complete]")
        Hearth::Validator.validate_types!(input.expires_in, ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate_types!(input.interval, ::Integer, context: "#{context}[:interval]")
      end
    end

    class UnauthorizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UnauthorizedClientException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

    class UnsupportedGrantTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UnsupportedGrantTypeException, context: context)
        Hearth::Validator.validate_types!(input.error, ::String, context: "#{context}[:error]")
        Hearth::Validator.validate_types!(input.error_description, ::String, context: "#{context}[:error_description]")
      end
    end

  end
end
