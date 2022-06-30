# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pricing
  module Paginators

    class DescribeServices
      # @param [Client] client
      # @param [Hash] params (see Client#describe_services)
      # @param [Hash] options (see Client#describe_services)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_services operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_services(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_services(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetAttributeValues
      # @param [Client] client
      # @param [Hash] params (see Client#get_attribute_values)
      # @param [Hash] options (see Client#get_attribute_values)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_attribute_values operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_attribute_values(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_attribute_values(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetProducts
      # @param [Client] client
      # @param [Hash] params (see Client#get_products)
      # @param [Hash] options (see Client#get_products)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_products operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_products(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_products(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
