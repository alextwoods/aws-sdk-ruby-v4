# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Sso
  module Builders

    # Operation Builder for GetRoleCredentials
    class GetRoleCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/federation/credentials')
        http_req.append_query_param('role_name', input[:role_name].to_s) unless input[:role_name].nil?
        http_req.append_query_param('account_id', input[:account_id].to_s) unless input[:account_id].nil?
        http_req.headers['x-amz-sso_bearer_token'] = input[:access_token] unless input[:access_token].nil? || input[:access_token].empty?
      end
    end

    # Operation Builder for ListAccountRoles
    class ListAccountRoles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assignment/roles')
        http_req.append_query_param('next_token', input[:next_token].to_s) unless input[:next_token].nil?
        http_req.append_query_param('max_result', input[:max_results].to_s) unless input[:max_results].nil?
        http_req.append_query_param('account_id', input[:account_id].to_s) unless input[:account_id].nil?
        http_req.headers['x-amz-sso_bearer_token'] = input[:access_token] unless input[:access_token].nil? || input[:access_token].empty?
      end
    end

    # Operation Builder for ListAccounts
    class ListAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assignment/accounts')
        http_req.append_query_param('next_token', input[:next_token].to_s) unless input[:next_token].nil?
        http_req.append_query_param('max_result', input[:max_results].to_s) unless input[:max_results].nil?
        http_req.headers['x-amz-sso_bearer_token'] = input[:access_token] unless input[:access_token].nil? || input[:access_token].empty?
      end
    end

    # Operation Builder for Logout
    class Logout
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/logout')
        http_req.headers['x-amz-sso_bearer_token'] = input[:access_token] unless input[:access_token].nil? || input[:access_token].empty?
      end
    end
  end
end