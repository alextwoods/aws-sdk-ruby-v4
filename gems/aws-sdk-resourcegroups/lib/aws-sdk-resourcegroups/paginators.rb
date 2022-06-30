# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroups
  module Paginators

    class ListGroupResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_group_resources)
      # @param [Hash] options (see Client#list_group_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_group_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_group_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_group_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_groups)
      # @param [Hash] options (see Client#list_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchResources
      # @param [Client] client
      # @param [Hash] params (see Client#search_resources)
      # @param [Hash] options (see Client#search_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
