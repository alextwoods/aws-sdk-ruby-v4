# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module Paginators

    class ListDirectoryBuckets
      # @param [Client] client
      # @param (see Client#list_directory_buckets)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_directory_buckets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:continuation_token]
          output = @client.list_directory_buckets(params, @options)
          e.yield(output)
          output_token = output.data.continuation_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(continuation_token: output_token)
            output = @client.list_directory_buckets(params, @options)
            e.yield(output)
            output_token = output.data.continuation_token
          end
        end
      end

      # Iterate all items from pages in the list_directory_buckets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.buckets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListObjectsV2
      # @param [Client] client
      # @param (see Client#list_objects_v2)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_objects_v2 operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:continuation_token]
          output = @client.list_objects_v2(params, @options)
          e.yield(output)
          output_token = output.data.next_continuation_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(continuation_token: output_token)
            output = @client.list_objects_v2(params, @options)
            e.yield(output)
            output_token = output.data.next_continuation_token
          end
        end
      end
    end

    class ListParts
      # @param [Client] client
      # @param (see Client#list_parts)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_parts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:part_number_marker]
          output = @client.list_parts(params, @options)
          e.yield(output)
          output_token = output.data.next_part_number_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(part_number_marker: output_token)
            output = @client.list_parts(params, @options)
            e.yield(output)
            output_token = output.data.next_part_number_marker
          end
        end
      end

      # Iterate all items from pages in the list_parts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.parts.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
