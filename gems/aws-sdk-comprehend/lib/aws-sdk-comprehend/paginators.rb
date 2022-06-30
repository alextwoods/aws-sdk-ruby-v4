# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Comprehend
  module Paginators

    class ListDocumentClassificationJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_document_classification_jobs)
      # @param [Hash] options (see Client#list_document_classification_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_document_classification_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_document_classification_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_document_classification_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDocumentClassifiers
      # @param [Client] client
      # @param [Hash] params (see Client#list_document_classifiers)
      # @param [Hash] options (see Client#list_document_classifiers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_document_classifiers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_document_classifiers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_document_classifiers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDocumentClassifierSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#list_document_classifier_summaries)
      # @param [Hash] options (see Client#list_document_classifier_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_document_classifier_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_document_classifier_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_document_classifier_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDominantLanguageDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_dominant_language_detection_jobs)
      # @param [Hash] options (see Client#list_dominant_language_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dominant_language_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dominant_language_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dominant_language_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEntitiesDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_entities_detection_jobs)
      # @param [Hash] options (see Client#list_entities_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_entities_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_entities_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_entities_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEntityRecognizers
      # @param [Client] client
      # @param [Hash] params (see Client#list_entity_recognizers)
      # @param [Hash] options (see Client#list_entity_recognizers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_entity_recognizers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_entity_recognizers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_entity_recognizers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEntityRecognizerSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#list_entity_recognizer_summaries)
      # @param [Hash] options (see Client#list_entity_recognizer_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_entity_recognizer_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_entity_recognizer_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_entity_recognizer_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEventsDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_events_detection_jobs)
      # @param [Hash] options (see Client#list_events_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_events_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_events_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_events_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListKeyPhrasesDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_key_phrases_detection_jobs)
      # @param [Hash] options (see Client#list_key_phrases_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_key_phrases_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_key_phrases_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_key_phrases_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSentimentDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_sentiment_detection_jobs)
      # @param [Hash] options (see Client#list_sentiment_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sentiment_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sentiment_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sentiment_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTargetedSentimentDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_targeted_sentiment_detection_jobs)
      # @param [Hash] options (see Client#list_targeted_sentiment_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_targeted_sentiment_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_targeted_sentiment_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_targeted_sentiment_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTopicsDetectionJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_topics_detection_jobs)
      # @param [Hash] options (see Client#list_topics_detection_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_topics_detection_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_topics_detection_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_topics_detection_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
