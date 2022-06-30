# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroupsTaggingAPI
  module Paginators

    class GetComplianceSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_compliance_summary)
      # @param [Hash] options (see Client#get_compliance_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_compliance_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:pagination_token]
          response = @client.get_compliance_summary(params, @options)
          e.yield(response)
          output_token = response.pagination_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(pagination_token: output_token)
            response = @client.get_compliance_summary(params, @options)
            e.yield(response)
            output_token = response.pagination_token
          end
        end
      end

      # Iterate all items from pages in the get_compliance_summary operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetResources
      # @param [Client] client
      # @param [Hash] params (see Client#get_resources)
      # @param [Hash] options (see Client#get_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:pagination_token]
          response = @client.get_resources(params, @options)
          e.yield(response)
          output_token = response.pagination_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(pagination_token: output_token)
            response = @client.get_resources(params, @options)
            e.yield(response)
            output_token = response.pagination_token
          end
        end
      end

      # Iterate all items from pages in the get_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_tag_mapping_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTagKeys
      # @param [Client] client
      # @param [Hash] params (see Client#get_tag_keys)
      # @param [Hash] options (see Client#get_tag_keys)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_tag_keys operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:pagination_token]
          response = @client.get_tag_keys(params, @options)
          e.yield(response)
          output_token = response.pagination_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(pagination_token: output_token)
            response = @client.get_tag_keys(params, @options)
            e.yield(response)
            output_token = response.pagination_token
          end
        end
      end

      # Iterate all items from pages in the get_tag_keys operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tag_keys.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTagValues
      # @param [Client] client
      # @param [Hash] params (see Client#get_tag_values)
      # @param [Hash] options (see Client#get_tag_values)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_tag_values operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:pagination_token]
          response = @client.get_tag_values(params, @options)
          e.yield(response)
          output_token = response.pagination_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(pagination_token: output_token)
            response = @client.get_tag_values(params, @options)
            e.yield(response)
            output_token = response.pagination_token
          end
        end
      end

      # Iterate all items from pages in the get_tag_values operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tag_values.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
