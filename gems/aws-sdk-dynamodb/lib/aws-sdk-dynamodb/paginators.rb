# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDB
  module Paginators

    class ListContributorInsights
      # @param [Client] client
      # @param (see Client#list_contributor_insights)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_contributor_insights operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_contributor_insights(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_contributor_insights(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListExports
      # @param [Client] client
      # @param (see Client#list_exports)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_exports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_exports(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_exports(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListImports
      # @param [Client] client
      # @param (see Client#list_imports)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_imports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_imports(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_imports(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListTables
      # @param [Client] client
      # @param (see Client#list_tables)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:exclusive_start_table_name]
          output = @client.list_tables(params, @options)
          e.yield(output)
          output_token = output.data.last_evaluated_table_name

          until output_token.nil? || @prev_token == output_token
            params = params.merge(exclusive_start_table_name: output_token)
            output = @client.list_tables(params, @options)
            e.yield(output)
            output_token = output.data.last_evaluated_table_name
          end
        end
      end

      # Iterate all items from pages in the list_tables operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.table_names.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class Query
      # @param [Client] client
      # @param (see Client#query)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the query operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:exclusive_start_key]
          output = @client.query(params, @options)
          e.yield(output)
          output_token = output.data.last_evaluated_key

          until output_token.nil? || @prev_token == output_token
            params = params.merge(exclusive_start_key: output_token)
            output = @client.query(params, @options)
            e.yield(output)
            output_token = output.data.last_evaluated_key
          end
        end
      end

      # Iterate all items from pages in the query operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class Scan
      # @param [Client] client
      # @param (see Client#scan)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the scan operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:exclusive_start_key]
          output = @client.scan(params, @options)
          e.yield(output)
          output_token = output.data.last_evaluated_key

          until output_token.nil? || @prev_token == output_token
            params = params.merge(exclusive_start_key: output_token)
            output = @client.scan(params, @options)
            e.yield(output)
            output_token = output.data.last_evaluated_key
          end
        end
      end

      # Iterate all items from pages in the scan operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
