# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Cloudfront
  module Paginators

    class ListCloudFrontOriginAccessIdentities
      # @param [Client] client
      # @param [Hash] params (see Client#list_cloud_front_origin_access_identities)
      # @param [Hash] options (see Client#list_cloud_front_origin_access_identities)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_cloud_front_origin_access_identities operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_cloud_front_origin_access_identities(params, @options)
          e.yield(response)
          output_token = response.cloud_front_origin_access_identity_list&.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_cloud_front_origin_access_identities(params, @options)
            e.yield(response)
            output_token = response.cloud_front_origin_access_identity_list&.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_cloud_front_origin_access_identities operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cloud_front_origin_access_identity_list&.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDistributions
      # @param [Client] client
      # @param [Hash] params (see Client#list_distributions)
      # @param [Hash] options (see Client#list_distributions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_distributions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_distributions(params, @options)
          e.yield(response)
          output_token = response.distribution_list&.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_distributions(params, @options)
            e.yield(response)
            output_token = response.distribution_list&.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_distributions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.distribution_list&.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInvalidations
      # @param [Client] client
      # @param [Hash] params (see Client#list_invalidations)
      # @param [Hash] options (see Client#list_invalidations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_invalidations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_invalidations(params, @options)
          e.yield(response)
          output_token = response.invalidation_list&.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_invalidations(params, @options)
            e.yield(response)
            output_token = response.invalidation_list&.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_invalidations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.invalidation_list&.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStreamingDistributions
      # @param [Client] client
      # @param [Hash] params (see Client#list_streaming_distributions)
      # @param [Hash] options (see Client#list_streaming_distributions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_streaming_distributions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_streaming_distributions(params, @options)
          e.yield(response)
          output_token = response.streaming_distribution_list&.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_streaming_distributions(params, @options)
            e.yield(response)
            output_token = response.streaming_distribution_list&.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_streaming_distributions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.streaming_distribution_list&.items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
