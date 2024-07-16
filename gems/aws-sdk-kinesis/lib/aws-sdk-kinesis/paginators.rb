# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Paginators

    class ListStreamConsumers
      # @param [Client] client
      # @param (see Client#list_stream_consumers)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_stream_consumers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_stream_consumers(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_stream_consumers(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListStreams
      # @param [Client] client
      # @param (see Client#list_streams)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_streams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_streams(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_streams(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

  end
end
