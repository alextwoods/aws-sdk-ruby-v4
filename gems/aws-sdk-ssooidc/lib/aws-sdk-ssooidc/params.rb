# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module AuthorizationPendingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationPendingException, context: context)
        type = Types::AuthorizationPendingException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module CreateTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTokenInput, context: context)
        type = Types::CreateTokenInput.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.grant_type = params[:grant_type]
        type.device_code = params[:device_code]
        type.code = params[:code]
        type.refresh_token = params[:refresh_token]
        type.scope = Scopes.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.redirect_uri = params[:redirect_uri]
        type
      end
    end

    module CreateTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTokenOutput, context: context)
        type = Types::CreateTokenOutput.new
        type.access_token = params[:access_token]
        type.token_type = params[:token_type]
        type.expires_in = params[:expires_in]
        type.refresh_token = params[:refresh_token]
        type.id_token = params[:id_token]
        type
      end
    end

    module ExpiredTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredTokenException, context: context)
        type = Types::ExpiredTokenException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module InvalidClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientException, context: context)
        type = Types::InvalidClientException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module InvalidClientMetadataException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientMetadataException, context: context)
        type = Types::InvalidClientMetadataException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module InvalidGrantException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGrantException, context: context)
        type = Types::InvalidGrantException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module InvalidScopeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidScopeException, context: context)
        type = Types::InvalidScopeException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module RegisterClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterClientInput, context: context)
        type = Types::RegisterClientInput.new
        type.client_name = params[:client_name]
        type.client_type = params[:client_type]
        type.scopes = Scopes.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type
      end
    end

    module RegisterClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterClientOutput, context: context)
        type = Types::RegisterClientOutput.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.client_id_issued_at = params[:client_id_issued_at]
        type.client_secret_expires_at = params[:client_secret_expires_at]
        type.authorization_endpoint = params[:authorization_endpoint]
        type.token_endpoint = params[:token_endpoint]
        type
      end
    end

    module Scopes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SlowDownException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlowDownException, context: context)
        type = Types::SlowDownException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module StartDeviceAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeviceAuthorizationInput, context: context)
        type = Types::StartDeviceAuthorizationInput.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.start_url = params[:start_url]
        type
      end
    end

    module StartDeviceAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeviceAuthorizationOutput, context: context)
        type = Types::StartDeviceAuthorizationOutput.new
        type.device_code = params[:device_code]
        type.user_code = params[:user_code]
        type.verification_uri = params[:verification_uri]
        type.verification_uri_complete = params[:verification_uri_complete]
        type.expires_in = params[:expires_in]
        type.interval = params[:interval]
        type
      end
    end

    module UnauthorizedClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedClientException, context: context)
        type = Types::UnauthorizedClientException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

    module UnsupportedGrantTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedGrantTypeException, context: context)
        type = Types::UnsupportedGrantTypeException.new
        type.error = params[:error]
        type.error_description = params[:error_description]
        type
      end
    end

  end
end
