# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  # @api private
  module Params

    module AlarmHistoryItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AlarmHistoryItem, context: context)
        type = Types::AlarmHistoryItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name]
        type.alarm_type = params[:alarm_type]
        type.timestamp = params[:timestamp]
        type.history_item_type = params[:history_item_type]
        type.history_summary = params[:history_summary]
        type.history_data = params[:history_data]
        type
      end
    end

    module AlarmHistoryItems
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmHistoryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AlarmTypes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AnomalyDetector
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnomalyDetector, context: context)
        type = Types::AnomalyDetector.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat]
        type.configuration = AnomalyDetectorConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.state_value = params[:state_value]
        type.single_metric_anomaly_detector = SingleMetricAnomalyDetector.build(params[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless params[:single_metric_anomaly_detector].nil?
        type.metric_math_anomaly_detector = MetricMathAnomalyDetector.build(params[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless params[:metric_math_anomaly_detector].nil?
        type
      end
    end

    module AnomalyDetectorConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnomalyDetectorConfiguration, context: context)
        type = Types::AnomalyDetectorConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.excluded_time_ranges = AnomalyDetectorExcludedTimeRanges.build(params[:excluded_time_ranges], context: "#{context}[:excluded_time_ranges]") unless params[:excluded_time_ranges].nil?
        type.metric_timezone = params[:metric_timezone]
        type
      end
    end

    module AnomalyDetectorExcludedTimeRanges
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnomalyDetectorTypes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AnomalyDetectors
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyDetector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchFailures
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartialFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompositeAlarm
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompositeAlarm, context: context)
        type = Types::CompositeAlarm.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.actions_enabled = params[:actions_enabled]
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.alarm_arn = params[:alarm_arn]
        type.alarm_configuration_updated_timestamp = params[:alarm_configuration_updated_timestamp]
        type.alarm_description = params[:alarm_description]
        type.alarm_name = params[:alarm_name]
        type.alarm_rule = params[:alarm_rule]
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.state_reason = params[:state_reason]
        type.state_reason_data = params[:state_reason_data]
        type.state_updated_timestamp = params[:state_updated_timestamp]
        type.state_value = params[:state_value]
        type.state_transitioned_timestamp = params[:state_transitioned_timestamp]
        type.actions_suppressed_by = params[:actions_suppressed_by]
        type.actions_suppressed_reason = params[:actions_suppressed_reason]
        type.actions_suppressor = params[:actions_suppressor]
        type.actions_suppressor_wait_period = params[:actions_suppressor_wait_period]
        type.actions_suppressor_extension_period = params[:actions_suppressor_extension_period]
        type
      end
    end

    module CompositeAlarms
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompositeAlarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module Counts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f
        end
        data
      end
    end

    module DashboardEntries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DashboardEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardEntry, context: context)
        type = Types::DashboardEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name = params[:dashboard_name]
        type.dashboard_arn = params[:dashboard_arn]
        type.last_modified = params[:last_modified]
        type.size = params[:size]
        type
      end
    end

    module DashboardInvalidInputError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardInvalidInputError, context: context)
        type = Types::DashboardInvalidInputError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type.dashboard_validation_messages = DashboardValidationMessages.build(params[:dashboard_validation_messages], context: "#{context}[:dashboard_validation_messages]") unless params[:dashboard_validation_messages].nil?
        type
      end
    end

    module DashboardNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DashboardNotFoundError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardNotFoundError, context: context)
        type = Types::DashboardNotFoundError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module DashboardValidationMessage
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DashboardValidationMessage, context: context)
        type = Types::DashboardValidationMessage.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data_path = params[:data_path]
        type.message = params[:message]
        type
      end
    end

    module DashboardValidationMessages
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardValidationMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Datapoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Datapoint, context: context)
        type = Types::Datapoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp = params[:timestamp]
        type.sample_count = params[:sample_count]&.to_f
        type.average = params[:average]&.to_f
        type.sum = params[:sum]&.to_f
        type.minimum = params[:minimum]&.to_f
        type.maximum = params[:maximum]&.to_f
        type.unit = params[:unit]
        type.extended_statistics = DatapointValueMap.build(params[:extended_statistics], context: "#{context}[:extended_statistics]") unless params[:extended_statistics].nil?
        type
      end
    end

    module DatapointValueMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value&.to_f
        end
        data
      end
    end

    module DatapointValues
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f
        end
        data
      end
    end

    module Datapoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Datapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAlarmsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAlarmsInput, context: context)
        type = Types::DeleteAlarmsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type
      end
    end

    module DeleteAlarmsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAlarmsOutput, context: context)
        type = Types::DeleteAlarmsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteAnomalyDetectorInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAnomalyDetectorInput, context: context)
        type = Types::DeleteAnomalyDetectorInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat]
        type.single_metric_anomaly_detector = SingleMetricAnomalyDetector.build(params[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless params[:single_metric_anomaly_detector].nil?
        type.metric_math_anomaly_detector = MetricMathAnomalyDetector.build(params[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless params[:metric_math_anomaly_detector].nil?
        type
      end
    end

    module DeleteAnomalyDetectorOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAnomalyDetectorOutput, context: context)
        type = Types::DeleteAnomalyDetectorOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteDashboardsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteDashboardsInput, context: context)
        type = Types::DeleteDashboardsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_names = DashboardNames.build(params[:dashboard_names], context: "#{context}[:dashboard_names]") unless params[:dashboard_names].nil?
        type
      end
    end

    module DeleteDashboardsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteDashboardsOutput, context: context)
        type = Types::DeleteDashboardsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteInsightRulesInput, context: context)
        type = Types::DeleteInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_names = InsightRuleNames.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    module DeleteInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteInsightRulesOutput, context: context)
        type = Types::DeleteInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module DeleteMetricStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMetricStreamInput, context: context)
        type = Types::DeleteMetricStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type
      end
    end

    module DeleteMetricStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMetricStreamOutput, context: context)
        type = Types::DeleteMetricStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DescribeAlarmHistoryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmHistoryInput, context: context)
        type = Types::DescribeAlarmHistoryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name]
        type.alarm_types = AlarmTypes.build(params[:alarm_types], context: "#{context}[:alarm_types]") unless params[:alarm_types].nil?
        type.history_item_type = params[:history_item_type]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type.scan_by = params[:scan_by]
        type
      end
    end

    module DescribeAlarmHistoryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmHistoryOutput, context: context)
        type = Types::DescribeAlarmHistoryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_history_items = AlarmHistoryItems.build(params[:alarm_history_items], context: "#{context}[:alarm_history_items]") unless params[:alarm_history_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAlarmsForMetricInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsForMetricInput, context: context)
        type = Types::DescribeAlarmsForMetricInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.statistic = params[:statistic]
        type.extended_statistic = params[:extended_statistic]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.period = params[:period]
        type.unit = params[:unit]
        type
      end
    end

    module DescribeAlarmsForMetricOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsForMetricOutput, context: context)
        type = Types::DescribeAlarmsForMetricOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_alarms = MetricAlarms.build(params[:metric_alarms], context: "#{context}[:metric_alarms]") unless params[:metric_alarms].nil?
        type
      end
    end

    module DescribeAlarmsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsInput, context: context)
        type = Types::DescribeAlarmsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type.alarm_name_prefix = params[:alarm_name_prefix]
        type.alarm_types = AlarmTypes.build(params[:alarm_types], context: "#{context}[:alarm_types]") unless params[:alarm_types].nil?
        type.children_of_alarm_name = params[:children_of_alarm_name]
        type.parents_of_alarm_name = params[:parents_of_alarm_name]
        type.state_value = params[:state_value]
        type.action_prefix = params[:action_prefix]
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAlarmsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAlarmsOutput, context: context)
        type = Types::DescribeAlarmsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.composite_alarms = CompositeAlarms.build(params[:composite_alarms], context: "#{context}[:composite_alarms]") unless params[:composite_alarms].nil?
        type.metric_alarms = MetricAlarms.build(params[:metric_alarms], context: "#{context}[:metric_alarms]") unless params[:metric_alarms].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAnomalyDetectorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAnomalyDetectorsInput, context: context)
        type = Types::DescribeAnomalyDetectorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.anomaly_detector_types = AnomalyDetectorTypes.build(params[:anomaly_detector_types], context: "#{context}[:anomaly_detector_types]") unless params[:anomaly_detector_types].nil?
        type
      end
    end

    module DescribeAnomalyDetectorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeAnomalyDetectorsOutput, context: context)
        type = Types::DescribeAnomalyDetectorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.anomaly_detectors = AnomalyDetectors.build(params[:anomaly_detectors], context: "#{context}[:anomaly_detectors]") unless params[:anomaly_detectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeInsightRulesInput, context: context)
        type = Types::DescribeInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeInsightRulesOutput, context: context)
        type = Types::DescribeInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.insight_rules = InsightRules.build(params[:insight_rules], context: "#{context}[:insight_rules]") unless params[:insight_rules].nil?
        type
      end
    end

    module Dimension
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Dimension, context: context)
        type = Types::Dimension.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module DimensionFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DimensionFilter, context: context)
        type = Types::DimensionFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module DimensionFilters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Dimensions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisableAlarmActionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableAlarmActionsInput, context: context)
        type = Types::DisableAlarmActionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type
      end
    end

    module DisableAlarmActionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableAlarmActionsOutput, context: context)
        type = Types::DisableAlarmActionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DisableInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableInsightRulesInput, context: context)
        type = Types::DisableInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_names = InsightRuleNames.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    module DisableInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableInsightRulesOutput, context: context)
        type = Types::DisableInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module EnableAlarmActionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableAlarmActionsInput, context: context)
        type = Types::EnableAlarmActionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_names = AlarmNames.build(params[:alarm_names], context: "#{context}[:alarm_names]") unless params[:alarm_names].nil?
        type
      end
    end

    module EnableAlarmActionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableAlarmActionsOutput, context: context)
        type = Types::EnableAlarmActionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module EnableInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableInsightRulesInput, context: context)
        type = Types::EnableInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_names = InsightRuleNames.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    module EnableInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableInsightRulesOutput, context: context)
        type = Types::EnableInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module ExtendedStatistics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetDashboardInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetDashboardInput, context: context)
        type = Types::GetDashboardInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name = params[:dashboard_name]
        type
      end
    end

    module GetDashboardOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetDashboardOutput, context: context)
        type = Types::GetDashboardOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_arn = params[:dashboard_arn]
        type.dashboard_body = params[:dashboard_body]
        type.dashboard_name = params[:dashboard_name]
        type
      end
    end

    module GetInsightRuleReportInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetInsightRuleReportInput, context: context)
        type = Types::GetInsightRuleReportInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_name = params[:rule_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.max_contributor_count = params[:max_contributor_count]
        type.metrics = InsightRuleMetricList.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.order_by = params[:order_by]
        type
      end
    end

    module GetInsightRuleReportOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetInsightRuleReportOutput, context: context)
        type = Types::GetInsightRuleReportOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_labels = InsightRuleContributorKeyLabels.build(params[:key_labels], context: "#{context}[:key_labels]") unless params[:key_labels].nil?
        type.aggregation_statistic = params[:aggregation_statistic]
        type.aggregate_value = params[:aggregate_value]&.to_f
        type.approximate_unique_count = params[:approximate_unique_count]
        type.contributors = InsightRuleContributors.build(params[:contributors], context: "#{context}[:contributors]") unless params[:contributors].nil?
        type.metric_datapoints = InsightRuleMetricDatapoints.build(params[:metric_datapoints], context: "#{context}[:metric_datapoints]") unless params[:metric_datapoints].nil?
        type
      end
    end

    module GetMetricDataInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricDataInput, context: context)
        type = Types::GetMetricDataInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type.scan_by = params[:scan_by]
        type.max_datapoints = params[:max_datapoints]
        type.label_options = LabelOptions.build(params[:label_options], context: "#{context}[:label_options]") unless params[:label_options].nil?
        type
      end
    end

    module GetMetricDataOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricDataOutput, context: context)
        type = Types::GetMetricDataOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_data_results = MetricDataResults.build(params[:metric_data_results], context: "#{context}[:metric_data_results]") unless params[:metric_data_results].nil?
        type.next_token = params[:next_token]
        type.messages = MetricDataResultMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module GetMetricStatisticsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStatisticsInput, context: context)
        type = Types::GetMetricStatisticsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.statistics = Statistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.extended_statistics = ExtendedStatistics.build(params[:extended_statistics], context: "#{context}[:extended_statistics]") unless params[:extended_statistics].nil?
        type.unit = params[:unit]
        type
      end
    end

    module GetMetricStatisticsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStatisticsOutput, context: context)
        type = Types::GetMetricStatisticsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.label = params[:label]
        type.datapoints = Datapoints.build(params[:datapoints], context: "#{context}[:datapoints]") unless params[:datapoints].nil?
        type
      end
    end

    module GetMetricStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStreamInput, context: context)
        type = Types::GetMetricStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type
      end
    end

    module GetMetricStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricStreamOutput, context: context)
        type = Types::GetMetricStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn]
        type.name = params[:name]
        type.include_filters = MetricStreamFilters.build(params[:include_filters], context: "#{context}[:include_filters]") unless params[:include_filters].nil?
        type.exclude_filters = MetricStreamFilters.build(params[:exclude_filters], context: "#{context}[:exclude_filters]") unless params[:exclude_filters].nil?
        type.firehose_arn = params[:firehose_arn]
        type.role_arn = params[:role_arn]
        type.state = params[:state]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type.output_format = params[:output_format]
        type.statistics_configurations = MetricStreamStatisticsConfigurations.build(params[:statistics_configurations], context: "#{context}[:statistics_configurations]") unless params[:statistics_configurations].nil?
        type.include_linked_accounts_metrics = params[:include_linked_accounts_metrics]
        type
      end
    end

    module GetMetricWidgetImageInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricWidgetImageInput, context: context)
        type = Types::GetMetricWidgetImageInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_widget = params[:metric_widget]
        type.output_format = params[:output_format]
        type
      end
    end

    module GetMetricWidgetImageOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetMetricWidgetImageOutput, context: context)
        type = Types::GetMetricWidgetImageOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_widget_image = params[:metric_widget_image]
        type
      end
    end

    module InsightRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRule, context: context)
        type = Types::InsightRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.state = params[:state]
        type.schema = params[:schema]
        type.definition = params[:definition]
        type.managed_rule = params[:managed_rule]
        type
      end
    end

    module InsightRuleContributor
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRuleContributor, context: context)
        type = Types::InsightRuleContributor.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.keys = InsightRuleContributorKeys.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.approximate_aggregate_value = params[:approximate_aggregate_value]&.to_f
        type.datapoints = InsightRuleContributorDatapoints.build(params[:datapoints], context: "#{context}[:datapoints]") unless params[:datapoints].nil?
        type
      end
    end

    module InsightRuleContributorDatapoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRuleContributorDatapoint, context: context)
        type = Types::InsightRuleContributorDatapoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp = params[:timestamp]
        type.approximate_value = params[:approximate_value]&.to_f
        type
      end
    end

    module InsightRuleContributorDatapoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRuleContributorDatapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightRuleContributorKeyLabels
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightRuleContributorKeys
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightRuleContributors
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRuleContributor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightRuleMetricDatapoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InsightRuleMetricDatapoint, context: context)
        type = Types::InsightRuleMetricDatapoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp = params[:timestamp]
        type.unique_contributors = params[:unique_contributors]&.to_f
        type.max_contributor_value = params[:max_contributor_value]&.to_f
        type.sample_count = params[:sample_count]&.to_f
        type.average = params[:average]&.to_f
        type.sum = params[:sum]&.to_f
        type.minimum = params[:minimum]&.to_f
        type.maximum = params[:maximum]&.to_f
        type
      end
    end

    module InsightRuleMetricDatapoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRuleMetricDatapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightRuleMetricList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightRuleNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServiceFault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalServiceFault, context: context)
        type = Types::InternalServiceFault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module InvalidFormatFault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidFormatFault, context: context)
        type = Types::InvalidFormatFault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module InvalidNextToken
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidNextToken, context: context)
        type = Types::InvalidNextToken.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterCombinationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module LabelOptions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LabelOptions, context: context)
        type = Types::LabelOptions.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timezone = params[:timezone]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module LimitExceededFault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededFault, context: context)
        type = Types::LimitExceededFault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module ListDashboardsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDashboardsInput, context: context)
        type = Types::ListDashboardsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name_prefix = params[:dashboard_name_prefix]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDashboardsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDashboardsOutput, context: context)
        type = Types::ListDashboardsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_entries = DashboardEntries.build(params[:dashboard_entries], context: "#{context}[:dashboard_entries]") unless params[:dashboard_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListManagedInsightRulesInput, context: context)
        type = Types::ListManagedInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListManagedInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListManagedInsightRulesOutput, context: context)
        type = Types::ListManagedInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.managed_rules = ManagedRuleDescriptions.build(params[:managed_rules], context: "#{context}[:managed_rules]") unless params[:managed_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMetricStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricStreamsInput, context: context)
        type = Types::ListMetricStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMetricStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricStreamsOutput, context: context)
        type = Types::ListMetricStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.entries = MetricStreamEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module ListMetricsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricsInput, context: context)
        type = Types::ListMetricsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = DimensionFilters.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.next_token = params[:next_token]
        type.recently_active = params[:recently_active]
        type.include_linked_accounts = params[:include_linked_accounts]
        type.owning_account = params[:owning_account]
        type
      end
    end

    module ListMetricsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMetricsOutput, context: context)
        type = Types::ListMetricsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.next_token = params[:next_token]
        type.owning_accounts = OwningAccounts.build(params[:owning_accounts], context: "#{context}[:owning_accounts]") unless params[:owning_accounts].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ManagedRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ManagedRule, context: context)
        type = Types::ManagedRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.template_name = params[:template_name]
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ManagedRuleDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ManagedRuleDescription, context: context)
        type = Types::ManagedRuleDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.template_name = params[:template_name]
        type.resource_arn = params[:resource_arn]
        type.rule_state = ManagedRuleState.build(params[:rule_state], context: "#{context}[:rule_state]") unless params[:rule_state].nil?
        type
      end
    end

    module ManagedRuleDescriptions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRuleDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedRuleState
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ManagedRuleState, context: context)
        type = Types::ManagedRuleState.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_name = params[:rule_name]
        type.state = params[:state]
        type
      end
    end

    module ManagedRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MessageData
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MessageData, context: context)
        type = Types::MessageData.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.code = params[:code]
        type.value = params[:value]
        type
      end
    end

    module Metric
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Metric, context: context)
        type = Types::Metric.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module MetricAlarm
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricAlarm, context: context)
        type = Types::MetricAlarm.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name]
        type.alarm_arn = params[:alarm_arn]
        type.alarm_description = params[:alarm_description]
        type.alarm_configuration_updated_timestamp = params[:alarm_configuration_updated_timestamp]
        type.actions_enabled = params[:actions_enabled]
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.state_value = params[:state_value]
        type.state_reason = params[:state_reason]
        type.state_reason_data = params[:state_reason_data]
        type.state_updated_timestamp = params[:state_updated_timestamp]
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.statistic = params[:statistic]
        type.extended_statistic = params[:extended_statistic]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.period = params[:period]
        type.unit = params[:unit]
        type.evaluation_periods = params[:evaluation_periods]
        type.datapoints_to_alarm = params[:datapoints_to_alarm]
        type.threshold = params[:threshold]&.to_f
        type.comparison_operator = params[:comparison_operator]
        type.treat_missing_data = params[:treat_missing_data]
        type.evaluate_low_sample_count_percentile = params[:evaluate_low_sample_count_percentile]
        type.metrics = MetricDataQueries.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.threshold_metric_id = params[:threshold_metric_id]
        type.evaluation_state = params[:evaluation_state]
        type.state_transitioned_timestamp = params[:state_transitioned_timestamp]
        type
      end
    end

    module MetricAlarms
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricAlarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricData
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDatum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDataQueries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDataQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDataQuery
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricDataQuery, context: context)
        type = Types::MetricDataQuery.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.metric_stat = MetricStat.build(params[:metric_stat], context: "#{context}[:metric_stat]") unless params[:metric_stat].nil?
        type.expression = params[:expression]
        type.label = params[:label]
        type.return_data = params[:return_data]
        type.period = params[:period]
        type.account_id = params[:account_id]
        type
      end
    end

    module MetricDataResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricDataResult, context: context)
        type = Types::MetricDataResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.label = params[:label]
        type.timestamps = Timestamps.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type.values = DatapointValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.status_code = params[:status_code]
        type.messages = MetricDataResultMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module MetricDataResultMessages
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MessageData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDataResults
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDataResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDatum
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricDatum, context: context)
        type = Types::MetricDatum.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.timestamp = params[:timestamp]
        type.value = params[:value]&.to_f
        type.statistic_values = StatisticSet.build(params[:statistic_values], context: "#{context}[:statistic_values]") unless params[:statistic_values].nil?
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.counts = Counts.build(params[:counts], context: "#{context}[:counts]") unless params[:counts].nil?
        type.unit = params[:unit]
        type.storage_resolution = params[:storage_resolution]
        type
      end
    end

    module MetricMathAnomalyDetector
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricMathAnomalyDetector, context: context)
        type = Types::MetricMathAnomalyDetector.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type
      end
    end

    module MetricStat
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStat, context: context)
        type = Types::MetricStat.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metric = Metric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type.period = params[:period]
        type.stat = params[:stat]
        type.unit = params[:unit]
        type
      end
    end

    module MetricStreamEntries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricStreamEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamEntry, context: context)
        type = Types::MetricStreamEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type.name = params[:name]
        type.firehose_arn = params[:firehose_arn]
        type.state = params[:state]
        type.output_format = params[:output_format]
        type
      end
    end

    module MetricStreamFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamFilter, context: context)
        type = Types::MetricStreamFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_names = MetricStreamFilterMetricNames.build(params[:metric_names], context: "#{context}[:metric_names]") unless params[:metric_names].nil?
        type
      end
    end

    module MetricStreamFilterMetricNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricStreamFilters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricStreamNames
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricStreamStatisticsAdditionalStatistics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricStreamStatisticsConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamStatisticsConfiguration, context: context)
        type = Types::MetricStreamStatisticsConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.include_metrics = MetricStreamStatisticsIncludeMetrics.build(params[:include_metrics], context: "#{context}[:include_metrics]") unless params[:include_metrics].nil?
        type.additional_statistics = MetricStreamStatisticsAdditionalStatistics.build(params[:additional_statistics], context: "#{context}[:additional_statistics]") unless params[:additional_statistics].nil?
        type
      end
    end

    module MetricStreamStatisticsConfigurations
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamStatisticsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricStreamStatisticsIncludeMetrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricStreamStatisticsMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricStreamStatisticsMetric
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricStreamStatisticsMetric, context: context)
        type = Types::MetricStreamStatisticsMetric.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type
      end
    end

    module Metrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Metric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MissingRequiredParameterException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MissingRequiredParameterException, context: context)
        type = Types::MissingRequiredParameterException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module OwningAccounts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PartialFailure
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PartialFailure, context: context)
        type = Types::PartialFailure.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failure_resource = params[:failure_resource]
        type.exception_type = params[:exception_type]
        type.failure_code = params[:failure_code]
        type.failure_description = params[:failure_description]
        type
      end
    end

    module PutAnomalyDetectorInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutAnomalyDetectorInput, context: context)
        type = Types::PutAnomalyDetectorInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat]
        type.configuration = AnomalyDetectorConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.single_metric_anomaly_detector = SingleMetricAnomalyDetector.build(params[:single_metric_anomaly_detector], context: "#{context}[:single_metric_anomaly_detector]") unless params[:single_metric_anomaly_detector].nil?
        type.metric_math_anomaly_detector = MetricMathAnomalyDetector.build(params[:metric_math_anomaly_detector], context: "#{context}[:metric_math_anomaly_detector]") unless params[:metric_math_anomaly_detector].nil?
        type
      end
    end

    module PutAnomalyDetectorOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutAnomalyDetectorOutput, context: context)
        type = Types::PutAnomalyDetectorOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutCompositeAlarmInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutCompositeAlarmInput, context: context)
        type = Types::PutCompositeAlarmInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.actions_enabled = params[:actions_enabled]
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.alarm_description = params[:alarm_description]
        type.alarm_name = params[:alarm_name]
        type.alarm_rule = params[:alarm_rule]
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.actions_suppressor = params[:actions_suppressor]
        type.actions_suppressor_wait_period = params[:actions_suppressor_wait_period]
        type.actions_suppressor_extension_period = params[:actions_suppressor_extension_period]
        type
      end
    end

    module PutCompositeAlarmOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutCompositeAlarmOutput, context: context)
        type = Types::PutCompositeAlarmOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutDashboardInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutDashboardInput, context: context)
        type = Types::PutDashboardInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_name = params[:dashboard_name]
        type.dashboard_body = params[:dashboard_body]
        type
      end
    end

    module PutDashboardOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutDashboardOutput, context: context)
        type = Types::PutDashboardOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dashboard_validation_messages = DashboardValidationMessages.build(params[:dashboard_validation_messages], context: "#{context}[:dashboard_validation_messages]") unless params[:dashboard_validation_messages].nil?
        type
      end
    end

    module PutInsightRuleInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutInsightRuleInput, context: context)
        type = Types::PutInsightRuleInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rule_name = params[:rule_name]
        type.rule_state = params[:rule_state]
        type.rule_definition = params[:rule_definition]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutInsightRuleOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutInsightRuleOutput, context: context)
        type = Types::PutInsightRuleOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutManagedInsightRulesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutManagedInsightRulesInput, context: context)
        type = Types::PutManagedInsightRulesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.managed_rules = ManagedRules.build(params[:managed_rules], context: "#{context}[:managed_rules]") unless params[:managed_rules].nil?
        type
      end
    end

    module PutManagedInsightRulesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutManagedInsightRulesOutput, context: context)
        type = Types::PutManagedInsightRulesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.failures = BatchFailures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module PutMetricAlarmInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricAlarmInput, context: context)
        type = Types::PutMetricAlarmInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name]
        type.alarm_description = params[:alarm_description]
        type.actions_enabled = params[:actions_enabled]
        type.ok_actions = ResourceList.build(params[:ok_actions], context: "#{context}[:ok_actions]") unless params[:ok_actions].nil?
        type.alarm_actions = ResourceList.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type.insufficient_data_actions = ResourceList.build(params[:insufficient_data_actions], context: "#{context}[:insufficient_data_actions]") unless params[:insufficient_data_actions].nil?
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.statistic = params[:statistic]
        type.extended_statistic = params[:extended_statistic]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.period = params[:period]
        type.unit = params[:unit]
        type.evaluation_periods = params[:evaluation_periods]
        type.datapoints_to_alarm = params[:datapoints_to_alarm]
        type.threshold = params[:threshold]&.to_f
        type.comparison_operator = params[:comparison_operator]
        type.treat_missing_data = params[:treat_missing_data]
        type.evaluate_low_sample_count_percentile = params[:evaluate_low_sample_count_percentile]
        type.metrics = MetricDataQueries.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.threshold_metric_id = params[:threshold_metric_id]
        type
      end
    end

    module PutMetricAlarmOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricAlarmOutput, context: context)
        type = Types::PutMetricAlarmOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutMetricDataInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricDataInput, context: context)
        type = Types::PutMetricDataInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_data = MetricData.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module PutMetricDataOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricDataOutput, context: context)
        type = Types::PutMetricDataOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutMetricStreamInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricStreamInput, context: context)
        type = Types::PutMetricStreamInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.include_filters = MetricStreamFilters.build(params[:include_filters], context: "#{context}[:include_filters]") unless params[:include_filters].nil?
        type.exclude_filters = MetricStreamFilters.build(params[:exclude_filters], context: "#{context}[:exclude_filters]") unless params[:exclude_filters].nil?
        type.firehose_arn = params[:firehose_arn]
        type.role_arn = params[:role_arn]
        type.output_format = params[:output_format]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.statistics_configurations = MetricStreamStatisticsConfigurations.build(params[:statistics_configurations], context: "#{context}[:statistics_configurations]") unless params[:statistics_configurations].nil?
        type.include_linked_accounts_metrics = params[:include_linked_accounts_metrics]
        type
      end
    end

    module PutMetricStreamOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutMetricStreamOutput, context: context)
        type = Types::PutMetricStreamOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn]
        type
      end
    end

    module Range
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Range, context: context)
        type = Types::Range.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ResourceList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFound
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFound, context: context)
        type = Types::ResourceNotFound.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.message = params[:message]
        type
      end
    end

    module SetAlarmStateInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SetAlarmStateInput, context: context)
        type = Types::SetAlarmStateInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alarm_name = params[:alarm_name]
        type.state_value = params[:state_value]
        type.state_reason = params[:state_reason]
        type.state_reason_data = params[:state_reason_data]
        type
      end
    end

    module SetAlarmStateOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SetAlarmStateOutput, context: context)
        type = Types::SetAlarmStateOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module SingleMetricAnomalyDetector
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SingleMetricAnomalyDetector, context: context)
        type = Types::SingleMetricAnomalyDetector.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat]
        type
      end
    end

    module StartMetricStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartMetricStreamsInput, context: context)
        type = Types::StartMetricStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.names = MetricStreamNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module StartMetricStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartMetricStreamsOutput, context: context)
        type = Types::StartMetricStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module StatisticSet
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StatisticSet, context: context)
        type = Types::StatisticSet.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sample_count = params[:sample_count]&.to_f
        type.sum = params[:sum]&.to_f
        type.minimum = params[:minimum]&.to_f
        type.maximum = params[:maximum]&.to_f
        type
      end
    end

    module Statistics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StopMetricStreamsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopMetricStreamsInput, context: context)
        type = Types::StopMetricStreamsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.names = MetricStreamNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module StopMetricStreamsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopMetricStreamsOutput, context: context)
        type = Types::StopMetricStreamsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module Timestamps
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module Values
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f
        end
        data
      end
    end

  end
end
