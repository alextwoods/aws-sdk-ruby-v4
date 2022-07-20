# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTEvents
  module Parsers

    # Operation Parser for CreateAlarmModel
    class CreateAlarmModel
      def self.parse(http_resp)
        data = Types::CreateAlarmModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.alarm_model_arn = map['alarmModelArn']
        data.alarm_model_version = map['alarmModelVersion']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
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

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_arn = map['resourceArn']
        data
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

    # Operation Parser for CreateDetectorModel
    class CreateDetectorModel
      def self.parse(http_resp)
        data = Types::CreateDetectorModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_model_configuration = (DetectorModelConfiguration.parse(map['detectorModelConfiguration']) unless map['detectorModelConfiguration'].nil?)
        data
      end
    end

    class DetectorModelConfiguration
      def self.parse(map)
        data = Types::DetectorModelConfiguration.new
        data.detector_model_name = map['detectorModelName']
        data.detector_model_version = map['detectorModelVersion']
        data.detector_model_description = map['detectorModelDescription']
        data.detector_model_arn = map['detectorModelArn']
        data.role_arn = map['roleArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        data.key = map['key']
        data.evaluation_method = map['evaluationMethod']
        return data
      end
    end

    # Operation Parser for CreateInput
    class CreateInput
      def self.parse(http_resp)
        data = Types::CreateInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input_configuration = (InputConfiguration.parse(map['inputConfiguration']) unless map['inputConfiguration'].nil?)
        data
      end
    end

    class InputConfiguration
      def self.parse(map)
        data = Types::InputConfiguration.new
        data.input_name = map['inputName']
        data.input_description = map['inputDescription']
        data.input_arn = map['inputArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for DeleteAlarmModel
    class DeleteAlarmModel
      def self.parse(http_resp)
        data = Types::DeleteAlarmModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
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

    # Operation Parser for DeleteDetectorModel
    class DeleteDetectorModel
      def self.parse(http_resp)
        data = Types::DeleteDetectorModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInput
    class DeleteInput
      def self.parse(http_resp)
        data = Types::DeleteInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAlarmModel
    class DescribeAlarmModel
      def self.parse(http_resp)
        data = Types::DescribeAlarmModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.alarm_model_arn = map['alarmModelArn']
        data.alarm_model_version = map['alarmModelVersion']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.alarm_model_name = map['alarmModelName']
        data.alarm_model_description = map['alarmModelDescription']
        data.role_arn = map['roleArn']
        data.key = map['key']
        data.severity = map['severity']
        data.alarm_rule = (AlarmRule.parse(map['alarmRule']) unless map['alarmRule'].nil?)
        data.alarm_notification = (AlarmNotification.parse(map['alarmNotification']) unless map['alarmNotification'].nil?)
        data.alarm_event_actions = (AlarmEventActions.parse(map['alarmEventActions']) unless map['alarmEventActions'].nil?)
        data.alarm_capabilities = (AlarmCapabilities.parse(map['alarmCapabilities']) unless map['alarmCapabilities'].nil?)
        data
      end
    end

    class AlarmCapabilities
      def self.parse(map)
        data = Types::AlarmCapabilities.new
        data.initialization_configuration = (InitializationConfiguration.parse(map['initializationConfiguration']) unless map['initializationConfiguration'].nil?)
        data.acknowledge_flow = (AcknowledgeFlow.parse(map['acknowledgeFlow']) unless map['acknowledgeFlow'].nil?)
        return data
      end
    end

    class AcknowledgeFlow
      def self.parse(map)
        data = Types::AcknowledgeFlow.new
        data.enabled = map['enabled']
        return data
      end
    end

    class InitializationConfiguration
      def self.parse(map)
        data = Types::InitializationConfiguration.new
        data.disabled_on_initialization = map['disabledOnInitialization']
        return data
      end
    end

    class AlarmEventActions
      def self.parse(map)
        data = Types::AlarmEventActions.new
        data.alarm_actions = (AlarmActions.parse(map['alarmActions']) unless map['alarmActions'].nil?)
        return data
      end
    end

    class AlarmActions
      def self.parse(list)
        data = []
        list.map do |value|
          data << AlarmAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlarmAction
      def self.parse(map)
        data = Types::AlarmAction.new
        data.sns = (SNSTopicPublishAction.parse(map['sns']) unless map['sns'].nil?)
        data.iot_topic_publish = (IotTopicPublishAction.parse(map['iotTopicPublish']) unless map['iotTopicPublish'].nil?)
        data.lambda = (LambdaAction.parse(map['lambda']) unless map['lambda'].nil?)
        data.iot_events = (IotEventsAction.parse(map['iotEvents']) unless map['iotEvents'].nil?)
        data.sqs = (SqsAction.parse(map['sqs']) unless map['sqs'].nil?)
        data.firehose = (FirehoseAction.parse(map['firehose']) unless map['firehose'].nil?)
        data.dynamo_db = (DynamoDBAction.parse(map['dynamoDB']) unless map['dynamoDB'].nil?)
        data.dynamo_d_bv2 = (DynamoDBv2Action.parse(map['dynamoDBv2']) unless map['dynamoDBv2'].nil?)
        data.iot_site_wise = (IotSiteWiseAction.parse(map['iotSiteWise']) unless map['iotSiteWise'].nil?)
        return data
      end
    end

    class IotSiteWiseAction
      def self.parse(map)
        data = Types::IotSiteWiseAction.new
        data.entry_id = map['entryId']
        data.asset_id = map['assetId']
        data.property_id = map['propertyId']
        data.property_alias = map['propertyAlias']
        data.property_value = (AssetPropertyValue.parse(map['propertyValue']) unless map['propertyValue'].nil?)
        return data
      end
    end

    class AssetPropertyValue
      def self.parse(map)
        data = Types::AssetPropertyValue.new
        data.value = (AssetPropertyVariant.parse(map['value']) unless map['value'].nil?)
        data.timestamp = (AssetPropertyTimestamp.parse(map['timestamp']) unless map['timestamp'].nil?)
        data.quality = map['quality']
        return data
      end
    end

    class AssetPropertyTimestamp
      def self.parse(map)
        data = Types::AssetPropertyTimestamp.new
        data.time_in_seconds = map['timeInSeconds']
        data.offset_in_nanos = map['offsetInNanos']
        return data
      end
    end

    class AssetPropertyVariant
      def self.parse(map)
        data = Types::AssetPropertyVariant.new
        data.string_value = map['stringValue']
        data.integer_value = map['integerValue']
        data.double_value = map['doubleValue']
        data.boolean_value = map['booleanValue']
        return data
      end
    end

    class DynamoDBv2Action
      def self.parse(map)
        data = Types::DynamoDBv2Action.new
        data.table_name = map['tableName']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class Payload
      def self.parse(map)
        data = Types::Payload.new
        data.content_expression = map['contentExpression']
        data.type = map['type']
        return data
      end
    end

    class DynamoDBAction
      def self.parse(map)
        data = Types::DynamoDBAction.new
        data.hash_key_type = map['hashKeyType']
        data.hash_key_field = map['hashKeyField']
        data.hash_key_value = map['hashKeyValue']
        data.range_key_type = map['rangeKeyType']
        data.range_key_field = map['rangeKeyField']
        data.range_key_value = map['rangeKeyValue']
        data.operation = map['operation']
        data.payload_field = map['payloadField']
        data.table_name = map['tableName']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class FirehoseAction
      def self.parse(map)
        data = Types::FirehoseAction.new
        data.delivery_stream_name = map['deliveryStreamName']
        data.separator = map['separator']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class SqsAction
      def self.parse(map)
        data = Types::SqsAction.new
        data.queue_url = map['queueUrl']
        data.use_base64 = map['useBase64']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class IotEventsAction
      def self.parse(map)
        data = Types::IotEventsAction.new
        data.input_name = map['inputName']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class LambdaAction
      def self.parse(map)
        data = Types::LambdaAction.new
        data.function_arn = map['functionArn']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class IotTopicPublishAction
      def self.parse(map)
        data = Types::IotTopicPublishAction.new
        data.mqtt_topic = map['mqttTopic']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class SNSTopicPublishAction
      def self.parse(map)
        data = Types::SNSTopicPublishAction.new
        data.target_arn = map['targetArn']
        data.payload = (Payload.parse(map['payload']) unless map['payload'].nil?)
        return data
      end
    end

    class AlarmNotification
      def self.parse(map)
        data = Types::AlarmNotification.new
        data.notification_actions = (NotificationActions.parse(map['notificationActions']) unless map['notificationActions'].nil?)
        return data
      end
    end

    class NotificationActions
      def self.parse(list)
        data = []
        list.map do |value|
          data << NotificationAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class NotificationAction
      def self.parse(map)
        data = Types::NotificationAction.new
        data.action = (NotificationTargetActions.parse(map['action']) unless map['action'].nil?)
        data.sms_configurations = (SMSConfigurations.parse(map['smsConfigurations']) unless map['smsConfigurations'].nil?)
        data.email_configurations = (EmailConfigurations.parse(map['emailConfigurations']) unless map['emailConfigurations'].nil?)
        return data
      end
    end

    class EmailConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << EmailConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class EmailConfiguration
      def self.parse(map)
        data = Types::EmailConfiguration.new
        data.from = map['from']
        data.content = (EmailContent.parse(map['content']) unless map['content'].nil?)
        data.recipients = (EmailRecipients.parse(map['recipients']) unless map['recipients'].nil?)
        return data
      end
    end

    class EmailRecipients
      def self.parse(map)
        data = Types::EmailRecipients.new
        data.to = (RecipientDetails.parse(map['to']) unless map['to'].nil?)
        return data
      end
    end

    class RecipientDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecipientDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecipientDetail
      def self.parse(map)
        data = Types::RecipientDetail.new
        data.sso_identity = (SSOIdentity.parse(map['ssoIdentity']) unless map['ssoIdentity'].nil?)
        return data
      end
    end

    class SSOIdentity
      def self.parse(map)
        data = Types::SSOIdentity.new
        data.identity_store_id = map['identityStoreId']
        data.user_id = map['userId']
        return data
      end
    end

    class EmailContent
      def self.parse(map)
        data = Types::EmailContent.new
        data.subject = map['subject']
        data.additional_message = map['additionalMessage']
        return data
      end
    end

    class SMSConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << SMSConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class SMSConfiguration
      def self.parse(map)
        data = Types::SMSConfiguration.new
        data.sender_id = map['senderId']
        data.additional_message = map['additionalMessage']
        data.recipients = (RecipientDetails.parse(map['recipients']) unless map['recipients'].nil?)
        return data
      end
    end

    class NotificationTargetActions
      def self.parse(map)
        data = Types::NotificationTargetActions.new
        data.lambda_action = (LambdaAction.parse(map['lambdaAction']) unless map['lambdaAction'].nil?)
        return data
      end
    end

    class AlarmRule
      def self.parse(map)
        data = Types::AlarmRule.new
        data.simple_rule = (SimpleRule.parse(map['simpleRule']) unless map['simpleRule'].nil?)
        return data
      end
    end

    class SimpleRule
      def self.parse(map)
        data = Types::SimpleRule.new
        data.input_property = map['inputProperty']
        data.comparison_operator = map['comparisonOperator']
        data.threshold = map['threshold']
        return data
      end
    end

    # Operation Parser for DescribeDetectorModel
    class DescribeDetectorModel
      def self.parse(http_resp)
        data = Types::DescribeDetectorModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_model = (DetectorModel.parse(map['detectorModel']) unless map['detectorModel'].nil?)
        data
      end
    end

    class DetectorModel
      def self.parse(map)
        data = Types::DetectorModel.new
        data.detector_model_definition = (DetectorModelDefinition.parse(map['detectorModelDefinition']) unless map['detectorModelDefinition'].nil?)
        data.detector_model_configuration = (DetectorModelConfiguration.parse(map['detectorModelConfiguration']) unless map['detectorModelConfiguration'].nil?)
        return data
      end
    end

    class DetectorModelDefinition
      def self.parse(map)
        data = Types::DetectorModelDefinition.new
        data.states = (States.parse(map['states']) unless map['states'].nil?)
        data.initial_state_name = map['initialStateName']
        return data
      end
    end

    class States
      def self.parse(list)
        data = []
        list.map do |value|
          data << State.parse(value) unless value.nil?
        end
        data
      end
    end

    class State
      def self.parse(map)
        data = Types::State.new
        data.state_name = map['stateName']
        data.on_input = (OnInputLifecycle.parse(map['onInput']) unless map['onInput'].nil?)
        data.on_enter = (OnEnterLifecycle.parse(map['onEnter']) unless map['onEnter'].nil?)
        data.on_exit = (OnExitLifecycle.parse(map['onExit']) unless map['onExit'].nil?)
        return data
      end
    end

    class OnExitLifecycle
      def self.parse(map)
        data = Types::OnExitLifecycle.new
        data.events = (Events.parse(map['events']) unless map['events'].nil?)
        return data
      end
    end

    class Events
      def self.parse(list)
        data = []
        list.map do |value|
          data << Event.parse(value) unless value.nil?
        end
        data
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.event_name = map['eventName']
        data.condition = map['condition']
        data.actions = (Actions.parse(map['actions']) unless map['actions'].nil?)
        return data
      end
    end

    class Actions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Action.parse(value) unless value.nil?
        end
        data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.set_variable = (SetVariableAction.parse(map['setVariable']) unless map['setVariable'].nil?)
        data.sns = (SNSTopicPublishAction.parse(map['sns']) unless map['sns'].nil?)
        data.iot_topic_publish = (IotTopicPublishAction.parse(map['iotTopicPublish']) unless map['iotTopicPublish'].nil?)
        data.set_timer = (SetTimerAction.parse(map['setTimer']) unless map['setTimer'].nil?)
        data.clear_timer = (ClearTimerAction.parse(map['clearTimer']) unless map['clearTimer'].nil?)
        data.reset_timer = (ResetTimerAction.parse(map['resetTimer']) unless map['resetTimer'].nil?)
        data.lambda = (LambdaAction.parse(map['lambda']) unless map['lambda'].nil?)
        data.iot_events = (IotEventsAction.parse(map['iotEvents']) unless map['iotEvents'].nil?)
        data.sqs = (SqsAction.parse(map['sqs']) unless map['sqs'].nil?)
        data.firehose = (FirehoseAction.parse(map['firehose']) unless map['firehose'].nil?)
        data.dynamo_db = (DynamoDBAction.parse(map['dynamoDB']) unless map['dynamoDB'].nil?)
        data.dynamo_d_bv2 = (DynamoDBv2Action.parse(map['dynamoDBv2']) unless map['dynamoDBv2'].nil?)
        data.iot_site_wise = (IotSiteWiseAction.parse(map['iotSiteWise']) unless map['iotSiteWise'].nil?)
        return data
      end
    end

    class ResetTimerAction
      def self.parse(map)
        data = Types::ResetTimerAction.new
        data.timer_name = map['timerName']
        return data
      end
    end

    class ClearTimerAction
      def self.parse(map)
        data = Types::ClearTimerAction.new
        data.timer_name = map['timerName']
        return data
      end
    end

    class SetTimerAction
      def self.parse(map)
        data = Types::SetTimerAction.new
        data.timer_name = map['timerName']
        data.seconds = map['seconds']
        data.duration_expression = map['durationExpression']
        return data
      end
    end

    class SetVariableAction
      def self.parse(map)
        data = Types::SetVariableAction.new
        data.variable_name = map['variableName']
        data.value = map['value']
        return data
      end
    end

    class OnEnterLifecycle
      def self.parse(map)
        data = Types::OnEnterLifecycle.new
        data.events = (Events.parse(map['events']) unless map['events'].nil?)
        return data
      end
    end

    class OnInputLifecycle
      def self.parse(map)
        data = Types::OnInputLifecycle.new
        data.events = (Events.parse(map['events']) unless map['events'].nil?)
        data.transition_events = (TransitionEvents.parse(map['transitionEvents']) unless map['transitionEvents'].nil?)
        return data
      end
    end

    class TransitionEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << TransitionEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class TransitionEvent
      def self.parse(map)
        data = Types::TransitionEvent.new
        data.event_name = map['eventName']
        data.condition = map['condition']
        data.actions = (Actions.parse(map['actions']) unless map['actions'].nil?)
        data.next_state = map['nextState']
        return data
      end
    end

    # Operation Parser for DescribeDetectorModelAnalysis
    class DescribeDetectorModelAnalysis
      def self.parse(http_resp)
        data = Types::DescribeDetectorModelAnalysisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DescribeInput
    class DescribeInput
      def self.parse(http_resp)
        data = Types::DescribeInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input = (Input.parse(map['input']) unless map['input'].nil?)
        data
      end
    end

    class Input
      def self.parse(map)
        data = Types::Input.new
        data.input_configuration = (InputConfiguration.parse(map['inputConfiguration']) unless map['inputConfiguration'].nil?)
        data.input_definition = (InputDefinition.parse(map['inputDefinition']) unless map['inputDefinition'].nil?)
        return data
      end
    end

    class InputDefinition
      def self.parse(map)
        data = Types::InputDefinition.new
        data.attributes = (Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class Attributes
      def self.parse(list)
        data = []
        list.map do |value|
          data << Attribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.json_path = map['jsonPath']
        return data
      end
    end

    # Operation Parser for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.parse(http_resp)
        data = Types::DescribeLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.logging_options = (LoggingOptions.parse(map['loggingOptions']) unless map['loggingOptions'].nil?)
        data
      end
    end

    class LoggingOptions
      def self.parse(map)
        data = Types::LoggingOptions.new
        data.role_arn = map['roleArn']
        data.level = map['level']
        data.enabled = map['enabled']
        data.detector_debug_options = (DetectorDebugOptions.parse(map['detectorDebugOptions']) unless map['detectorDebugOptions'].nil?)
        return data
      end
    end

    class DetectorDebugOptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << DetectorDebugOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class DetectorDebugOption
      def self.parse(map)
        data = Types::DetectorDebugOption.new
        data.detector_model_name = map['detectorModelName']
        data.key_value = map['keyValue']
        return data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetDetectorModelAnalysisResults
    class GetDetectorModelAnalysisResults
      def self.parse(http_resp)
        data = Types::GetDetectorModelAnalysisResultsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.analysis_results = (AnalysisResults.parse(map['analysisResults']) unless map['analysisResults'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AnalysisResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << AnalysisResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnalysisResult
      def self.parse(map)
        data = Types::AnalysisResult.new
        data.type = map['type']
        data.level = map['level']
        data.message = map['message'] || map['Message']
        data.locations = (AnalysisResultLocations.parse(map['locations']) unless map['locations'].nil?)
        return data
      end
    end

    class AnalysisResultLocations
      def self.parse(list)
        data = []
        list.map do |value|
          data << AnalysisResultLocation.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnalysisResultLocation
      def self.parse(map)
        data = Types::AnalysisResultLocation.new
        data.path = map['path']
        return data
      end
    end

    # Operation Parser for ListAlarmModelVersions
    class ListAlarmModelVersions
      def self.parse(http_resp)
        data = Types::ListAlarmModelVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alarm_model_version_summaries = (AlarmModelVersionSummaries.parse(map['alarmModelVersionSummaries']) unless map['alarmModelVersionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AlarmModelVersionSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AlarmModelVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlarmModelVersionSummary
      def self.parse(map)
        data = Types::AlarmModelVersionSummary.new
        data.alarm_model_name = map['alarmModelName']
        data.alarm_model_arn = map['alarmModelArn']
        data.alarm_model_version = map['alarmModelVersion']
        data.role_arn = map['roleArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        data.status_message = map['statusMessage']
        return data
      end
    end

    # Operation Parser for ListAlarmModels
    class ListAlarmModels
      def self.parse(http_resp)
        data = Types::ListAlarmModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alarm_model_summaries = (AlarmModelSummaries.parse(map['alarmModelSummaries']) unless map['alarmModelSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AlarmModelSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AlarmModelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlarmModelSummary
      def self.parse(map)
        data = Types::AlarmModelSummary.new
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.alarm_model_description = map['alarmModelDescription']
        data.alarm_model_name = map['alarmModelName']
        return data
      end
    end

    # Operation Parser for ListDetectorModelVersions
    class ListDetectorModelVersions
      def self.parse(http_resp)
        data = Types::ListDetectorModelVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_model_version_summaries = (DetectorModelVersionSummaries.parse(map['detectorModelVersionSummaries']) unless map['detectorModelVersionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectorModelVersionSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DetectorModelVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DetectorModelVersionSummary
      def self.parse(map)
        data = Types::DetectorModelVersionSummary.new
        data.detector_model_name = map['detectorModelName']
        data.detector_model_version = map['detectorModelVersion']
        data.detector_model_arn = map['detectorModelArn']
        data.role_arn = map['roleArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        data.evaluation_method = map['evaluationMethod']
        return data
      end
    end

    # Operation Parser for ListDetectorModels
    class ListDetectorModels
      def self.parse(http_resp)
        data = Types::ListDetectorModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_model_summaries = (DetectorModelSummaries.parse(map['detectorModelSummaries']) unless map['detectorModelSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectorModelSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DetectorModelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DetectorModelSummary
      def self.parse(map)
        data = Types::DetectorModelSummary.new
        data.detector_model_name = map['detectorModelName']
        data.detector_model_description = map['detectorModelDescription']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        return data
      end
    end

    # Operation Parser for ListInputRoutings
    class ListInputRoutings
      def self.parse(http_resp)
        data = Types::ListInputRoutingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routed_resources = (RoutedResources.parse(map['routedResources']) unless map['routedResources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RoutedResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << RoutedResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class RoutedResource
      def self.parse(map)
        data = Types::RoutedResource.new
        data.name = map['name']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for ListInputs
    class ListInputs
      def self.parse(http_resp)
        data = Types::ListInputsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input_summaries = (InputSummaries.parse(map['inputSummaries']) unless map['inputSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InputSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << InputSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputSummary
      def self.parse(map)
        data = Types::InputSummary.new
        data.input_name = map['inputName']
        data.input_description = map['inputDescription']
        data.input_arn = map['inputArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for PutLoggingOptions
    class PutLoggingOptions
      def self.parse(http_resp)
        data = Types::PutLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartDetectorModelAnalysis
    class StartDetectorModelAnalysis
      def self.parse(http_resp)
        data = Types::StartDetectorModelAnalysisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.analysis_id = map['analysisId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAlarmModel
    class UpdateAlarmModel
      def self.parse(http_resp)
        data = Types::UpdateAlarmModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.alarm_model_arn = map['alarmModelArn']
        data.alarm_model_version = map['alarmModelVersion']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for UpdateDetectorModel
    class UpdateDetectorModel
      def self.parse(http_resp)
        data = Types::UpdateDetectorModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_model_configuration = (DetectorModelConfiguration.parse(map['detectorModelConfiguration']) unless map['detectorModelConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateInput
    class UpdateInput
      def self.parse(http_resp)
        data = Types::UpdateInputOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.input_configuration = (InputConfiguration.parse(map['inputConfiguration']) unless map['inputConfiguration'].nil?)
        data
      end
    end
  end
end
