# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  module Paginators

    class DescribeAlarmHistory
      # @param [Client] client
      # @param (see Client#describe_alarm_history)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the describe_alarm_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.describe_alarm_history(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.describe_alarm_history(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_alarm_history operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.alarm_history_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAlarms
      # @param [Client] client
      # @param (see Client#describe_alarms)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the describe_alarms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.describe_alarms(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.describe_alarms(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class DescribeAnomalyDetectors
      # @param [Client] client
      # @param (see Client#describe_anomaly_detectors)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the describe_anomaly_detectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.describe_anomaly_detectors(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.describe_anomaly_detectors(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_anomaly_detectors operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.anomaly_detectors.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInsightRules
      # @param [Client] client
      # @param (see Client#describe_insight_rules)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the describe_insight_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.describe_insight_rules(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.describe_insight_rules(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class GetMetricData
      # @param [Client] client
      # @param (see Client#get_metric_data)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the get_metric_data operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.get_metric_data(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.get_metric_data(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListDashboards
      # @param [Client] client
      # @param (see Client#list_dashboards)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_dashboards operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_dashboards(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_dashboards(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end

      # Iterate all items from pages in the list_dashboards operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data.dashboard_entries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListManagedInsightRules
      # @param [Client] client
      # @param (see Client#list_managed_insight_rules)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_managed_insight_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_managed_insight_rules(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_managed_insight_rules(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListMetrics
      # @param [Client] client
      # @param (see Client#list_metrics)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_metrics(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_metrics(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

    class ListMetricStreams
      # @param [Client] client
      # @param (see Client#list_metric_streams)
      def initialize(client, params = {}, options = {})
        @client = client
        @params = params
        @options = options
      end

      # Iterate all response pages of the list_metric_streams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          output = @client.list_metric_streams(params, @options)
          e.yield(output)
          output_token = output.data.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            output = @client.list_metric_streams(params, @options)
            e.yield(output)
            output_token = output.data.next_token
          end
        end
      end
    end

  end
end
