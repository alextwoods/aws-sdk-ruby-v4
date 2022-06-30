# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTAnalytics
  module Paginators

    class ListChannels
      # @param [Client] client
      # @param [Hash] params (see Client#list_channels)
      # @param [Hash] options (see Client#list_channels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDatasetContents
      # @param [Client] client
      # @param [Hash] params (see Client#list_dataset_contents)
      # @param [Hash] options (see Client#list_dataset_contents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dataset_contents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dataset_contents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dataset_contents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDatasets
      # @param [Client] client
      # @param [Hash] params (see Client#list_datasets)
      # @param [Hash] options (see Client#list_datasets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_datasets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_datasets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_datasets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDatastores
      # @param [Client] client
      # @param [Hash] params (see Client#list_datastores)
      # @param [Hash] options (see Client#list_datastores)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_datastores operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_datastores(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_datastores(params, @options)
            e.yield(response)
            output_token = response.next_token
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
          @prev_token = params[:next_token]
          response = @client.list_pipelines(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pipelines(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
