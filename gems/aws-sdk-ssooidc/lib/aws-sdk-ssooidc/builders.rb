# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SSOOIDC
  module Builders

    # Operation Builder for CreateToken
    class CreateToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/token')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['grantType'] = input[:grant_type] unless input[:grant_type].nil?
        data['deviceCode'] = input[:device_code] unless input[:device_code].nil?
        data['code'] = input[:code] unless input[:code].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['scope'] = Builders::Scopes.build(input[:scope]) unless input[:scope].nil?
        data['redirectUri'] = input[:redirect_uri] unless input[:redirect_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Scopes
    class Scopes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RegisterClient
    class RegisterClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/client/register')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientName'] = input[:client_name] unless input[:client_name].nil?
        data['clientType'] = input[:client_type] unless input[:client_type].nil?
        data['scopes'] = Builders::Scopes.build(input[:scopes]) unless input[:scopes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDeviceAuthorization
    class StartDeviceAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/device_authorization')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['startUrl'] = input[:start_url] unless input[:start_url].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
