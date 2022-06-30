# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Stubs

    # Operation Stubber for CreateToken
    class CreateToken
      def self.default(visited=[])
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterClient
    class RegisterClient
      def self.default(visited=[])
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartDeviceAuthorization
    class StartDeviceAuthorization
      def self.default(visited=[])
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
