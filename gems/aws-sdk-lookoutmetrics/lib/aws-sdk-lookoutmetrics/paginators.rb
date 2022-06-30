# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutMetrics
  module Paginators

    class DescribeAnomalyDetectionExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_anomaly_detection_executions)
      # @param [Hash] options (see Client#describe_anomaly_detection_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_anomaly_detection_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_anomaly_detection_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_anomaly_detection_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetFeedback
      # @param [Client] client
      # @param [Hash] params (see Client#get_feedback)
      # @param [Hash] options (see Client#get_feedback)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_feedback operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_feedback(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_feedback(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAlerts
      # @param [Client] client
      # @param [Hash] params (see Client#list_alerts)
      # @param [Hash] options (see Client#list_alerts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_alerts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_alerts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_alerts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAnomalyDetectors
      # @param [Client] client
      # @param [Hash] params (see Client#list_anomaly_detectors)
      # @param [Hash] options (see Client#list_anomaly_detectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_anomaly_detectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_anomaly_detectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_anomaly_detectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAnomalyGroupRelatedMetrics
      # @param [Client] client
      # @param [Hash] params (see Client#list_anomaly_group_related_metrics)
      # @param [Hash] options (see Client#list_anomaly_group_related_metrics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_anomaly_group_related_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_anomaly_group_related_metrics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_anomaly_group_related_metrics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAnomalyGroupSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#list_anomaly_group_summaries)
      # @param [Hash] options (see Client#list_anomaly_group_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_anomaly_group_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_anomaly_group_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_anomaly_group_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAnomalyGroupTimeSeries
      # @param [Client] client
      # @param [Hash] params (see Client#list_anomaly_group_time_series)
      # @param [Hash] options (see Client#list_anomaly_group_time_series)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_anomaly_group_time_series operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_anomaly_group_time_series(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_anomaly_group_time_series(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMetricSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_metric_sets)
      # @param [Hash] options (see Client#list_metric_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_metric_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_metric_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_metric_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
