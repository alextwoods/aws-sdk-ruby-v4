# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTEvents
  module Builders

    # Operation Builder for CreateAlarmModel
    class CreateAlarmModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/alarm-models')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['alarmModelName'] = input[:alarm_model_name] unless input[:alarm_model_name].nil?
        data['alarmModelDescription'] = input[:alarm_model_description] unless input[:alarm_model_description].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['severity'] = input[:severity] unless input[:severity].nil?
        data['alarmRule'] = Builders::AlarmRule.build(input[:alarm_rule]) unless input[:alarm_rule].nil?
        data['alarmNotification'] = Builders::AlarmNotification.build(input[:alarm_notification]) unless input[:alarm_notification].nil?
        data['alarmEventActions'] = Builders::AlarmEventActions.build(input[:alarm_event_actions]) unless input[:alarm_event_actions].nil?
        data['alarmCapabilities'] = Builders::AlarmCapabilities.build(input[:alarm_capabilities]) unless input[:alarm_capabilities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AlarmCapabilities
    class AlarmCapabilities
      def self.build(input)
        data = {}
        data['initializationConfiguration'] = Builders::InitializationConfiguration.build(input[:initialization_configuration]) unless input[:initialization_configuration].nil?
        data['acknowledgeFlow'] = Builders::AcknowledgeFlow.build(input[:acknowledge_flow]) unless input[:acknowledge_flow].nil?
        data
      end
    end

    # Structure Builder for AcknowledgeFlow
    class AcknowledgeFlow
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for InitializationConfiguration
    class InitializationConfiguration
      def self.build(input)
        data = {}
        data['disabledOnInitialization'] = input[:disabled_on_initialization] unless input[:disabled_on_initialization].nil?
        data
      end
    end

    # Structure Builder for AlarmEventActions
    class AlarmEventActions
      def self.build(input)
        data = {}
        data['alarmActions'] = Builders::AlarmActions.build(input[:alarm_actions]) unless input[:alarm_actions].nil?
        data
      end
    end

    # List Builder for AlarmActions
    class AlarmActions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AlarmAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AlarmAction
    class AlarmAction
      def self.build(input)
        data = {}
        data['sns'] = Builders::SNSTopicPublishAction.build(input[:sns]) unless input[:sns].nil?
        data['iotTopicPublish'] = Builders::IotTopicPublishAction.build(input[:iot_topic_publish]) unless input[:iot_topic_publish].nil?
        data['lambda'] = Builders::LambdaAction.build(input[:lambda]) unless input[:lambda].nil?
        data['iotEvents'] = Builders::IotEventsAction.build(input[:iot_events]) unless input[:iot_events].nil?
        data['sqs'] = Builders::SqsAction.build(input[:sqs]) unless input[:sqs].nil?
        data['firehose'] = Builders::FirehoseAction.build(input[:firehose]) unless input[:firehose].nil?
        data['dynamoDB'] = Builders::DynamoDBAction.build(input[:dynamo_db]) unless input[:dynamo_db].nil?
        data['dynamoDBv2'] = Builders::DynamoDBv2Action.build(input[:dynamo_d_bv2]) unless input[:dynamo_d_bv2].nil?
        data['iotSiteWise'] = Builders::IotSiteWiseAction.build(input[:iot_site_wise]) unless input[:iot_site_wise].nil?
        data
      end
    end

    # Structure Builder for IotSiteWiseAction
    class IotSiteWiseAction
      def self.build(input)
        data = {}
        data['entryId'] = input[:entry_id] unless input[:entry_id].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data['propertyValue'] = Builders::AssetPropertyValue.build(input[:property_value]) unless input[:property_value].nil?
        data
      end
    end

    # Structure Builder for AssetPropertyValue
    class AssetPropertyValue
      def self.build(input)
        data = {}
        data['value'] = Builders::AssetPropertyVariant.build(input[:value]) unless input[:value].nil?
        data['timestamp'] = Builders::AssetPropertyTimestamp.build(input[:timestamp]) unless input[:timestamp].nil?
        data['quality'] = input[:quality] unless input[:quality].nil?
        data
      end
    end

    # Structure Builder for AssetPropertyTimestamp
    class AssetPropertyTimestamp
      def self.build(input)
        data = {}
        data['timeInSeconds'] = input[:time_in_seconds] unless input[:time_in_seconds].nil?
        data['offsetInNanos'] = input[:offset_in_nanos] unless input[:offset_in_nanos].nil?
        data
      end
    end

    # Structure Builder for AssetPropertyVariant
    class AssetPropertyVariant
      def self.build(input)
        data = {}
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data['integerValue'] = input[:integer_value] unless input[:integer_value].nil?
        data['doubleValue'] = input[:double_value] unless input[:double_value].nil?
        data['booleanValue'] = input[:boolean_value] unless input[:boolean_value].nil?
        data
      end
    end

    # Structure Builder for DynamoDBv2Action
    class DynamoDBv2Action
      def self.build(input)
        data = {}
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for Payload
    class Payload
      def self.build(input)
        data = {}
        data['contentExpression'] = input[:content_expression] unless input[:content_expression].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for DynamoDBAction
    class DynamoDBAction
      def self.build(input)
        data = {}
        data['hashKeyType'] = input[:hash_key_type] unless input[:hash_key_type].nil?
        data['hashKeyField'] = input[:hash_key_field] unless input[:hash_key_field].nil?
        data['hashKeyValue'] = input[:hash_key_value] unless input[:hash_key_value].nil?
        data['rangeKeyType'] = input[:range_key_type] unless input[:range_key_type].nil?
        data['rangeKeyField'] = input[:range_key_field] unless input[:range_key_field].nil?
        data['rangeKeyValue'] = input[:range_key_value] unless input[:range_key_value].nil?
        data['operation'] = input[:operation] unless input[:operation].nil?
        data['payloadField'] = input[:payload_field] unless input[:payload_field].nil?
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for FirehoseAction
    class FirehoseAction
      def self.build(input)
        data = {}
        data['deliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['separator'] = input[:separator] unless input[:separator].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for SqsAction
    class SqsAction
      def self.build(input)
        data = {}
        data['queueUrl'] = input[:queue_url] unless input[:queue_url].nil?
        data['useBase64'] = input[:use_base64] unless input[:use_base64].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for IotEventsAction
    class IotEventsAction
      def self.build(input)
        data = {}
        data['inputName'] = input[:input_name] unless input[:input_name].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for LambdaAction
    class LambdaAction
      def self.build(input)
        data = {}
        data['functionArn'] = input[:function_arn] unless input[:function_arn].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for IotTopicPublishAction
    class IotTopicPublishAction
      def self.build(input)
        data = {}
        data['mqttTopic'] = input[:mqtt_topic] unless input[:mqtt_topic].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for SNSTopicPublishAction
    class SNSTopicPublishAction
      def self.build(input)
        data = {}
        data['targetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['payload'] = Builders::Payload.build(input[:payload]) unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for AlarmNotification
    class AlarmNotification
      def self.build(input)
        data = {}
        data['notificationActions'] = Builders::NotificationActions.build(input[:notification_actions]) unless input[:notification_actions].nil?
        data
      end
    end

    # List Builder for NotificationActions
    class NotificationActions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NotificationAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NotificationAction
    class NotificationAction
      def self.build(input)
        data = {}
        data['action'] = Builders::NotificationTargetActions.build(input[:action]) unless input[:action].nil?
        data['smsConfigurations'] = Builders::SMSConfigurations.build(input[:sms_configurations]) unless input[:sms_configurations].nil?
        data['emailConfigurations'] = Builders::EmailConfigurations.build(input[:email_configurations]) unless input[:email_configurations].nil?
        data
      end
    end

    # List Builder for EmailConfigurations
    class EmailConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EmailConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EmailConfiguration
    class EmailConfiguration
      def self.build(input)
        data = {}
        data['from'] = input[:from] unless input[:from].nil?
        data['content'] = Builders::EmailContent.build(input[:content]) unless input[:content].nil?
        data['recipients'] = Builders::EmailRecipients.build(input[:recipients]) unless input[:recipients].nil?
        data
      end
    end

    # Structure Builder for EmailRecipients
    class EmailRecipients
      def self.build(input)
        data = {}
        data['to'] = Builders::RecipientDetails.build(input[:to]) unless input[:to].nil?
        data
      end
    end

    # List Builder for RecipientDetails
    class RecipientDetails
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RecipientDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RecipientDetail
    class RecipientDetail
      def self.build(input)
        data = {}
        data['ssoIdentity'] = Builders::SSOIdentity.build(input[:sso_identity]) unless input[:sso_identity].nil?
        data
      end
    end

    # Structure Builder for SSOIdentity
    class SSOIdentity
      def self.build(input)
        data = {}
        data['identityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data
      end
    end

    # Structure Builder for EmailContent
    class EmailContent
      def self.build(input)
        data = {}
        data['subject'] = input[:subject] unless input[:subject].nil?
        data['additionalMessage'] = input[:additional_message] unless input[:additional_message].nil?
        data
      end
    end

    # List Builder for SMSConfigurations
    class SMSConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SMSConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SMSConfiguration
    class SMSConfiguration
      def self.build(input)
        data = {}
        data['senderId'] = input[:sender_id] unless input[:sender_id].nil?
        data['additionalMessage'] = input[:additional_message] unless input[:additional_message].nil?
        data['recipients'] = Builders::RecipientDetails.build(input[:recipients]) unless input[:recipients].nil?
        data
      end
    end

    # Structure Builder for NotificationTargetActions
    class NotificationTargetActions
      def self.build(input)
        data = {}
        data['lambdaAction'] = Builders::LambdaAction.build(input[:lambda_action]) unless input[:lambda_action].nil?
        data
      end
    end

    # Structure Builder for AlarmRule
    class AlarmRule
      def self.build(input)
        data = {}
        data['simpleRule'] = Builders::SimpleRule.build(input[:simple_rule]) unless input[:simple_rule].nil?
        data
      end
    end

    # Structure Builder for SimpleRule
    class SimpleRule
      def self.build(input)
        data = {}
        data['inputProperty'] = input[:input_property] unless input[:input_property].nil?
        data['comparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['threshold'] = input[:threshold] unless input[:threshold].nil?
        data
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateDetectorModel
    class CreateDetectorModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/detector-models')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['detectorModelName'] = input[:detector_model_name] unless input[:detector_model_name].nil?
        data['detectorModelDefinition'] = Builders::DetectorModelDefinition.build(input[:detector_model_definition]) unless input[:detector_model_definition].nil?
        data['detectorModelDescription'] = input[:detector_model_description] unless input[:detector_model_description].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['evaluationMethod'] = input[:evaluation_method] unless input[:evaluation_method].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DetectorModelDefinition
    class DetectorModelDefinition
      def self.build(input)
        data = {}
        data['states'] = Builders::States.build(input[:states]) unless input[:states].nil?
        data['initialStateName'] = input[:initial_state_name] unless input[:initial_state_name].nil?
        data
      end
    end

    # List Builder for States
    class States
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::State.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for State
    class State
      def self.build(input)
        data = {}
        data['stateName'] = input[:state_name] unless input[:state_name].nil?
        data['onInput'] = Builders::OnInputLifecycle.build(input[:on_input]) unless input[:on_input].nil?
        data['onEnter'] = Builders::OnEnterLifecycle.build(input[:on_enter]) unless input[:on_enter].nil?
        data['onExit'] = Builders::OnExitLifecycle.build(input[:on_exit]) unless input[:on_exit].nil?
        data
      end
    end

    # Structure Builder for OnExitLifecycle
    class OnExitLifecycle
      def self.build(input)
        data = {}
        data['events'] = Builders::Events.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for Events
    class Events
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Event.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Event
    class Event
      def self.build(input)
        data = {}
        data['eventName'] = input[:event_name] unless input[:event_name].nil?
        data['condition'] = input[:condition] unless input[:condition].nil?
        data['actions'] = Builders::Actions.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # List Builder for Actions
    class Actions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Action.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['setVariable'] = Builders::SetVariableAction.build(input[:set_variable]) unless input[:set_variable].nil?
        data['sns'] = Builders::SNSTopicPublishAction.build(input[:sns]) unless input[:sns].nil?
        data['iotTopicPublish'] = Builders::IotTopicPublishAction.build(input[:iot_topic_publish]) unless input[:iot_topic_publish].nil?
        data['setTimer'] = Builders::SetTimerAction.build(input[:set_timer]) unless input[:set_timer].nil?
        data['clearTimer'] = Builders::ClearTimerAction.build(input[:clear_timer]) unless input[:clear_timer].nil?
        data['resetTimer'] = Builders::ResetTimerAction.build(input[:reset_timer]) unless input[:reset_timer].nil?
        data['lambda'] = Builders::LambdaAction.build(input[:lambda]) unless input[:lambda].nil?
        data['iotEvents'] = Builders::IotEventsAction.build(input[:iot_events]) unless input[:iot_events].nil?
        data['sqs'] = Builders::SqsAction.build(input[:sqs]) unless input[:sqs].nil?
        data['firehose'] = Builders::FirehoseAction.build(input[:firehose]) unless input[:firehose].nil?
        data['dynamoDB'] = Builders::DynamoDBAction.build(input[:dynamo_db]) unless input[:dynamo_db].nil?
        data['dynamoDBv2'] = Builders::DynamoDBv2Action.build(input[:dynamo_d_bv2]) unless input[:dynamo_d_bv2].nil?
        data['iotSiteWise'] = Builders::IotSiteWiseAction.build(input[:iot_site_wise]) unless input[:iot_site_wise].nil?
        data
      end
    end

    # Structure Builder for ResetTimerAction
    class ResetTimerAction
      def self.build(input)
        data = {}
        data['timerName'] = input[:timer_name] unless input[:timer_name].nil?
        data
      end
    end

    # Structure Builder for ClearTimerAction
    class ClearTimerAction
      def self.build(input)
        data = {}
        data['timerName'] = input[:timer_name] unless input[:timer_name].nil?
        data
      end
    end

    # Structure Builder for SetTimerAction
    class SetTimerAction
      def self.build(input)
        data = {}
        data['timerName'] = input[:timer_name] unless input[:timer_name].nil?
        data['seconds'] = input[:seconds] unless input[:seconds].nil?
        data['durationExpression'] = input[:duration_expression] unless input[:duration_expression].nil?
        data
      end
    end

    # Structure Builder for SetVariableAction
    class SetVariableAction
      def self.build(input)
        data = {}
        data['variableName'] = input[:variable_name] unless input[:variable_name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for OnEnterLifecycle
    class OnEnterLifecycle
      def self.build(input)
        data = {}
        data['events'] = Builders::Events.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # Structure Builder for OnInputLifecycle
    class OnInputLifecycle
      def self.build(input)
        data = {}
        data['events'] = Builders::Events.build(input[:events]) unless input[:events].nil?
        data['transitionEvents'] = Builders::TransitionEvents.build(input[:transition_events]) unless input[:transition_events].nil?
        data
      end
    end

    # List Builder for TransitionEvents
    class TransitionEvents
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TransitionEvent.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TransitionEvent
    class TransitionEvent
      def self.build(input)
        data = {}
        data['eventName'] = input[:event_name] unless input[:event_name].nil?
        data['condition'] = input[:condition] unless input[:condition].nil?
        data['actions'] = Builders::Actions.build(input[:actions]) unless input[:actions].nil?
        data['nextState'] = input[:next_state] unless input[:next_state].nil?
        data
      end
    end

    # Operation Builder for CreateInput
    class CreateInput
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/inputs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['inputName'] = input[:input_name] unless input[:input_name].nil?
        data['inputDescription'] = input[:input_description] unless input[:input_description].nil?
        data['inputDefinition'] = Builders::InputDefinition.build(input[:input_definition]) unless input[:input_definition].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InputDefinition
    class InputDefinition
      def self.build(input)
        data = {}
        data['attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # List Builder for Attributes
    class Attributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Attribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Attribute
    class Attribute
      def self.build(input)
        data = {}
        data['jsonPath'] = input[:json_path] unless input[:json_path].nil?
        data
      end
    end

    # Operation Builder for DeleteAlarmModel
    class DeleteAlarmModel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:alarm_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :alarm_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/alarm-models/%<alarmModelName>s',
            alarmModelName: Hearth::HTTP.uri_escape(input[:alarm_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDetectorModel
    class DeleteDetectorModel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:detector_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :detector_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector-models/%<detectorModelName>s',
            detectorModelName: Hearth::HTTP.uri_escape(input[:detector_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInput
    class DeleteInput
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:input_name].to_s.empty?
          raise ArgumentError, "HTTP label :input_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/inputs/%<inputName>s',
            inputName: Hearth::HTTP.uri_escape(input[:input_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAlarmModel
    class DescribeAlarmModel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:alarm_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :alarm_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/alarm-models/%<alarmModelName>s',
            alarmModelName: Hearth::HTTP.uri_escape(input[:alarm_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:alarm_model_version].to_s unless input[:alarm_model_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDetectorModel
    class DescribeDetectorModel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :detector_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector-models/%<detectorModelName>s',
            detectorModelName: Hearth::HTTP.uri_escape(input[:detector_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:detector_model_version].to_s unless input[:detector_model_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDetectorModelAnalysis
    class DescribeDetectorModelAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analysis/detector-models/%<analysisId>s',
            analysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInput
    class DescribeInput
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:input_name].to_s.empty?
          raise ArgumentError, "HTTP label :input_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/inputs/%<inputName>s',
            inputName: Hearth::HTTP.uri_escape(input[:input_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/logging')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDetectorModelAnalysisResults
    class GetDetectorModelAnalysisResults
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analysis/detector-models/%<analysisId>s/results',
            analysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAlarmModelVersions
    class ListAlarmModelVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:alarm_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :alarm_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/alarm-models/%<alarmModelName>s/versions',
            alarmModelName: Hearth::HTTP.uri_escape(input[:alarm_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAlarmModels
    class ListAlarmModels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/alarm-models')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDetectorModelVersions
    class ListDetectorModelVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :detector_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector-models/%<detectorModelName>s/versions',
            detectorModelName: Hearth::HTTP.uri_escape(input[:detector_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDetectorModels
    class ListDetectorModels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/detector-models')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInputRoutings
    class ListInputRoutings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/input-routings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['inputIdentifier'] = Builders::InputIdentifier.build(input[:input_identifier]) unless input[:input_identifier].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InputIdentifier
    class InputIdentifier
      def self.build(input)
        data = {}
        data['iotEventsInputIdentifier'] = Builders::IotEventsInputIdentifier.build(input[:iot_events_input_identifier]) unless input[:iot_events_input_identifier].nil?
        data['iotSiteWiseInputIdentifier'] = Builders::IotSiteWiseInputIdentifier.build(input[:iot_site_wise_input_identifier]) unless input[:iot_site_wise_input_identifier].nil?
        data
      end
    end

    # Structure Builder for IotSiteWiseInputIdentifier
    class IotSiteWiseInputIdentifier
      def self.build(input)
        data = {}
        data['iotSiteWiseAssetModelPropertyIdentifier'] = Builders::IotSiteWiseAssetModelPropertyIdentifier.build(input[:iot_site_wise_asset_model_property_identifier]) unless input[:iot_site_wise_asset_model_property_identifier].nil?
        data
      end
    end

    # Structure Builder for IotSiteWiseAssetModelPropertyIdentifier
    class IotSiteWiseAssetModelPropertyIdentifier
      def self.build(input)
        data = {}
        data['assetModelId'] = input[:asset_model_id] unless input[:asset_model_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data
      end
    end

    # Structure Builder for IotEventsInputIdentifier
    class IotEventsInputIdentifier
      def self.build(input)
        data = {}
        data['inputName'] = input[:input_name] unless input[:input_name].nil?
        data
      end
    end

    # Operation Builder for ListInputs
    class ListInputs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/inputs')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutLoggingOptions
    class PutLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/logging')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['loggingOptions'] = Builders::LoggingOptions.build(input[:logging_options]) unless input[:logging_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingOptions
    class LoggingOptions
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['level'] = input[:level] unless input[:level].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['detectorDebugOptions'] = Builders::DetectorDebugOptions.build(input[:detector_debug_options]) unless input[:detector_debug_options].nil?
        data
      end
    end

    # List Builder for DetectorDebugOptions
    class DetectorDebugOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DetectorDebugOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DetectorDebugOption
    class DetectorDebugOption
      def self.build(input)
        data = {}
        data['detectorModelName'] = input[:detector_model_name] unless input[:detector_model_name].nil?
        data['keyValue'] = input[:key_value] unless input[:key_value].nil?
        data
      end
    end

    # Operation Builder for StartDetectorModelAnalysis
    class StartDetectorModelAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/analysis/detector-models')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['detectorModelDefinition'] = Builders::DetectorModelDefinition.build(input[:detector_model_definition]) unless input[:detector_model_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAlarmModel
    class UpdateAlarmModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:alarm_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :alarm_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/alarm-models/%<alarmModelName>s',
            alarmModelName: Hearth::HTTP.uri_escape(input[:alarm_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['alarmModelDescription'] = input[:alarm_model_description] unless input[:alarm_model_description].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['severity'] = input[:severity] unless input[:severity].nil?
        data['alarmRule'] = Builders::AlarmRule.build(input[:alarm_rule]) unless input[:alarm_rule].nil?
        data['alarmNotification'] = Builders::AlarmNotification.build(input[:alarm_notification]) unless input[:alarm_notification].nil?
        data['alarmEventActions'] = Builders::AlarmEventActions.build(input[:alarm_event_actions]) unless input[:alarm_event_actions].nil?
        data['alarmCapabilities'] = Builders::AlarmCapabilities.build(input[:alarm_capabilities]) unless input[:alarm_capabilities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDetectorModel
    class UpdateDetectorModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_model_name].to_s.empty?
          raise ArgumentError, "HTTP label :detector_model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector-models/%<detectorModelName>s',
            detectorModelName: Hearth::HTTP.uri_escape(input[:detector_model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['detectorModelDefinition'] = Builders::DetectorModelDefinition.build(input[:detector_model_definition]) unless input[:detector_model_definition].nil?
        data['detectorModelDescription'] = input[:detector_model_description] unless input[:detector_model_description].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['evaluationMethod'] = input[:evaluation_method] unless input[:evaluation_method].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInput
    class UpdateInput
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:input_name].to_s.empty?
          raise ArgumentError, "HTTP label :input_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/inputs/%<inputName>s',
            inputName: Hearth::HTTP.uri_escape(input[:input_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['inputDescription'] = input[:input_description] unless input[:input_description].nil?
        data['inputDefinition'] = Builders::InputDefinition.build(input[:input_definition]) unless input[:input_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
