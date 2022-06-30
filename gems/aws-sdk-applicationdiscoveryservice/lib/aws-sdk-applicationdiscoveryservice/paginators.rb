# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationDiscoveryService
  module Paginators

    class DescribeContinuousExports
      # @param [Client] client
      # @param [Hash] params (see Client#describe_continuous_exports)
      # @param [Hash] options (see Client#describe_continuous_exports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_continuous_exports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_continuous_exports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_continuous_exports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeImportTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_import_tasks)
      # @param [Hash] options (see Client#describe_import_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_import_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_import_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_import_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
