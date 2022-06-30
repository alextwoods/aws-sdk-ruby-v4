# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Shield
  module Paginators

    class ListAttacks
      # @param [Client] client
      # @param [Hash] params (see Client#list_attacks)
      # @param [Hash] options (see Client#list_attacks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_attacks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_attacks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_attacks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_attacks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.attack_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListProtectionGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_protection_groups)
      # @param [Hash] options (see Client#list_protection_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_protection_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_protection_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_protection_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProtections
      # @param [Client] client
      # @param [Hash] params (see Client#list_protections)
      # @param [Hash] options (see Client#list_protections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_protections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_protections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_protections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_protections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.protections.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourcesInProtectionGroup
      # @param [Client] client
      # @param [Hash] params (see Client#list_resources_in_protection_group)
      # @param [Hash] options (see Client#list_resources_in_protection_group)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resources_in_protection_group operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resources_in_protection_group(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resources_in_protection_group(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
