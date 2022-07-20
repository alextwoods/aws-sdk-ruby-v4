# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudWatch
  module Validators

    class AlarmHistoryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmHistoryItem, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:alarm_type], ::String, context: "#{context}[:alarm_type]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:history_item_type], ::String, context: "#{context}[:history_item_type]")
        Hearth::Validator.validate!(input[:history_summary], ::String, context: "#{context}[:history_summary]")
        Hearth::Validator.validate!(input[:history_data], ::String, context: "#{context}[:history_data]")
      end
    end

    class AlarmHistoryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlarmHistoryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AlarmTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnomalyDetector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyDetector, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        AnomalyDetectorConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:state_value], ::String, context: "#{context}[:state_value]")
        SingleMetricAnomalyDetector.validate!(input[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless input[:single_metric_anomaly_detector].nil?
        MetricMathAnomalyDetector.validate!(input[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless input[:metric_math_anomaly_detector].nil?
      end
    end

    class AnomalyDetectorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyDetectorConfiguration, context: context)
        AnomalyDetectorExcludedTimeRanges.validate!(input[:excluded_time_ranges], context: "#{context}[:excluded_time_ranges]") unless input[:excluded_time_ranges].nil?
        Hearth::Validator.validate!(input[:metric_timezone], ::String, context: "#{context}[:metric_timezone]")
      end
    end

    class AnomalyDetectorExcludedTimeRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalyDetectorTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnomalyDetectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnomalyDetector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchFailures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartialFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompositeAlarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompositeAlarm, context: context)
        Hearth::Validator.validate!(input[:actions_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input[:alarm_actions], context: "#{context}[:alarm_actions]") unless input[:alarm_actions].nil?
        Hearth::Validator.validate!(input[:alarm_arn], ::String, context: "#{context}[:alarm_arn]")
        Hearth::Validator.validate!(input[:alarm_configuration_updated_timestamp], ::Time, context: "#{context}[:alarm_configuration_updated_timestamp]")
        Hearth::Validator.validate!(input[:alarm_description], ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:alarm_rule], ::String, context: "#{context}[:alarm_rule]")
        ResourceList.validate!(input[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless input[:insufficient_data_actions].nil?
        ResourceList.validate!(input[:ok_actions], context: "#{context}[:ok_actions]") unless input[:ok_actions].nil?
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_data], ::String, context: "#{context}[:state_reason_data]")
        Hearth::Validator.validate!(input[:state_updated_timestamp], ::Time, context: "#{context}[:state_updated_timestamp]")
        Hearth::Validator.validate!(input[:state_value], ::String, context: "#{context}[:state_value]")
      end
    end

    class CompositeAlarms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompositeAlarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Counts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class DashboardEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashboardEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DashboardEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardEntry, context: context)
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class DashboardInvalidInputError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardInvalidInputError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        DashboardValidationMessages.validate!(input[:dashboard_validation_messages], context: "#{context}[:dashboard_validation_messages]") unless input[:dashboard_validation_messages].nil?
      end
    end

    class DashboardNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DashboardNotFoundError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardNotFoundError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DashboardValidationMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardValidationMessage, context: context)
        Hearth::Validator.validate!(input[:data_path], ::String, context: "#{context}[:data_path]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DashboardValidationMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashboardValidationMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Datapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Datapoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:sample_count], ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate!(input[:average], ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        DatapointValueMap.validate!(input[:extended_statistics], context: "#{context}[:extended_statistics]") unless input[:extended_statistics].nil?
      end
    end

    class DatapointValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class DatapointValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class Datapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Datapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAlarmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlarmsInput, context: context)
        AlarmNames.validate!(input[:alarm_names], context: "#{context}[:alarm_names]") unless input[:alarm_names].nil?
      end
    end

    class DeleteAlarmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlarmsOutput, context: context)
      end
    end

    class DeleteAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        SingleMetricAnomalyDetector.validate!(input[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless input[:single_metric_anomaly_detector].nil?
        MetricMathAnomalyDetector.validate!(input[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless input[:metric_math_anomaly_detector].nil?
      end
    end

    class DeleteAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalyDetectorOutput, context: context)
      end
    end

    class DeleteDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDashboardsInput, context: context)
        DashboardNames.validate!(input[:dashboard_names], context: "#{context}[:dashboard_names]") unless input[:dashboard_names].nil?
      end
    end

    class DeleteDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDashboardsOutput, context: context)
      end
    end

    class DeleteInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInsightRulesInput, context: context)
        InsightRuleNames.validate!(input[:rule_names], context: "#{context}[:rule_names]") unless input[:rule_names].nil?
      end
    end

    class DeleteInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInsightRulesOutput, context: context)
        BatchFailures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class DeleteMetricStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMetricStreamInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteMetricStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMetricStreamOutput, context: context)
      end
    end

    class DescribeAlarmHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmHistoryInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        AlarmTypes.validate!(input[:alarm_types], context: "#{context}[:alarm_types]") unless input[:alarm_types].nil?
        Hearth::Validator.validate!(input[:history_item_type], ::String, context: "#{context}[:history_item_type]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:scan_by], ::String, context: "#{context}[:scan_by]")
      end
    end

    class DescribeAlarmHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmHistoryOutput, context: context)
        AlarmHistoryItems.validate!(input[:alarm_history_items], context: "#{context}[:alarm_history_items]") unless input[:alarm_history_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAlarmsForMetricInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmsForMetricInput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:extended_statistic], ::String, context: "#{context}[:extended_statistic]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class DescribeAlarmsForMetricOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmsForMetricOutput, context: context)
        MetricAlarms.validate!(input[:metric_alarms], context: "#{context}[:metric_alarms]") unless input[:metric_alarms].nil?
      end
    end

    class DescribeAlarmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmsInput, context: context)
        AlarmNames.validate!(input[:alarm_names], context: "#{context}[:alarm_names]") unless input[:alarm_names].nil?
        Hearth::Validator.validate!(input[:alarm_name_prefix], ::String, context: "#{context}[:alarm_name_prefix]")
        AlarmTypes.validate!(input[:alarm_types], context: "#{context}[:alarm_types]") unless input[:alarm_types].nil?
        Hearth::Validator.validate!(input[:children_of_alarm_name], ::String, context: "#{context}[:children_of_alarm_name]")
        Hearth::Validator.validate!(input[:parents_of_alarm_name], ::String, context: "#{context}[:parents_of_alarm_name]")
        Hearth::Validator.validate!(input[:state_value], ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate!(input[:action_prefix], ::String, context: "#{context}[:action_prefix]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAlarmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmsOutput, context: context)
        CompositeAlarms.validate!(input[:composite_alarms], context: "#{context}[:composite_alarms]") unless input[:composite_alarms].nil?
        MetricAlarms.validate!(input[:metric_alarms], context: "#{context}[:metric_alarms]") unless input[:metric_alarms].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAnomalyDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        AnomalyDetectorTypes.validate!(input[:anomaly_detector_types], context: "#{context}[:anomaly_detector_types]") unless input[:anomaly_detector_types].nil?
      end
    end

    class DescribeAnomalyDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyDetectorsOutput, context: context)
        AnomalyDetectors.validate!(input[:anomaly_detectors], context: "#{context}[:anomaly_detectors]") unless input[:anomaly_detectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInsightRulesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInsightRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        InsightRules.validate!(input[:insight_rules], context: "#{context}[:insight_rules]") unless input[:insight_rules].nil?
      end
    end

    class Dimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DimensionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DimensionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DimensionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Dimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisableAlarmActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAlarmActionsInput, context: context)
        AlarmNames.validate!(input[:alarm_names], context: "#{context}[:alarm_names]") unless input[:alarm_names].nil?
      end
    end

    class DisableAlarmActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAlarmActionsOutput, context: context)
      end
    end

    class DisableInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableInsightRulesInput, context: context)
        InsightRuleNames.validate!(input[:rule_names], context: "#{context}[:rule_names]") unless input[:rule_names].nil?
      end
    end

    class DisableInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableInsightRulesOutput, context: context)
        BatchFailures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class EnableAlarmActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAlarmActionsInput, context: context)
        AlarmNames.validate!(input[:alarm_names], context: "#{context}[:alarm_names]") unless input[:alarm_names].nil?
      end
    end

    class EnableAlarmActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAlarmActionsOutput, context: context)
      end
    end

    class EnableInsightRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableInsightRulesInput, context: context)
        InsightRuleNames.validate!(input[:rule_names], context: "#{context}[:rule_names]") unless input[:rule_names].nil?
      end
    end

    class EnableInsightRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableInsightRulesOutput, context: context)
        BatchFailures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class ExtendedStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDashboardInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
      end
    end

    class GetDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDashboardOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate!(input[:dashboard_body], ::String, context: "#{context}[:dashboard_body]")
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
      end
    end

    class GetInsightRuleReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightRuleReportInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:max_contributor_count], ::Integer, context: "#{context}[:max_contributor_count]")
        InsightRuleMetricList.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class GetInsightRuleReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightRuleReportOutput, context: context)
        InsightRuleContributorKeyLabels.validate!(input[:key_labels], context: "#{context}[:key_labels]") unless input[:key_labels].nil?
        Hearth::Validator.validate!(input[:aggregation_statistic], ::String, context: "#{context}[:aggregation_statistic]")
        Hearth::Validator.validate!(input[:aggregate_value], ::Float, context: "#{context}[:aggregate_value]")
        Hearth::Validator.validate!(input[:approximate_unique_count], ::Integer, context: "#{context}[:approximate_unique_count]")
        InsightRuleContributors.validate!(input[:contributors], context: "#{context}[:contributors]") unless input[:contributors].nil?
        InsightRuleMetricDatapoints.validate!(input[:metric_datapoints], context: "#{context}[:metric_datapoints]") unless input[:metric_datapoints].nil?
      end
    end

    class GetMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricDataInput, context: context)
        MetricDataQueries.validate!(input[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless input[:metric_data_queries].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:scan_by], ::String, context: "#{context}[:scan_by]")
        Hearth::Validator.validate!(input[:max_datapoints], ::Integer, context: "#{context}[:max_datapoints]")
        LabelOptions.validate!(input[:label_options], context: "#{context}[:label_options]") unless input[:label_options].nil?
      end
    end

    class GetMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricDataOutput, context: context)
        MetricDataResults.validate!(input[:metric_data_results], context: "#{context}[:metric_data_results]") unless input[:metric_data_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        MetricDataResultMessages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class GetMetricStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Statistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        ExtendedStatistics.validate!(input[:extended_statistics], context: "#{context}[:extended_statistics]") unless input[:extended_statistics].nil?
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class GetMetricStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricStatisticsOutput, context: context)
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Datapoints.validate!(input[:datapoints], context: "#{context}[:datapoints]") unless input[:datapoints].nil?
      end
    end

    class GetMetricStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricStreamInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetMetricStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricStreamOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        MetricStreamFilters.validate!(input[:include_filters], context: "#{context}[:include_filters]") unless input[:include_filters].nil?
        MetricStreamFilters.validate!(input[:exclude_filters], context: "#{context}[:exclude_filters]") unless input[:exclude_filters].nil?
        Hearth::Validator.validate!(input[:firehose_arn], ::String, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        MetricStreamStatisticsConfigurations.validate!(input[:statistics_configurations], context: "#{context}[:statistics_configurations]") unless input[:statistics_configurations].nil?
      end
    end

    class GetMetricWidgetImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricWidgetImageInput, context: context)
        Hearth::Validator.validate!(input[:metric_widget], ::String, context: "#{context}[:metric_widget]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
      end
    end

    class GetMetricWidgetImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricWidgetImageOutput, context: context)
        Hearth::Validator.validate!(input[:metric_widget_image], ::String, context: "#{context}[:metric_widget_image]")
      end
    end

    class InsightRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
      end
    end

    class InsightRuleContributor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightRuleContributor, context: context)
        InsightRuleContributorKeys.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:approximate_aggregate_value], ::Float, context: "#{context}[:approximate_aggregate_value]")
        InsightRuleContributorDatapoints.validate!(input[:datapoints], context: "#{context}[:datapoints]") unless input[:datapoints].nil?
      end
    end

    class InsightRuleContributorDatapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightRuleContributorDatapoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:approximate_value], ::Float, context: "#{context}[:approximate_value]")
      end
    end

    class InsightRuleContributorDatapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRuleContributorDatapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightRuleContributorKeyLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRuleContributorKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRuleContributors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRuleContributor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightRuleMetricDatapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightRuleMetricDatapoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:unique_contributors], ::Float, context: "#{context}[:unique_contributors]")
        Hearth::Validator.validate!(input[:max_contributor_value], ::Float, context: "#{context}[:max_contributor_value]")
        Hearth::Validator.validate!(input[:sample_count], ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate!(input[:average], ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
      end
    end

    class InsightRuleMetricDatapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRuleMetricDatapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightRuleMetricList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRuleNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InsightRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServiceFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFormatFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFormatFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LabelOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelOptions, context: context)
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardsInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_name_prefix], ::String, context: "#{context}[:dashboard_name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardsOutput, context: context)
        DashboardEntries.validate!(input[:dashboard_entries], context: "#{context}[:dashboard_entries]") unless input[:dashboard_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMetricStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricStreamsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMetricStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricStreamsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        MetricStreamEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class ListMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricsInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        DimensionFilters.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:recently_active], ::String, context: "#{context}[:recently_active]")
      end
    end

    class ListMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricsOutput, context: context)
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MessageData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageData, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Metric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metric, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class MetricAlarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricAlarm, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:alarm_arn], ::String, context: "#{context}[:alarm_arn]")
        Hearth::Validator.validate!(input[:alarm_description], ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate!(input[:alarm_configuration_updated_timestamp], ::Time, context: "#{context}[:alarm_configuration_updated_timestamp]")
        Hearth::Validator.validate!(input[:actions_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input[:ok_actions], context: "#{context}[:ok_actions]") unless input[:ok_actions].nil?
        ResourceList.validate!(input[:alarm_actions], context: "#{context}[:alarm_actions]") unless input[:alarm_actions].nil?
        ResourceList.validate!(input[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless input[:insufficient_data_actions].nil?
        Hearth::Validator.validate!(input[:state_value], ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_data], ::String, context: "#{context}[:state_reason_data]")
        Hearth::Validator.validate!(input[:state_updated_timestamp], ::Time, context: "#{context}[:state_updated_timestamp]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:extended_statistic], ::String, context: "#{context}[:extended_statistic]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:datapoints_to_alarm], ::Integer, context: "#{context}[:datapoints_to_alarm]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:treat_missing_data], ::String, context: "#{context}[:treat_missing_data]")
        Hearth::Validator.validate!(input[:evaluate_low_sample_count_percentile], ::String, context: "#{context}[:evaluate_low_sample_count_percentile]")
        MetricDataQueries.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:threshold_metric_id], ::String, context: "#{context}[:threshold_metric_id]")
      end
    end

    class MetricAlarms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricAlarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDatum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataQueries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDataQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDataQuery, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MetricStat.validate!(input[:metric_stat], context: "#{context}[:metric_stat]") unless input[:metric_stat].nil?
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:return_data], ::TrueClass, ::FalseClass, context: "#{context}[:return_data]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class MetricDataResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDataResult, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Timestamps.validate!(input[:timestamps], context: "#{context}[:timestamps]") unless input[:timestamps].nil?
        DatapointValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MetricDataResultMessages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class MetricDataResultMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MessageData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDataResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDatum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDatum, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        StatisticSet.validate!(input[:statistic_values], context: "#{context}[:statistic_values]") unless input[:statistic_values].nil?
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Counts.validate!(input[:counts], context: "#{context}[:counts]") unless input[:counts].nil?
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:storage_resolution], ::Integer, context: "#{context}[:storage_resolution]")
      end
    end

    class MetricMathAnomalyDetector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricMathAnomalyDetector, context: context)
        MetricDataQueries.validate!(input[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless input[:metric_data_queries].nil?
      end
    end

    class MetricStat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricStat, context: context)
        Metric.validate!(input[:metric], context: "#{context}[:metric]") unless input[:metric].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class MetricStreamEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricStreamEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:firehose_arn], ::String, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
      end
    end

    class MetricStreamFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricStreamFilter, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class MetricStreamFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricStreamStatisticsAdditionalStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricStreamStatisticsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricStreamStatisticsConfiguration, context: context)
        MetricStreamStatisticsIncludeMetrics.validate!(input[:include_metrics], context: "#{context}[:include_metrics]") unless input[:include_metrics].nil?
        MetricStreamStatisticsAdditionalStatistics.validate!(input[:additional_statistics], context: "#{context}[:additional_statistics]") unless input[:additional_statistics].nil?
      end
    end

    class MetricStreamStatisticsConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamStatisticsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamStatisticsIncludeMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricStreamStatisticsMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStreamStatisticsMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricStreamStatisticsMetric, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Metric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MissingRequiredParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingRequiredParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PartialFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartialFailure, context: context)
        Hearth::Validator.validate!(input[:failure_resource], ::String, context: "#{context}[:failure_resource]")
        Hearth::Validator.validate!(input[:exception_type], ::String, context: "#{context}[:exception_type]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_description], ::String, context: "#{context}[:failure_description]")
      end
    end

    class PutAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        AnomalyDetectorConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        SingleMetricAnomalyDetector.validate!(input[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless input[:single_metric_anomaly_detector].nil?
        MetricMathAnomalyDetector.validate!(input[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless input[:metric_math_anomaly_detector].nil?
      end
    end

    class PutAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAnomalyDetectorOutput, context: context)
      end
    end

    class PutCompositeAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCompositeAlarmInput, context: context)
        Hearth::Validator.validate!(input[:actions_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input[:alarm_actions], context: "#{context}[:alarm_actions]") unless input[:alarm_actions].nil?
        Hearth::Validator.validate!(input[:alarm_description], ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:alarm_rule], ::String, context: "#{context}[:alarm_rule]")
        ResourceList.validate!(input[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless input[:insufficient_data_actions].nil?
        ResourceList.validate!(input[:ok_actions], context: "#{context}[:ok_actions]") unless input[:ok_actions].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutCompositeAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCompositeAlarmOutput, context: context)
      end
    end

    class PutDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDashboardInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate!(input[:dashboard_body], ::String, context: "#{context}[:dashboard_body]")
      end
    end

    class PutDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDashboardOutput, context: context)
        DashboardValidationMessages.validate!(input[:dashboard_validation_messages], context: "#{context}[:dashboard_validation_messages]") unless input[:dashboard_validation_messages].nil?
      end
    end

    class PutInsightRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInsightRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:rule_state], ::String, context: "#{context}[:rule_state]")
        Hearth::Validator.validate!(input[:rule_definition], ::String, context: "#{context}[:rule_definition]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutInsightRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInsightRuleOutput, context: context)
      end
    end

    class PutMetricAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricAlarmInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:alarm_description], ::String, context: "#{context}[:alarm_description]")
        Hearth::Validator.validate!(input[:actions_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:actions_enabled]")
        ResourceList.validate!(input[:ok_actions], context: "#{context}[:ok_actions]") unless input[:ok_actions].nil?
        ResourceList.validate!(input[:alarm_actions], context: "#{context}[:alarm_actions]") unless input[:alarm_actions].nil?
        ResourceList.validate!(input[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless input[:insufficient_data_actions].nil?
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:extended_statistic], ::String, context: "#{context}[:extended_statistic]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:datapoints_to_alarm], ::Integer, context: "#{context}[:datapoints_to_alarm]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:treat_missing_data], ::String, context: "#{context}[:treat_missing_data]")
        Hearth::Validator.validate!(input[:evaluate_low_sample_count_percentile], ::String, context: "#{context}[:evaluate_low_sample_count_percentile]")
        MetricDataQueries.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:threshold_metric_id], ::String, context: "#{context}[:threshold_metric_id]")
      end
    end

    class PutMetricAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricAlarmOutput, context: context)
      end
    end

    class PutMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        MetricData.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class PutMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricDataOutput, context: context)
      end
    end

    class PutMetricStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricStreamInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        MetricStreamFilters.validate!(input[:include_filters], context: "#{context}[:include_filters]") unless input[:include_filters].nil?
        MetricStreamFilters.validate!(input[:exclude_filters], context: "#{context}[:exclude_filters]") unless input[:exclude_filters].nil?
        Hearth::Validator.validate!(input[:firehose_arn], ::String, context: "#{context}[:firehose_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MetricStreamStatisticsConfigurations.validate!(input[:statistics_configurations], context: "#{context}[:statistics_configurations]") unless input[:statistics_configurations].nil?
      end
    end

    class PutMetricStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricStreamOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Range, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetAlarmStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetAlarmStateInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:state_value], ::String, context: "#{context}[:state_value]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_data], ::String, context: "#{context}[:state_reason_data]")
      end
    end

    class SetAlarmStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetAlarmStateOutput, context: context)
      end
    end

    class SingleMetricAnomalyDetector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingleMetricAnomalyDetector, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
      end
    end

    class StartMetricStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMetricStreamsInput, context: context)
        MetricStreamNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class StartMetricStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMetricStreamsOutput, context: context)
      end
    end

    class StatisticSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatisticSet, context: context)
        Hearth::Validator.validate!(input[:sample_count], ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
      end
    end

    class Statistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StopMetricStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMetricStreamsInput, context: context)
        MetricStreamNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class StopMetricStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMetricStreamsOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Timestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
