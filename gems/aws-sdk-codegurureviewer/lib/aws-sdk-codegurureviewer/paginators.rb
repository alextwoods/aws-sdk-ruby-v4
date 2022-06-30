# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeGuruReviewer
  module Paginators

    class ListCodeReviews
      # @param [Client] client
      # @param [Hash] params (see Client#list_code_reviews)
      # @param [Hash] options (see Client#list_code_reviews)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_code_reviews operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_code_reviews(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_code_reviews(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRecommendationFeedback
      # @param [Client] client
      # @param [Hash] params (see Client#list_recommendation_feedback)
      # @param [Hash] options (see Client#list_recommendation_feedback)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recommendation_feedback operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recommendation_feedback(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recommendation_feedback(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRecommendations
      # @param [Client] client
      # @param [Hash] params (see Client#list_recommendations)
      # @param [Hash] options (see Client#list_recommendations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recommendations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recommendations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recommendations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRepositoryAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_repository_associations)
      # @param [Hash] options (see Client#list_repository_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_repository_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_repository_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_repository_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_repository_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.repository_association_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
