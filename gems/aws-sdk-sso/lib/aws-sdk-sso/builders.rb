# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  # @api private
  module Builders

    class GetRoleCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/federation/credentials')
        params = Hearth::Query::ParamList.new
        params['role_name'] = input.role_name.to_s unless input.role_name.nil?
        params['account_id'] = input.account_id.to_s unless input.account_id.nil?
        http_req.append_query_param_list(params)
        http_req.headers['x-amz-sso_bearer_token'] = input.access_token unless input.access_token.nil?
      end
    end

    class ListAccountRoles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assignment/roles')
        params = Hearth::Query::ParamList.new
        params['next_token'] = input.next_token.to_s unless input.next_token.nil?
        params['max_result'] = input.max_results.to_s unless input.max_results.nil?
        params['account_id'] = input.account_id.to_s unless input.account_id.nil?
        http_req.append_query_param_list(params)
        http_req.headers['x-amz-sso_bearer_token'] = input.access_token unless input.access_token.nil?
      end
    end

    class ListAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assignment/accounts')
        params = Hearth::Query::ParamList.new
        params['next_token'] = input.next_token.to_s unless input.next_token.nil?
        params['max_result'] = input.max_results.to_s unless input.max_results.nil?
        http_req.append_query_param_list(params)
        http_req.headers['x-amz-sso_bearer_token'] = input.access_token unless input.access_token.nil?
      end
    end

    class Logout
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/logout')
        http_req.headers['x-amz-sso_bearer_token'] = input.access_token unless input.access_token.nil?
      end
    end
  end
end
