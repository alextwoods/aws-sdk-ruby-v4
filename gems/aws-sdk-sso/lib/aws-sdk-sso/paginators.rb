# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  module Paginators

    class ListAccountRoles
      # @param [Client] client
      # @param (see Client#list_account_roles)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_account_roles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_account_roles(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_account_roles(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end

      # Iterate all items from pages in the list_account_roles operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.role_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAccounts
      # @param [Client] client
      # @param (see Client#list_accounts)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_accounts(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_accounts(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end

      # Iterate all items from pages in the list_accounts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.account_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
