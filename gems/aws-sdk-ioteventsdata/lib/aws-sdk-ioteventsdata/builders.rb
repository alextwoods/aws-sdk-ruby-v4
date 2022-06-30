# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTEventsData
  module Builders

    # Operation Builder for BatchAcknowledgeAlarm
    class BatchAcknowledgeAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/alarms/acknowledge')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['acknowledgeActionRequests'] = Builders::AcknowledgeAlarmActionRequests.build(input[:acknowledge_action_requests]) unless input[:acknowledge_action_requests].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AcknowledgeAlarmActionRequests
    class AcknowledgeAlarmActionRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AcknowledgeAlarmActionRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AcknowledgeAlarmActionRequest
    class AcknowledgeAlarmActionRequest
      def self.build(input)
        data = {}
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['alarmModelName'] = input[:alarm_model_name] unless input[:alarm_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data['note'] = input[:note] unless input[:note].nil?
        data
      end
    end

    # Operation Builder for BatchDeleteDetector
    class BatchDeleteDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/detectors/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['detectors'] = Builders::DeleteDetectorRequests.build(input[:detectors]) unless input[:detectors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeleteDetectorRequests
    class DeleteDetectorRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DeleteDetectorRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeleteDetectorRequest
    class DeleteDetectorRequest
      def self.build(input)
        data = {}
        data['messageId'] = input[:message_id] unless input[:message_id].nil?
        data['detectorModelName'] = input[:detector_model_name] unless input[:detector_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data
      end
    end

    # Operation Builder for BatchDisableAlarm
    class BatchDisableAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/alarms/disable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['disableActionRequests'] = Builders::DisableAlarmActionRequests.build(input[:disable_action_requests]) unless input[:disable_action_requests].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DisableAlarmActionRequests
    class DisableAlarmActionRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DisableAlarmActionRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DisableAlarmActionRequest
    class DisableAlarmActionRequest
      def self.build(input)
        data = {}
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['alarmModelName'] = input[:alarm_model_name] unless input[:alarm_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data['note'] = input[:note] unless input[:note].nil?
        data
      end
    end

    # Operation Builder for BatchEnableAlarm
    class BatchEnableAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/alarms/enable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['enableActionRequests'] = Builders::EnableAlarmActionRequests.build(input[:enable_action_requests]) unless input[:enable_action_requests].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EnableAlarmActionRequests
    class EnableAlarmActionRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EnableAlarmActionRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnableAlarmActionRequest
    class EnableAlarmActionRequest
      def self.build(input)
        data = {}
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['alarmModelName'] = input[:alarm_model_name] unless input[:alarm_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data['note'] = input[:note] unless input[:note].nil?
        data
      end
    end

    # Operation Builder for BatchPutMessage
    class BatchPutMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/inputs/messages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['messages'] = Builders::Messages.build(input[:messages]) unless input[:messages].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Messages
    class Messages
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Message.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['messageId'] = input[:message_id] unless input[:message_id].nil?
        data['inputName'] = input[:input_name] unless input[:input_name].nil?
        data['payload'] = Base64::encode64(input[:payload]).strip unless input[:payload].nil?
        data['timestamp'] = Builders::TimestampValue.build(input[:timestamp]) unless input[:timestamp].nil?
        data
      end
    end

    # Structure Builder for TimestampValue
    class TimestampValue
      def self.build(input)
        data = {}
        data['timeInMillis'] = input[:time_in_millis] unless input[:time_in_millis].nil?
        data
      end
    end

    # Operation Builder for BatchResetAlarm
    class BatchResetAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/alarms/reset')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resetActionRequests'] = Builders::ResetAlarmActionRequests.build(input[:reset_action_requests]) unless input[:reset_action_requests].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResetAlarmActionRequests
    class ResetAlarmActionRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResetAlarmActionRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResetAlarmActionRequest
    class ResetAlarmActionRequest
      def self.build(input)
        data = {}
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['alarmModelName'] = input[:alarm_model_name] unless input[:alarm_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data['note'] = input[:note] unless input[:note].nil?
        data
      end
    end

    # Operation Builder for BatchSnoozeAlarm
    class BatchSnoozeAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/alarms/snooze')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['snoozeActionRequests'] = Builders::SnoozeAlarmActionRequests.build(input[:snooze_action_requests]) unless input[:snooze_action_requests].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SnoozeAlarmActionRequests
    class SnoozeAlarmActionRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SnoozeAlarmActionRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SnoozeAlarmActionRequest
    class SnoozeAlarmActionRequest
      def self.build(input)
        data = {}
        data['requestId'] = input[:request_id] unless input[:request_id].nil?
        data['alarmModelName'] = input[:alarm_model_name] unless input[:alarm_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data['note'] = input[:note] unless input[:note].nil?
        data['snoozeDuration'] = input[:snooze_duration] unless input[:snooze_duration].nil?
        data
      end
    end

    # Operation Builder for BatchUpdateDetector
    class BatchUpdateDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/detectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['detectors'] = Builders::UpdateDetectorRequests.build(input[:detectors]) unless input[:detectors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateDetectorRequests
    class UpdateDetectorRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateDetectorRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateDetectorRequest
    class UpdateDetectorRequest
      def self.build(input)
        data = {}
        data['messageId'] = input[:message_id] unless input[:message_id].nil?
        data['detectorModelName'] = input[:detector_model_name] unless input[:detector_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data['state'] = Builders::DetectorStateDefinition.build(input[:state]) unless input[:state].nil?
        data
      end
    end

    # Structure Builder for DetectorStateDefinition
    class DetectorStateDefinition
      def self.build(input)
        data = {}
        data['stateName'] = input[:state_name] unless input[:state_name].nil?
        data['variables'] = Builders::VariableDefinitions.build(input[:variables]) unless input[:variables].nil?
        data['timers'] = Builders::TimerDefinitions.build(input[:timers]) unless input[:timers].nil?
        data
      end
    end

    # List Builder for TimerDefinitions
    class TimerDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TimerDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TimerDefinition
    class TimerDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['seconds'] = input[:seconds] unless input[:seconds].nil?
        data
      end
    end

    # List Builder for VariableDefinitions
    class VariableDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VariableDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VariableDefinition
    class VariableDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DescribeAlarm
    class DescribeAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:alarm_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :alarm_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/alarms/%<alarmModelName>s/keyValues',
            alarmModelName: Hearth::HTTP.uri_escape(input[:alarm_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['keyValue'] = input[:key_value].to_s unless input[:key_value].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDetector
    class DescribeDetector
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :detector_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detectors/%<detectorModelName>s/keyValues',
            detectorModelName: Hearth::HTTP.uri_escape(input[:detector_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['keyValue'] = input[:key_value].to_s unless input[:key_value].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAlarms
    class ListAlarms
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:alarm_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :alarm_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/alarms/%<alarmModelName>s',
            alarmModelName: Hearth::HTTP.uri_escape(input[:alarm_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDetectors
    class ListDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :detector_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detectors/%<detectorModelName>s',
            detectorModelName: Hearth::HTTP.uri_escape(input[:detector_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['stateName'] = input[:state_name].to_s unless input[:state_name].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end
  end
end
