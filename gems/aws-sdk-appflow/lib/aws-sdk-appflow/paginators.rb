# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Appflow
  module Paginators

    class DescribeConnectorProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#describe_connector_profiles)
      # @param [Hash] options (see Client#describe_connector_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_connector_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_connector_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_connector_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeConnectors
      # @param [Client] client
      # @param [Hash] params (see Client#describe_connectors)
      # @param [Hash] options (see Client#describe_connectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_connectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_connectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_connectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFlowExecutionRecords
      # @param [Client] client
      # @param [Hash] params (see Client#describe_flow_execution_records)
      # @param [Hash] options (see Client#describe_flow_execution_records)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_flow_execution_records operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_flow_execution_records(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_flow_execution_records(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConnectors
      # @param [Client] client
      # @param [Hash] params (see Client#list_connectors)
      # @param [Hash] options (see Client#list_connectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_connectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_connectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_connectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFlows
      # @param [Client] client
      # @param [Hash] params (see Client#list_flows)
      # @param [Hash] options (see Client#list_flows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_flows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_flows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_flows(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
