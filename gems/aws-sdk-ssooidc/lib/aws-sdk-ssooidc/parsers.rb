# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  # @api private
  module Parsers

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for AuthorizationPendingException
    class AuthorizationPendingException
      def self.parse(http_resp)
        data = Types::AuthorizationPendingException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    class CreateToken
      def self.parse(http_resp)
        data = Types::CreateTokenOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.access_token = map['accessToken'] unless map['accessToken'].nil?
        data.token_type = map['tokenType'] unless map['tokenType'].nil?
        data.expires_in = map['expiresIn'] unless map['expiresIn'].nil?
        data.refresh_token = map['refreshToken'] unless map['refreshToken'].nil?
        data.id_token = map['idToken'] unless map['idToken'].nil?
        data
      end
    end

    class CreateTokenWithIAM
      def self.parse(http_resp)
        data = Types::CreateTokenWithIAMOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.access_token = map['accessToken'] unless map['accessToken'].nil?
        data.token_type = map['tokenType'] unless map['tokenType'].nil?
        data.expires_in = map['expiresIn'] unless map['expiresIn'].nil?
        data.refresh_token = map['refreshToken'] unless map['refreshToken'].nil?
        data.id_token = map['idToken'] unless map['idToken'].nil?
        data.issued_token_type = map['issuedTokenType'] unless map['issuedTokenType'].nil?
        data.scope = Scopes.parse(map['scope']) unless map['scope'].nil?
        data
      end
    end

    # Error Parser for ExpiredTokenException
    class ExpiredTokenException
      def self.parse(http_resp)
        data = Types::ExpiredTokenException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InvalidClientException
    class InvalidClientException
      def self.parse(http_resp)
        data = Types::InvalidClientException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InvalidClientMetadataException
    class InvalidClientMetadataException
      def self.parse(http_resp)
        data = Types::InvalidClientMetadataException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InvalidGrantException
    class InvalidGrantException
      def self.parse(http_resp)
        data = Types::InvalidGrantException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InvalidRedirectUriException
    class InvalidRedirectUriException
      def self.parse(http_resp)
        data = Types::InvalidRedirectUriException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for InvalidRequestRegionException
    class InvalidRequestRegionException
      def self.parse(http_resp)
        data = Types::InvalidRequestRegionException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data.endpoint = map['endpoint'] unless map['endpoint'].nil?
        data.region = map['region'] unless map['region'].nil?
        data
      end
    end

    # Error Parser for InvalidScopeException
    class InvalidScopeException
      def self.parse(http_resp)
        data = Types::InvalidScopeException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    class RegisterClient
      def self.parse(http_resp)
        data = Types::RegisterClientOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.client_id = map['clientId'] unless map['clientId'].nil?
        data.client_secret = map['clientSecret'] unless map['clientSecret'].nil?
        data.client_id_issued_at = map['clientIdIssuedAt'] unless map['clientIdIssuedAt'].nil?
        data.client_secret_expires_at = map['clientSecretExpiresAt'] unless map['clientSecretExpiresAt'].nil?
        data.authorization_endpoint = map['authorizationEndpoint'] unless map['authorizationEndpoint'].nil?
        data.token_endpoint = map['tokenEndpoint'] unless map['tokenEndpoint'].nil?
        data
      end
    end

    class Scopes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for SlowDownException
    class SlowDownException
      def self.parse(http_resp)
        data = Types::SlowDownException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    class StartDeviceAuthorization
      def self.parse(http_resp)
        data = Types::StartDeviceAuthorizationOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.device_code = map['deviceCode'] unless map['deviceCode'].nil?
        data.user_code = map['userCode'] unless map['userCode'].nil?
        data.verification_uri = map['verificationUri'] unless map['verificationUri'].nil?
        data.verification_uri_complete = map['verificationUriComplete'] unless map['verificationUriComplete'].nil?
        data.expires_in = map['expiresIn'] unless map['expiresIn'].nil?
        data.interval = map['interval'] unless map['interval'].nil?
        data
      end
    end

    # Error Parser for UnauthorizedClientException
    class UnauthorizedClientException
      def self.parse(http_resp)
        data = Types::UnauthorizedClientException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end

    # Error Parser for UnsupportedGrantTypeException
    class UnsupportedGrantTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedGrantTypeException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.error = map['error'] unless map['error'].nil?
        data.error_description = map['error_description'] unless map['error_description'].nil?
        data
      end
    end
  end
end
