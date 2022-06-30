# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchLogs
  module Paginators

    class DescribeDestinations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_destinations)
      # @param [Hash] options (see Client#describe_destinations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_destinations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_destinations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_destinations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_destinations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.destinations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLogGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_log_groups)
      # @param [Hash] options (see Client#describe_log_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_log_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_log_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_log_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_log_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.log_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeLogStreams
      # @param [Client] client
      # @param [Hash] params (see Client#describe_log_streams)
      # @param [Hash] options (see Client#describe_log_streams)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_log_streams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_log_streams(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_log_streams(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_log_streams operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.log_streams.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMetricFilters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_metric_filters)
      # @param [Hash] options (see Client#describe_metric_filters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_metric_filters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_metric_filters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_metric_filters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_metric_filters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.metric_filters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSubscriptionFilters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_subscription_filters)
      # @param [Hash] options (see Client#describe_subscription_filters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_subscription_filters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_subscription_filters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_subscription_filters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_subscription_filters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.subscription_filters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class FilterLogEvents
      # @param [Client] client
      # @param [Hash] params (see Client#filter_log_events)
      # @param [Hash] options (see Client#filter_log_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the filter_log_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.filter_log_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.filter_log_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetLogEvents
      # @param [Client] client
      # @param [Hash] params (see Client#get_log_events)
      # @param [Hash] options (see Client#get_log_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_log_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_log_events(params, @options)
          e.yield(response)
          output_token = response.next_forward_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_log_events(params, @options)
            e.yield(response)
            output_token = response.next_forward_token
          end
        end
      end

      # Iterate all items from pages in the get_log_events operation.
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

  end
end
