# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTEventsData
  module Parsers

    # Operation Parser for BatchAcknowledgeAlarm
    class BatchAcknowledgeAlarm
      def self.parse(http_resp)
        data = Types::BatchAcknowledgeAlarmOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchAlarmActionErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    class BatchAlarmActionErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchAlarmActionErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchAlarmActionErrorEntry
      def self.parse(map)
        data = Types::BatchAlarmActionErrorEntry.new
        data.request_id = map['requestId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchDeleteDetector
    class BatchDeleteDetector
      def self.parse(http_resp)
        data = Types::BatchDeleteDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_delete_detector_error_entries = (BatchDeleteDetectorErrorEntries.parse(map['batchDeleteDetectorErrorEntries']) unless map['batchDeleteDetectorErrorEntries'].nil?)
        data
      end
    end

    class BatchDeleteDetectorErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchDeleteDetectorErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchDeleteDetectorErrorEntry
      def self.parse(map)
        data = Types::BatchDeleteDetectorErrorEntry.new
        data.message_id = map['messageId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for BatchDisableAlarm
    class BatchDisableAlarm
      def self.parse(http_resp)
        data = Types::BatchDisableAlarmOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchAlarmActionErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    # Operation Parser for BatchEnableAlarm
    class BatchEnableAlarm
      def self.parse(http_resp)
        data = Types::BatchEnableAlarmOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchAlarmActionErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    # Operation Parser for BatchPutMessage
    class BatchPutMessage
      def self.parse(http_resp)
        data = Types::BatchPutMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_put_message_error_entries = (BatchPutMessageErrorEntries.parse(map['BatchPutMessageErrorEntries']) unless map['BatchPutMessageErrorEntries'].nil?)
        data
      end
    end

    class BatchPutMessageErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPutMessageErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutMessageErrorEntry
      def self.parse(map)
        data = Types::BatchPutMessageErrorEntry.new
        data.message_id = map['messageId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for BatchResetAlarm
    class BatchResetAlarm
      def self.parse(http_resp)
        data = Types::BatchResetAlarmOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchAlarmActionErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    # Operation Parser for BatchSnoozeAlarm
    class BatchSnoozeAlarm
      def self.parse(http_resp)
        data = Types::BatchSnoozeAlarmOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchAlarmActionErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    # Operation Parser for BatchUpdateDetector
    class BatchUpdateDetector
      def self.parse(http_resp)
        data = Types::BatchUpdateDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_update_detector_error_entries = (BatchUpdateDetectorErrorEntries.parse(map['batchUpdateDetectorErrorEntries']) unless map['batchUpdateDetectorErrorEntries'].nil?)
        data
      end
    end

    class BatchUpdateDetectorErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchUpdateDetectorErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchUpdateDetectorErrorEntry
      def self.parse(map)
        data = Types::BatchUpdateDetectorErrorEntry.new
        data.message_id = map['messageId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for DescribeAlarm
    class DescribeAlarm
      def self.parse(http_resp)
        data = Types::DescribeAlarmOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alarm = (Alarm.parse(map['alarm']) unless map['alarm'].nil?)
        data
      end
    end

    class Alarm
      def self.parse(map)
        data = Types::Alarm.new
        data.alarm_model_name = map['alarmModelName']
        data.alarm_model_version = map['alarmModelVersion']
        data.key_value = map['keyValue']
        data.alarm_state = (AlarmState.parse(map['alarmState']) unless map['alarmState'].nil?)
        data.severity = map['severity']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        return data
      end
    end

    class AlarmState
      def self.parse(map)
        data = Types::AlarmState.new
        data.state_name = map['stateName']
        data.rule_evaluation = (RuleEvaluation.parse(map['ruleEvaluation']) unless map['ruleEvaluation'].nil?)
        data.customer_action = (CustomerAction.parse(map['customerAction']) unless map['customerAction'].nil?)
        data.system_event = (SystemEvent.parse(map['systemEvent']) unless map['systemEvent'].nil?)
        return data
      end
    end

    class SystemEvent
      def self.parse(map)
        data = Types::SystemEvent.new
        data.event_type = map['eventType']
        data.state_change_configuration = (StateChangeConfiguration.parse(map['stateChangeConfiguration']) unless map['stateChangeConfiguration'].nil?)
        return data
      end
    end

    class StateChangeConfiguration
      def self.parse(map)
        data = Types::StateChangeConfiguration.new
        data.trigger_type = map['triggerType']
        return data
      end
    end

    class CustomerAction
      def self.parse(map)
        data = Types::CustomerAction.new
        data.action_name = map['actionName']
        data.snooze_action_configuration = (SnoozeActionConfiguration.parse(map['snoozeActionConfiguration']) unless map['snoozeActionConfiguration'].nil?)
        data.enable_action_configuration = (EnableActionConfiguration.parse(map['enableActionConfiguration']) unless map['enableActionConfiguration'].nil?)
        data.disable_action_configuration = (DisableActionConfiguration.parse(map['disableActionConfiguration']) unless map['disableActionConfiguration'].nil?)
        data.acknowledge_action_configuration = (AcknowledgeActionConfiguration.parse(map['acknowledgeActionConfiguration']) unless map['acknowledgeActionConfiguration'].nil?)
        data.reset_action_configuration = (ResetActionConfiguration.parse(map['resetActionConfiguration']) unless map['resetActionConfiguration'].nil?)
        return data
      end
    end

    class ResetActionConfiguration
      def self.parse(map)
        data = Types::ResetActionConfiguration.new
        data.note = map['note']
        return data
      end
    end

    class AcknowledgeActionConfiguration
      def self.parse(map)
        data = Types::AcknowledgeActionConfiguration.new
        data.note = map['note']
        return data
      end
    end

    class DisableActionConfiguration
      def self.parse(map)
        data = Types::DisableActionConfiguration.new
        data.note = map['note']
        return data
      end
    end

    class EnableActionConfiguration
      def self.parse(map)
        data = Types::EnableActionConfiguration.new
        data.note = map['note']
        return data
      end
    end

    class SnoozeActionConfiguration
      def self.parse(map)
        data = Types::SnoozeActionConfiguration.new
        data.snooze_duration = map['snoozeDuration']
        data.note = map['note']
        return data
      end
    end

    class RuleEvaluation
      def self.parse(map)
        data = Types::RuleEvaluation.new
        data.simple_rule_evaluation = (SimpleRuleEvaluation.parse(map['simpleRuleEvaluation']) unless map['simpleRuleEvaluation'].nil?)
        return data
      end
    end

    class SimpleRuleEvaluation
      def self.parse(map)
        data = Types::SimpleRuleEvaluation.new
        data.input_property_value = map['inputPropertyValue']
        data.operator = map['operator']
        data.threshold_value = map['thresholdValue']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeDetector
    class DescribeDetector
      def self.parse(http_resp)
        data = Types::DescribeDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector = (Detector.parse(map['detector']) unless map['detector'].nil?)
        data
      end
    end

    class Detector
      def self.parse(map)
        data = Types::Detector.new
        data.detector_model_name = map['detectorModelName']
        data.key_value = map['keyValue']
        data.detector_model_version = map['detectorModelVersion']
        data.state = (DetectorState.parse(map['state']) unless map['state'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        return data
      end
    end

    class DetectorState
      def self.parse(map)
        data = Types::DetectorState.new
        data.state_name = map['stateName']
        data.variables = (Variables.parse(map['variables']) unless map['variables'].nil?)
        data.timers = (Timers.parse(map['timers']) unless map['timers'].nil?)
        return data
      end
    end

    class Timers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Timer.parse(value) unless value.nil?
        end
        data
      end
    end

    class Timer
      def self.parse(map)
        data = Types::Timer.new
        data.name = map['name']
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        return data
      end
    end

    class Variables
      def self.parse(list)
        data = []
        list.map do |value|
          data << Variable.parse(value) unless value.nil?
        end
        data
      end
    end

    class Variable
      def self.parse(map)
        data = Types::Variable.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for ListAlarms
    class ListAlarms
      def self.parse(http_resp)
        data = Types::ListAlarmsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alarm_summaries = (AlarmSummaries.parse(map['alarmSummaries']) unless map['alarmSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AlarmSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AlarmSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlarmSummary
      def self.parse(map)
        data = Types::AlarmSummary.new
        data.alarm_model_name = map['alarmModelName']
        data.alarm_model_version = map['alarmModelVersion']
        data.key_value = map['keyValue']
        data.state_name = map['stateName']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        return data
      end
    end

    # Operation Parser for ListDetectors
    class ListDetectors
      def self.parse(http_resp)
        data = Types::ListDetectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_summaries = (DetectorSummaries.parse(map['detectorSummaries']) unless map['detectorSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectorSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DetectorSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DetectorSummary
      def self.parse(map)
        data = Types::DetectorSummary.new
        data.detector_model_name = map['detectorModelName']
        data.key_value = map['keyValue']
        data.detector_model_version = map['detectorModelVersion']
        data.state = (DetectorStateSummary.parse(map['state']) unless map['state'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        return data
      end
    end

    class DetectorStateSummary
      def self.parse(map)
        data = Types::DetectorStateSummary.new
        data.state_name = map['stateName']
        return data
      end
    end
  end
end
