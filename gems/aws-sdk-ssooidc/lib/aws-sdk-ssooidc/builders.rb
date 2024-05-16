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
  module Builders

    class CreateToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/token')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['grantType'] = input[:grant_type] unless input[:grant_type].nil?
        data['deviceCode'] = input[:device_code] unless input[:device_code].nil?
        data['code'] = input[:code] unless input[:code].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['scope'] = Scopes.build(input[:scope]) unless input[:scope].nil?
        data['redirectUri'] = input[:redirect_uri] unless input[:redirect_uri].nil?
        data['codeVerifier'] = input[:code_verifier] unless input[:code_verifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateTokenWithIAM
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('aws_iam=t').each do |k,v|
          http_req.append_query_param(k, v)
        end
        http_req.append_path('/token')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['grantType'] = input[:grant_type] unless input[:grant_type].nil?
        data['code'] = input[:code] unless input[:code].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['assertion'] = input[:assertion] unless input[:assertion].nil?
        data['scope'] = Scopes.build(input[:scope]) unless input[:scope].nil?
        data['redirectUri'] = input[:redirect_uri] unless input[:redirect_uri].nil?
        data['subjectToken'] = input[:subject_token] unless input[:subject_token].nil?
        data['subjectTokenType'] = input[:subject_token_type] unless input[:subject_token_type].nil?
        data['requestedTokenType'] = input[:requested_token_type] unless input[:requested_token_type].nil?
        data['codeVerifier'] = input[:code_verifier] unless input[:code_verifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GrantTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class RedirectUris
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class RegisterClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/client/register')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientName'] = input[:client_name] unless input[:client_name].nil?
        data['clientType'] = input[:client_type] unless input[:client_type].nil?
        data['scopes'] = Scopes.build(input[:scopes]) unless input[:scopes].nil?
        data['redirectUris'] = RedirectUris.build(input[:redirect_uris]) unless input[:redirect_uris].nil?
        data['grantTypes'] = GrantTypes.build(input[:grant_types]) unless input[:grant_types].nil?
        data['issuerUrl'] = input[:issuer_url] unless input[:issuer_url].nil?
        data['entitledApplicationArn'] = input[:entitled_application_arn] unless input[:entitled_application_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Scopes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class StartDeviceAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/device_authorization')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['startUrl'] = input[:start_url] unless input[:start_url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
