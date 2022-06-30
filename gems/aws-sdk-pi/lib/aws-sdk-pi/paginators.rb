# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PI
  module Paginators

    class DescribeDimensionKeys
      # @param [Client] client
      # @param [Hash] params (see Client#describe_dimension_keys)
      # @param [Hash] options (see Client#describe_dimension_keys)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_dimension_keys operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_dimension_keys(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_dimension_keys(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetResourceMetrics
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_metrics)
      # @param [Hash] options (see Client#get_resource_metrics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_metrics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_metrics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAvailableResourceDimensions
      # @param [Client] client
      # @param [Hash] params (see Client#list_available_resource_dimensions)
      # @param [Hash] options (see Client#list_available_resource_dimensions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_available_resource_dimensions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_available_resource_dimensions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_available_resource_dimensions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAvailableResourceMetrics
      # @param [Client] client
      # @param [Hash] params (see Client#list_available_resource_metrics)
      # @param [Hash] options (see Client#list_available_resource_metrics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_available_resource_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_available_resource_metrics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_available_resource_metrics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
