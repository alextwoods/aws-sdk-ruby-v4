# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataPipeline
  module Paginators

    class DescribeObjects
      # @param [Client] client
      # @param [Hash] params (see Client#describe_objects)
      # @param [Hash] options (see Client#describe_objects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_objects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_objects(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_objects(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the describe_objects operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipeline_objects.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPipelines
      # @param [Client] client
      # @param [Hash] params (see Client#list_pipelines)
      # @param [Hash] options (see Client#list_pipelines)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pipelines operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_pipelines(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_pipelines(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_pipelines operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipeline_id_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class QueryObjects
      # @param [Client] client
      # @param [Hash] params (see Client#query_objects)
      # @param [Hash] options (see Client#query_objects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the query_objects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.query_objects(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.query_objects(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the query_objects operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
