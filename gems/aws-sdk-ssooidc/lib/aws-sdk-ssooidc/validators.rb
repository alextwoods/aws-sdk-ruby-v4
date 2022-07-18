# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class AuthorizationPendingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationPendingException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class CreateTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTokenInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:grant_type], ::String, context: "#{context}[:grant_type]")
        Hearth::Validator.validate!(input[:device_code], ::String, context: "#{context}[:device_code]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Scopes.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Hearth::Validator.validate!(input[:redirect_uri], ::String, context: "#{context}[:redirect_uri]")
      end
    end

    class CreateTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTokenOutput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:token_type], ::String, context: "#{context}[:token_type]")
        Hearth::Validator.validate!(input[:expires_in], ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Hearth::Validator.validate!(input[:id_token], ::String, context: "#{context}[:id_token]")
      end
    end

    class ExpiredTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredTokenException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidClientMetadataException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientMetadataException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidGrantException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGrantException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class InvalidScopeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidScopeException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class RegisterClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterClientInput, context: context)
        Hearth::Validator.validate!(input[:client_name], ::String, context: "#{context}[:client_name]")
        Hearth::Validator.validate!(input[:client_type], ::String, context: "#{context}[:client_type]")
        Scopes.validate!(input[:scopes], context: "#{context}[:scopes]") unless input[:scopes].nil?
      end
    end

    class RegisterClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterClientOutput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:client_id_issued_at], ::Integer, context: "#{context}[:client_id_issued_at]")
        Hearth::Validator.validate!(input[:client_secret_expires_at], ::Integer, context: "#{context}[:client_secret_expires_at]")
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:token_endpoint], ::String, context: "#{context}[:token_endpoint]")
      end
    end

    class Scopes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SlowDownException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlowDownException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class StartDeviceAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeviceAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:start_url], ::String, context: "#{context}[:start_url]")
      end
    end

    class StartDeviceAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeviceAuthorizationOutput, context: context)
        Hearth::Validator.validate!(input[:device_code], ::String, context: "#{context}[:device_code]")
        Hearth::Validator.validate!(input[:user_code], ::String, context: "#{context}[:user_code]")
        Hearth::Validator.validate!(input[:verification_uri], ::String, context: "#{context}[:verification_uri]")
        Hearth::Validator.validate!(input[:verification_uri_complete], ::String, context: "#{context}[:verification_uri_complete]")
        Hearth::Validator.validate!(input[:expires_in], ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
      end
    end

    class UnauthorizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedClientException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class UnsupportedGrantTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedGrantTypeException, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

  end
end
