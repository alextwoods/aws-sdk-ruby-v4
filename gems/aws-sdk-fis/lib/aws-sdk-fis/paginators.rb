# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Fis
  module Paginators

    class ListActions
      # @param [Client] client
      # @param [Hash] params (see Client#list_actions)
      # @param [Hash] options (see Client#list_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_actions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_actions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListExperiments
      # @param [Client] client
      # @param [Hash] params (see Client#list_experiments)
      # @param [Hash] options (see Client#list_experiments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_experiments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_experiments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_experiments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListExperimentTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_experiment_templates)
      # @param [Hash] options (see Client#list_experiment_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_experiment_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_experiment_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_experiment_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTargetResourceTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_target_resource_types)
      # @param [Hash] options (see Client#list_target_resource_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_target_resource_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_target_resource_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_target_resource_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
