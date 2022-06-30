# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Outposts
  module Paginators

    class GetOutpostInstanceTypes
      # @param [Client] client
      # @param [Hash] params (see Client#get_outpost_instance_types)
      # @param [Hash] options (see Client#get_outpost_instance_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_outpost_instance_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_outpost_instance_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_outpost_instance_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssets
      # @param [Client] client
      # @param [Hash] params (see Client#list_assets)
      # @param [Hash] options (see Client#list_assets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCatalogItems
      # @param [Client] client
      # @param [Hash] params (see Client#list_catalog_items)
      # @param [Hash] options (see Client#list_catalog_items)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_catalog_items operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_catalog_items(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_catalog_items(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListOrders
      # @param [Client] client
      # @param [Hash] params (see Client#list_orders)
      # @param [Hash] options (see Client#list_orders)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_orders operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_orders(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_orders(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListOutposts
      # @param [Client] client
      # @param [Hash] params (see Client#list_outposts)
      # @param [Hash] options (see Client#list_outposts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_outposts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_outposts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_outposts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSites
      # @param [Client] client
      # @param [Hash] params (see Client#list_sites)
      # @param [Hash] options (see Client#list_sites)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sites operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sites(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sites(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
