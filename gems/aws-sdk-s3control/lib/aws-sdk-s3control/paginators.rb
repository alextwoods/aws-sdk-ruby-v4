# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Control
  module Paginators

    class ListAccessPoints
      # @param [Client] client
      # @param [Hash] params (see Client#list_access_points)
      # @param [Hash] options (see Client#list_access_points)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_access_points operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_access_points(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_access_points(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAccessPointsForObjectLambda
      # @param [Client] client
      # @param [Hash] params (see Client#list_access_points_for_object_lambda)
      # @param [Hash] options (see Client#list_access_points_for_object_lambda)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_access_points_for_object_lambda operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_access_points_for_object_lambda(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_access_points_for_object_lambda(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_jobs)
      # @param [Hash] options (see Client#list_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMultiRegionAccessPoints
      # @param [Client] client
      # @param [Hash] params (see Client#list_multi_region_access_points)
      # @param [Hash] options (see Client#list_multi_region_access_points)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_multi_region_access_points operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_multi_region_access_points(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_multi_region_access_points(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRegionalBuckets
      # @param [Client] client
      # @param [Hash] params (see Client#list_regional_buckets)
      # @param [Hash] options (see Client#list_regional_buckets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_regional_buckets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_regional_buckets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_regional_buckets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListStorageLensConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_storage_lens_configurations)
      # @param [Hash] options (see Client#list_storage_lens_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_storage_lens_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_storage_lens_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_storage_lens_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
