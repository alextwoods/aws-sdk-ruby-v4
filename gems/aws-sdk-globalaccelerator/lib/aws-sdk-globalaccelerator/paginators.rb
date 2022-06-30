# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GlobalAccelerator
  module Paginators

    class ListAccelerators
      # @param [Client] client
      # @param [Hash] params (see Client#list_accelerators)
      # @param [Hash] options (see Client#list_accelerators)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accelerators operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_accelerators(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_accelerators(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListByoipCidrs
      # @param [Client] client
      # @param [Hash] params (see Client#list_byoip_cidrs)
      # @param [Hash] options (see Client#list_byoip_cidrs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_byoip_cidrs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_byoip_cidrs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_byoip_cidrs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomRoutingAccelerators
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_routing_accelerators)
      # @param [Hash] options (see Client#list_custom_routing_accelerators)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_routing_accelerators operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_routing_accelerators(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_routing_accelerators(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomRoutingEndpointGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_routing_endpoint_groups)
      # @param [Hash] options (see Client#list_custom_routing_endpoint_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_routing_endpoint_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_routing_endpoint_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_routing_endpoint_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomRoutingListeners
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_routing_listeners)
      # @param [Hash] options (see Client#list_custom_routing_listeners)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_routing_listeners operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_routing_listeners(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_routing_listeners(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomRoutingPortMappings
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_routing_port_mappings)
      # @param [Hash] options (see Client#list_custom_routing_port_mappings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_routing_port_mappings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_routing_port_mappings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_routing_port_mappings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomRoutingPortMappingsByDestination
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_routing_port_mappings_by_destination)
      # @param [Hash] options (see Client#list_custom_routing_port_mappings_by_destination)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_routing_port_mappings_by_destination operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_routing_port_mappings_by_destination(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_routing_port_mappings_by_destination(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEndpointGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_endpoint_groups)
      # @param [Hash] options (see Client#list_endpoint_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_endpoint_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_endpoint_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_endpoint_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListListeners
      # @param [Client] client
      # @param [Hash] params (see Client#list_listeners)
      # @param [Hash] options (see Client#list_listeners)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_listeners operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_listeners(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_listeners(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
