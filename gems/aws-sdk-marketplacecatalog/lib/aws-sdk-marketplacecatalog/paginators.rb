# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCatalog
  module Paginators

    class ListChangeSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_change_sets)
      # @param [Hash] options (see Client#list_change_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_change_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_change_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_change_sets(params, @options)
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

  end
end
