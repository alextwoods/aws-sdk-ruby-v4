# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie
  module Paginators

    class ListMemberAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_member_accounts)
      # @param [Hash] options (see Client#list_member_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_member_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_member_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_member_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListS3Resources
      # @param [Client] client
      # @param [Hash] params (see Client#list_s3_resources)
      # @param [Hash] options (see Client#list_s3_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_s3_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_s3_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_s3_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
