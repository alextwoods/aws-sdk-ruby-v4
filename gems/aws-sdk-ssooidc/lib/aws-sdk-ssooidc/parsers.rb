# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Parsers

    # Operation Parser for CreateToken
    class CreateToken
      def self.parse(http_resp)
        data = Types::CreateTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_token = map['accessToken']
        data.token_type = map['tokenType']
        data.expires_in = map['expiresIn']
        data.refresh_token = map['refreshToken']
        data.id_token = map['idToken']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for ExpiredTokenException
    class ExpiredTokenException
      def self.parse(http_resp)
        data = Types::ExpiredTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for SlowDownException
    class SlowDownException
      def self.parse(http_resp)
        data = Types::SlowDownException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for UnauthorizedClientException
    class UnauthorizedClientException
      def self.parse(http_resp)
        data = Types::UnauthorizedClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for InvalidGrantException
    class InvalidGrantException
      def self.parse(http_resp)
        data = Types::InvalidGrantException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for AuthorizationPendingException
    class AuthorizationPendingException
      def self.parse(http_resp)
        data = Types::AuthorizationPendingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for InvalidScopeException
    class InvalidScopeException
      def self.parse(http_resp)
        data = Types::InvalidScopeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for UnsupportedGrantTypeException
    class UnsupportedGrantTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedGrantTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Error Parser for InvalidClientException
    class InvalidClientException
      def self.parse(http_resp)
        data = Types::InvalidClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Operation Parser for RegisterClient
    class RegisterClient
      def self.parse(http_resp)
        data = Types::RegisterClientOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_id = map['clientId']
        data.client_secret = map['clientSecret']
        data.client_id_issued_at = map['clientIdIssuedAt']
        data.client_secret_expires_at = map['clientSecretExpiresAt']
        data.authorization_endpoint = map['authorizationEndpoint']
        data.token_endpoint = map['tokenEndpoint']
        data
      end
    end

    # Error Parser for InvalidClientMetadataException
    class InvalidClientMetadataException
      def self.parse(http_resp)
        data = Types::InvalidClientMetadataException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data.error_description = map['error_description']
        data
      end
    end

    # Operation Parser for StartDeviceAuthorization
    class StartDeviceAuthorization
      def self.parse(http_resp)
        data = Types::StartDeviceAuthorizationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_code = map['deviceCode']
        data.user_code = map['userCode']
        data.verification_uri = map['verificationUri']
        data.verification_uri_complete = map['verificationUriComplete']
        data.expires_in = map['expiresIn']
        data.interval = map['interval']
        data
      end
    end
  end
end
