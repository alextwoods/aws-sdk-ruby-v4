# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Translate
  module Paginators

    class ListParallelData
      # @param [Client] client
      # @param [Hash] params (see Client#list_parallel_data)
      # @param [Hash] options (see Client#list_parallel_data)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_parallel_data operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_parallel_data(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_parallel_data(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTerminologies
      # @param [Client] client
      # @param [Hash] params (see Client#list_terminologies)
      # @param [Hash] options (see Client#list_terminologies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_terminologies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_terminologies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_terminologies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTextTranslationJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_text_translation_jobs)
      # @param [Hash] options (see Client#list_text_translation_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_text_translation_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_text_translation_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_text_translation_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
