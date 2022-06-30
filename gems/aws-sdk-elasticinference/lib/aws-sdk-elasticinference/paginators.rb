# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticInference
  module Paginators

    class DescribeAccelerators
      # @param [Client] client
      # @param [Hash] params (see Client#describe_accelerators)
      # @param [Hash] options (see Client#describe_accelerators)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_accelerators operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_accelerators(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_accelerators(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
