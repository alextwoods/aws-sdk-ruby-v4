# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
  module Paginators

    class DescribeImages
      # @param [Client] client
      # @param [Hash] params (see Client#describe_images)
      # @param [Hash] options (see Client#describe_images)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_images operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_images(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_images(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_images operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.image_details.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeImageScanFindings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_image_scan_findings)
      # @param [Hash] options (see Client#describe_image_scan_findings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_image_scan_findings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_image_scan_findings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_image_scan_findings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribePullThroughCacheRules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_pull_through_cache_rules)
      # @param [Hash] options (see Client#describe_pull_through_cache_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_pull_through_cache_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_pull_through_cache_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_pull_through_cache_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeRepositories
      # @param [Client] client
      # @param [Hash] params (see Client#describe_repositories)
      # @param [Hash] options (see Client#describe_repositories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_repositories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_repositories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_repositories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_repositories operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.repositories.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetLifecyclePolicyPreview
      # @param [Client] client
      # @param [Hash] params (see Client#get_lifecycle_policy_preview)
      # @param [Hash] options (see Client#get_lifecycle_policy_preview)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_lifecycle_policy_preview operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_lifecycle_policy_preview(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_lifecycle_policy_preview(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_lifecycle_policy_preview operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.preview_results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListImages
      # @param [Client] client
      # @param [Hash] params (see Client#list_images)
      # @param [Hash] options (see Client#list_images)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_images operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_images(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_images(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_images operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.image_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
