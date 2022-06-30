# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Honeycode
  module Paginators

    class ListTableColumns
      # @param [Client] client
      # @param [Hash] params (see Client#list_table_columns)
      # @param [Hash] options (see Client#list_table_columns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_table_columns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_table_columns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_table_columns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTableRows
      # @param [Client] client
      # @param [Hash] params (see Client#list_table_rows)
      # @param [Hash] options (see Client#list_table_rows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_table_rows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_table_rows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_table_rows(params, @options)
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

    class QueryTableRows
      # @param [Client] client
      # @param [Hash] params (see Client#query_table_rows)
      # @param [Hash] options (see Client#query_table_rows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the query_table_rows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.query_table_rows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.query_table_rows(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
