# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  # @api private
  module Params

    class AccessDeniedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class AuthorizationPendingException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AuthorizationPendingException, context: context)
        type = Types::AuthorizationPendingException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class CreateTokenInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateTokenInput, context: context)
        type = Types::CreateTokenInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.client_id = params[:client_id] unless params[:client_id].nil?
        type.client_secret = params[:client_secret] unless params[:client_secret].nil?
        type.grant_type = params[:grant_type] unless params[:grant_type].nil?
        type.device_code = params[:device_code] unless params[:device_code].nil?
        type.code = params[:code] unless params[:code].nil?
        type.refresh_token = params[:refresh_token] unless params[:refresh_token].nil?
        type.scope = Scopes.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.redirect_uri = params[:redirect_uri] unless params[:redirect_uri].nil?
        type.code_verifier = params[:code_verifier] unless params[:code_verifier].nil?
        type
      end
    end

    class CreateTokenOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateTokenOutput, context: context)
        type = Types::CreateTokenOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_token = params[:access_token] unless params[:access_token].nil?
        type.token_type = params[:token_type] unless params[:token_type].nil?
        type.expires_in = params[:expires_in] unless params[:expires_in].nil?
        type.refresh_token = params[:refresh_token] unless params[:refresh_token].nil?
        type.id_token = params[:id_token] unless params[:id_token].nil?
        type
      end
    end

    class CreateTokenWithIAMInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateTokenWithIAMInput, context: context)
        type = Types::CreateTokenWithIAMInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.client_id = params[:client_id] unless params[:client_id].nil?
        type.grant_type = params[:grant_type] unless params[:grant_type].nil?
        type.code = params[:code] unless params[:code].nil?
        type.refresh_token = params[:refresh_token] unless params[:refresh_token].nil?
        type.assertion = params[:assertion] unless params[:assertion].nil?
        type.scope = Scopes.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.redirect_uri = params[:redirect_uri] unless params[:redirect_uri].nil?
        type.subject_token = params[:subject_token] unless params[:subject_token].nil?
        type.subject_token_type = params[:subject_token_type] unless params[:subject_token_type].nil?
        type.requested_token_type = params[:requested_token_type] unless params[:requested_token_type].nil?
        type.code_verifier = params[:code_verifier] unless params[:code_verifier].nil?
        type
      end
    end

    class CreateTokenWithIAMOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateTokenWithIAMOutput, context: context)
        type = Types::CreateTokenWithIAMOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_token = params[:access_token] unless params[:access_token].nil?
        type.token_type = params[:token_type] unless params[:token_type].nil?
        type.expires_in = params[:expires_in] unless params[:expires_in].nil?
        type.refresh_token = params[:refresh_token] unless params[:refresh_token].nil?
        type.id_token = params[:id_token] unless params[:id_token].nil?
        type.issued_token_type = params[:issued_token_type] unless params[:issued_token_type].nil?
        type.scope = Scopes.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type
      end
    end

    class ExpiredTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExpiredTokenException, context: context)
        type = Types::ExpiredTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class GrantTypes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class InternalServerException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class InvalidClientException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidClientException, context: context)
        type = Types::InvalidClientException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class InvalidClientMetadataException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidClientMetadataException, context: context)
        type = Types::InvalidClientMetadataException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class InvalidGrantException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidGrantException, context: context)
        type = Types::InvalidGrantException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class InvalidRedirectUriException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidRedirectUriException, context: context)
        type = Types::InvalidRedirectUriException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class InvalidRequestException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class InvalidRequestRegionException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidRequestRegionException, context: context)
        type = Types::InvalidRequestRegionException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type.endpoint = params[:endpoint] unless params[:endpoint].nil?
        type.region = params[:region] unless params[:region].nil?
        type
      end
    end

    class InvalidScopeException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidScopeException, context: context)
        type = Types::InvalidScopeException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class RedirectUris
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class RegisterClientInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RegisterClientInput, context: context)
        type = Types::RegisterClientInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.client_name = params[:client_name] unless params[:client_name].nil?
        type.client_type = params[:client_type] unless params[:client_type].nil?
        type.scopes = Scopes.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type.redirect_uris = RedirectUris.build(params[:redirect_uris], context: "#{context}[:redirect_uris]") unless params[:redirect_uris].nil?
        type.grant_types = GrantTypes.build(params[:grant_types], context: "#{context}[:grant_types]") unless params[:grant_types].nil?
        type.issuer_url = params[:issuer_url] unless params[:issuer_url].nil?
        type.entitled_application_arn = params[:entitled_application_arn] unless params[:entitled_application_arn].nil?
        type
      end
    end

    class RegisterClientOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RegisterClientOutput, context: context)
        type = Types::RegisterClientOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.client_id = params[:client_id] unless params[:client_id].nil?
        type.client_secret = params[:client_secret] unless params[:client_secret].nil?
        type.client_id_issued_at = params[:client_id_issued_at] unless params[:client_id_issued_at].nil?
        type.client_secret_expires_at = params[:client_secret_expires_at] unless params[:client_secret_expires_at].nil?
        type.authorization_endpoint = params[:authorization_endpoint] unless params[:authorization_endpoint].nil?
        type.token_endpoint = params[:token_endpoint] unless params[:token_endpoint].nil?
        type
      end
    end

    class Scopes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class SlowDownException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SlowDownException, context: context)
        type = Types::SlowDownException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class StartDeviceAuthorizationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartDeviceAuthorizationInput, context: context)
        type = Types::StartDeviceAuthorizationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.client_id = params[:client_id] unless params[:client_id].nil?
        type.client_secret = params[:client_secret] unless params[:client_secret].nil?
        type.start_url = params[:start_url] unless params[:start_url].nil?
        type
      end
    end

    class StartDeviceAuthorizationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartDeviceAuthorizationOutput, context: context)
        type = Types::StartDeviceAuthorizationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.device_code = params[:device_code] unless params[:device_code].nil?
        type.user_code = params[:user_code] unless params[:user_code].nil?
        type.verification_uri = params[:verification_uri] unless params[:verification_uri].nil?
        type.verification_uri_complete = params[:verification_uri_complete] unless params[:verification_uri_complete].nil?
        type.expires_in = params[:expires_in] unless params[:expires_in].nil?
        type.interval = params[:interval] unless params[:interval].nil?
        type
      end
    end

    class UnauthorizedClientException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UnauthorizedClientException, context: context)
        type = Types::UnauthorizedClientException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

    class UnsupportedGrantTypeException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UnsupportedGrantTypeException, context: context)
        type = Types::UnsupportedGrantTypeException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = params[:error] unless params[:error].nil?
        type.error_description = params[:error_description] unless params[:error_description].nil?
        type
      end
    end

  end
end
