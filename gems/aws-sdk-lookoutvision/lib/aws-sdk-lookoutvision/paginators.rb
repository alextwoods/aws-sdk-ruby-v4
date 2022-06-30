# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutVision
  module Paginators

    class ListDatasetEntries
      # @param [Client] client
      # @param [Hash] params (see Client#list_dataset_entries)
      # @param [Hash] options (see Client#list_dataset_entries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dataset_entries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dataset_entries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dataset_entries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListModelPackagingJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_packaging_jobs)
      # @param [Hash] options (see Client#list_model_packaging_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_packaging_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_packaging_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_packaging_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListModels
      # @param [Client] client
      # @param [Hash] params (see Client#list_models)
      # @param [Hash] options (see Client#list_models)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_models operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_models(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_models(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProjects
      # @param [Client] client
      # @param [Hash] params (see Client#list_projects)
      # @param [Hash] options (see Client#list_projects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_projects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_projects(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_projects(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
