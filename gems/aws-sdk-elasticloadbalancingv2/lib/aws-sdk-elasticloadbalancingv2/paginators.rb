# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancingV2
  module Paginators

    class DescribeListeners
      # @param [Client] client
      # @param [Hash] params (see Client#describe_listeners)
      # @param [Hash] options (see Client#describe_listeners)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_listeners operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_listeners(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_listeners(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the describe_listeners operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.listeners.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLoadBalancers
      # @param [Client] client
      # @param [Hash] params (see Client#describe_load_balancers)
      # @param [Hash] options (see Client#describe_load_balancers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_load_balancers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_load_balancers(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_load_balancers(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the describe_load_balancers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.load_balancers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeTargetGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_target_groups)
      # @param [Hash] options (see Client#describe_target_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_target_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_target_groups(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_target_groups(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the describe_target_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.target_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
