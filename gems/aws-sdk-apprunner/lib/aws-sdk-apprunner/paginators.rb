# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppRunner
  module Paginators

    class DescribeCustomDomains
      # @param [Client] client
      # @param [Hash] params (see Client#describe_custom_domains)
      # @param [Hash] options (see Client#describe_custom_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_custom_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_custom_domains(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_custom_domains(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAutoScalingConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_auto_scaling_configurations)
      # @param [Hash] options (see Client#list_auto_scaling_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_auto_scaling_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_auto_scaling_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_auto_scaling_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConnections
      # @param [Client] client
      # @param [Hash] params (see Client#list_connections)
      # @param [Hash] options (see Client#list_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListObservabilityConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_observability_configurations)
      # @param [Hash] options (see Client#list_observability_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_observability_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_observability_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_observability_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListOperations
      # @param [Client] client
      # @param [Hash] params (see Client#list_operations)
      # @param [Hash] options (see Client#list_operations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_operations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_operations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_operations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListServices
      # @param [Client] client
      # @param [Hash] params (see Client#list_services)
      # @param [Hash] options (see Client#list_services)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_services operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_services(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_services(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListVpcConnectors
      # @param [Client] client
      # @param [Hash] params (see Client#list_vpc_connectors)
      # @param [Hash] options (see Client#list_vpc_connectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_vpc_connectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_vpc_connectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_vpc_connectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
