# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IotDeviceAdvisor
  module Paginators

    class ListSuiteDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_suite_definitions)
      # @param [Hash] options (see Client#list_suite_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_suite_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_suite_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_suite_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSuiteRuns
      # @param [Client] client
      # @param [Hash] params (see Client#list_suite_runs)
      # @param [Hash] options (see Client#list_suite_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_suite_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_suite_runs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_suite_runs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
