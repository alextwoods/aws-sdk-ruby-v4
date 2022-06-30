# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transcribe
  module Paginators

    class ListCallAnalyticsCategories
      # @param [Client] client
      # @param [Hash] params (see Client#list_call_analytics_categories)
      # @param [Hash] options (see Client#list_call_analytics_categories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_call_analytics_categories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_call_analytics_categories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_call_analytics_categories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCallAnalyticsJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_call_analytics_jobs)
      # @param [Hash] options (see Client#list_call_analytics_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_call_analytics_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_call_analytics_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_call_analytics_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLanguageModels
      # @param [Client] client
      # @param [Hash] params (see Client#list_language_models)
      # @param [Hash] options (see Client#list_language_models)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_language_models operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_language_models(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_language_models(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMedicalTranscriptionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_medical_transcription_jobs)
      # @param [Hash] options (see Client#list_medical_transcription_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_medical_transcription_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_medical_transcription_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_medical_transcription_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMedicalVocabularies
      # @param [Client] client
      # @param [Hash] params (see Client#list_medical_vocabularies)
      # @param [Hash] options (see Client#list_medical_vocabularies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_medical_vocabularies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_medical_vocabularies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_medical_vocabularies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTranscriptionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_transcription_jobs)
      # @param [Hash] options (see Client#list_transcription_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_transcription_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_transcription_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_transcription_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListVocabularies
      # @param [Client] client
      # @param [Hash] params (see Client#list_vocabularies)
      # @param [Hash] options (see Client#list_vocabularies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_vocabularies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_vocabularies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_vocabularies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListVocabularyFilters
      # @param [Client] client
      # @param [Hash] params (see Client#list_vocabulary_filters)
      # @param [Hash] options (see Client#list_vocabulary_filters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_vocabulary_filters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_vocabulary_filters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_vocabulary_filters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
