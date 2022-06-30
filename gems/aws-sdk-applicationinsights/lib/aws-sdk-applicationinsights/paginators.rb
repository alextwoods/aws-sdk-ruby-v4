# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationInsights
  module Paginators

    class ListApplications
      # @param [Client] client
      # @param [Hash] params (see Client#list_applications)
      # @param [Hash] options (see Client#list_applications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_applications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_applications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_applications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListComponents
      # @param [Client] client
      # @param [Hash] params (see Client#list_components)
      # @param [Hash] options (see Client#list_components)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_components operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_components(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_components(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConfigurationHistory
      # @param [Client] client
      # @param [Hash] params (see Client#list_configuration_history)
      # @param [Hash] options (see Client#list_configuration_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_configuration_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_configuration_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_configuration_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLogPatterns
      # @param [Client] client
      # @param [Hash] params (see Client#list_log_patterns)
      # @param [Hash] options (see Client#list_log_patterns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_log_patterns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_log_patterns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_log_patterns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLogPatternSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_log_pattern_sets)
      # @param [Hash] options (see Client#list_log_pattern_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_log_pattern_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_log_pattern_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_log_pattern_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProblems
      # @param [Client] client
      # @param [Hash] params (see Client#list_problems)
      # @param [Hash] options (see Client#list_problems)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_problems operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_problems(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_problems(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
