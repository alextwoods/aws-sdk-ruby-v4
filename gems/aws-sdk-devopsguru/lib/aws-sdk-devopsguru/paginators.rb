# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DevOpsGuru
  module Paginators

    class DescribeOrganizationResourceCollectionHealth
      # @param [Client] client
      # @param [Hash] params (see Client#describe_organization_resource_collection_health)
      # @param [Hash] options (see Client#describe_organization_resource_collection_health)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_organization_resource_collection_health operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_organization_resource_collection_health(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_organization_resource_collection_health(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeResourceCollectionHealth
      # @param [Client] client
      # @param [Hash] params (see Client#describe_resource_collection_health)
      # @param [Hash] options (see Client#describe_resource_collection_health)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_resource_collection_health operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_resource_collection_health(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_resource_collection_health(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCostEstimation
      # @param [Client] client
      # @param [Hash] params (see Client#get_cost_estimation)
      # @param [Hash] options (see Client#get_cost_estimation)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_cost_estimation operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_cost_estimation(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_cost_estimation(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetResourceCollection
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_collection)
      # @param [Hash] options (see Client#get_resource_collection)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_collection operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_collection(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_collection(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAnomaliesForInsight
      # @param [Client] client
      # @param [Hash] params (see Client#list_anomalies_for_insight)
      # @param [Hash] options (see Client#list_anomalies_for_insight)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_anomalies_for_insight operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_anomalies_for_insight(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_anomalies_for_insight(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEvents
      # @param [Client] client
      # @param [Hash] params (see Client#list_events)
      # @param [Hash] options (see Client#list_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_events operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.events.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInsights
      # @param [Client] client
      # @param [Hash] params (see Client#list_insights)
      # @param [Hash] options (see Client#list_insights)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_insights operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_insights(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_insights(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNotificationChannels
      # @param [Client] client
      # @param [Hash] params (see Client#list_notification_channels)
      # @param [Hash] options (see Client#list_notification_channels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_notification_channels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_notification_channels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_notification_channels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_notification_channels operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.channels.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOrganizationInsights
      # @param [Client] client
      # @param [Hash] params (see Client#list_organization_insights)
      # @param [Hash] options (see Client#list_organization_insights)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_organization_insights operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_organization_insights(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_organization_insights(params, @options)
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

      # Iterate all items from pages in the list_recommendations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.recommendations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class SearchInsights
      # @param [Client] client
      # @param [Hash] params (see Client#search_insights)
      # @param [Hash] options (see Client#search_insights)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_insights operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_insights(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_insights(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchOrganizationInsights
      # @param [Client] client
      # @param [Hash] params (see Client#search_organization_insights)
      # @param [Hash] options (see Client#search_organization_insights)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_organization_insights operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_organization_insights(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_organization_insights(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
