# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTEventsData
  module Params

    module AcknowledgeActionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeActionConfiguration, context: context)
        type = Types::AcknowledgeActionConfiguration.new
        type.note = params[:note]
        type
      end
    end

    module AcknowledgeAlarmActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeAlarmActionRequest, context: context)
        type = Types::AcknowledgeAlarmActionRequest.new
        type.request_id = params[:request_id]
        type.alarm_model_name = params[:alarm_model_name]
        type.key_value = params[:key_value]
        type.note = params[:note]
        type
      end
    end

    module AcknowledgeAlarmActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AcknowledgeAlarmActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Alarm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alarm, context: context)
        type = Types::Alarm.new
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_version = params[:alarm_model_version]
        type.key_value = params[:key_value]
        type.alarm_state = AlarmState.build(params[:alarm_state], context: "#{context}[:alarm_state]") unless params[:alarm_state].nil?
        type.severity = params[:severity]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module AlarmState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmState, context: context)
        type = Types::AlarmState.new
        type.state_name = params[:state_name]
        type.rule_evaluation = RuleEvaluation.build(params[:rule_evaluation], context: "#{context}[:rule_evaluation]") unless params[:rule_evaluation].nil?
        type.customer_action = CustomerAction.build(params[:customer_action], context: "#{context}[:customer_action]") unless params[:customer_action].nil?
        type.system_event = SystemEvent.build(params[:system_event], context: "#{context}[:system_event]") unless params[:system_event].nil?
        type
      end
    end

    module AlarmSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmSummary, context: context)
        type = Types::AlarmSummary.new
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_version = params[:alarm_model_version]
        type.key_value = params[:key_value]
        type.state_name = params[:state_name]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module BatchAcknowledgeAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAcknowledgeAlarmInput, context: context)
        type = Types::BatchAcknowledgeAlarmInput.new
        type.acknowledge_action_requests = AcknowledgeAlarmActionRequests.build(params[:acknowledge_action_requests], context: "#{context}[:acknowledge_action_requests]") unless params[:acknowledge_action_requests].nil?
        type
      end
    end

    module BatchAcknowledgeAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAcknowledgeAlarmOutput, context: context)
        type = Types::BatchAcknowledgeAlarmOutput.new
        type.error_entries = BatchAlarmActionErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module BatchAlarmActionErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchAlarmActionErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchAlarmActionErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAlarmActionErrorEntry, context: context)
        type = Types::BatchAlarmActionErrorEntry.new
        type.request_id = params[:request_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchDeleteDetectorErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDeleteDetectorErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteDetectorErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDetectorErrorEntry, context: context)
        type = Types::BatchDeleteDetectorErrorEntry.new
        type.message_id = params[:message_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchDeleteDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDetectorInput, context: context)
        type = Types::BatchDeleteDetectorInput.new
        type.detectors = DeleteDetectorRequests.build(params[:detectors], context: "#{context}[:detectors]") unless params[:detectors].nil?
        type
      end
    end

    module BatchDeleteDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDetectorOutput, context: context)
        type = Types::BatchDeleteDetectorOutput.new
        type.batch_delete_detector_error_entries = BatchDeleteDetectorErrorEntries.build(params[:batch_delete_detector_error_entries], context: "#{context}[:batch_delete_detector_error_entries]") unless params[:batch_delete_detector_error_entries].nil?
        type
      end
    end

    module BatchDisableAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisableAlarmInput, context: context)
        type = Types::BatchDisableAlarmInput.new
        type.disable_action_requests = DisableAlarmActionRequests.build(params[:disable_action_requests], context: "#{context}[:disable_action_requests]") unless params[:disable_action_requests].nil?
        type
      end
    end

    module BatchDisableAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisableAlarmOutput, context: context)
        type = Types::BatchDisableAlarmOutput.new
        type.error_entries = BatchAlarmActionErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module BatchEnableAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEnableAlarmInput, context: context)
        type = Types::BatchEnableAlarmInput.new
        type.enable_action_requests = EnableAlarmActionRequests.build(params[:enable_action_requests], context: "#{context}[:enable_action_requests]") unless params[:enable_action_requests].nil?
        type
      end
    end

    module BatchEnableAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEnableAlarmOutput, context: context)
        type = Types::BatchEnableAlarmOutput.new
        type.error_entries = BatchAlarmActionErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module BatchPutMessageErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutMessageErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutMessageErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutMessageErrorEntry, context: context)
        type = Types::BatchPutMessageErrorEntry.new
        type.message_id = params[:message_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchPutMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutMessageInput, context: context)
        type = Types::BatchPutMessageInput.new
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module BatchPutMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutMessageOutput, context: context)
        type = Types::BatchPutMessageOutput.new
        type.batch_put_message_error_entries = BatchPutMessageErrorEntries.build(params[:batch_put_message_error_entries], context: "#{context}[:batch_put_message_error_entries]") unless params[:batch_put_message_error_entries].nil?
        type
      end
    end

    module BatchResetAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchResetAlarmInput, context: context)
        type = Types::BatchResetAlarmInput.new
        type.reset_action_requests = ResetAlarmActionRequests.build(params[:reset_action_requests], context: "#{context}[:reset_action_requests]") unless params[:reset_action_requests].nil?
        type
      end
    end

    module BatchResetAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchResetAlarmOutput, context: context)
        type = Types::BatchResetAlarmOutput.new
        type.error_entries = BatchAlarmActionErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module BatchSnoozeAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSnoozeAlarmInput, context: context)
        type = Types::BatchSnoozeAlarmInput.new
        type.snooze_action_requests = SnoozeAlarmActionRequests.build(params[:snooze_action_requests], context: "#{context}[:snooze_action_requests]") unless params[:snooze_action_requests].nil?
        type
      end
    end

    module BatchSnoozeAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSnoozeAlarmOutput, context: context)
        type = Types::BatchSnoozeAlarmOutput.new
        type.error_entries = BatchAlarmActionErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module BatchUpdateDetectorErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchUpdateDetectorErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchUpdateDetectorErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateDetectorErrorEntry, context: context)
        type = Types::BatchUpdateDetectorErrorEntry.new
        type.message_id = params[:message_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchUpdateDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateDetectorInput, context: context)
        type = Types::BatchUpdateDetectorInput.new
        type.detectors = UpdateDetectorRequests.build(params[:detectors], context: "#{context}[:detectors]") unless params[:detectors].nil?
        type
      end
    end

    module BatchUpdateDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateDetectorOutput, context: context)
        type = Types::BatchUpdateDetectorOutput.new
        type.batch_update_detector_error_entries = BatchUpdateDetectorErrorEntries.build(params[:batch_update_detector_error_entries], context: "#{context}[:batch_update_detector_error_entries]") unless params[:batch_update_detector_error_entries].nil?
        type
      end
    end

    module CustomerAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerAction, context: context)
        type = Types::CustomerAction.new
        type.action_name = params[:action_name]
        type.snooze_action_configuration = SnoozeActionConfiguration.build(params[:snooze_action_configuration], context: "#{context}[:snooze_action_configuration]") unless params[:snooze_action_configuration].nil?
        type.enable_action_configuration = EnableActionConfiguration.build(params[:enable_action_configuration], context: "#{context}[:enable_action_configuration]") unless params[:enable_action_configuration].nil?
        type.disable_action_configuration = DisableActionConfiguration.build(params[:disable_action_configuration], context: "#{context}[:disable_action_configuration]") unless params[:disable_action_configuration].nil?
        type.acknowledge_action_configuration = AcknowledgeActionConfiguration.build(params[:acknowledge_action_configuration], context: "#{context}[:acknowledge_action_configuration]") unless params[:acknowledge_action_configuration].nil?
        type.reset_action_configuration = ResetActionConfiguration.build(params[:reset_action_configuration], context: "#{context}[:reset_action_configuration]") unless params[:reset_action_configuration].nil?
        type
      end
    end

    module DeleteDetectorRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorRequest, context: context)
        type = Types::DeleteDetectorRequest.new
        type.message_id = params[:message_id]
        type.detector_model_name = params[:detector_model_name]
        type.key_value = params[:key_value]
        type
      end
    end

    module DeleteDetectorRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteDetectorRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlarmInput, context: context)
        type = Types::DescribeAlarmInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type.key_value = params[:key_value]
        type
      end
    end

    module DescribeAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlarmOutput, context: context)
        type = Types::DescribeAlarmOutput.new
        type.alarm = Alarm.build(params[:alarm], context: "#{context}[:alarm]") unless params[:alarm].nil?
        type
      end
    end

    module DescribeDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorInput, context: context)
        type = Types::DescribeDetectorInput.new
        type.detector_model_name = params[:detector_model_name]
        type.key_value = params[:key_value]
        type
      end
    end

    module DescribeDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorOutput, context: context)
        type = Types::DescribeDetectorOutput.new
        type.detector = Detector.build(params[:detector], context: "#{context}[:detector]") unless params[:detector].nil?
        type
      end
    end

    module Detector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Detector, context: context)
        type = Types::Detector.new
        type.detector_model_name = params[:detector_model_name]
        type.key_value = params[:key_value]
        type.detector_model_version = params[:detector_model_version]
        type.state = DetectorState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module DetectorState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorState, context: context)
        type = Types::DetectorState.new
        type.state_name = params[:state_name]
        type.variables = Variables.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.timers = Timers.build(params[:timers], context: "#{context}[:timers]") unless params[:timers].nil?
        type
      end
    end

    module DetectorStateDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorStateDefinition, context: context)
        type = Types::DetectorStateDefinition.new
        type.state_name = params[:state_name]
        type.variables = VariableDefinitions.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.timers = TimerDefinitions.build(params[:timers], context: "#{context}[:timers]") unless params[:timers].nil?
        type
      end
    end

    module DetectorStateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorStateSummary, context: context)
        type = Types::DetectorStateSummary.new
        type.state_name = params[:state_name]
        type
      end
    end

    module DetectorSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorSummary, context: context)
        type = Types::DetectorSummary.new
        type.detector_model_name = params[:detector_model_name]
        type.key_value = params[:key_value]
        type.detector_model_version = params[:detector_model_version]
        type.state = DetectorStateSummary.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module DisableActionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableActionConfiguration, context: context)
        type = Types::DisableActionConfiguration.new
        type.note = params[:note]
        type
      end
    end

    module DisableAlarmActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAlarmActionRequest, context: context)
        type = Types::DisableAlarmActionRequest.new
        type.request_id = params[:request_id]
        type.alarm_model_name = params[:alarm_model_name]
        type.key_value = params[:key_value]
        type.note = params[:note]
        type
      end
    end

    module DisableAlarmActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DisableAlarmActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnableActionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableActionConfiguration, context: context)
        type = Types::EnableActionConfiguration.new
        type.note = params[:note]
        type
      end
    end

    module EnableAlarmActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAlarmActionRequest, context: context)
        type = Types::EnableAlarmActionRequest.new
        type.request_id = params[:request_id]
        type.alarm_model_name = params[:alarm_model_name]
        type.key_value = params[:key_value]
        type.note = params[:note]
        type
      end
    end

    module EnableAlarmActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnableAlarmActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListAlarmsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmsInput, context: context)
        type = Types::ListAlarmsInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAlarmsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmsOutput, context: context)
        type = Types::ListAlarmsOutput.new
        type.alarm_summaries = AlarmSummaries.build(params[:alarm_summaries], context: "#{context}[:alarm_summaries]") unless params[:alarm_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorsInput, context: context)
        type = Types::ListDetectorsInput.new
        type.detector_model_name = params[:detector_model_name]
        type.state_name = params[:state_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDetectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorsOutput, context: context)
        type = Types::ListDetectorsOutput.new
        type.detector_summaries = DetectorSummaries.build(params[:detector_summaries], context: "#{context}[:detector_summaries]") unless params[:detector_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.message_id = params[:message_id]
        type.input_name = params[:input_name]
        type.payload = params[:payload]
        type.timestamp = TimestampValue.build(params[:timestamp], context: "#{context}[:timestamp]") unless params[:timestamp].nil?
        type
      end
    end

    module Messages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResetActionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetActionConfiguration, context: context)
        type = Types::ResetActionConfiguration.new
        type.note = params[:note]
        type
      end
    end

    module ResetAlarmActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetAlarmActionRequest, context: context)
        type = Types::ResetAlarmActionRequest.new
        type.request_id = params[:request_id]
        type.alarm_model_name = params[:alarm_model_name]
        type.key_value = params[:key_value]
        type.note = params[:note]
        type
      end
    end

    module ResetAlarmActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResetAlarmActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RuleEvaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleEvaluation, context: context)
        type = Types::RuleEvaluation.new
        type.simple_rule_evaluation = SimpleRuleEvaluation.build(params[:simple_rule_evaluation], context: "#{context}[:simple_rule_evaluation]") unless params[:simple_rule_evaluation].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SimpleRuleEvaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleRuleEvaluation, context: context)
        type = Types::SimpleRuleEvaluation.new
        type.input_property_value = params[:input_property_value]
        type.operator = params[:operator]
        type.threshold_value = params[:threshold_value]
        type
      end
    end

    module SnoozeActionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnoozeActionConfiguration, context: context)
        type = Types::SnoozeActionConfiguration.new
        type.snooze_duration = params[:snooze_duration]
        type.note = params[:note]
        type
      end
    end

    module SnoozeAlarmActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnoozeAlarmActionRequest, context: context)
        type = Types::SnoozeAlarmActionRequest.new
        type.request_id = params[:request_id]
        type.alarm_model_name = params[:alarm_model_name]
        type.key_value = params[:key_value]
        type.note = params[:note]
        type.snooze_duration = params[:snooze_duration]
        type
      end
    end

    module SnoozeAlarmActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnoozeAlarmActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StateChangeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StateChangeConfiguration, context: context)
        type = Types::StateChangeConfiguration.new
        type.trigger_type = params[:trigger_type]
        type
      end
    end

    module SystemEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemEvent, context: context)
        type = Types::SystemEvent.new
        type.event_type = params[:event_type]
        type.state_change_configuration = StateChangeConfiguration.build(params[:state_change_configuration], context: "#{context}[:state_change_configuration]") unless params[:state_change_configuration].nil?
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module Timer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Timer, context: context)
        type = Types::Timer.new
        type.name = params[:name]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module TimerDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimerDefinition, context: context)
        type = Types::TimerDefinition.new
        type.name = params[:name]
        type.seconds = params[:seconds]
        type
      end
    end

    module TimerDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimerDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Timers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Timer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimestampValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampValue, context: context)
        type = Types::TimestampValue.new
        type.time_in_millis = params[:time_in_millis]
        type
      end
    end

    module UpdateDetectorRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorRequest, context: context)
        type = Types::UpdateDetectorRequest.new
        type.message_id = params[:message_id]
        type.detector_model_name = params[:detector_model_name]
        type.key_value = params[:key_value]
        type.state = DetectorStateDefinition.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type
      end
    end

    module UpdateDetectorRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateDetectorRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Variable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Variable, context: context)
        type = Types::Variable.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module VariableDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariableDefinition, context: context)
        type = Types::VariableDefinition.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module VariableDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VariableDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Variables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Variable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
