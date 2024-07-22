# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudWatch
  # @api private
  module Validators

    class AlarmHistoryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AlarmHistoryItem, context: context)
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_type, ::String, context: "#{context}[:alarm_type]")
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.history_item_type, ::String, context: "#{context}[:history_item_type]")
        Hearth::Validator.validate_types!(input.history_summary, ::String, context: "#{context}[:history_summary]")
        Hearth::Validator.validate_types!(input.history_data, ::String, context: "#{context}[:history_data]")
      end
    end

    class AlarmHistoryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlarmHistoryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmNames
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AlarmTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnomalyDetector
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AnomalyDetector, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.stat, ::String, context: "#{context}[:stat]")
        AnomalyDetectorConfiguration.validate!(input.configuration, context: "#{context}[:configuration]") unless input.configuration.nil?
        Hearth::Validator.validate_types!(input.state_value, ::String, context: "#{context}[:state_value]")
        SingleMetricAnomalyDetector.validate!(input.single_metric_anomaly_detector, context: "#{context}[:single_metric_anomaly_detector]") unless input.single_metric_anomaly_detector.nil?
        MetricMathAnomalyDetector.validate!(input.metric_math_anomaly_detector, context: "#{context}[:metric_math_anomaly_detector]") unless input.metric_math_anomaly_detector.nil?
      end
    end

    class AnomalyDetectorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AnomalyDetectorConfiguration, context: context)
        AnomalyDetectorExcludedTimeRanges.validate!(input.excluded_time_ranges, context: "#{context}[:excluded_time_ranges]") unless input.excluded_time_ranges.nil?
        Hearth::Validator.validate_types!(input.metric_timezone, ::String, context: "#{context}[:metric_timezone]")
      end
    end

    class AnomalyDetectorExcludedTimeRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalyDetectorTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnomalyDetectors
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnomalyDetector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchFailures
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartialFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompositeAlarm
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CompositeAlarm, context: context)
        Hearth::Validator.validate_types!(input.actions_enabled, ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input.alarm_actions, context: "#{context}[:alarm_actions]") unless input.alarm_actions.nil?
        Hearth::Validator.validate_types!(input.alarm_arn, ::String, context: "#{context}[:alarm_arn]")
        Hearth::Validator.validate_types!(input.alarm_configuration_updated_timestamp, ::Time, context: "#{context}[:alarm_configuration_updated_timestamp]")
        Hearth::Validator.validate_types!(input.alarm_description, ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_rule, ::String, context: "#{context}[:alarm_rule]")
        ResourceList.validate!(input.insufficient_data_actions, context: "#{context}[:insufficient_data_actions]") unless input.insufficient_data_actions.nil?
        ResourceList.validate!(input.ok_actions, context: "#{context}[:ok_actions]") unless input.ok_actions.nil?
        Hearth::Validator.validate_types!(input.state_reason, ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input.state_reason_data, ::String, context: "#{context}[:state_reason_data]")
        Hearth::Validator.validate_types!(input.state_updated_timestamp, ::Time, context: "#{context}[:state_updated_timestamp]")
        Hearth::Validator.validate_types!(input.state_value, ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate_types!(input.state_transitioned_timestamp, ::Time, context: "#{context}[:state_transitioned_timestamp]")
        Hearth::Validator.validate_types!(input.actions_suppressed_by, ::String, context: "#{context}[:actions_suppressed_by]")
        Hearth::Validator.validate_types!(input.actions_suppressed_reason, ::String, context: "#{context}[:actions_suppressed_reason]")
        Hearth::Validator.validate_types!(input.actions_suppressor, ::String, context: "#{context}[:actions_suppressor]")
        Hearth::Validator.validate_types!(input.actions_suppressor_wait_period, ::Integer, context: "#{context}[:actions_suppressor_wait_period]")
        Hearth::Validator.validate_types!(input.actions_suppressor_extension_period, ::Integer, context: "#{context}[:actions_suppressor_extension_period]")
      end
    end

    class CompositeAlarms
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompositeAlarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class Counts
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class DashboardEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashboardEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DashboardEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DashboardEntry, context: context)
        Hearth::Validator.validate_types!(input.dashboard_name, ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate_types!(input.dashboard_arn, ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate_types!(input.last_modified, ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input.size, ::Integer, context: "#{context}[:size]")
      end
    end

    class DashboardInvalidInputError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DashboardInvalidInputError, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
        DashboardValidationMessages.validate!(input.dashboard_validation_messages, context: "#{context}[:dashboard_validation_messages]") unless input.dashboard_validation_messages.nil?
      end
    end

    class DashboardNames
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DashboardNotFoundError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DashboardNotFoundError, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class DashboardValidationMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DashboardValidationMessage, context: context)
        Hearth::Validator.validate_types!(input.data_path, ::String, context: "#{context}[:data_path]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class DashboardValidationMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashboardValidationMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Datapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Datapoint, context: context)
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.sample_count, ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate_types!(input.average, ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate_types!(input.sum, ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate_types!(input.minimum, ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate_types!(input.maximum, ::Float, context: "#{context}[:maximum]")
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
        DatapointValueMap.validate!(input.extended_statistics, context: "#{context}[:extended_statistics]") unless input.extended_statistics.nil?
      end
    end

    class DatapointValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::Float, context: "#{context}['#{key}']")
        end
      end
    end

    class DatapointValues
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class Datapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Datapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAlarmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAlarmsInput, context: context)
        Hearth::Validator.validate_required!(input.alarm_names, context: "#{context}[:alarm_names]")
        AlarmNames.validate!(input.alarm_names, context: "#{context}[:alarm_names]") unless input.alarm_names.nil?
      end
    end

    class DeleteAlarmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAlarmsOutput, context: context)
      end
    end

    class DeleteAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAnomalyDetectorInput, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.stat, ::String, context: "#{context}[:stat]")
        SingleMetricAnomalyDetector.validate!(input.single_metric_anomaly_detector, context: "#{context}[:single_metric_anomaly_detector]") unless input.single_metric_anomaly_detector.nil?
        MetricMathAnomalyDetector.validate!(input.metric_math_anomaly_detector, context: "#{context}[:metric_math_anomaly_detector]") unless input.metric_math_anomaly_detector.nil?
      end
    end

    class DeleteAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAnomalyDetectorOutput, context: context)
      end
    end

    class DeleteDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteDashboardsInput, context: context)
        Hearth::Validator.validate_required!(input.dashboard_names, context: "#{context}[:dashboard_names]")
        DashboardNames.validate!(input.dashboard_names, context: "#{context}[:dashboard_names]") unless input.dashboard_names.nil?
      end
    end

    class DeleteDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteDashboardsOutput, context: context)
      end
    end

    class DeleteInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteInsightRulesInput, context: context)
        Hearth::Validator.validate_required!(input.rule_names, context: "#{context}[:rule_names]")
        InsightRuleNames.validate!(input.rule_names, context: "#{context}[:rule_names]") unless input.rule_names.nil?
      end
    end

    class DeleteInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteInsightRulesOutput, context: context)
        BatchFailures.validate!(input.failures, context: "#{context}[:failures]") unless input.failures.nil?
      end
    end

    class DeleteMetricStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMetricStreamInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class DeleteMetricStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMetricStreamOutput, context: context)
      end
    end

    class DescribeAlarmHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAlarmHistoryInput, context: context)
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        AlarmTypes.validate!(input.alarm_types, context: "#{context}[:alarm_types]") unless input.alarm_types.nil?
        Hearth::Validator.validate_types!(input.history_item_type, ::String, context: "#{context}[:history_item_type]")
        Hearth::Validator.validate_types!(input.start_date, ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate_types!(input.end_date, ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate_types!(input.max_records, ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.scan_by, ::String, context: "#{context}[:scan_by]")
      end
    end

    class DescribeAlarmHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAlarmHistoryOutput, context: context)
        AlarmHistoryItems.validate!(input.alarm_history_items, context: "#{context}[:alarm_history_items]") unless input.alarm_history_items.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAlarmsForMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAlarmsForMetricInput, context: context)
        Hearth::Validator.validate_required!(input.metric_name, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_required!(input.namespace, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.statistic, ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate_types!(input.extended_statistic, ::String, context: "#{context}[:extended_statistic]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
      end
    end

    class DescribeAlarmsForMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAlarmsForMetricOutput, context: context)
        MetricAlarms.validate!(input.metric_alarms, context: "#{context}[:metric_alarms]") unless input.metric_alarms.nil?
      end
    end

    class DescribeAlarmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAlarmsInput, context: context)
        AlarmNames.validate!(input.alarm_names, context: "#{context}[:alarm_names]") unless input.alarm_names.nil?
        Hearth::Validator.validate_types!(input.alarm_name_prefix, ::String, context: "#{context}[:alarm_name_prefix]")
        AlarmTypes.validate!(input.alarm_types, context: "#{context}[:alarm_types]") unless input.alarm_types.nil?
        Hearth::Validator.validate_types!(input.children_of_alarm_name, ::String, context: "#{context}[:children_of_alarm_name]")
        Hearth::Validator.validate_types!(input.parents_of_alarm_name, ::String, context: "#{context}[:parents_of_alarm_name]")
        Hearth::Validator.validate_types!(input.state_value, ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate_types!(input.action_prefix, ::String, context: "#{context}[:action_prefix]")
        Hearth::Validator.validate_types!(input.max_records, ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAlarmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAlarmsOutput, context: context)
        CompositeAlarms.validate!(input.composite_alarms, context: "#{context}[:composite_alarms]") unless input.composite_alarms.nil?
        MetricAlarms.validate!(input.metric_alarms, context: "#{context}[:metric_alarms]") unless input.metric_alarms.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAnomalyDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAnomalyDetectorsInput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        AnomalyDetectorTypes.validate!(input.anomaly_detector_types, context: "#{context}[:anomaly_detector_types]") unless input.anomaly_detector_types.nil?
      end
    end

    class DescribeAnomalyDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeAnomalyDetectorsOutput, context: context)
        AnomalyDetectors.validate!(input.anomaly_detectors, context: "#{context}[:anomaly_detectors]") unless input.anomaly_detectors.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeInsightRulesInput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeInsightRulesOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        InsightRules.validate!(input.insight_rules, context: "#{context}[:insight_rules]") unless input.insight_rules.nil?
      end
    end

    class Dimension
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Dimension, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input.value, context: "#{context}[:value]")
        Hearth::Validator.validate_types!(input.value, ::String, context: "#{context}[:value]")
      end
    end

    class DimensionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DimensionFilter, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.value, ::String, context: "#{context}[:value]")
      end
    end

    class DimensionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DimensionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Dimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisableAlarmActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableAlarmActionsInput, context: context)
        Hearth::Validator.validate_required!(input.alarm_names, context: "#{context}[:alarm_names]")
        AlarmNames.validate!(input.alarm_names, context: "#{context}[:alarm_names]") unless input.alarm_names.nil?
      end
    end

    class DisableAlarmActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableAlarmActionsOutput, context: context)
      end
    end

    class DisableInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableInsightRulesInput, context: context)
        Hearth::Validator.validate_required!(input.rule_names, context: "#{context}[:rule_names]")
        InsightRuleNames.validate!(input.rule_names, context: "#{context}[:rule_names]") unless input.rule_names.nil?
      end
    end

    class DisableInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableInsightRulesOutput, context: context)
        BatchFailures.validate!(input.failures, context: "#{context}[:failures]") unless input.failures.nil?
      end
    end

    class EnableAlarmActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableAlarmActionsInput, context: context)
        Hearth::Validator.validate_required!(input.alarm_names, context: "#{context}[:alarm_names]")
        AlarmNames.validate!(input.alarm_names, context: "#{context}[:alarm_names]") unless input.alarm_names.nil?
      end
    end

    class EnableAlarmActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableAlarmActionsOutput, context: context)
      end
    end

    class EnableInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableInsightRulesInput, context: context)
        Hearth::Validator.validate_required!(input.rule_names, context: "#{context}[:rule_names]")
        InsightRuleNames.validate!(input.rule_names, context: "#{context}[:rule_names]") unless input.rule_names.nil?
      end
    end

    class EnableInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableInsightRulesOutput, context: context)
        BatchFailures.validate!(input.failures, context: "#{context}[:failures]") unless input.failures.nil?
      end
    end

    class ExtendedStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetDashboardInput, context: context)
        Hearth::Validator.validate_required!(input.dashboard_name, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate_types!(input.dashboard_name, ::String, context: "#{context}[:dashboard_name]")
      end
    end

    class GetDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetDashboardOutput, context: context)
        Hearth::Validator.validate_types!(input.dashboard_arn, ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate_types!(input.dashboard_body, ::String, context: "#{context}[:dashboard_body]")
        Hearth::Validator.validate_types!(input.dashboard_name, ::String, context: "#{context}[:dashboard_name]")
      end
    end

    class GetInsightRuleReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetInsightRuleReportInput, context: context)
        Hearth::Validator.validate_required!(input.rule_name, context: "#{context}[:rule_name]")
        Hearth::Validator.validate_types!(input.rule_name, ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_required!(input.end_time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_required!(input.period, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.max_contributor_count, ::Integer, context: "#{context}[:max_contributor_count]")
        InsightRuleMetricList.validate!(input.metrics, context: "#{context}[:metrics]") unless input.metrics.nil?
        Hearth::Validator.validate_types!(input.order_by, ::String, context: "#{context}[:order_by]")
      end
    end

    class GetInsightRuleReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetInsightRuleReportOutput, context: context)
        InsightRuleContributorKeyLabels.validate!(input.key_labels, context: "#{context}[:key_labels]") unless input.key_labels.nil?
        Hearth::Validator.validate_types!(input.aggregation_statistic, ::String, context: "#{context}[:aggregation_statistic]")
        Hearth::Validator.validate_types!(input.aggregate_value, ::Float, context: "#{context}[:aggregate_value]")
        Hearth::Validator.validate_types!(input.approximate_unique_count, ::Integer, context: "#{context}[:approximate_unique_count]")
        InsightRuleContributors.validate!(input.contributors, context: "#{context}[:contributors]") unless input.contributors.nil?
        InsightRuleMetricDatapoints.validate!(input.metric_datapoints, context: "#{context}[:metric_datapoints]") unless input.metric_datapoints.nil?
      end
    end

    class GetMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricDataInput, context: context)
        Hearth::Validator.validate_required!(input.metric_data_queries, context: "#{context}[:metric_data_queries]")
        MetricDataQueries.validate!(input.metric_data_queries, context: "#{context}[:metric_data_queries]") unless input.metric_data_queries.nil?
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_required!(input.end_time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.scan_by, ::String, context: "#{context}[:scan_by]")
        Hearth::Validator.validate_types!(input.max_datapoints, ::Integer, context: "#{context}[:max_datapoints]")
        LabelOptions.validate!(input.label_options, context: "#{context}[:label_options]") unless input.label_options.nil?
      end
    end

    class GetMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricDataOutput, context: context)
        MetricDataResults.validate!(input.metric_data_results, context: "#{context}[:metric_data_results]") unless input.metric_data_results.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        MetricDataResultMessages.validate!(input.messages, context: "#{context}[:messages]") unless input.messages.nil?
      end
    end

    class GetMetricStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricStatisticsInput, context: context)
        Hearth::Validator.validate_required!(input.namespace, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_required!(input.metric_name, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_required!(input.end_time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_required!(input.period, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Statistics.validate!(input.statistics, context: "#{context}[:statistics]") unless input.statistics.nil?
        ExtendedStatistics.validate!(input.extended_statistics, context: "#{context}[:extended_statistics]") unless input.extended_statistics.nil?
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
      end
    end

    class GetMetricStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricStatisticsOutput, context: context)
        Hearth::Validator.validate_types!(input.label, ::String, context: "#{context}[:label]")
        Datapoints.validate!(input.datapoints, context: "#{context}[:datapoints]") unless input.datapoints.nil?
      end
    end

    class GetMetricStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricStreamInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class GetMetricStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricStreamOutput, context: context)
        Hearth::Validator.validate_types!(input.arn, ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        MetricStreamFilters.validate!(input.include_filters, context: "#{context}[:include_filters]") unless input.include_filters.nil?
        MetricStreamFilters.validate!(input.exclude_filters, context: "#{context}[:exclude_filters]") unless input.exclude_filters.nil?
        Hearth::Validator.validate_types!(input.firehose_arn, ::String, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate_types!(input.role_arn, ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate_types!(input.state, ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input.creation_date, ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate_types!(input.last_update_date, ::Time, context: "#{context}[:last_update_date]")
        Hearth::Validator.validate_types!(input.output_format, ::String, context: "#{context}[:output_format]")
        MetricStreamStatisticsConfigurations.validate!(input.statistics_configurations, context: "#{context}[:statistics_configurations]") unless input.statistics_configurations.nil?
        Hearth::Validator.validate_types!(input.include_linked_accounts_metrics, ::TrueClass, ::FalseClass, context: "#{context}[:include_linked_accounts_metrics]")
      end
    end

    class GetMetricWidgetImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricWidgetImageInput, context: context)
        Hearth::Validator.validate_required!(input.metric_widget, context: "#{context}[:metric_widget]")
        Hearth::Validator.validate_types!(input.metric_widget, ::String, context: "#{context}[:metric_widget]")
        Hearth::Validator.validate_types!(input.output_format, ::String, context: "#{context}[:output_format]")
      end
    end

    class GetMetricWidgetImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetMetricWidgetImageOutput, context: context)
        Hearth::Validator.validate_types!(input.metric_widget_image, ::String, context: "#{context}[:metric_widget_image]")
      end
    end

    class InsightRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InsightRule, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input.state, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input.state, ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_required!(input.schema, context: "#{context}[:schema]")
        Hearth::Validator.validate_types!(input.schema, ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate_required!(input.definition, context: "#{context}[:definition]")
        Hearth::Validator.validate_types!(input.definition, ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate_types!(input.managed_rule, ::TrueClass, ::FalseClass, context: "#{context}[:managed_rule]")
      end
    end

    class InsightRuleContributor
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InsightRuleContributor, context: context)
        Hearth::Validator.validate_required!(input.keys, context: "#{context}[:keys]")
        InsightRuleContributorKeys.validate!(input.keys, context: "#{context}[:keys]") unless input.keys.nil?
        Hearth::Validator.validate_required!(input.approximate_aggregate_value, context: "#{context}[:approximate_aggregate_value]")
        Hearth::Validator.validate_types!(input.approximate_aggregate_value, ::Float, context: "#{context}[:approximate_aggregate_value]")
        Hearth::Validator.validate_required!(input.datapoints, context: "#{context}[:datapoints]")
        InsightRuleContributorDatapoints.validate!(input.datapoints, context: "#{context}[:datapoints]") unless input.datapoints.nil?
      end
    end

    class InsightRuleContributorDatapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InsightRuleContributorDatapoint, context: context)
        Hearth::Validator.validate_required!(input.timestamp, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_required!(input.approximate_value, context: "#{context}[:approximate_value]")
        Hearth::Validator.validate_types!(input.approximate_value, ::Float, context: "#{context}[:approximate_value]")
      end
    end

    class InsightRuleContributorDatapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRuleContributorDatapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightRuleContributorKeyLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRuleContributorKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRuleContributors
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRuleContributor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightRuleMetricDatapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InsightRuleMetricDatapoint, context: context)
        Hearth::Validator.validate_required!(input.timestamp, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.unique_contributors, ::Float, context: "#{context}[:unique_contributors]")
        Hearth::Validator.validate_types!(input.max_contributor_value, ::Float, context: "#{context}[:max_contributor_value]")
        Hearth::Validator.validate_types!(input.sample_count, ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate_types!(input.average, ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate_types!(input.sum, ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate_types!(input.minimum, ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate_types!(input.maximum, ::Float, context: "#{context}[:maximum]")
      end
    end

    class InsightRuleMetricDatapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRuleMetricDatapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightRuleMetricList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRuleNames
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRules
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServiceFault
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InternalServiceFault, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFormatFault
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidFormatFault, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextToken
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidNextToken, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class LabelOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LabelOptions, context: context)
        Hearth::Validator.validate_types!(input.timezone, ::String, context: "#{context}[:timezone]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LimitExceededFault, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class ListDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDashboardsInput, context: context)
        Hearth::Validator.validate_types!(input.dashboard_name_prefix, ::String, context: "#{context}[:dashboard_name_prefix]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDashboardsOutput, context: context)
        DashboardEntries.validate!(input.dashboard_entries, context: "#{context}[:dashboard_entries]") unless input.dashboard_entries.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListManagedInsightRulesInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListManagedInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListManagedInsightRulesOutput, context: context)
        ManagedRuleDescriptions.validate!(input.managed_rules, context: "#{context}[:managed_rules]") unless input.managed_rules.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMetricStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListMetricStreamsInput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMetricStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListMetricStreamsOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        MetricStreamEntries.validate!(input.entries, context: "#{context}[:entries]") unless input.entries.nil?
      end
    end

    class ListMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListMetricsInput, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        DimensionFilters.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.recently_active, ::String, context: "#{context}[:recently_active]")
        Hearth::Validator.validate_types!(input.include_linked_accounts, ::TrueClass, ::FalseClass, context: "#{context}[:include_linked_accounts]")
        Hearth::Validator.validate_types!(input.owning_account, ::String, context: "#{context}[:owning_account]")
      end
    end

    class ListMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListMetricsOutput, context: context)
        Metrics.validate!(input.metrics, context: "#{context}[:metrics]") unless input.metrics.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        OwningAccounts.validate!(input.owning_accounts, context: "#{context}[:owning_accounts]") unless input.owning_accounts.nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
      end
    end

    class ManagedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ManagedRule, context: context)
        Hearth::Validator.validate_required!(input.template_name, context: "#{context}[:template_name]")
        Hearth::Validator.validate_types!(input.template_name, ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
      end
    end

    class ManagedRuleDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ManagedRuleDescription, context: context)
        Hearth::Validator.validate_types!(input.template_name, ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
        ManagedRuleState.validate!(input.rule_state, context: "#{context}[:rule_state]") unless input.rule_state.nil?
      end
    end

    class ManagedRuleDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedRuleDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedRuleState
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ManagedRuleState, context: context)
        Hearth::Validator.validate_required!(input.rule_name, context: "#{context}[:rule_name]")
        Hearth::Validator.validate_types!(input.rule_name, ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate_required!(input.state, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input.state, ::String, context: "#{context}[:state]")
      end
    end

    class ManagedRules
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MessageData
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MessageData, context: context)
        Hearth::Validator.validate_types!(input.code, ::String, context: "#{context}[:code]")
        Hearth::Validator.validate_types!(input.value, ::String, context: "#{context}[:value]")
      end
    end

    class Metric
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Metric, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
      end
    end

    class MetricAlarm
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricAlarm, context: context)
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_arn, ::String, context: "#{context}[:alarm_arn]")
        Hearth::Validator.validate_types!(input.alarm_description, ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate_types!(input.alarm_configuration_updated_timestamp, ::Time, context: "#{context}[:alarm_configuration_updated_timestamp]")
        Hearth::Validator.validate_types!(input.actions_enabled, ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input.ok_actions, context: "#{context}[:ok_actions]") unless input.ok_actions.nil?
        ResourceList.validate!(input.alarm_actions, context: "#{context}[:alarm_actions]") unless input.alarm_actions.nil?
        ResourceList.validate!(input.insufficient_data_actions, context: "#{context}[:insufficient_data_actions]") unless input.insufficient_data_actions.nil?
        Hearth::Validator.validate_types!(input.state_value, ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate_types!(input.state_reason, ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input.state_reason_data, ::String, context: "#{context}[:state_reason_data]")
        Hearth::Validator.validate_types!(input.state_updated_timestamp, ::Time, context: "#{context}[:state_updated_timestamp]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.statistic, ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate_types!(input.extended_statistic, ::String, context: "#{context}[:extended_statistic]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate_types!(input.evaluation_periods, ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate_types!(input.datapoints_to_alarm, ::Integer, context: "#{context}[:datapoints_to_alarm]")
        Hearth::Validator.validate_types!(input.threshold, ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate_types!(input.comparison_operator, ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate_types!(input.treat_missing_data, ::String, context: "#{context}[:treat_missing_data]")
        Hearth::Validator.validate_types!(input.evaluate_low_sample_count_percentile, ::String, context: "#{context}[:evaluate_low_sample_count_percentile]")
        MetricDataQueries.validate!(input.metrics, context: "#{context}[:metrics]") unless input.metrics.nil?
        Hearth::Validator.validate_types!(input.threshold_metric_id, ::String, context: "#{context}[:threshold_metric_id]")
        Hearth::Validator.validate_types!(input.evaluation_state, ::String, context: "#{context}[:evaluation_state]")
        Hearth::Validator.validate_types!(input.state_transitioned_timestamp, ::Time, context: "#{context}[:state_transitioned_timestamp]")
      end
    end

    class MetricAlarms
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricAlarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDatum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataQueries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDataQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricDataQuery, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        MetricStat.validate!(input.metric_stat, context: "#{context}[:metric_stat]") unless input.metric_stat.nil?
        Hearth::Validator.validate_types!(input.expression, ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate_types!(input.label, ::String, context: "#{context}[:label]")
        Hearth::Validator.validate_types!(input.return_data, ::TrueClass, ::FalseClass, context: "#{context}[:return_data]")
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.account_id, ::String, context: "#{context}[:account_id]")
      end
    end

    class MetricDataResult
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricDataResult, context: context)
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.label, ::String, context: "#{context}[:label]")
        Timestamps.validate!(input.timestamps, context: "#{context}[:timestamps]") unless input.timestamps.nil?
        DatapointValues.validate!(input.values, context: "#{context}[:values]") unless input.values.nil?
        Hearth::Validator.validate_types!(input.status_code, ::String, context: "#{context}[:status_code]")
        MetricDataResultMessages.validate!(input.messages, context: "#{context}[:messages]") unless input.messages.nil?
      end
    end

    class MetricDataResultMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MessageData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataResults
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDataResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDatum
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricDatum, context: context)
        Hearth::Validator.validate_required!(input.metric_name, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.timestamp, ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate_types!(input.value, ::Float, context: "#{context}[:value]")
        StatisticSet.validate!(input.statistic_values, context: "#{context}[:statistic_values]") unless input.statistic_values.nil?
        Values.validate!(input.values, context: "#{context}[:values]") unless input.values.nil?
        Counts.validate!(input.counts, context: "#{context}[:counts]") unless input.counts.nil?
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate_types!(input.storage_resolution, ::Integer, context: "#{context}[:storage_resolution]")
      end
    end

    class MetricMathAnomalyDetector
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricMathAnomalyDetector, context: context)
        MetricDataQueries.validate!(input.metric_data_queries, context: "#{context}[:metric_data_queries]") unless input.metric_data_queries.nil?
      end
    end

    class MetricStat
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricStat, context: context)
        Hearth::Validator.validate_required!(input.metric, context: "#{context}[:metric]")
        Metric.validate!(input.metric, context: "#{context}[:metric]") unless input.metric.nil?
        Hearth::Validator.validate_required!(input.period, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate_required!(input.stat, context: "#{context}[:stat]")
        Hearth::Validator.validate_types!(input.stat, ::String, context: "#{context}[:stat]")
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
      end
    end

    class MetricStreamEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricStreamEntry, context: context)
        Hearth::Validator.validate_types!(input.arn, ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input.creation_date, ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate_types!(input.last_update_date, ::Time, context: "#{context}[:last_update_date]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.firehose_arn, ::String, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate_types!(input.state, ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input.output_format, ::String, context: "#{context}[:output_format]")
      end
    end

    class MetricStreamFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricStreamFilter, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        MetricStreamFilterMetricNames.validate!(input.metric_names, context: "#{context}[:metric_names]") unless input.metric_names.nil?
      end
    end

    class MetricStreamFilterMetricNames
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricStreamFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamNames
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricStreamStatisticsAdditionalStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricStreamStatisticsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricStreamStatisticsConfiguration, context: context)
        Hearth::Validator.validate_required!(input.include_metrics, context: "#{context}[:include_metrics]")
        MetricStreamStatisticsIncludeMetrics.validate!(input.include_metrics, context: "#{context}[:include_metrics]") unless input.include_metrics.nil?
        Hearth::Validator.validate_required!(input.additional_statistics, context: "#{context}[:additional_statistics]")
        MetricStreamStatisticsAdditionalStatistics.validate!(input.additional_statistics, context: "#{context}[:additional_statistics]") unless input.additional_statistics.nil?
      end
    end

    class MetricStreamStatisticsConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamStatisticsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamStatisticsIncludeMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamStatisticsMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamStatisticsMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricStreamStatisticsMetric, context: context)
        Hearth::Validator.validate_required!(input.namespace, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_required!(input.metric_name, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Metric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MissingRequiredParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MissingRequiredParameterException, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class OwningAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PartialFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PartialFailure, context: context)
        Hearth::Validator.validate_types!(input.failure_resource, ::String, context: "#{context}[:failure_resource]")
        Hearth::Validator.validate_types!(input.exception_type, ::String, context: "#{context}[:exception_type]")
        Hearth::Validator.validate_types!(input.failure_code, ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate_types!(input.failure_description, ::String, context: "#{context}[:failure_description]")
      end
    end

    class PutAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutAnomalyDetectorInput, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.stat, ::String, context: "#{context}[:stat]")
        AnomalyDetectorConfiguration.validate!(input.configuration, context: "#{context}[:configuration]") unless input.configuration.nil?
        SingleMetricAnomalyDetector.validate!(input.single_metric_anomaly_detector, context: "#{context}[:single_metric_anomaly_detector]") unless input.single_metric_anomaly_detector.nil?
        MetricMathAnomalyDetector.validate!(input.metric_math_anomaly_detector, context: "#{context}[:metric_math_anomaly_detector]") unless input.metric_math_anomaly_detector.nil?
      end
    end

    class PutAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutAnomalyDetectorOutput, context: context)
      end
    end

    class PutCompositeAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutCompositeAlarmInput, context: context)
        Hearth::Validator.validate_types!(input.actions_enabled, ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input.alarm_actions, context: "#{context}[:alarm_actions]") unless input.alarm_actions.nil?
        Hearth::Validator.validate_types!(input.alarm_description, ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate_required!(input.alarm_name, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_required!(input.alarm_rule, context: "#{context}[:alarm_rule]")
        Hearth::Validator.validate_types!(input.alarm_rule, ::String, context: "#{context}[:alarm_rule]")
        ResourceList.validate!(input.insufficient_data_actions, context: "#{context}[:insufficient_data_actions]") unless input.insufficient_data_actions.nil?
        ResourceList.validate!(input.ok_actions, context: "#{context}[:ok_actions]") unless input.ok_actions.nil?
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
        Hearth::Validator.validate_types!(input.actions_suppressor, ::String, context: "#{context}[:actions_suppressor]")
        Hearth::Validator.validate_types!(input.actions_suppressor_wait_period, ::Integer, context: "#{context}[:actions_suppressor_wait_period]")
        Hearth::Validator.validate_types!(input.actions_suppressor_extension_period, ::Integer, context: "#{context}[:actions_suppressor_extension_period]")
      end
    end

    class PutCompositeAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutCompositeAlarmOutput, context: context)
      end
    end

    class PutDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutDashboardInput, context: context)
        Hearth::Validator.validate_required!(input.dashboard_name, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate_types!(input.dashboard_name, ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate_required!(input.dashboard_body, context: "#{context}[:dashboard_body]")
        Hearth::Validator.validate_types!(input.dashboard_body, ::String, context: "#{context}[:dashboard_body]")
      end
    end

    class PutDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutDashboardOutput, context: context)
        DashboardValidationMessages.validate!(input.dashboard_validation_messages, context: "#{context}[:dashboard_validation_messages]") unless input.dashboard_validation_messages.nil?
      end
    end

    class PutInsightRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutInsightRuleInput, context: context)
        Hearth::Validator.validate_required!(input.rule_name, context: "#{context}[:rule_name]")
        Hearth::Validator.validate_types!(input.rule_name, ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate_types!(input.rule_state, ::String, context: "#{context}[:rule_state]")
        Hearth::Validator.validate_required!(input.rule_definition, context: "#{context}[:rule_definition]")
        Hearth::Validator.validate_types!(input.rule_definition, ::String, context: "#{context}[:rule_definition]")
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
      end
    end

    class PutInsightRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutInsightRuleOutput, context: context)
      end
    end

    class PutManagedInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutManagedInsightRulesInput, context: context)
        Hearth::Validator.validate_required!(input.managed_rules, context: "#{context}[:managed_rules]")
        ManagedRules.validate!(input.managed_rules, context: "#{context}[:managed_rules]") unless input.managed_rules.nil?
      end
    end

    class PutManagedInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutManagedInsightRulesOutput, context: context)
        BatchFailures.validate!(input.failures, context: "#{context}[:failures]") unless input.failures.nil?
      end
    end

    class PutMetricAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutMetricAlarmInput, context: context)
        Hearth::Validator.validate_required!(input.alarm_name, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_description, ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate_types!(input.actions_enabled, ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input.ok_actions, context: "#{context}[:ok_actions]") unless input.ok_actions.nil?
        ResourceList.validate!(input.alarm_actions, context: "#{context}[:alarm_actions]") unless input.alarm_actions.nil?
        ResourceList.validate!(input.insufficient_data_actions, context: "#{context}[:insufficient_data_actions]") unless input.insufficient_data_actions.nil?
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.statistic, ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate_types!(input.extended_statistic, ::String, context: "#{context}[:extended_statistic]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.period, ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate_types!(input.unit, ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate_required!(input.evaluation_periods, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate_types!(input.evaluation_periods, ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate_types!(input.datapoints_to_alarm, ::Integer, context: "#{context}[:datapoints_to_alarm]")
        Hearth::Validator.validate_types!(input.threshold, ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate_required!(input.comparison_operator, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate_types!(input.comparison_operator, ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate_types!(input.treat_missing_data, ::String, context: "#{context}[:treat_missing_data]")
        Hearth::Validator.validate_types!(input.evaluate_low_sample_count_percentile, ::String, context: "#{context}[:evaluate_low_sample_count_percentile]")
        MetricDataQueries.validate!(input.metrics, context: "#{context}[:metrics]") unless input.metrics.nil?
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
        Hearth::Validator.validate_types!(input.threshold_metric_id, ::String, context: "#{context}[:threshold_metric_id]")
      end
    end

    class PutMetricAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutMetricAlarmOutput, context: context)
      end
    end

    class PutMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutMetricDataInput, context: context)
        Hearth::Validator.validate_required!(input.namespace, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_required!(input.metric_data, context: "#{context}[:metric_data]")
        MetricData.validate!(input.metric_data, context: "#{context}[:metric_data]") unless input.metric_data.nil?
      end
    end

    class PutMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutMetricDataOutput, context: context)
      end
    end

    class PutMetricStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutMetricStreamInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        MetricStreamFilters.validate!(input.include_filters, context: "#{context}[:include_filters]") unless input.include_filters.nil?
        MetricStreamFilters.validate!(input.exclude_filters, context: "#{context}[:exclude_filters]") unless input.exclude_filters.nil?
        Hearth::Validator.validate_required!(input.firehose_arn, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate_types!(input.firehose_arn, ::String, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate_required!(input.role_arn, context: "#{context}[:role_arn]")
        Hearth::Validator.validate_types!(input.role_arn, ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate_required!(input.output_format, context: "#{context}[:output_format]")
        Hearth::Validator.validate_types!(input.output_format, ::String, context: "#{context}[:output_format]")
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
        MetricStreamStatisticsConfigurations.validate!(input.statistics_configurations, context: "#{context}[:statistics_configurations]") unless input.statistics_configurations.nil?
        Hearth::Validator.validate_types!(input.include_linked_accounts_metrics, ::TrueClass, ::FalseClass, context: "#{context}[:include_linked_accounts_metrics]")
      end
    end

    class PutMetricStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutMetricStreamOutput, context: context)
        Hearth::Validator.validate_types!(input.arn, ::String, context: "#{context}[:arn]")
      end
    end

    class Range
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Range, context: context)
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_required!(input.end_time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFound, context: context)
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate_types!(input.resource_type, ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate_types!(input.resource_id, ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class SetAlarmStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SetAlarmStateInput, context: context)
        Hearth::Validator.validate_required!(input.alarm_name, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_types!(input.alarm_name, ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate_required!(input.state_value, context: "#{context}[:state_value]")
        Hearth::Validator.validate_types!(input.state_value, ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate_required!(input.state_reason, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input.state_reason, ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input.state_reason_data, ::String, context: "#{context}[:state_reason_data]")
      end
    end

    class SetAlarmStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SetAlarmStateOutput, context: context)
      end
    end

    class SingleMetricAnomalyDetector
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SingleMetricAnomalyDetector, context: context)
        Hearth::Validator.validate_types!(input.namespace, ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate_types!(input.metric_name, ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input.dimensions, context: "#{context}[:dimensions]") unless input.dimensions.nil?
        Hearth::Validator.validate_types!(input.stat, ::String, context: "#{context}[:stat]")
      end
    end

    class StartMetricStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartMetricStreamsInput, context: context)
        Hearth::Validator.validate_required!(input.names, context: "#{context}[:names]")
        MetricStreamNames.validate!(input.names, context: "#{context}[:names]") unless input.names.nil?
      end
    end

    class StartMetricStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartMetricStreamsOutput, context: context)
      end
    end

    class StatisticSet
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StatisticSet, context: context)
        Hearth::Validator.validate_required!(input.sample_count, context: "#{context}[:sample_count]")
        Hearth::Validator.validate_types!(input.sample_count, ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate_required!(input.sum, context: "#{context}[:sum]")
        Hearth::Validator.validate_types!(input.sum, ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate_required!(input.minimum, context: "#{context}[:minimum]")
        Hearth::Validator.validate_types!(input.minimum, ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate_required!(input.maximum, context: "#{context}[:maximum]")
        Hearth::Validator.validate_types!(input.maximum, ::Float, context: "#{context}[:maximum]")
      end
    end

    class Statistics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StopMetricStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopMetricStreamsInput, context: context)
        Hearth::Validator.validate_required!(input.names, context: "#{context}[:names]")
        MetricStreamNames.validate!(input.names, context: "#{context}[:names]") unless input.names.nil?
      end
    end

    class StopMetricStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopMetricStreamsOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tag, context: context)
        Hearth::Validator.validate_required!(input.key, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input.key, ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input.value, context: "#{context}[:value]")
        Hearth::Validator.validate_types!(input.value, ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_required!(input.tags, context: "#{context}[:tags]")
        TagList.validate!(input.tags, context: "#{context}[:tags]") unless input.tags.nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Timestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate_required!(input.resource_arn, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_types!(input.resource_arn, ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate_required!(input.tag_keys, context: "#{context}[:tag_keys]")
        TagKeyList.validate!(input.tag_keys, context: "#{context}[:tag_keys]") unless input.tag_keys.nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
