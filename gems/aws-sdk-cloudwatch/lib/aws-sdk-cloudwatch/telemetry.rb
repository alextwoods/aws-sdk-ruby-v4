# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  # @api private
  module Telemetry

    class DeleteAlarms
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DeleteAlarms',
          'code.function' => 'delete_alarms',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DeleteAlarms', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteAnomalyDetector
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DeleteAnomalyDetector',
          'code.function' => 'delete_anomaly_detector',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DeleteAnomalyDetector', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteDashboards
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DeleteDashboards',
          'code.function' => 'delete_dashboards',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DeleteDashboards', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteInsightRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DeleteInsightRules',
          'code.function' => 'delete_insight_rules',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DeleteInsightRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteMetricStream
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DeleteMetricStream',
          'code.function' => 'delete_metric_stream',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DeleteMetricStream', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAlarmHistory
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DescribeAlarmHistory',
          'code.function' => 'describe_alarm_history',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DescribeAlarmHistory', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAlarms
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DescribeAlarms',
          'code.function' => 'describe_alarms',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DescribeAlarms', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAlarmsForMetric
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DescribeAlarmsForMetric',
          'code.function' => 'describe_alarms_for_metric',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DescribeAlarmsForMetric', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeAnomalyDetectors
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DescribeAnomalyDetectors',
          'code.function' => 'describe_anomaly_detectors',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DescribeAnomalyDetectors', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeInsightRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DescribeInsightRules',
          'code.function' => 'describe_insight_rules',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DescribeInsightRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableAlarmActions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DisableAlarmActions',
          'code.function' => 'disable_alarm_actions',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DisableAlarmActions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableInsightRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'DisableInsightRules',
          'code.function' => 'disable_insight_rules',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.DisableInsightRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableAlarmActions
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'EnableAlarmActions',
          'code.function' => 'enable_alarm_actions',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.EnableAlarmActions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableInsightRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'EnableInsightRules',
          'code.function' => 'enable_insight_rules',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.EnableInsightRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetDashboard
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'GetDashboard',
          'code.function' => 'get_dashboard',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.GetDashboard', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetInsightRuleReport
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'GetInsightRuleReport',
          'code.function' => 'get_insight_rule_report',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.GetInsightRuleReport', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetMetricData
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'GetMetricData',
          'code.function' => 'get_metric_data',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.GetMetricData', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetMetricStatistics
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'GetMetricStatistics',
          'code.function' => 'get_metric_statistics',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.GetMetricStatistics', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetMetricStream
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'GetMetricStream',
          'code.function' => 'get_metric_stream',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.GetMetricStream', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetMetricWidgetImage
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'GetMetricWidgetImage',
          'code.function' => 'get_metric_widget_image',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.GetMetricWidgetImage', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListDashboards
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'ListDashboards',
          'code.function' => 'list_dashboards',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.ListDashboards', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListManagedInsightRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'ListManagedInsightRules',
          'code.function' => 'list_managed_insight_rules',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.ListManagedInsightRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListMetricStreams
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'ListMetricStreams',
          'code.function' => 'list_metric_streams',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.ListMetricStreams', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListMetrics
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'ListMetrics',
          'code.function' => 'list_metrics',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.ListMetrics', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListTagsForResource
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'ListTagsForResource',
          'code.function' => 'list_tags_for_resource',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.ListTagsForResource', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutAnomalyDetector
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutAnomalyDetector',
          'code.function' => 'put_anomaly_detector',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutAnomalyDetector', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutCompositeAlarm
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutCompositeAlarm',
          'code.function' => 'put_composite_alarm',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutCompositeAlarm', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutDashboard
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutDashboard',
          'code.function' => 'put_dashboard',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutDashboard', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutInsightRule
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutInsightRule',
          'code.function' => 'put_insight_rule',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutInsightRule', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutManagedInsightRules
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutManagedInsightRules',
          'code.function' => 'put_managed_insight_rules',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutManagedInsightRules', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutMetricAlarm
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutMetricAlarm',
          'code.function' => 'put_metric_alarm',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutMetricAlarm', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutMetricData
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutMetricData',
          'code.function' => 'put_metric_data',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutMetricData', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutMetricStream
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'PutMetricStream',
          'code.function' => 'put_metric_stream',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.PutMetricStream', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class SetAlarmState
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'SetAlarmState',
          'code.function' => 'set_alarm_state',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.SetAlarmState', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StartMetricStreams
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'StartMetricStreams',
          'code.function' => 'start_metric_streams',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.StartMetricStreams', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StopMetricStreams
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'StopMetricStreams',
          'code.function' => 'stop_metric_streams',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.StopMetricStreams', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class TagResource
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'TagResource',
          'code.function' => 'tag_resource',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.TagResource', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UntagResource
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'CloudWatch',
          'rpc.method' => 'UntagResource',
          'code.function' => 'untag_resource',
          'code.namespace' => 'AWS::SDK::CloudWatch::Telemetry'
        }
        context.tracer.in_span('CloudWatch.UntagResource', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

  end
end
