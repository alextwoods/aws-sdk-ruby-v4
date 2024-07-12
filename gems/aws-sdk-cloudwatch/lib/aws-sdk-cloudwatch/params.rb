# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  # @api private
  module Params

    class AlarmHistoryItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AlarmHistoryItem, context: context)
        type = Types::AlarmHistoryItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.alarm_type = params[:alarm_type] unless params[:alarm_type].nil?
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type.history_item_type = params[:history_item_type] unless params[:history_item_type].nil?
        type.history_summary = params[:history_summary] unless params[:history_summary].nil?
        type.history_data = params[:history_data] unless params[:history_data].nil?
        type
      end
    end

    class AlarmHistoryItems
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmHistoryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AlarmNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AlarmTypes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AnomalyDetector
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnomalyDetector, context: context)
        type = Types::AnomalyDetector.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat] unless params[:stat].nil?
        type.configuration = AnomalyDetectorConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.state_value = params[:state_value] unless params[:state_value].nil?
        type.single_metric_anomaly_detector = SingleMetricAnomalyDetector.build(params[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless params[:single_metric_anomaly_detector].nil?
        type.metric_math_anomaly_detector = MetricMathAnomalyDetector.build(params[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless params[:metric_math_anomaly_detector].nil?
        type
      end
    end

    class AnomalyDetectorConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnomalyDetectorConfiguration, context: context)
        type = Types::AnomalyDetectorConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.excluded_time_ranges = AnomalyDetectorExcludedTimeRanges.build(params[:excluded_time_ranges], context: "#{context}[:excluded_time_ranges]") unless params[:excluded_time_ranges].nil?
        type.metric_timezone = params[:metric_timezone] unless params[:metric_timezone].nil?
        type
      end
    end

    class AnomalyDetectorExcludedTimeRanges
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AnomalyDetectorTypes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AnomalyDetectors
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyDetector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class BatchFailures
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartialFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CompositeAlarm
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompositeAlarm, context: context)
        type = Types::CompositeAlarm.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.actions_enabled = params[:actions_enabled] unless params[:actions_enabled].nil?
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.alarm_arn = params[:alarm_arn] unless params[:alarm_arn].nil?
        type.alarm_configuration_updated_timestamp = params[:alarm_configuration_updated_timestamp] unless params[:alarm_configuration_updated_timestamp].nil?
        type.alarm_description = params[:alarm_description] unless params[:alarm_description].nil?
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.alarm_rule = params[:alarm_rule] unless params[:alarm_rule].nil?
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.state_reason = params[:state_reason] unless params[:state_reason].nil?
        type.state_reason_data = params[:state_reason_data] unless params[:state_reason_data].nil?
        type.state_updated_timestamp = params[:state_updated_timestamp] unless params[:state_updated_timestamp].nil?
        type.state_value = params[:state_value] unless params[:state_value].nil?
        type.state_transitioned_timestamp = params[:state_transitioned_timestamp] unless params[:state_transitioned_timestamp].nil?
        type.actions_suppressed_by = params[:actions_suppressed_by] unless params[:actions_suppressed_by].nil?
        type.actions_suppressed_reason = params[:actions_suppressed_reason] unless params[:actions_suppressed_reason].nil?
        type.actions_suppressor = params[:actions_suppressor] unless params[:actions_suppressor].nil?
        type.actions_suppressor_wait_period = params[:actions_suppressor_wait_period] unless params[:actions_suppressor_wait_period].nil?
        type.actions_suppressor_extension_period = params[:actions_suppressor_extension_period] unless params[:actions_suppressor_extension_period].nil?
        type
      end
    end

    class CompositeAlarms
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompositeAlarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ConcurrentModificationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class Counts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f unless element.nil?
        end
        data
      end
    end

    class DashboardEntries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class DashboardEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardEntry, context: context)
        type = Types::DashboardEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name = params[:dashboard_name] unless params[:dashboard_name].nil?
        type.dashboard_arn = params[:dashboard_arn] unless params[:dashboard_arn].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.member_size = params[:member_size] unless params[:member_size].nil?
        type
      end
    end

    class DashboardInvalidInputError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardInvalidInputError, context: context)
        type = Types::DashboardInvalidInputError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type.dashboard_validation_messages = DashboardValidationMessages.build(params[:dashboard_validation_messages], context: "#{context}[:dashboard_validation_messages]") unless params[:dashboard_validation_messages].nil?
        type
      end
    end

    class DashboardNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class DashboardNotFoundError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardNotFoundError, context: context)
        type = Types::DashboardNotFoundError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class DashboardValidationMessage
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardValidationMessage, context: context)
        type = Types::DashboardValidationMessage.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data_path = params[:data_path] unless params[:data_path].nil?
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class DashboardValidationMessages
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardValidationMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Datapoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Datapoint, context: context)
        type = Types::Datapoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type.sample_count = params[:sample_count]&.to_f unless params[:sample_count].nil?
        type.average = params[:average]&.to_f unless params[:average].nil?
        type.member_sum = params[:member_sum]&.to_f unless params[:member_sum].nil?
        type.minimum = params[:minimum]&.to_f unless params[:minimum].nil?
        type.maximum = params[:maximum]&.to_f unless params[:maximum].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type.extended_statistics = DatapointValueMap.build(params[:extended_statistics], context: "#{context}[:extended_statistics]") unless params[:extended_statistics].nil?
        type
      end
    end

    class DatapointValueMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value&.to_f unless value.nil?
        end
        data
      end
    end

    class DatapointValues
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f unless element.nil?
        end
        data
      end
    end

    class Datapoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Datapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class DeleteAlarmsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAlarmsInput, context: context)
        type = Types::DeleteAlarmsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type
      end
    end

    class DeleteAlarmsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAlarmsOutput, context: context)
        type = Types::DeleteAlarmsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteAnomalyDetectorInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAnomalyDetectorInput, context: context)
        type = Types::DeleteAnomalyDetectorInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat] unless params[:stat].nil?
        type.single_metric_anomaly_detector = SingleMetricAnomalyDetector.build(params[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless params[:single_metric_anomaly_detector].nil?
        type.metric_math_anomaly_detector = MetricMathAnomalyDetector.build(params[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless params[:metric_math_anomaly_detector].nil?
        type
      end
    end

    class DeleteAnomalyDetectorOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAnomalyDetectorOutput, context: context)
        type = Types::DeleteAnomalyDetectorOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteDashboardsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteDashboardsInput, context: context)
        type = Types::DeleteDashboardsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_names = DashboardNames.build(params[:dashboard_names], context: "#{context}[:dashboard_names]") unless params[:dashboard_names].nil?
        type
      end
    end

    class DeleteDashboardsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteDashboardsOutput, context: context)
        type = Types::DeleteDashboardsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteInsightRulesInput, context: context)
        type = Types::DeleteInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_names = InsightRuleNames.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    class DeleteInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteInsightRulesOutput, context: context)
        type = Types::DeleteInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    class DeleteMetricStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMetricStreamInput, context: context)
        type = Types::DeleteMetricStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class DeleteMetricStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMetricStreamOutput, context: context)
        type = Types::DeleteMetricStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DescribeAlarmHistoryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmHistoryInput, context: context)
        type = Types::DescribeAlarmHistoryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.alarm_types = AlarmTypes.build(params[:alarm_types], context: "#{context}[:alarm_types]") unless params[:alarm_types].nil?
        type.history_item_type = params[:history_item_type] unless params[:history_item_type].nil?
        type.start_date = params[:start_date] unless params[:start_date].nil?
        type.end_date = params[:end_date] unless params[:end_date].nil?
        type.max_records = params[:max_records] unless params[:max_records].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.scan_by = params[:scan_by] unless params[:scan_by].nil?
        type
      end
    end

    class DescribeAlarmHistoryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmHistoryOutput, context: context)
        type = Types::DescribeAlarmHistoryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_history_items = AlarmHistoryItems.build(params[:alarm_history_items], context: "#{context}[:alarm_history_items]") unless params[:alarm_history_items].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class DescribeAlarmsForMetricInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsForMetricInput, context: context)
        type = Types::DescribeAlarmsForMetricInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.statistic = params[:statistic] unless params[:statistic].nil?
        type.extended_statistic = params[:extended_statistic] unless params[:extended_statistic].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.period = params[:period] unless params[:period].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type
      end
    end

    class DescribeAlarmsForMetricOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsForMetricOutput, context: context)
        type = Types::DescribeAlarmsForMetricOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_alarms = MetricAlarms.build(params[:metric_alarms], context: "#{context}[:metric_alarms]") unless params[:metric_alarms].nil?
        type
      end
    end

    class DescribeAlarmsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsInput, context: context)
        type = Types::DescribeAlarmsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type.alarm_name_prefix = params[:alarm_name_prefix] unless params[:alarm_name_prefix].nil?
        type.alarm_types = AlarmTypes.build(params[:alarm_types], context: "#{context}[:alarm_types]") unless params[:alarm_types].nil?
        type.children_of_alarm_name = params[:children_of_alarm_name] unless params[:children_of_alarm_name].nil?
        type.parents_of_alarm_name = params[:parents_of_alarm_name] unless params[:parents_of_alarm_name].nil?
        type.state_value = params[:state_value] unless params[:state_value].nil?
        type.action_prefix = params[:action_prefix] unless params[:action_prefix].nil?
        type.max_records = params[:max_records] unless params[:max_records].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class DescribeAlarmsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsOutput, context: context)
        type = Types::DescribeAlarmsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.composite_alarms = CompositeAlarms.build(params[:composite_alarms], context: "#{context}[:composite_alarms]") unless params[:composite_alarms].nil?
        type.metric_alarms = MetricAlarms.build(params[:metric_alarms], context: "#{context}[:metric_alarms]") unless params[:metric_alarms].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class DescribeAnomalyDetectorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAnomalyDetectorsInput, context: context)
        type = Types::DescribeAnomalyDetectorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.anomaly_detector_types = AnomalyDetectorTypes.build(params[:anomaly_detector_types], context: "#{context}[:anomaly_detector_types]") unless params[:anomaly_detector_types].nil?
        type
      end
    end

    class DescribeAnomalyDetectorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAnomalyDetectorsOutput, context: context)
        type = Types::DescribeAnomalyDetectorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.anomaly_detectors = AnomalyDetectors.build(params[:anomaly_detectors], context: "#{context}[:anomaly_detectors]") unless params[:anomaly_detectors].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class DescribeInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeInsightRulesInput, context: context)
        type = Types::DescribeInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class DescribeInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeInsightRulesOutput, context: context)
        type = Types::DescribeInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.insight_rules = InsightRules.build(params[:insight_rules], context: "#{context}[:insight_rules]") unless params[:insight_rules].nil?
        type
      end
    end

    class Dimension
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Dimension, context: context)
        type = Types::Dimension.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class DimensionFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DimensionFilter, context: context)
        type = Types::DimensionFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class DimensionFilters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Dimensions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class DisableAlarmActionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableAlarmActionsInput, context: context)
        type = Types::DisableAlarmActionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type
      end
    end

    class DisableAlarmActionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableAlarmActionsOutput, context: context)
        type = Types::DisableAlarmActionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DisableInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableInsightRulesInput, context: context)
        type = Types::DisableInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_names = InsightRuleNames.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    class DisableInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableInsightRulesOutput, context: context)
        type = Types::DisableInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    class EnableAlarmActionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableAlarmActionsInput, context: context)
        type = Types::EnableAlarmActionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type
      end
    end

    class EnableAlarmActionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableAlarmActionsOutput, context: context)
        type = Types::EnableAlarmActionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class EnableInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableInsightRulesInput, context: context)
        type = Types::EnableInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_names = InsightRuleNames.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    class EnableInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableInsightRulesOutput, context: context)
        type = Types::EnableInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    class ExtendedStatistics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class GetDashboardInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetDashboardInput, context: context)
        type = Types::GetDashboardInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name = params[:dashboard_name] unless params[:dashboard_name].nil?
        type
      end
    end

    class GetDashboardOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetDashboardOutput, context: context)
        type = Types::GetDashboardOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_arn = params[:dashboard_arn] unless params[:dashboard_arn].nil?
        type.dashboard_body = params[:dashboard_body] unless params[:dashboard_body].nil?
        type.dashboard_name = params[:dashboard_name] unless params[:dashboard_name].nil?
        type
      end
    end

    class GetInsightRuleReportInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetInsightRuleReportInput, context: context)
        type = Types::GetInsightRuleReportInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_name = params[:rule_name] unless params[:rule_name].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.period = params[:period] unless params[:period].nil?
        type.max_contributor_count = params[:max_contributor_count] unless params[:max_contributor_count].nil?
        type.metrics = InsightRuleMetricList.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.order_by = params[:order_by] unless params[:order_by].nil?
        type
      end
    end

    class GetInsightRuleReportOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetInsightRuleReportOutput, context: context)
        type = Types::GetInsightRuleReportOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_labels = InsightRuleContributorKeyLabels.build(params[:key_labels], context: "#{context}[:key_labels]") unless params[:key_labels].nil?
        type.aggregation_statistic = params[:aggregation_statistic] unless params[:aggregation_statistic].nil?
        type.aggregate_value = params[:aggregate_value]&.to_f unless params[:aggregate_value].nil?
        type.approximate_unique_count = params[:approximate_unique_count] unless params[:approximate_unique_count].nil?
        type.contributors = InsightRuleContributors.build(params[:contributors], context: "#{context}[:contributors]") unless params[:contributors].nil?
        type.metric_datapoints = InsightRuleMetricDatapoints.build(params[:metric_datapoints], context: "#{context}[:metric_datapoints]") unless params[:metric_datapoints].nil?
        type
      end
    end

    class GetMetricDataInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricDataInput, context: context)
        type = Types::GetMetricDataInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.scan_by = params[:scan_by] unless params[:scan_by].nil?
        type.max_datapoints = params[:max_datapoints] unless params[:max_datapoints].nil?
        type.label_options = LabelOptions.build(params[:label_options], context: "#{context}[:label_options]") unless params[:label_options].nil?
        type
      end
    end

    class GetMetricDataOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricDataOutput, context: context)
        type = Types::GetMetricDataOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_data_results = MetricDataResults.build(params[:metric_data_results], context: "#{context}[:metric_data_results]") unless params[:metric_data_results].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.messages = MetricDataResultMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    class GetMetricStatisticsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStatisticsInput, context: context)
        type = Types::GetMetricStatisticsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.period = params[:period] unless params[:period].nil?
        type.statistics = Statistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.extended_statistics = ExtendedStatistics.build(params[:extended_statistics], context: "#{context}[:extended_statistics]") unless params[:extended_statistics].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type
      end
    end

    class GetMetricStatisticsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStatisticsOutput, context: context)
        type = Types::GetMetricStatisticsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.label = params[:label] unless params[:label].nil?
        type.datapoints = Datapoints.build(params[:datapoints], context: "#{context}[:datapoints]") unless params[:datapoints].nil?
        type
      end
    end

    class GetMetricStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStreamInput, context: context)
        type = Types::GetMetricStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class GetMetricStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStreamOutput, context: context)
        type = Types::GetMetricStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn] unless params[:arn].nil?
        type.name = params[:name] unless params[:name].nil?
        type.include_filters = MetricStreamFilters.build(params[:include_filters], context: "#{context}[:include_filters]") unless params[:include_filters].nil?
        type.exclude_filters = MetricStreamFilters.build(params[:exclude_filters], context: "#{context}[:exclude_filters]") unless params[:exclude_filters].nil?
        type.firehose_arn = params[:firehose_arn] unless params[:firehose_arn].nil?
        type.role_arn = params[:role_arn] unless params[:role_arn].nil?
        type.state = params[:state] unless params[:state].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type.last_update_date = params[:last_update_date] unless params[:last_update_date].nil?
        type.output_format = params[:output_format] unless params[:output_format].nil?
        type.statistics_configurations = MetricStreamStatisticsConfigurations.build(params[:statistics_configurations], context: "#{context}[:statistics_configurations]") unless params[:statistics_configurations].nil?
        type.include_linked_accounts_metrics = params[:include_linked_accounts_metrics] unless params[:include_linked_accounts_metrics].nil?
        type
      end
    end

    class GetMetricWidgetImageInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricWidgetImageInput, context: context)
        type = Types::GetMetricWidgetImageInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_widget = params[:metric_widget] unless params[:metric_widget].nil?
        type.output_format = params[:output_format] unless params[:output_format].nil?
        type
      end
    end

    class GetMetricWidgetImageOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricWidgetImageOutput, context: context)
        type = Types::GetMetricWidgetImageOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_widget_image = params[:metric_widget_image] unless params[:metric_widget_image].nil?
        type
      end
    end

    class InsightRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRule, context: context)
        type = Types::InsightRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.state = params[:state] unless params[:state].nil?
        type.schema = params[:schema] unless params[:schema].nil?
        type.definition = params[:definition] unless params[:definition].nil?
        type.managed_rule = params[:managed_rule] unless params[:managed_rule].nil?
        type
      end
    end

    class InsightRuleContributor
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRuleContributor, context: context)
        type = Types::InsightRuleContributor.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.keys = InsightRuleContributorKeys.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.approximate_aggregate_value = params[:approximate_aggregate_value]&.to_f unless params[:approximate_aggregate_value].nil?
        type.datapoints = InsightRuleContributorDatapoints.build(params[:datapoints], context: "#{context}[:datapoints]") unless params[:datapoints].nil?
        type
      end
    end

    class InsightRuleContributorDatapoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRuleContributorDatapoint, context: context)
        type = Types::InsightRuleContributorDatapoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type.approximate_value = params[:approximate_value]&.to_f unless params[:approximate_value].nil?
        type
      end
    end

    class InsightRuleContributorDatapoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRuleContributorDatapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class InsightRuleContributorKeyLabels
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class InsightRuleContributorKeys
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class InsightRuleContributors
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRuleContributor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class InsightRuleMetricDatapoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRuleMetricDatapoint, context: context)
        type = Types::InsightRuleMetricDatapoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type.unique_contributors = params[:unique_contributors]&.to_f unless params[:unique_contributors].nil?
        type.max_contributor_value = params[:max_contributor_value]&.to_f unless params[:max_contributor_value].nil?
        type.sample_count = params[:sample_count]&.to_f unless params[:sample_count].nil?
        type.average = params[:average]&.to_f unless params[:average].nil?
        type.member_sum = params[:member_sum]&.to_f unless params[:member_sum].nil?
        type.minimum = params[:minimum]&.to_f unless params[:minimum].nil?
        type.maximum = params[:maximum]&.to_f unless params[:maximum].nil?
        type
      end
    end

    class InsightRuleMetricDatapoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRuleMetricDatapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class InsightRuleMetricList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class InsightRuleNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class InsightRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class InternalServiceFault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalServiceFault, context: context)
        type = Types::InternalServiceFault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidFormatFault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidFormatFault, context: context)
        type = Types::InvalidFormatFault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidNextToken
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidNextToken, context: context)
        type = Types::InvalidNextToken.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidParameterCombinationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidParameterValueException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class LabelOptions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LabelOptions, context: context)
        type = Types::LabelOptions.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timezone = params[:timezone] unless params[:timezone].nil?
        type
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class LimitExceededFault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededFault, context: context)
        type = Types::LimitExceededFault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ListDashboardsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDashboardsInput, context: context)
        type = Types::ListDashboardsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name_prefix = params[:dashboard_name_prefix] unless params[:dashboard_name_prefix].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListDashboardsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDashboardsOutput, context: context)
        type = Types::ListDashboardsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_entries = DashboardEntries.build(params[:dashboard_entries], context: "#{context}[:dashboard_entries]") unless params[:dashboard_entries].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListManagedInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListManagedInsightRulesInput, context: context)
        type = Types::ListManagedInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListManagedInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListManagedInsightRulesOutput, context: context)
        type = Types::ListManagedInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.managed_rules = ManagedRuleDescriptions.build(params[:managed_rules], context: "#{context}[:managed_rules]") unless params[:managed_rules].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListMetricStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricStreamsInput, context: context)
        type = Types::ListMetricStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListMetricStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricStreamsOutput, context: context)
        type = Types::ListMetricStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.member_entries = MetricStreamEntries.build(params[:member_entries], context: "#{context}[:member_entries]") unless params[:member_entries].nil?
        type
      end
    end

    class ListMetricsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricsInput, context: context)
        type = Types::ListMetricsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = DimensionFilters.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.recently_active = params[:recently_active] unless params[:recently_active].nil?
        type.include_linked_accounts = params[:include_linked_accounts] unless params[:include_linked_accounts].nil?
        type.owning_account = params[:owning_account] unless params[:owning_account].nil?
        type
      end
    end

    class ListMetricsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricsOutput, context: context)
        type = Types::ListMetricsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.owning_accounts = OwningAccounts.build(params[:owning_accounts], context: "#{context}[:owning_accounts]") unless params[:owning_accounts].nil?
        type
      end
    end

    class ListTagsForResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type
      end
    end

    class ListTagsForResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class ManagedRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ManagedRule, context: context)
        type = Types::ManagedRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.template_name = params[:template_name] unless params[:template_name].nil?
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class ManagedRuleDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ManagedRuleDescription, context: context)
        type = Types::ManagedRuleDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.template_name = params[:template_name] unless params[:template_name].nil?
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.rule_state = ManagedRuleState.build(params[:rule_state], context: "#{context}[:rule_state]") unless params[:rule_state].nil?
        type
      end
    end

    class ManagedRuleDescriptions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRuleDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ManagedRuleState
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ManagedRuleState, context: context)
        type = Types::ManagedRuleState.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_name = params[:rule_name] unless params[:rule_name].nil?
        type.state = params[:state] unless params[:state].nil?
        type
      end
    end

    class ManagedRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MessageData
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MessageData, context: context)
        type = Types::MessageData.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.code = params[:code] unless params[:code].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class Metric
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Metric, context: context)
        type = Types::Metric.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    class MetricAlarm
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricAlarm, context: context)
        type = Types::MetricAlarm.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.alarm_arn = params[:alarm_arn] unless params[:alarm_arn].nil?
        type.alarm_description = params[:alarm_description] unless params[:alarm_description].nil?
        type.alarm_configuration_updated_timestamp = params[:alarm_configuration_updated_timestamp] unless params[:alarm_configuration_updated_timestamp].nil?
        type.actions_enabled = params[:actions_enabled] unless params[:actions_enabled].nil?
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.state_value = params[:state_value] unless params[:state_value].nil?
        type.state_reason = params[:state_reason] unless params[:state_reason].nil?
        type.state_reason_data = params[:state_reason_data] unless params[:state_reason_data].nil?
        type.state_updated_timestamp = params[:state_updated_timestamp] unless params[:state_updated_timestamp].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.statistic = params[:statistic] unless params[:statistic].nil?
        type.extended_statistic = params[:extended_statistic] unless params[:extended_statistic].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.period = params[:period] unless params[:period].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type.evaluation_periods = params[:evaluation_periods] unless params[:evaluation_periods].nil?
        type.datapoints_to_alarm = params[:datapoints_to_alarm] unless params[:datapoints_to_alarm].nil?
        type.threshold = params[:threshold]&.to_f unless params[:threshold].nil?
        type.comparison_operator = params[:comparison_operator] unless params[:comparison_operator].nil?
        type.treat_missing_data = params[:treat_missing_data] unless params[:treat_missing_data].nil?
        type.evaluate_low_sample_count_percentile = params[:evaluate_low_sample_count_percentile] unless params[:evaluate_low_sample_count_percentile].nil?
        type.metrics = MetricDataQueries.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.threshold_metric_id = params[:threshold_metric_id] unless params[:threshold_metric_id].nil?
        type.evaluation_state = params[:evaluation_state] unless params[:evaluation_state].nil?
        type.state_transitioned_timestamp = params[:state_transitioned_timestamp] unless params[:state_transitioned_timestamp].nil?
        type
      end
    end

    class MetricAlarms
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricAlarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricData
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDatum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricDataQueries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDataQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricDataQuery
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricDataQuery, context: context)
        type = Types::MetricDataQuery.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.metric_stat = MetricStat.build(params[:metric_stat], context: "#{context}[:metric_stat]") unless params[:metric_stat].nil?
        type.expression = params[:expression] unless params[:expression].nil?
        type.label = params[:label] unless params[:label].nil?
        type.return_data = params[:return_data] unless params[:return_data].nil?
        type.period = params[:period] unless params[:period].nil?
        type.account_id = params[:account_id] unless params[:account_id].nil?
        type
      end
    end

    class MetricDataResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricDataResult, context: context)
        type = Types::MetricDataResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.label = params[:label] unless params[:label].nil?
        type.timestamps = Timestamps.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type.member_values = DatapointValues.build(params[:member_values], context: "#{context}[:member_values]") unless params[:member_values].nil?
        type.status_code = params[:status_code] unless params[:status_code].nil?
        type.messages = MetricDataResultMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    class MetricDataResultMessages
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MessageData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricDataResults
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDataResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricDatum
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricDatum, context: context)
        type = Types::MetricDatum.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.timestamp = params[:timestamp] unless params[:timestamp].nil?
        type.value = params[:value]&.to_f unless params[:value].nil?
        type.statistic_values = StatisticSet.build(params[:statistic_values], context: "#{context}[:statistic_values]") unless params[:statistic_values].nil?
        type.member_values = Values.build(params[:member_values], context: "#{context}[:member_values]") unless params[:member_values].nil?
        type.counts = Counts.build(params[:counts], context: "#{context}[:counts]") unless params[:counts].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type.storage_resolution = params[:storage_resolution] unless params[:storage_resolution].nil?
        type
      end
    end

    class MetricMathAnomalyDetector
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricMathAnomalyDetector, context: context)
        type = Types::MetricMathAnomalyDetector.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type
      end
    end

    class MetricStat
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStat, context: context)
        type = Types::MetricStat.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric = Metric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type.period = params[:period] unless params[:period].nil?
        type.stat = params[:stat] unless params[:stat].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type
      end
    end

    class MetricStreamEntries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricStreamEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamEntry, context: context)
        type = Types::MetricStreamEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn] unless params[:arn].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type.last_update_date = params[:last_update_date] unless params[:last_update_date].nil?
        type.name = params[:name] unless params[:name].nil?
        type.firehose_arn = params[:firehose_arn] unless params[:firehose_arn].nil?
        type.state = params[:state] unless params[:state].nil?
        type.output_format = params[:output_format] unless params[:output_format].nil?
        type
      end
    end

    class MetricStreamFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamFilter, context: context)
        type = Types::MetricStreamFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_names = MetricStreamFilterMetricNames.build(params[:metric_names], context: "#{context}[:metric_names]") unless params[:metric_names].nil?
        type
      end
    end

    class MetricStreamFilterMetricNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class MetricStreamFilters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricStreamNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class MetricStreamStatisticsAdditionalStatistics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class MetricStreamStatisticsConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamStatisticsConfiguration, context: context)
        type = Types::MetricStreamStatisticsConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.include_metrics = MetricStreamStatisticsIncludeMetrics.build(params[:include_metrics], context: "#{context}[:include_metrics]") unless params[:include_metrics].nil?
        type.additional_statistics = MetricStreamStatisticsAdditionalStatistics.build(params[:additional_statistics], context: "#{context}[:additional_statistics]") unless params[:additional_statistics].nil?
        type
      end
    end

    class MetricStreamStatisticsConfigurations
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamStatisticsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricStreamStatisticsIncludeMetrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamStatisticsMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricStreamStatisticsMetric
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamStatisticsMetric, context: context)
        type = Types::MetricStreamStatisticsMetric.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type
      end
    end

    class Metrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Metric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MissingRequiredParameterException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MissingRequiredParameterException, context: context)
        type = Types::MissingRequiredParameterException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class OwningAccounts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class PartialFailure
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PartialFailure, context: context)
        type = Types::PartialFailure.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failure_resource = params[:failure_resource] unless params[:failure_resource].nil?
        type.exception_type = params[:exception_type] unless params[:exception_type].nil?
        type.failure_code = params[:failure_code] unless params[:failure_code].nil?
        type.failure_description = params[:failure_description] unless params[:failure_description].nil?
        type
      end
    end

    class PutAnomalyDetectorInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutAnomalyDetectorInput, context: context)
        type = Types::PutAnomalyDetectorInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat] unless params[:stat].nil?
        type.configuration = AnomalyDetectorConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.single_metric_anomaly_detector = SingleMetricAnomalyDetector.build(params[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless params[:single_metric_anomaly_detector].nil?
        type.metric_math_anomaly_detector = MetricMathAnomalyDetector.build(params[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless params[:metric_math_anomaly_detector].nil?
        type
      end
    end

    class PutAnomalyDetectorOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutAnomalyDetectorOutput, context: context)
        type = Types::PutAnomalyDetectorOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutCompositeAlarmInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutCompositeAlarmInput, context: context)
        type = Types::PutCompositeAlarmInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.actions_enabled = params[:actions_enabled] unless params[:actions_enabled].nil?
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.alarm_description = params[:alarm_description] unless params[:alarm_description].nil?
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.alarm_rule = params[:alarm_rule] unless params[:alarm_rule].nil?
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.actions_suppressor = params[:actions_suppressor] unless params[:actions_suppressor].nil?
        type.actions_suppressor_wait_period = params[:actions_suppressor_wait_period] unless params[:actions_suppressor_wait_period].nil?
        type.actions_suppressor_extension_period = params[:actions_suppressor_extension_period] unless params[:actions_suppressor_extension_period].nil?
        type
      end
    end

    class PutCompositeAlarmOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutCompositeAlarmOutput, context: context)
        type = Types::PutCompositeAlarmOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutDashboardInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutDashboardInput, context: context)
        type = Types::PutDashboardInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name = params[:dashboard_name] unless params[:dashboard_name].nil?
        type.dashboard_body = params[:dashboard_body] unless params[:dashboard_body].nil?
        type
      end
    end

    class PutDashboardOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutDashboardOutput, context: context)
        type = Types::PutDashboardOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_validation_messages = DashboardValidationMessages.build(params[:dashboard_validation_messages], context: "#{context}[:dashboard_validation_messages]") unless params[:dashboard_validation_messages].nil?
        type
      end
    end

    class PutInsightRuleInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutInsightRuleInput, context: context)
        type = Types::PutInsightRuleInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_name = params[:rule_name] unless params[:rule_name].nil?
        type.rule_state = params[:rule_state] unless params[:rule_state].nil?
        type.rule_definition = params[:rule_definition] unless params[:rule_definition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class PutInsightRuleOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutInsightRuleOutput, context: context)
        type = Types::PutInsightRuleOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutManagedInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutManagedInsightRulesInput, context: context)
        type = Types::PutManagedInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.managed_rules = ManagedRules.build(params[:managed_rules], context: "#{context}[:managed_rules]") unless params[:managed_rules].nil?
        type
      end
    end

    class PutManagedInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutManagedInsightRulesOutput, context: context)
        type = Types::PutManagedInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    class PutMetricAlarmInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricAlarmInput, context: context)
        type = Types::PutMetricAlarmInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.alarm_description = params[:alarm_description] unless params[:alarm_description].nil?
        type.actions_enabled = params[:actions_enabled] unless params[:actions_enabled].nil?
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.statistic = params[:statistic] unless params[:statistic].nil?
        type.extended_statistic = params[:extended_statistic] unless params[:extended_statistic].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.period = params[:period] unless params[:period].nil?
        type.unit = params[:unit] unless params[:unit].nil?
        type.evaluation_periods = params[:evaluation_periods] unless params[:evaluation_periods].nil?
        type.datapoints_to_alarm = params[:datapoints_to_alarm] unless params[:datapoints_to_alarm].nil?
        type.threshold = params[:threshold]&.to_f unless params[:threshold].nil?
        type.comparison_operator = params[:comparison_operator] unless params[:comparison_operator].nil?
        type.treat_missing_data = params[:treat_missing_data] unless params[:treat_missing_data].nil?
        type.evaluate_low_sample_count_percentile = params[:evaluate_low_sample_count_percentile] unless params[:evaluate_low_sample_count_percentile].nil?
        type.metrics = MetricDataQueries.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.threshold_metric_id = params[:threshold_metric_id] unless params[:threshold_metric_id].nil?
        type
      end
    end

    class PutMetricAlarmOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricAlarmOutput, context: context)
        type = Types::PutMetricAlarmOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutMetricDataInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricDataInput, context: context)
        type = Types::PutMetricDataInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_data = MetricData.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    class PutMetricDataOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricDataOutput, context: context)
        type = Types::PutMetricDataOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutMetricStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricStreamInput, context: context)
        type = Types::PutMetricStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.include_filters = MetricStreamFilters.build(params[:include_filters], context: "#{context}[:include_filters]") unless params[:include_filters].nil?
        type.exclude_filters = MetricStreamFilters.build(params[:exclude_filters], context: "#{context}[:exclude_filters]") unless params[:exclude_filters].nil?
        type.firehose_arn = params[:firehose_arn] unless params[:firehose_arn].nil?
        type.role_arn = params[:role_arn] unless params[:role_arn].nil?
        type.output_format = params[:output_format] unless params[:output_format].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.statistics_configurations = MetricStreamStatisticsConfigurations.build(params[:statistics_configurations], context: "#{context}[:statistics_configurations]") unless params[:statistics_configurations].nil?
        type.include_linked_accounts_metrics = params[:include_linked_accounts_metrics] unless params[:include_linked_accounts_metrics].nil?
        type
      end
    end

    class PutMetricStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricStreamOutput, context: context)
        type = Types::PutMetricStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn] unless params[:arn].nil?
        type
      end
    end

    class Range
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Range, context: context)
        type = Types::Range.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type
      end
    end

    class ResourceList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ResourceNotFound
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFound, context: context)
        type = Types::ResourceNotFound.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_type = params[:resource_type] unless params[:resource_type].nil?
        type.resource_id = params[:resource_id] unless params[:resource_id].nil?
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class SetAlarmStateInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SetAlarmStateInput, context: context)
        type = Types::SetAlarmStateInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name] unless params[:alarm_name].nil?
        type.state_value = params[:state_value] unless params[:state_value].nil?
        type.state_reason = params[:state_reason] unless params[:state_reason].nil?
        type.state_reason_data = params[:state_reason_data] unless params[:state_reason_data].nil?
        type
      end
    end

    class SetAlarmStateOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SetAlarmStateOutput, context: context)
        type = Types::SetAlarmStateOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class SingleMetricAnomalyDetector
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SingleMetricAnomalyDetector, context: context)
        type = Types::SingleMetricAnomalyDetector.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace] unless params[:namespace].nil?
        type.metric_name = params[:metric_name] unless params[:metric_name].nil?
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat] unless params[:stat].nil?
        type
      end
    end

    class StartMetricStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartMetricStreamsInput, context: context)
        type = Types::StartMetricStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.names = MetricStreamNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    class StartMetricStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartMetricStreamsOutput, context: context)
        type = Types::StartMetricStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class StatisticSet
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StatisticSet, context: context)
        type = Types::StatisticSet.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sample_count = params[:sample_count]&.to_f unless params[:sample_count].nil?
        type.member_sum = params[:member_sum]&.to_f unless params[:member_sum].nil?
        type.minimum = params[:minimum]&.to_f unless params[:minimum].nil?
        type.maximum = params[:maximum]&.to_f unless params[:maximum].nil?
        type
      end
    end

    class Statistics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class StopMetricStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopMetricStreamsInput, context: context)
        type = Types::StopMetricStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.names = MetricStreamNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    class StopMetricStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopMetricStreamsOutput, context: context)
        type = Types::StopMetricStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class TagKeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TagList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class TagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Timestamps
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class UntagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    class UntagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Values
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f unless element.nil?
        end
        data
      end
    end

  end
end
