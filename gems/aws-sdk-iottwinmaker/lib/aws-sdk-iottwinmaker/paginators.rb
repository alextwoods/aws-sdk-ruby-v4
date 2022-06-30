# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTTwinMaker
  module Paginators

    class GetPropertyValueHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_property_value_history)
      # @param [Hash] options (see Client#get_property_value_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_property_value_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_property_value_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_property_value_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListComponentTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_component_types)
      # @param [Hash] options (see Client#list_component_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_component_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_component_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_component_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEntities
      # @param [Client] client
      # @param [Hash] params (see Client#list_entities)
      # @param [Hash] options (see Client#list_entities)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_entities operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_entities(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_entities(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListScenes
      # @param [Client] client
      # @param [Hash] params (see Client#list_scenes)
      # @param [Hash] options (see Client#list_scenes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_scenes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_scenes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_scenes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorkspaces
      # @param [Client] client
      # @param [Hash] params (see Client#list_workspaces)
      # @param [Hash] options (see Client#list_workspaces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workspaces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workspaces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workspaces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
