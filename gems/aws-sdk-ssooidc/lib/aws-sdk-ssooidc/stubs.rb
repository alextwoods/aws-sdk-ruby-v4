# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SSOOIDC
  # @api private
  module Stubs

    class AccessDeniedException
      def self.build(params, context:)
        Params::AccessDeniedException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AccessDeniedException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'AccessDeniedException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class AuthorizationPendingException
      def self.build(params, context:)
        Params::AuthorizationPendingException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AuthorizationPendingException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'AuthorizationPendingException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateToken
      def self.build(params, context:)
        Params::CreateTokenOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateTokenOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          access_token: 'access_token',
          token_type: 'token_type',
          expires_in: 1,
          refresh_token: 'refresh_token',
          id_token: 'id_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['tokenType'] = stub[:token_type] unless stub[:token_type].nil?
        data['expiresIn'] = stub[:expires_in] unless stub[:expires_in].nil?
        data['refreshToken'] = stub[:refresh_token] unless stub[:refresh_token].nil?
        data['idToken'] = stub[:id_token] unless stub[:id_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateTokenWithIAM
      def self.build(params, context:)
        Params::CreateTokenWithIAMOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateTokenWithIAMOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          access_token: 'access_token',
          token_type: 'token_type',
          expires_in: 1,
          refresh_token: 'refresh_token',
          id_token: 'id_token',
          issued_token_type: 'issued_token_type',
          scope: Scopes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['tokenType'] = stub[:token_type] unless stub[:token_type].nil?
        data['expiresIn'] = stub[:expires_in] unless stub[:expires_in].nil?
        data['refreshToken'] = stub[:refresh_token] unless stub[:refresh_token].nil?
        data['idToken'] = stub[:id_token] unless stub[:id_token].nil?
        data['issuedTokenType'] = stub[:issued_token_type] unless stub[:issued_token_type].nil?
        data['scope'] = Scopes.stub(stub[:scope]) unless stub[:scope].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExpiredTokenException
      def self.build(params, context:)
        Params::ExpiredTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExpiredTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'ExpiredTokenException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InternalServerException
      def self.build(params, context:)
        Params::InternalServerException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InternalServerException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 500
        http_resp.headers['X-Amzn-Errortype'] = 'InternalServerException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidClientException
      def self.build(params, context:)
        Params::InvalidClientException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidClientException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 401
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidClientException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidClientMetadataException
      def self.build(params, context:)
        Params::InvalidClientMetadataException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidClientMetadataException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidClientMetadataException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidGrantException
      def self.build(params, context:)
        Params::InvalidGrantException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidGrantException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidGrantException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidRedirectUriException
      def self.build(params, context:)
        Params::InvalidRedirectUriException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidRedirectUriException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidRedirectUriException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidRequestException
      def self.build(params, context:)
        Params::InvalidRequestException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidRequestException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidRequestException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidRequestRegionException
      def self.build(params, context:)
        Params::InvalidRequestRegionException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidRequestRegionException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
          endpoint: 'endpoint',
          region: 'region',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidRequestRegionException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidScopeException
      def self.build(params, context:)
        Params::InvalidScopeException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidScopeException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'InvalidScopeException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class RegisterClient
      def self.build(params, context:)
        Params::RegisterClientOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RegisterClientOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          client_id: 'client_id',
          client_secret: 'client_secret',
          client_id_issued_at: 1,
          client_secret_expires_at: 1,
          authorization_endpoint: 'authorization_endpoint',
          token_endpoint: 'token_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['clientSecret'] = stub[:client_secret] unless stub[:client_secret].nil?
        data['clientIdIssuedAt'] = stub[:client_id_issued_at] unless stub[:client_id_issued_at].nil?
        data['clientSecretExpiresAt'] = stub[:client_secret_expires_at] unless stub[:client_secret_expires_at].nil?
        data['authorizationEndpoint'] = stub[:authorization_endpoint] unless stub[:authorization_endpoint].nil?
        data['tokenEndpoint'] = stub[:token_endpoint] unless stub[:token_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Scopes
      def self.default(visited = [])
        return nil if visited.include?('Scopes')
        visited = visited + ['Scopes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class SlowDownException
      def self.build(params, context:)
        Params::SlowDownException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::SlowDownException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'SlowDownException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StartDeviceAuthorization
      def self.build(params, context:)
        Params::StartDeviceAuthorizationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartDeviceAuthorizationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          device_code: 'device_code',
          user_code: 'user_code',
          verification_uri: 'verification_uri',
          verification_uri_complete: 'verification_uri_complete',
          expires_in: 1,
          interval: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deviceCode'] = stub[:device_code] unless stub[:device_code].nil?
        data['userCode'] = stub[:user_code] unless stub[:user_code].nil?
        data['verificationUri'] = stub[:verification_uri] unless stub[:verification_uri].nil?
        data['verificationUriComplete'] = stub[:verification_uri_complete] unless stub[:verification_uri_complete].nil?
        data['expiresIn'] = stub[:expires_in] unless stub[:expires_in].nil?
        data['interval'] = stub[:interval] unless stub[:interval].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UnauthorizedClientException
      def self.build(params, context:)
        Params::UnauthorizedClientException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UnauthorizedClientException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'UnauthorizedClientException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UnsupportedGrantTypeException
      def self.build(params, context:)
        Params::UnsupportedGrantTypeException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UnsupportedGrantTypeException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          error: 'error',
          error_description: 'error_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['X-Amzn-Errortype'] = 'UnsupportedGrantTypeException'
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        data['error_description'] = stub[:error_description] unless stub[:error_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
