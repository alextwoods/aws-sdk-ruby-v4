# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticTranscoder
  module Paginators

    class ListJobsByPipeline
      # @param [Client] client
      # @param [Hash] params (see Client#list_jobs_by_pipeline)
      # @param [Hash] options (see Client#list_jobs_by_pipeline)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_jobs_by_pipeline operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_jobs_by_pipeline(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_jobs_by_pipeline(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_jobs_by_pipeline operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListJobsByStatus
      # @param [Client] client
      # @param [Hash] params (see Client#list_jobs_by_status)
      # @param [Hash] options (see Client#list_jobs_by_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_jobs_by_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_jobs_by_status(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_jobs_by_status(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_jobs_by_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPipelines
      # @param [Client] client
      # @param [Hash] params (see Client#list_pipelines)
      # @param [Hash] options (see Client#list_pipelines)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pipelines operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_pipelines(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_pipelines(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_pipelines operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipelines.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPresets
      # @param [Client] client
      # @param [Hash] params (see Client#list_presets)
      # @param [Hash] options (see Client#list_presets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_presets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:page_token]
          response = @client.list_presets(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(page_token: output_token)
            response = @client.list_presets(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_presets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.presets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
