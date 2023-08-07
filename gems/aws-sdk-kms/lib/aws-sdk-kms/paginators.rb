# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Paginators

    class DescribeCustomKeyStores
      # @param [Client] client
      # @param [Hash] params (see Client#describe_custom_key_stores)
      # @param [Hash] options (see Client#describe_custom_key_stores)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_custom_key_stores operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_custom_key_stores(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_custom_key_stores(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the describe_custom_key_stores operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.custom_key_stores.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAliases
      # @param [Client] client
      # @param [Hash] params (see Client#list_aliases)
      # @param [Hash] options (see Client#list_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_aliases(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_aliases(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_aliases operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.aliases.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListGrants
      # @param [Client] client
      # @param [Hash] params (see Client#list_grants)
      # @param [Hash] options (see Client#list_grants)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_grants operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_grants(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_grants(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_grants operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.grants.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListKeyPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_key_policies)
      # @param [Hash] options (see Client#list_key_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_key_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_key_policies(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_key_policies(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_key_policies operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.policy_names.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListKeys
      # @param [Client] client
      # @param [Hash] params (see Client#list_keys)
      # @param [Hash] options (see Client#list_keys)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_keys operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_keys(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_keys(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_keys operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.keys.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourceTags
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_tags)
      # @param [Hash] options (see Client#list_resource_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_resource_tags(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_resource_tags(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_resource_tags operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tags.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRetirableGrants
      # @param [Client] client
      # @param [Hash] params (see Client#list_retirable_grants)
      # @param [Hash] options (see Client#list_retirable_grants)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_retirable_grants operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_retirable_grants(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_retirable_grants(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_retirable_grants operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.grants.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
