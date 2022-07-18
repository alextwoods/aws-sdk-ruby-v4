# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::IoTEventsData
  module Validators

    class AcknowledgeActionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeActionConfiguration, context: context)
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class AcknowledgeAlarmActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeAlarmActionRequest, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class AcknowledgeAlarmActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AcknowledgeAlarmActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Alarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alarm, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        AlarmState.validate!(input[:alarm_state], context: "#{context}[:alarm_state]") unless input[:alarm_state].nil?
        Hearth::Validator.validate!(input[:severity], ::Integer, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class AlarmState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmState, context: context)
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
        RuleEvaluation.validate!(input[:rule_evaluation], context: "#{context}[:rule_evaluation]") unless input[:rule_evaluation].nil?
        CustomerAction.validate!(input[:customer_action], context: "#{context}[:customer_action]") unless input[:customer_action].nil?
        SystemEvent.validate!(input[:system_event], context: "#{context}[:system_event]") unless input[:system_event].nil?
      end
    end

    class AlarmSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlarmSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmSummary, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class BatchAcknowledgeAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAcknowledgeAlarmInput, context: context)
        AcknowledgeAlarmActionRequests.validate!(input[:acknowledge_action_requests], context: "#{context}[:acknowledge_action_requests]") unless input[:acknowledge_action_requests].nil?
      end
    end

    class BatchAcknowledgeAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAcknowledgeAlarmOutput, context: context)
        BatchAlarmActionErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class BatchAlarmActionErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchAlarmActionErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchAlarmActionErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAlarmActionErrorEntry, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchDeleteDetectorErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDeleteDetectorErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteDetectorErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDetectorErrorEntry, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchDeleteDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDetectorInput, context: context)
        DeleteDetectorRequests.validate!(input[:detectors], context: "#{context}[:detectors]") unless input[:detectors].nil?
      end
    end

    class BatchDeleteDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDetectorOutput, context: context)
        BatchDeleteDetectorErrorEntries.validate!(input[:batch_delete_detector_error_entries], context: "#{context}[:batch_delete_detector_error_entries]") unless input[:batch_delete_detector_error_entries].nil?
      end
    end

    class BatchDisableAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisableAlarmInput, context: context)
        DisableAlarmActionRequests.validate!(input[:disable_action_requests], context: "#{context}[:disable_action_requests]") unless input[:disable_action_requests].nil?
      end
    end

    class BatchDisableAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisableAlarmOutput, context: context)
        BatchAlarmActionErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class BatchEnableAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEnableAlarmInput, context: context)
        EnableAlarmActionRequests.validate!(input[:enable_action_requests], context: "#{context}[:enable_action_requests]") unless input[:enable_action_requests].nil?
      end
    end

    class BatchEnableAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEnableAlarmOutput, context: context)
        BatchAlarmActionErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class BatchPutMessageErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPutMessageErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutMessageErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutMessageErrorEntry, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchPutMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutMessageInput, context: context)
        Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class BatchPutMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutMessageOutput, context: context)
        BatchPutMessageErrorEntries.validate!(input[:batch_put_message_error_entries], context: "#{context}[:batch_put_message_error_entries]") unless input[:batch_put_message_error_entries].nil?
      end
    end

    class BatchResetAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchResetAlarmInput, context: context)
        ResetAlarmActionRequests.validate!(input[:reset_action_requests], context: "#{context}[:reset_action_requests]") unless input[:reset_action_requests].nil?
      end
    end

    class BatchResetAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchResetAlarmOutput, context: context)
        BatchAlarmActionErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class BatchSnoozeAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSnoozeAlarmInput, context: context)
        SnoozeAlarmActionRequests.validate!(input[:snooze_action_requests], context: "#{context}[:snooze_action_requests]") unless input[:snooze_action_requests].nil?
      end
    end

    class BatchSnoozeAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSnoozeAlarmOutput, context: context)
        BatchAlarmActionErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class BatchUpdateDetectorErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchUpdateDetectorErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchUpdateDetectorErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateDetectorErrorEntry, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchUpdateDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateDetectorInput, context: context)
        UpdateDetectorRequests.validate!(input[:detectors], context: "#{context}[:detectors]") unless input[:detectors].nil?
      end
    end

    class BatchUpdateDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateDetectorOutput, context: context)
        BatchUpdateDetectorErrorEntries.validate!(input[:batch_update_detector_error_entries], context: "#{context}[:batch_update_detector_error_entries]") unless input[:batch_update_detector_error_entries].nil?
      end
    end

    class CustomerAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerAction, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        SnoozeActionConfiguration.validate!(input[:snooze_action_configuration], context: "#{context}[:snooze_action_configuration]") unless input[:snooze_action_configuration].nil?
        EnableActionConfiguration.validate!(input[:enable_action_configuration], context: "#{context}[:enable_action_configuration]") unless input[:enable_action_configuration].nil?
        DisableActionConfiguration.validate!(input[:disable_action_configuration], context: "#{context}[:disable_action_configuration]") unless input[:disable_action_configuration].nil?
        AcknowledgeActionConfiguration.validate!(input[:acknowledge_action_configuration], context: "#{context}[:acknowledge_action_configuration]") unless input[:acknowledge_action_configuration].nil?
        ResetActionConfiguration.validate!(input[:reset_action_configuration], context: "#{context}[:reset_action_configuration]") unless input[:reset_action_configuration].nil?
      end
    end

    class DeleteDetectorRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorRequest, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
      end
    end

    class DeleteDetectorRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeleteDetectorRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
      end
    end

    class DescribeAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmOutput, context: context)
        Alarm.validate!(input[:alarm], context: "#{context}[:alarm]") unless input[:alarm].nil?
      end
    end

    class DescribeDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
      end
    end

    class DescribeDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorOutput, context: context)
        Detector.validate!(input[:detector], context: "#{context}[:detector]") unless input[:detector].nil?
      end
    end

    class Detector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Detector, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:detector_model_version], ::String, context: "#{context}[:detector_model_version]")
        DetectorState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class DetectorState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorState, context: context)
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
        Variables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Timers.validate!(input[:timers], context: "#{context}[:timers]") unless input[:timers].nil?
      end
    end

    class DetectorStateDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorStateDefinition, context: context)
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
        VariableDefinitions.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        TimerDefinitions.validate!(input[:timers], context: "#{context}[:timers]") unless input[:timers].nil?
      end
    end

    class DetectorStateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorStateSummary, context: context)
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
      end
    end

    class DetectorSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DetectorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorSummary, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:detector_model_version], ::String, context: "#{context}[:detector_model_version]")
        DetectorStateSummary.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class DisableActionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableActionConfiguration, context: context)
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class DisableAlarmActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAlarmActionRequest, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class DisableAlarmActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DisableAlarmActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnableActionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableActionConfiguration, context: context)
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class EnableAlarmActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAlarmActionRequest, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class EnableAlarmActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnableAlarmActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAlarmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmsInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAlarmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmsOutput, context: context)
        AlarmSummaries.validate!(input[:alarm_summaries], context: "#{context}[:alarm_summaries]") unless input[:alarm_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorsOutput, context: context)
        DetectorSummaries.validate!(input[:detector_summaries], context: "#{context}[:detector_summaries]") unless input[:detector_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
        TimestampValue.validate!(input[:timestamp], context: "#{context}[:timestamp]") unless input[:timestamp].nil?
      end
    end

    class Messages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResetActionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetActionConfiguration, context: context)
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class ResetAlarmActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetAlarmActionRequest, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class ResetAlarmActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResetAlarmActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuleEvaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleEvaluation, context: context)
        SimpleRuleEvaluation.validate!(input[:simple_rule_evaluation], context: "#{context}[:simple_rule_evaluation]") unless input[:simple_rule_evaluation].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SimpleRuleEvaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleRuleEvaluation, context: context)
        Hearth::Validator.validate!(input[:input_property_value], ::String, context: "#{context}[:input_property_value]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:threshold_value], ::String, context: "#{context}[:threshold_value]")
      end
    end

    class SnoozeActionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnoozeActionConfiguration, context: context)
        Hearth::Validator.validate!(input[:snooze_duration], ::Integer, context: "#{context}[:snooze_duration]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
      end
    end

    class SnoozeAlarmActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnoozeAlarmActionRequest, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
        Hearth::Validator.validate!(input[:snooze_duration], ::Integer, context: "#{context}[:snooze_duration]")
      end
    end

    class SnoozeAlarmActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SnoozeAlarmActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StateChangeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StateChangeConfiguration, context: context)
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
      end
    end

    class SystemEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemEvent, context: context)
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        StateChangeConfiguration.validate!(input[:state_change_configuration], context: "#{context}[:state_change_configuration]") unless input[:state_change_configuration].nil?
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Timer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Timer, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class TimerDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimerDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:seconds], ::Integer, context: "#{context}[:seconds]")
      end
    end

    class TimerDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TimerDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Timers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Timer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimestampValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampValue, context: context)
        Hearth::Validator.validate!(input[:time_in_millis], ::Integer, context: "#{context}[:time_in_millis]")
      end
    end

    class UpdateDetectorRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorRequest, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
        DetectorStateDefinition.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
      end
    end

    class UpdateDetectorRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateDetectorRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Variable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Variable, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class VariableDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariableDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class VariableDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VariableDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Variables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Variable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
