# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTEventsData
  module Stubs

    # Operation Stubber for BatchAcknowledgeAlarm
    class BatchAcknowledgeAlarm
      def self.default(visited=[])
        {
          error_entries: BatchAlarmActionErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::BatchAlarmActionErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchAlarmActionErrorEntries
    class BatchAlarmActionErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchAlarmActionErrorEntries')
        visited = visited + ['BatchAlarmActionErrorEntries']
        [
          BatchAlarmActionErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchAlarmActionErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchAlarmActionErrorEntry
    class BatchAlarmActionErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchAlarmActionErrorEntry')
        visited = visited + ['BatchAlarmActionErrorEntry']
        {
          request_id: 'request_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAlarmActionErrorEntry.new
        data = {}
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchDeleteDetector
    class BatchDeleteDetector
      def self.default(visited=[])
        {
          batch_delete_detector_error_entries: BatchDeleteDetectorErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['batchDeleteDetectorErrorEntries'] = Stubs::BatchDeleteDetectorErrorEntries.stub(stub[:batch_delete_detector_error_entries]) unless stub[:batch_delete_detector_error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDeleteDetectorErrorEntries
    class BatchDeleteDetectorErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDetectorErrorEntries')
        visited = visited + ['BatchDeleteDetectorErrorEntries']
        [
          BatchDeleteDetectorErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchDeleteDetectorErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDeleteDetectorErrorEntry
    class BatchDeleteDetectorErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDetectorErrorEntry')
        visited = visited + ['BatchDeleteDetectorErrorEntry']
        {
          message_id: 'message_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteDetectorErrorEntry.new
        data = {}
        data['messageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchDisableAlarm
    class BatchDisableAlarm
      def self.default(visited=[])
        {
          error_entries: BatchAlarmActionErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::BatchAlarmActionErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchEnableAlarm
    class BatchEnableAlarm
      def self.default(visited=[])
        {
          error_entries: BatchAlarmActionErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::BatchAlarmActionErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchPutMessage
    class BatchPutMessage
      def self.default(visited=[])
        {
          batch_put_message_error_entries: BatchPutMessageErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BatchPutMessageErrorEntries'] = Stubs::BatchPutMessageErrorEntries.stub(stub[:batch_put_message_error_entries]) unless stub[:batch_put_message_error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchPutMessageErrorEntries
    class BatchPutMessageErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchPutMessageErrorEntries')
        visited = visited + ['BatchPutMessageErrorEntries']
        [
          BatchPutMessageErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPutMessageErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutMessageErrorEntry
    class BatchPutMessageErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchPutMessageErrorEntry')
        visited = visited + ['BatchPutMessageErrorEntry']
        {
          message_id: 'message_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutMessageErrorEntry.new
        data = {}
        data['messageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchResetAlarm
    class BatchResetAlarm
      def self.default(visited=[])
        {
          error_entries: BatchAlarmActionErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::BatchAlarmActionErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchSnoozeAlarm
    class BatchSnoozeAlarm
      def self.default(visited=[])
        {
          error_entries: BatchAlarmActionErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::BatchAlarmActionErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchUpdateDetector
    class BatchUpdateDetector
      def self.default(visited=[])
        {
          batch_update_detector_error_entries: BatchUpdateDetectorErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['batchUpdateDetectorErrorEntries'] = Stubs::BatchUpdateDetectorErrorEntries.stub(stub[:batch_update_detector_error_entries]) unless stub[:batch_update_detector_error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchUpdateDetectorErrorEntries
    class BatchUpdateDetectorErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateDetectorErrorEntries')
        visited = visited + ['BatchUpdateDetectorErrorEntries']
        [
          BatchUpdateDetectorErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchUpdateDetectorErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchUpdateDetectorErrorEntry
    class BatchUpdateDetectorErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateDetectorErrorEntry')
        visited = visited + ['BatchUpdateDetectorErrorEntry']
        {
          message_id: 'message_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdateDetectorErrorEntry.new
        data = {}
        data['messageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeAlarm
    class DescribeAlarm
      def self.default(visited=[])
        {
          alarm: Alarm.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['alarm'] = Stubs::Alarm.stub(stub[:alarm]) unless stub[:alarm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Alarm
    class Alarm
      def self.default(visited=[])
        return nil if visited.include?('Alarm')
        visited = visited + ['Alarm']
        {
          alarm_model_name: 'alarm_model_name',
          alarm_model_version: 'alarm_model_version',
          key_value: 'key_value',
          alarm_state: AlarmState.default(visited),
          severity: 1,
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Alarm.new
        data = {}
        data['alarmModelName'] = stub[:alarm_model_name] unless stub[:alarm_model_name].nil?
        data['alarmModelVersion'] = stub[:alarm_model_version] unless stub[:alarm_model_version].nil?
        data['keyValue'] = stub[:key_value] unless stub[:key_value].nil?
        data['alarmState'] = Stubs::AlarmState.stub(stub[:alarm_state]) unless stub[:alarm_state].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Structure Stubber for AlarmState
    class AlarmState
      def self.default(visited=[])
        return nil if visited.include?('AlarmState')
        visited = visited + ['AlarmState']
        {
          state_name: 'state_name',
          rule_evaluation: RuleEvaluation.default(visited),
          customer_action: CustomerAction.default(visited),
          system_event: SystemEvent.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmState.new
        data = {}
        data['stateName'] = stub[:state_name] unless stub[:state_name].nil?
        data['ruleEvaluation'] = Stubs::RuleEvaluation.stub(stub[:rule_evaluation]) unless stub[:rule_evaluation].nil?
        data['customerAction'] = Stubs::CustomerAction.stub(stub[:customer_action]) unless stub[:customer_action].nil?
        data['systemEvent'] = Stubs::SystemEvent.stub(stub[:system_event]) unless stub[:system_event].nil?
        data
      end
    end

    # Structure Stubber for SystemEvent
    class SystemEvent
      def self.default(visited=[])
        return nil if visited.include?('SystemEvent')
        visited = visited + ['SystemEvent']
        {
          event_type: 'event_type',
          state_change_configuration: StateChangeConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemEvent.new
        data = {}
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['stateChangeConfiguration'] = Stubs::StateChangeConfiguration.stub(stub[:state_change_configuration]) unless stub[:state_change_configuration].nil?
        data
      end
    end

    # Structure Stubber for StateChangeConfiguration
    class StateChangeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StateChangeConfiguration')
        visited = visited + ['StateChangeConfiguration']
        {
          trigger_type: 'trigger_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StateChangeConfiguration.new
        data = {}
        data['triggerType'] = stub[:trigger_type] unless stub[:trigger_type].nil?
        data
      end
    end

    # Structure Stubber for CustomerAction
    class CustomerAction
      def self.default(visited=[])
        return nil if visited.include?('CustomerAction')
        visited = visited + ['CustomerAction']
        {
          action_name: 'action_name',
          snooze_action_configuration: SnoozeActionConfiguration.default(visited),
          enable_action_configuration: EnableActionConfiguration.default(visited),
          disable_action_configuration: DisableActionConfiguration.default(visited),
          acknowledge_action_configuration: AcknowledgeActionConfiguration.default(visited),
          reset_action_configuration: ResetActionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerAction.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['snoozeActionConfiguration'] = Stubs::SnoozeActionConfiguration.stub(stub[:snooze_action_configuration]) unless stub[:snooze_action_configuration].nil?
        data['enableActionConfiguration'] = Stubs::EnableActionConfiguration.stub(stub[:enable_action_configuration]) unless stub[:enable_action_configuration].nil?
        data['disableActionConfiguration'] = Stubs::DisableActionConfiguration.stub(stub[:disable_action_configuration]) unless stub[:disable_action_configuration].nil?
        data['acknowledgeActionConfiguration'] = Stubs::AcknowledgeActionConfiguration.stub(stub[:acknowledge_action_configuration]) unless stub[:acknowledge_action_configuration].nil?
        data['resetActionConfiguration'] = Stubs::ResetActionConfiguration.stub(stub[:reset_action_configuration]) unless stub[:reset_action_configuration].nil?
        data
      end
    end

    # Structure Stubber for ResetActionConfiguration
    class ResetActionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ResetActionConfiguration')
        visited = visited + ['ResetActionConfiguration']
        {
          note: 'note',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResetActionConfiguration.new
        data = {}
        data['note'] = stub[:note] unless stub[:note].nil?
        data
      end
    end

    # Structure Stubber for AcknowledgeActionConfiguration
    class AcknowledgeActionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AcknowledgeActionConfiguration')
        visited = visited + ['AcknowledgeActionConfiguration']
        {
          note: 'note',
        }
      end

      def self.stub(stub)
        stub ||= Types::AcknowledgeActionConfiguration.new
        data = {}
        data['note'] = stub[:note] unless stub[:note].nil?
        data
      end
    end

    # Structure Stubber for DisableActionConfiguration
    class DisableActionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DisableActionConfiguration')
        visited = visited + ['DisableActionConfiguration']
        {
          note: 'note',
        }
      end

      def self.stub(stub)
        stub ||= Types::DisableActionConfiguration.new
        data = {}
        data['note'] = stub[:note] unless stub[:note].nil?
        data
      end
    end

    # Structure Stubber for EnableActionConfiguration
    class EnableActionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EnableActionConfiguration')
        visited = visited + ['EnableActionConfiguration']
        {
          note: 'note',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnableActionConfiguration.new
        data = {}
        data['note'] = stub[:note] unless stub[:note].nil?
        data
      end
    end

    # Structure Stubber for SnoozeActionConfiguration
    class SnoozeActionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SnoozeActionConfiguration')
        visited = visited + ['SnoozeActionConfiguration']
        {
          snooze_duration: 1,
          note: 'note',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnoozeActionConfiguration.new
        data = {}
        data['snoozeDuration'] = stub[:snooze_duration] unless stub[:snooze_duration].nil?
        data['note'] = stub[:note] unless stub[:note].nil?
        data
      end
    end

    # Structure Stubber for RuleEvaluation
    class RuleEvaluation
      def self.default(visited=[])
        return nil if visited.include?('RuleEvaluation')
        visited = visited + ['RuleEvaluation']
        {
          simple_rule_evaluation: SimpleRuleEvaluation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleEvaluation.new
        data = {}
        data['simpleRuleEvaluation'] = Stubs::SimpleRuleEvaluation.stub(stub[:simple_rule_evaluation]) unless stub[:simple_rule_evaluation].nil?
        data
      end
    end

    # Structure Stubber for SimpleRuleEvaluation
    class SimpleRuleEvaluation
      def self.default(visited=[])
        return nil if visited.include?('SimpleRuleEvaluation')
        visited = visited + ['SimpleRuleEvaluation']
        {
          input_property_value: 'input_property_value',
          operator: 'operator',
          threshold_value: 'threshold_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SimpleRuleEvaluation.new
        data = {}
        data['inputPropertyValue'] = stub[:input_property_value] unless stub[:input_property_value].nil?
        data['operator'] = stub[:operator] unless stub[:operator].nil?
        data['thresholdValue'] = stub[:threshold_value] unless stub[:threshold_value].nil?
        data
      end
    end

    # Operation Stubber for DescribeDetector
    class DescribeDetector
      def self.default(visited=[])
        {
          detector: Detector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detector'] = Stubs::Detector.stub(stub[:detector]) unless stub[:detector].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Detector
    class Detector
      def self.default(visited=[])
        return nil if visited.include?('Detector')
        visited = visited + ['Detector']
        {
          detector_model_name: 'detector_model_name',
          key_value: 'key_value',
          detector_model_version: 'detector_model_version',
          state: DetectorState.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Detector.new
        data = {}
        data['detectorModelName'] = stub[:detector_model_name] unless stub[:detector_model_name].nil?
        data['keyValue'] = stub[:key_value] unless stub[:key_value].nil?
        data['detectorModelVersion'] = stub[:detector_model_version] unless stub[:detector_model_version].nil?
        data['state'] = Stubs::DetectorState.stub(stub[:state]) unless stub[:state].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Structure Stubber for DetectorState
    class DetectorState
      def self.default(visited=[])
        return nil if visited.include?('DetectorState')
        visited = visited + ['DetectorState']
        {
          state_name: 'state_name',
          variables: Variables.default(visited),
          timers: Timers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorState.new
        data = {}
        data['stateName'] = stub[:state_name] unless stub[:state_name].nil?
        data['variables'] = Stubs::Variables.stub(stub[:variables]) unless stub[:variables].nil?
        data['timers'] = Stubs::Timers.stub(stub[:timers]) unless stub[:timers].nil?
        data
      end
    end

    # List Stubber for Timers
    class Timers
      def self.default(visited=[])
        return nil if visited.include?('Timers')
        visited = visited + ['Timers']
        [
          Timer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Timer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Timer
    class Timer
      def self.default(visited=[])
        return nil if visited.include?('Timer')
        visited = visited + ['Timer']
        {
          name: 'name',
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Timer.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data
      end
    end

    # List Stubber for Variables
    class Variables
      def self.default(visited=[])
        return nil if visited.include?('Variables')
        visited = visited + ['Variables']
        [
          Variable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Variable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Variable
    class Variable
      def self.default(visited=[])
        return nil if visited.include?('Variable')
        visited = visited + ['Variable']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Variable.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListAlarms
    class ListAlarms
      def self.default(visited=[])
        {
          alarm_summaries: AlarmSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['alarmSummaries'] = Stubs::AlarmSummaries.stub(stub[:alarm_summaries]) unless stub[:alarm_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AlarmSummaries
    class AlarmSummaries
      def self.default(visited=[])
        return nil if visited.include?('AlarmSummaries')
        visited = visited + ['AlarmSummaries']
        [
          AlarmSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlarmSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlarmSummary
    class AlarmSummary
      def self.default(visited=[])
        return nil if visited.include?('AlarmSummary')
        visited = visited + ['AlarmSummary']
        {
          alarm_model_name: 'alarm_model_name',
          alarm_model_version: 'alarm_model_version',
          key_value: 'key_value',
          state_name: 'state_name',
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmSummary.new
        data = {}
        data['alarmModelName'] = stub[:alarm_model_name] unless stub[:alarm_model_name].nil?
        data['alarmModelVersion'] = stub[:alarm_model_version] unless stub[:alarm_model_version].nil?
        data['keyValue'] = stub[:key_value] unless stub[:key_value].nil?
        data['stateName'] = stub[:state_name] unless stub[:state_name].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for ListDetectors
    class ListDetectors
      def self.default(visited=[])
        {
          detector_summaries: DetectorSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorSummaries'] = Stubs::DetectorSummaries.stub(stub[:detector_summaries]) unless stub[:detector_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DetectorSummaries
    class DetectorSummaries
      def self.default(visited=[])
        return nil if visited.include?('DetectorSummaries')
        visited = visited + ['DetectorSummaries']
        [
          DetectorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DetectorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetectorSummary
    class DetectorSummary
      def self.default(visited=[])
        return nil if visited.include?('DetectorSummary')
        visited = visited + ['DetectorSummary']
        {
          detector_model_name: 'detector_model_name',
          key_value: 'key_value',
          detector_model_version: 'detector_model_version',
          state: DetectorStateSummary.default(visited),
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorSummary.new
        data = {}
        data['detectorModelName'] = stub[:detector_model_name] unless stub[:detector_model_name].nil?
        data['keyValue'] = stub[:key_value] unless stub[:key_value].nil?
        data['detectorModelVersion'] = stub[:detector_model_version] unless stub[:detector_model_version].nil?
        data['state'] = Stubs::DetectorStateSummary.stub(stub[:state]) unless stub[:state].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Structure Stubber for DetectorStateSummary
    class DetectorStateSummary
      def self.default(visited=[])
        return nil if visited.include?('DetectorStateSummary')
        visited = visited + ['DetectorStateSummary']
        {
          state_name: 'state_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorStateSummary.new
        data = {}
        data['stateName'] = stub[:state_name] unless stub[:state_name].nil?
        data
      end
    end
  end
end
