# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
  module Paginators

    class ListDomains
      # @param [Client] client
      # @param [Hash] params (see Client#list_domains)
      # @param [Hash] options (see Client#list_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_domains(params, @options)
          e.yield(response)
          output_token = response.next_page_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_domains(params, @options)
            e.yield(response)
            output_token = response.next_page_marker
          end
        end
      end

      # Iterate all items from pages in the list_domains operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.domains.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOperations
      # @param [Client] client
      # @param [Hash] params (see Client#list_operations)
      # @param [Hash] options (see Client#list_operations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_operations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_operations(params, @options)
          e.yield(response)
          output_token = response.next_page_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_operations(params, @options)
            e.yield(response)
            output_token = response.next_page_marker
          end
        end
      end

      # Iterate all items from pages in the list_operations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.operations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPrices
      # @param [Client] client
      # @param [Hash] params (see Client#list_prices)
      # @param [Hash] options (see Client#list_prices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_prices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_prices(params, @options)
          e.yield(response)
          output_token = response.next_page_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_prices(params, @options)
            e.yield(response)
            output_token = response.next_page_marker
          end
        end
      end

      # Iterate all items from pages in the list_prices operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.prices.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ViewBilling
      # @param [Client] client
      # @param [Hash] params (see Client#view_billing)
      # @param [Hash] options (see Client#view_billing)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the view_billing operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.view_billing(params, @options)
          e.yield(response)
          output_token = response.next_page_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.view_billing(params, @options)
            e.yield(response)
            output_token = response.next_page_marker
          end
        end
      end

      # Iterate all items from pages in the view_billing operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.billing_records.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
