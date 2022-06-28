# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  module Paginators

    class ListAccountRoles
      # @param [Client] client
      # @param [Hash] params (see Client#list_account_roles)
      # @param [Hash] options (see Client#list_account_roles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_account_roles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_account_roles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_account_roles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_accounts)
      # @param [Hash] options (see Client#list_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
