# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamWrite
  module Paginators

    class ListDatabases
      # @param [Client] client
      # @param [Hash] params (see Client#list_databases)
      # @param [Hash] options (see Client#list_databases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_databases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_databases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_databases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTables
      # @param [Client] client
      # @param [Hash] params (see Client#list_tables)
      # @param [Hash] options (see Client#list_tables)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_tables(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tables(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
