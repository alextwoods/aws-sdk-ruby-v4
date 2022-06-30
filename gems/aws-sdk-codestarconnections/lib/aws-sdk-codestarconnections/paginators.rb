# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStarConnections
  module Paginators

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

    class ListHosts
      # @param [Client] client
      # @param [Hash] params (see Client#list_hosts)
      # @param [Hash] options (see Client#list_hosts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_hosts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_hosts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_hosts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
