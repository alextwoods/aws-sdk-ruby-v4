# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTEvents
  module Stubs

    # Operation Stubber for CreateAlarmModel
    class CreateAlarmModel
      def self.default(visited=[])
        {
          creation_time: Time.now,
          alarm_model_arn: 'alarm_model_arn',
          alarm_model_version: 'alarm_model_version',
          last_update_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['alarmModelArn'] = stub[:alarm_model_arn] unless stub[:alarm_model_arn].nil?
        data['alarmModelVersion'] = stub[:alarm_model_version] unless stub[:alarm_model_version].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDetectorModel
    class CreateDetectorModel
      def self.default(visited=[])
        {
          detector_model_configuration: Stubs::DetectorModelConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorModelConfiguration'] = Stubs::DetectorModelConfiguration.stub(stub[:detector_model_configuration]) unless stub[:detector_model_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DetectorModelConfiguration
    class DetectorModelConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DetectorModelConfiguration')
        visited = visited + ['DetectorModelConfiguration']
        {
          detector_model_name: 'detector_model_name',
          detector_model_version: 'detector_model_version',
          detector_model_description: 'detector_model_description',
          detector_model_arn: 'detector_model_arn',
          role_arn: 'role_arn',
          creation_time: Time.now,
          last_update_time: Time.now,
          status: 'status',
          key: 'key',
          evaluation_method: 'evaluation_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorModelConfiguration.new
        data = {}
        data['detectorModelName'] = stub[:detector_model_name] unless stub[:detector_model_name].nil?
        data['detectorModelVersion'] = stub[:detector_model_version] unless stub[:detector_model_version].nil?
        data['detectorModelDescription'] = stub[:detector_model_description] unless stub[:detector_model_description].nil?
        data['detectorModelArn'] = stub[:detector_model_arn] unless stub[:detector_model_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['evaluationMethod'] = stub[:evaluation_method] unless stub[:evaluation_method].nil?
        data
      end
    end

    # Operation Stubber for CreateInput
    class CreateInput
      def self.default(visited=[])
        {
          input_configuration: Stubs::InputConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputConfiguration'] = Stubs::InputConfiguration.stub(stub[:input_configuration]) unless stub[:input_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InputConfiguration
    class InputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InputConfiguration')
        visited = visited + ['InputConfiguration']
        {
          input_name: 'input_name',
          input_description: 'input_description',
          input_arn: 'input_arn',
          creation_time: Time.now,
          last_update_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputConfiguration.new
        data = {}
        data['inputName'] = stub[:input_name] unless stub[:input_name].nil?
        data['inputDescription'] = stub[:input_description] unless stub[:input_description].nil?
        data['inputArn'] = stub[:input_arn] unless stub[:input_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DeleteAlarmModel
    class DeleteAlarmModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDetectorModel
    class DeleteDetectorModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteInput
    class DeleteInput
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAlarmModel
    class DescribeAlarmModel
      def self.default(visited=[])
        {
          creation_time: Time.now,
          alarm_model_arn: 'alarm_model_arn',
          alarm_model_version: 'alarm_model_version',
          last_update_time: Time.now,
          status: 'status',
          status_message: 'status_message',
          alarm_model_name: 'alarm_model_name',
          alarm_model_description: 'alarm_model_description',
          role_arn: 'role_arn',
          key: 'key',
          severity: 1,
          alarm_rule: Stubs::AlarmRule.default(visited),
          alarm_notification: Stubs::AlarmNotification.default(visited),
          alarm_event_actions: Stubs::AlarmEventActions.default(visited),
          alarm_capabilities: Stubs::AlarmCapabilities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['alarmModelArn'] = stub[:alarm_model_arn] unless stub[:alarm_model_arn].nil?
        data['alarmModelVersion'] = stub[:alarm_model_version] unless stub[:alarm_model_version].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['alarmModelName'] = stub[:alarm_model_name] unless stub[:alarm_model_name].nil?
        data['alarmModelDescription'] = stub[:alarm_model_description] unless stub[:alarm_model_description].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['alarmRule'] = Stubs::AlarmRule.stub(stub[:alarm_rule]) unless stub[:alarm_rule].nil?
        data['alarmNotification'] = Stubs::AlarmNotification.stub(stub[:alarm_notification]) unless stub[:alarm_notification].nil?
        data['alarmEventActions'] = Stubs::AlarmEventActions.stub(stub[:alarm_event_actions]) unless stub[:alarm_event_actions].nil?
        data['alarmCapabilities'] = Stubs::AlarmCapabilities.stub(stub[:alarm_capabilities]) unless stub[:alarm_capabilities].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AlarmCapabilities
    class AlarmCapabilities
      def self.default(visited=[])
        return nil if visited.include?('AlarmCapabilities')
        visited = visited + ['AlarmCapabilities']
        {
          initialization_configuration: Stubs::InitializationConfiguration.default(visited),
          acknowledge_flow: Stubs::AcknowledgeFlow.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmCapabilities.new
        data = {}
        data['initializationConfiguration'] = Stubs::InitializationConfiguration.stub(stub[:initialization_configuration]) unless stub[:initialization_configuration].nil?
        data['acknowledgeFlow'] = Stubs::AcknowledgeFlow.stub(stub[:acknowledge_flow]) unless stub[:acknowledge_flow].nil?
        data
      end
    end

    # Structure Stubber for AcknowledgeFlow
    class AcknowledgeFlow
      def self.default(visited=[])
        return nil if visited.include?('AcknowledgeFlow')
        visited = visited + ['AcknowledgeFlow']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AcknowledgeFlow.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for InitializationConfiguration
    class InitializationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InitializationConfiguration')
        visited = visited + ['InitializationConfiguration']
        {
          disabled_on_initialization: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InitializationConfiguration.new
        data = {}
        data['disabledOnInitialization'] = stub[:disabled_on_initialization] unless stub[:disabled_on_initialization].nil?
        data
      end
    end

    # Structure Stubber for AlarmEventActions
    class AlarmEventActions
      def self.default(visited=[])
        return nil if visited.include?('AlarmEventActions')
        visited = visited + ['AlarmEventActions']
        {
          alarm_actions: Stubs::AlarmActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmEventActions.new
        data = {}
        data['alarmActions'] = Stubs::AlarmActions.stub(stub[:alarm_actions]) unless stub[:alarm_actions].nil?
        data
      end
    end

    # List Stubber for AlarmActions
    class AlarmActions
      def self.default(visited=[])
        return nil if visited.include?('AlarmActions')
        visited = visited + ['AlarmActions']
        [
          Stubs::AlarmAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlarmAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlarmAction
    class AlarmAction
      def self.default(visited=[])
        return nil if visited.include?('AlarmAction')
        visited = visited + ['AlarmAction']
        {
          sns: Stubs::SNSTopicPublishAction.default(visited),
          iot_topic_publish: Stubs::IotTopicPublishAction.default(visited),
          lambda: Stubs::LambdaAction.default(visited),
          iot_events: Stubs::IotEventsAction.default(visited),
          sqs: Stubs::SqsAction.default(visited),
          firehose: Stubs::FirehoseAction.default(visited),
          dynamo_db: Stubs::DynamoDBAction.default(visited),
          dynamo_d_bv2: Stubs::DynamoDBv2Action.default(visited),
          iot_site_wise: Stubs::IotSiteWiseAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmAction.new
        data = {}
        data['sns'] = Stubs::SNSTopicPublishAction.stub(stub[:sns]) unless stub[:sns].nil?
        data['iotTopicPublish'] = Stubs::IotTopicPublishAction.stub(stub[:iot_topic_publish]) unless stub[:iot_topic_publish].nil?
        data['lambda'] = Stubs::LambdaAction.stub(stub[:lambda]) unless stub[:lambda].nil?
        data['iotEvents'] = Stubs::IotEventsAction.stub(stub[:iot_events]) unless stub[:iot_events].nil?
        data['sqs'] = Stubs::SqsAction.stub(stub[:sqs]) unless stub[:sqs].nil?
        data['firehose'] = Stubs::FirehoseAction.stub(stub[:firehose]) unless stub[:firehose].nil?
        data['dynamoDB'] = Stubs::DynamoDBAction.stub(stub[:dynamo_db]) unless stub[:dynamo_db].nil?
        data['dynamoDBv2'] = Stubs::DynamoDBv2Action.stub(stub[:dynamo_d_bv2]) unless stub[:dynamo_d_bv2].nil?
        data['iotSiteWise'] = Stubs::IotSiteWiseAction.stub(stub[:iot_site_wise]) unless stub[:iot_site_wise].nil?
        data
      end
    end

    # Structure Stubber for IotSiteWiseAction
    class IotSiteWiseAction
      def self.default(visited=[])
        return nil if visited.include?('IotSiteWiseAction')
        visited = visited + ['IotSiteWiseAction']
        {
          entry_id: 'entry_id',
          asset_id: 'asset_id',
          property_id: 'property_id',
          property_alias: 'property_alias',
          property_value: Stubs::AssetPropertyValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IotSiteWiseAction.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['propertyId'] = stub[:property_id] unless stub[:property_id].nil?
        data['propertyAlias'] = stub[:property_alias] unless stub[:property_alias].nil?
        data['propertyValue'] = Stubs::AssetPropertyValue.stub(stub[:property_value]) unless stub[:property_value].nil?
        data
      end
    end

    # Structure Stubber for AssetPropertyValue
    class AssetPropertyValue
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyValue')
        visited = visited + ['AssetPropertyValue']
        {
          value: Stubs::AssetPropertyVariant.default(visited),
          timestamp: Stubs::AssetPropertyTimestamp.default(visited),
          quality: 'quality',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetPropertyValue.new
        data = {}
        data['value'] = Stubs::AssetPropertyVariant.stub(stub[:value]) unless stub[:value].nil?
        data['timestamp'] = Stubs::AssetPropertyTimestamp.stub(stub[:timestamp]) unless stub[:timestamp].nil?
        data['quality'] = stub[:quality] unless stub[:quality].nil?
        data
      end
    end

    # Structure Stubber for AssetPropertyTimestamp
    class AssetPropertyTimestamp
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyTimestamp')
        visited = visited + ['AssetPropertyTimestamp']
        {
          time_in_seconds: 'time_in_seconds',
          offset_in_nanos: 'offset_in_nanos',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetPropertyTimestamp.new
        data = {}
        data['timeInSeconds'] = stub[:time_in_seconds] unless stub[:time_in_seconds].nil?
        data['offsetInNanos'] = stub[:offset_in_nanos] unless stub[:offset_in_nanos].nil?
        data
      end
    end

    # Structure Stubber for AssetPropertyVariant
    class AssetPropertyVariant
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyVariant')
        visited = visited + ['AssetPropertyVariant']
        {
          string_value: 'string_value',
          integer_value: 'integer_value',
          double_value: 'double_value',
          boolean_value: 'boolean_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetPropertyVariant.new
        data = {}
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data['integerValue'] = stub[:integer_value] unless stub[:integer_value].nil?
        data['doubleValue'] = stub[:double_value] unless stub[:double_value].nil?
        data['booleanValue'] = stub[:boolean_value] unless stub[:boolean_value].nil?
        data
      end
    end

    # Structure Stubber for DynamoDBv2Action
    class DynamoDBv2Action
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBv2Action')
        visited = visited + ['DynamoDBv2Action']
        {
          table_name: 'table_name',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDBv2Action.new
        data = {}
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for Payload
    class Payload
      def self.default(visited=[])
        return nil if visited.include?('Payload')
        visited = visited + ['Payload']
        {
          content_expression: 'content_expression',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Payload.new
        data = {}
        data['contentExpression'] = stub[:content_expression] unless stub[:content_expression].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for DynamoDBAction
    class DynamoDBAction
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBAction')
        visited = visited + ['DynamoDBAction']
        {
          hash_key_type: 'hash_key_type',
          hash_key_field: 'hash_key_field',
          hash_key_value: 'hash_key_value',
          range_key_type: 'range_key_type',
          range_key_field: 'range_key_field',
          range_key_value: 'range_key_value',
          operation: 'operation',
          payload_field: 'payload_field',
          table_name: 'table_name',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDBAction.new
        data = {}
        data['hashKeyType'] = stub[:hash_key_type] unless stub[:hash_key_type].nil?
        data['hashKeyField'] = stub[:hash_key_field] unless stub[:hash_key_field].nil?
        data['hashKeyValue'] = stub[:hash_key_value] unless stub[:hash_key_value].nil?
        data['rangeKeyType'] = stub[:range_key_type] unless stub[:range_key_type].nil?
        data['rangeKeyField'] = stub[:range_key_field] unless stub[:range_key_field].nil?
        data['rangeKeyValue'] = stub[:range_key_value] unless stub[:range_key_value].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['payloadField'] = stub[:payload_field] unless stub[:payload_field].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for FirehoseAction
    class FirehoseAction
      def self.default(visited=[])
        return nil if visited.include?('FirehoseAction')
        visited = visited + ['FirehoseAction']
        {
          delivery_stream_name: 'delivery_stream_name',
          separator: 'separator',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirehoseAction.new
        data = {}
        data['deliveryStreamName'] = stub[:delivery_stream_name] unless stub[:delivery_stream_name].nil?
        data['separator'] = stub[:separator] unless stub[:separator].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for SqsAction
    class SqsAction
      def self.default(visited=[])
        return nil if visited.include?('SqsAction')
        visited = visited + ['SqsAction']
        {
          queue_url: 'queue_url',
          use_base64: false,
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SqsAction.new
        data = {}
        data['queueUrl'] = stub[:queue_url] unless stub[:queue_url].nil?
        data['useBase64'] = stub[:use_base64] unless stub[:use_base64].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for IotEventsAction
    class IotEventsAction
      def self.default(visited=[])
        return nil if visited.include?('IotEventsAction')
        visited = visited + ['IotEventsAction']
        {
          input_name: 'input_name',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IotEventsAction.new
        data = {}
        data['inputName'] = stub[:input_name] unless stub[:input_name].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for LambdaAction
    class LambdaAction
      def self.default(visited=[])
        return nil if visited.include?('LambdaAction')
        visited = visited + ['LambdaAction']
        {
          function_arn: 'function_arn',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaAction.new
        data = {}
        data['functionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for IotTopicPublishAction
    class IotTopicPublishAction
      def self.default(visited=[])
        return nil if visited.include?('IotTopicPublishAction')
        visited = visited + ['IotTopicPublishAction']
        {
          mqtt_topic: 'mqtt_topic',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IotTopicPublishAction.new
        data = {}
        data['mqttTopic'] = stub[:mqtt_topic] unless stub[:mqtt_topic].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for SNSTopicPublishAction
    class SNSTopicPublishAction
      def self.default(visited=[])
        return nil if visited.include?('SNSTopicPublishAction')
        visited = visited + ['SNSTopicPublishAction']
        {
          target_arn: 'target_arn',
          payload: Stubs::Payload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SNSTopicPublishAction.new
        data = {}
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['payload'] = Stubs::Payload.stub(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for AlarmNotification
    class AlarmNotification
      def self.default(visited=[])
        return nil if visited.include?('AlarmNotification')
        visited = visited + ['AlarmNotification']
        {
          notification_actions: Stubs::NotificationActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmNotification.new
        data = {}
        data['notificationActions'] = Stubs::NotificationActions.stub(stub[:notification_actions]) unless stub[:notification_actions].nil?
        data
      end
    end

    # List Stubber for NotificationActions
    class NotificationActions
      def self.default(visited=[])
        return nil if visited.include?('NotificationActions')
        visited = visited + ['NotificationActions']
        [
          Stubs::NotificationAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotificationAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotificationAction
    class NotificationAction
      def self.default(visited=[])
        return nil if visited.include?('NotificationAction')
        visited = visited + ['NotificationAction']
        {
          action: Stubs::NotificationTargetActions.default(visited),
          sms_configurations: Stubs::SMSConfigurations.default(visited),
          email_configurations: Stubs::EmailConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationAction.new
        data = {}
        data['action'] = Stubs::NotificationTargetActions.stub(stub[:action]) unless stub[:action].nil?
        data['smsConfigurations'] = Stubs::SMSConfigurations.stub(stub[:sms_configurations]) unless stub[:sms_configurations].nil?
        data['emailConfigurations'] = Stubs::EmailConfigurations.stub(stub[:email_configurations]) unless stub[:email_configurations].nil?
        data
      end
    end

    # List Stubber for EmailConfigurations
    class EmailConfigurations
      def self.default(visited=[])
        return nil if visited.include?('EmailConfigurations')
        visited = visited + ['EmailConfigurations']
        [
          Stubs::EmailConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EmailConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EmailConfiguration
    class EmailConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EmailConfiguration')
        visited = visited + ['EmailConfiguration']
        {
          from: 'from',
          content: Stubs::EmailContent.default(visited),
          recipients: Stubs::EmailRecipients.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailConfiguration.new
        data = {}
        data['from'] = stub[:from] unless stub[:from].nil?
        data['content'] = Stubs::EmailContent.stub(stub[:content]) unless stub[:content].nil?
        data['recipients'] = Stubs::EmailRecipients.stub(stub[:recipients]) unless stub[:recipients].nil?
        data
      end
    end

    # Structure Stubber for EmailRecipients
    class EmailRecipients
      def self.default(visited=[])
        return nil if visited.include?('EmailRecipients')
        visited = visited + ['EmailRecipients']
        {
          to: Stubs::RecipientDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailRecipients.new
        data = {}
        data['to'] = Stubs::RecipientDetails.stub(stub[:to]) unless stub[:to].nil?
        data
      end
    end

    # List Stubber for RecipientDetails
    class RecipientDetails
      def self.default(visited=[])
        return nil if visited.include?('RecipientDetails')
        visited = visited + ['RecipientDetails']
        [
          Stubs::RecipientDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecipientDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecipientDetail
    class RecipientDetail
      def self.default(visited=[])
        return nil if visited.include?('RecipientDetail')
        visited = visited + ['RecipientDetail']
        {
          sso_identity: Stubs::SSOIdentity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecipientDetail.new
        data = {}
        data['ssoIdentity'] = Stubs::SSOIdentity.stub(stub[:sso_identity]) unless stub[:sso_identity].nil?
        data
      end
    end

    # Structure Stubber for SSOIdentity
    class SSOIdentity
      def self.default(visited=[])
        return nil if visited.include?('SSOIdentity')
        visited = visited + ['SSOIdentity']
        {
          identity_store_id: 'identity_store_id',
          user_id: 'user_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SSOIdentity.new
        data = {}
        data['identityStoreId'] = stub[:identity_store_id] unless stub[:identity_store_id].nil?
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        data
      end
    end

    # Structure Stubber for EmailContent
    class EmailContent
      def self.default(visited=[])
        return nil if visited.include?('EmailContent')
        visited = visited + ['EmailContent']
        {
          subject: 'subject',
          additional_message: 'additional_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailContent.new
        data = {}
        data['subject'] = stub[:subject] unless stub[:subject].nil?
        data['additionalMessage'] = stub[:additional_message] unless stub[:additional_message].nil?
        data
      end
    end

    # List Stubber for SMSConfigurations
    class SMSConfigurations
      def self.default(visited=[])
        return nil if visited.include?('SMSConfigurations')
        visited = visited + ['SMSConfigurations']
        [
          Stubs::SMSConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SMSConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SMSConfiguration
    class SMSConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SMSConfiguration')
        visited = visited + ['SMSConfiguration']
        {
          sender_id: 'sender_id',
          additional_message: 'additional_message',
          recipients: Stubs::RecipientDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SMSConfiguration.new
        data = {}
        data['senderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        data['additionalMessage'] = stub[:additional_message] unless stub[:additional_message].nil?
        data['recipients'] = Stubs::RecipientDetails.stub(stub[:recipients]) unless stub[:recipients].nil?
        data
      end
    end

    # Structure Stubber for NotificationTargetActions
    class NotificationTargetActions
      def self.default(visited=[])
        return nil if visited.include?('NotificationTargetActions')
        visited = visited + ['NotificationTargetActions']
        {
          lambda_action: Stubs::LambdaAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationTargetActions.new
        data = {}
        data['lambdaAction'] = Stubs::LambdaAction.stub(stub[:lambda_action]) unless stub[:lambda_action].nil?
        data
      end
    end

    # Structure Stubber for AlarmRule
    class AlarmRule
      def self.default(visited=[])
        return nil if visited.include?('AlarmRule')
        visited = visited + ['AlarmRule']
        {
          simple_rule: Stubs::SimpleRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmRule.new
        data = {}
        data['simpleRule'] = Stubs::SimpleRule.stub(stub[:simple_rule]) unless stub[:simple_rule].nil?
        data
      end
    end

    # Structure Stubber for SimpleRule
    class SimpleRule
      def self.default(visited=[])
        return nil if visited.include?('SimpleRule')
        visited = visited + ['SimpleRule']
        {
          input_property: 'input_property',
          comparison_operator: 'comparison_operator',
          threshold: 'threshold',
        }
      end

      def self.stub(stub)
        stub ||= Types::SimpleRule.new
        data = {}
        data['inputProperty'] = stub[:input_property] unless stub[:input_property].nil?
        data['comparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['threshold'] = stub[:threshold] unless stub[:threshold].nil?
        data
      end
    end

    # Operation Stubber for DescribeDetectorModel
    class DescribeDetectorModel
      def self.default(visited=[])
        {
          detector_model: Stubs::DetectorModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorModel'] = Stubs::DetectorModel.stub(stub[:detector_model]) unless stub[:detector_model].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DetectorModel
    class DetectorModel
      def self.default(visited=[])
        return nil if visited.include?('DetectorModel')
        visited = visited + ['DetectorModel']
        {
          detector_model_definition: Stubs::DetectorModelDefinition.default(visited),
          detector_model_configuration: Stubs::DetectorModelConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorModel.new
        data = {}
        data['detectorModelDefinition'] = Stubs::DetectorModelDefinition.stub(stub[:detector_model_definition]) unless stub[:detector_model_definition].nil?
        data['detectorModelConfiguration'] = Stubs::DetectorModelConfiguration.stub(stub[:detector_model_configuration]) unless stub[:detector_model_configuration].nil?
        data
      end
    end

    # Structure Stubber for DetectorModelDefinition
    class DetectorModelDefinition
      def self.default(visited=[])
        return nil if visited.include?('DetectorModelDefinition')
        visited = visited + ['DetectorModelDefinition']
        {
          states: Stubs::States.default(visited),
          initial_state_name: 'initial_state_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorModelDefinition.new
        data = {}
        data['states'] = Stubs::States.stub(stub[:states]) unless stub[:states].nil?
        data['initialStateName'] = stub[:initial_state_name] unless stub[:initial_state_name].nil?
        data
      end
    end

    # List Stubber for States
    class States
      def self.default(visited=[])
        return nil if visited.include?('States')
        visited = visited + ['States']
        [
          Stubs::State.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::State.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for State
    class State
      def self.default(visited=[])
        return nil if visited.include?('State')
        visited = visited + ['State']
        {
          state_name: 'state_name',
          on_input: Stubs::OnInputLifecycle.default(visited),
          on_enter: Stubs::OnEnterLifecycle.default(visited),
          on_exit: Stubs::OnExitLifecycle.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::State.new
        data = {}
        data['stateName'] = stub[:state_name] unless stub[:state_name].nil?
        data['onInput'] = Stubs::OnInputLifecycle.stub(stub[:on_input]) unless stub[:on_input].nil?
        data['onEnter'] = Stubs::OnEnterLifecycle.stub(stub[:on_enter]) unless stub[:on_enter].nil?
        data['onExit'] = Stubs::OnExitLifecycle.stub(stub[:on_exit]) unless stub[:on_exit].nil?
        data
      end
    end

    # Structure Stubber for OnExitLifecycle
    class OnExitLifecycle
      def self.default(visited=[])
        return nil if visited.include?('OnExitLifecycle')
        visited = visited + ['OnExitLifecycle']
        {
          events: Stubs::Events.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnExitLifecycle.new
        data = {}
        data['events'] = Stubs::Events.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for Events
    class Events
      def self.default(visited=[])
        return nil if visited.include?('Events')
        visited = visited + ['Events']
        [
          Stubs::Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          event_name: 'event_name',
          condition: 'condition',
          actions: Stubs::Actions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['eventName'] = stub[:event_name] unless stub[:event_name].nil?
        data['condition'] = stub[:condition] unless stub[:condition].nil?
        data['actions'] = Stubs::Actions.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # List Stubber for Actions
    class Actions
      def self.default(visited=[])
        return nil if visited.include?('Actions')
        visited = visited + ['Actions']
        [
          Stubs::Action.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Action.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          set_variable: Stubs::SetVariableAction.default(visited),
          sns: Stubs::SNSTopicPublishAction.default(visited),
          iot_topic_publish: Stubs::IotTopicPublishAction.default(visited),
          set_timer: Stubs::SetTimerAction.default(visited),
          clear_timer: Stubs::ClearTimerAction.default(visited),
          reset_timer: Stubs::ResetTimerAction.default(visited),
          lambda: Stubs::LambdaAction.default(visited),
          iot_events: Stubs::IotEventsAction.default(visited),
          sqs: Stubs::SqsAction.default(visited),
          firehose: Stubs::FirehoseAction.default(visited),
          dynamo_db: Stubs::DynamoDBAction.default(visited),
          dynamo_d_bv2: Stubs::DynamoDBv2Action.default(visited),
          iot_site_wise: Stubs::IotSiteWiseAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['setVariable'] = Stubs::SetVariableAction.stub(stub[:set_variable]) unless stub[:set_variable].nil?
        data['sns'] = Stubs::SNSTopicPublishAction.stub(stub[:sns]) unless stub[:sns].nil?
        data['iotTopicPublish'] = Stubs::IotTopicPublishAction.stub(stub[:iot_topic_publish]) unless stub[:iot_topic_publish].nil?
        data['setTimer'] = Stubs::SetTimerAction.stub(stub[:set_timer]) unless stub[:set_timer].nil?
        data['clearTimer'] = Stubs::ClearTimerAction.stub(stub[:clear_timer]) unless stub[:clear_timer].nil?
        data['resetTimer'] = Stubs::ResetTimerAction.stub(stub[:reset_timer]) unless stub[:reset_timer].nil?
        data['lambda'] = Stubs::LambdaAction.stub(stub[:lambda]) unless stub[:lambda].nil?
        data['iotEvents'] = Stubs::IotEventsAction.stub(stub[:iot_events]) unless stub[:iot_events].nil?
        data['sqs'] = Stubs::SqsAction.stub(stub[:sqs]) unless stub[:sqs].nil?
        data['firehose'] = Stubs::FirehoseAction.stub(stub[:firehose]) unless stub[:firehose].nil?
        data['dynamoDB'] = Stubs::DynamoDBAction.stub(stub[:dynamo_db]) unless stub[:dynamo_db].nil?
        data['dynamoDBv2'] = Stubs::DynamoDBv2Action.stub(stub[:dynamo_d_bv2]) unless stub[:dynamo_d_bv2].nil?
        data['iotSiteWise'] = Stubs::IotSiteWiseAction.stub(stub[:iot_site_wise]) unless stub[:iot_site_wise].nil?
        data
      end
    end

    # Structure Stubber for ResetTimerAction
    class ResetTimerAction
      def self.default(visited=[])
        return nil if visited.include?('ResetTimerAction')
        visited = visited + ['ResetTimerAction']
        {
          timer_name: 'timer_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResetTimerAction.new
        data = {}
        data['timerName'] = stub[:timer_name] unless stub[:timer_name].nil?
        data
      end
    end

    # Structure Stubber for ClearTimerAction
    class ClearTimerAction
      def self.default(visited=[])
        return nil if visited.include?('ClearTimerAction')
        visited = visited + ['ClearTimerAction']
        {
          timer_name: 'timer_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClearTimerAction.new
        data = {}
        data['timerName'] = stub[:timer_name] unless stub[:timer_name].nil?
        data
      end
    end

    # Structure Stubber for SetTimerAction
    class SetTimerAction
      def self.default(visited=[])
        return nil if visited.include?('SetTimerAction')
        visited = visited + ['SetTimerAction']
        {
          timer_name: 'timer_name',
          seconds: 1,
          duration_expression: 'duration_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::SetTimerAction.new
        data = {}
        data['timerName'] = stub[:timer_name] unless stub[:timer_name].nil?
        data['seconds'] = stub[:seconds] unless stub[:seconds].nil?
        data['durationExpression'] = stub[:duration_expression] unless stub[:duration_expression].nil?
        data
      end
    end

    # Structure Stubber for SetVariableAction
    class SetVariableAction
      def self.default(visited=[])
        return nil if visited.include?('SetVariableAction')
        visited = visited + ['SetVariableAction']
        {
          variable_name: 'variable_name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SetVariableAction.new
        data = {}
        data['variableName'] = stub[:variable_name] unless stub[:variable_name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for OnEnterLifecycle
    class OnEnterLifecycle
      def self.default(visited=[])
        return nil if visited.include?('OnEnterLifecycle')
        visited = visited + ['OnEnterLifecycle']
        {
          events: Stubs::Events.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnEnterLifecycle.new
        data = {}
        data['events'] = Stubs::Events.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # Structure Stubber for OnInputLifecycle
    class OnInputLifecycle
      def self.default(visited=[])
        return nil if visited.include?('OnInputLifecycle')
        visited = visited + ['OnInputLifecycle']
        {
          events: Stubs::Events.default(visited),
          transition_events: Stubs::TransitionEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnInputLifecycle.new
        data = {}
        data['events'] = Stubs::Events.stub(stub[:events]) unless stub[:events].nil?
        data['transitionEvents'] = Stubs::TransitionEvents.stub(stub[:transition_events]) unless stub[:transition_events].nil?
        data
      end
    end

    # List Stubber for TransitionEvents
    class TransitionEvents
      def self.default(visited=[])
        return nil if visited.include?('TransitionEvents')
        visited = visited + ['TransitionEvents']
        [
          Stubs::TransitionEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TransitionEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TransitionEvent
    class TransitionEvent
      def self.default(visited=[])
        return nil if visited.include?('TransitionEvent')
        visited = visited + ['TransitionEvent']
        {
          event_name: 'event_name',
          condition: 'condition',
          actions: Stubs::Actions.default(visited),
          next_state: 'next_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransitionEvent.new
        data = {}
        data['eventName'] = stub[:event_name] unless stub[:event_name].nil?
        data['condition'] = stub[:condition] unless stub[:condition].nil?
        data['actions'] = Stubs::Actions.stub(stub[:actions]) unless stub[:actions].nil?
        data['nextState'] = stub[:next_state] unless stub[:next_state].nil?
        data
      end
    end

    # Operation Stubber for DescribeDetectorModelAnalysis
    class DescribeDetectorModelAnalysis
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeInput
    class DescribeInput
      def self.default(visited=[])
        {
          input: Stubs::Input.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['input'] = Stubs::Input.stub(stub[:input]) unless stub[:input].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Input
    class Input
      def self.default(visited=[])
        return nil if visited.include?('Input')
        visited = visited + ['Input']
        {
          input_configuration: Stubs::InputConfiguration.default(visited),
          input_definition: Stubs::InputDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Input.new
        data = {}
        data['inputConfiguration'] = Stubs::InputConfiguration.stub(stub[:input_configuration]) unless stub[:input_configuration].nil?
        data['inputDefinition'] = Stubs::InputDefinition.stub(stub[:input_definition]) unless stub[:input_definition].nil?
        data
      end
    end

    # Structure Stubber for InputDefinition
    class InputDefinition
      def self.default(visited=[])
        return nil if visited.include?('InputDefinition')
        visited = visited + ['InputDefinition']
        {
          attributes: Stubs::Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDefinition.new
        data = {}
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
        [
          Stubs::Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          json_path: 'json_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['jsonPath'] = stub[:json_path] unless stub[:json_path].nil?
        data
      end
    end

    # Operation Stubber for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.default(visited=[])
        {
          logging_options: Stubs::LoggingOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['loggingOptions'] = Stubs::LoggingOptions.stub(stub[:logging_options]) unless stub[:logging_options].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoggingOptions
    class LoggingOptions
      def self.default(visited=[])
        return nil if visited.include?('LoggingOptions')
        visited = visited + ['LoggingOptions']
        {
          role_arn: 'role_arn',
          level: 'level',
          enabled: false,
          detector_debug_options: Stubs::DetectorDebugOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingOptions.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['level'] = stub[:level] unless stub[:level].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['detectorDebugOptions'] = Stubs::DetectorDebugOptions.stub(stub[:detector_debug_options]) unless stub[:detector_debug_options].nil?
        data
      end
    end

    # List Stubber for DetectorDebugOptions
    class DetectorDebugOptions
      def self.default(visited=[])
        return nil if visited.include?('DetectorDebugOptions')
        visited = visited + ['DetectorDebugOptions']
        [
          Stubs::DetectorDebugOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DetectorDebugOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetectorDebugOption
    class DetectorDebugOption
      def self.default(visited=[])
        return nil if visited.include?('DetectorDebugOption')
        visited = visited + ['DetectorDebugOption']
        {
          detector_model_name: 'detector_model_name',
          key_value: 'key_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorDebugOption.new
        data = {}
        data['detectorModelName'] = stub[:detector_model_name] unless stub[:detector_model_name].nil?
        data['keyValue'] = stub[:key_value] unless stub[:key_value].nil?
        data
      end
    end

    # Operation Stubber for GetDetectorModelAnalysisResults
    class GetDetectorModelAnalysisResults
      def self.default(visited=[])
        {
          analysis_results: Stubs::AnalysisResults.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['analysisResults'] = Stubs::AnalysisResults.stub(stub[:analysis_results]) unless stub[:analysis_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AnalysisResults
    class AnalysisResults
      def self.default(visited=[])
        return nil if visited.include?('AnalysisResults')
        visited = visited + ['AnalysisResults']
        [
          Stubs::AnalysisResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnalysisResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnalysisResult
    class AnalysisResult
      def self.default(visited=[])
        return nil if visited.include?('AnalysisResult')
        visited = visited + ['AnalysisResult']
        {
          type: 'type',
          level: 'level',
          message: 'message',
          locations: Stubs::AnalysisResultLocations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalysisResult.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['level'] = stub[:level] unless stub[:level].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['locations'] = Stubs::AnalysisResultLocations.stub(stub[:locations]) unless stub[:locations].nil?
        data
      end
    end

    # List Stubber for AnalysisResultLocations
    class AnalysisResultLocations
      def self.default(visited=[])
        return nil if visited.include?('AnalysisResultLocations')
        visited = visited + ['AnalysisResultLocations']
        [
          Stubs::AnalysisResultLocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnalysisResultLocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnalysisResultLocation
    class AnalysisResultLocation
      def self.default(visited=[])
        return nil if visited.include?('AnalysisResultLocation')
        visited = visited + ['AnalysisResultLocation']
        {
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalysisResultLocation.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # Operation Stubber for ListAlarmModelVersions
    class ListAlarmModelVersions
      def self.default(visited=[])
        {
          alarm_model_version_summaries: Stubs::AlarmModelVersionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['alarmModelVersionSummaries'] = Stubs::AlarmModelVersionSummaries.stub(stub[:alarm_model_version_summaries]) unless stub[:alarm_model_version_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AlarmModelVersionSummaries
    class AlarmModelVersionSummaries
      def self.default(visited=[])
        return nil if visited.include?('AlarmModelVersionSummaries')
        visited = visited + ['AlarmModelVersionSummaries']
        [
          Stubs::AlarmModelVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlarmModelVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlarmModelVersionSummary
    class AlarmModelVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('AlarmModelVersionSummary')
        visited = visited + ['AlarmModelVersionSummary']
        {
          alarm_model_name: 'alarm_model_name',
          alarm_model_arn: 'alarm_model_arn',
          alarm_model_version: 'alarm_model_version',
          role_arn: 'role_arn',
          creation_time: Time.now,
          last_update_time: Time.now,
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmModelVersionSummary.new
        data = {}
        data['alarmModelName'] = stub[:alarm_model_name] unless stub[:alarm_model_name].nil?
        data['alarmModelArn'] = stub[:alarm_model_arn] unless stub[:alarm_model_arn].nil?
        data['alarmModelVersion'] = stub[:alarm_model_version] unless stub[:alarm_model_version].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Operation Stubber for ListAlarmModels
    class ListAlarmModels
      def self.default(visited=[])
        {
          alarm_model_summaries: Stubs::AlarmModelSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['alarmModelSummaries'] = Stubs::AlarmModelSummaries.stub(stub[:alarm_model_summaries]) unless stub[:alarm_model_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AlarmModelSummaries
    class AlarmModelSummaries
      def self.default(visited=[])
        return nil if visited.include?('AlarmModelSummaries')
        visited = visited + ['AlarmModelSummaries']
        [
          Stubs::AlarmModelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlarmModelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlarmModelSummary
    class AlarmModelSummary
      def self.default(visited=[])
        return nil if visited.include?('AlarmModelSummary')
        visited = visited + ['AlarmModelSummary']
        {
          creation_time: Time.now,
          alarm_model_description: 'alarm_model_description',
          alarm_model_name: 'alarm_model_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmModelSummary.new
        data = {}
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['alarmModelDescription'] = stub[:alarm_model_description] unless stub[:alarm_model_description].nil?
        data['alarmModelName'] = stub[:alarm_model_name] unless stub[:alarm_model_name].nil?
        data
      end
    end

    # Operation Stubber for ListDetectorModelVersions
    class ListDetectorModelVersions
      def self.default(visited=[])
        {
          detector_model_version_summaries: Stubs::DetectorModelVersionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorModelVersionSummaries'] = Stubs::DetectorModelVersionSummaries.stub(stub[:detector_model_version_summaries]) unless stub[:detector_model_version_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DetectorModelVersionSummaries
    class DetectorModelVersionSummaries
      def self.default(visited=[])
        return nil if visited.include?('DetectorModelVersionSummaries')
        visited = visited + ['DetectorModelVersionSummaries']
        [
          Stubs::DetectorModelVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DetectorModelVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetectorModelVersionSummary
    class DetectorModelVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('DetectorModelVersionSummary')
        visited = visited + ['DetectorModelVersionSummary']
        {
          detector_model_name: 'detector_model_name',
          detector_model_version: 'detector_model_version',
          detector_model_arn: 'detector_model_arn',
          role_arn: 'role_arn',
          creation_time: Time.now,
          last_update_time: Time.now,
          status: 'status',
          evaluation_method: 'evaluation_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorModelVersionSummary.new
        data = {}
        data['detectorModelName'] = stub[:detector_model_name] unless stub[:detector_model_name].nil?
        data['detectorModelVersion'] = stub[:detector_model_version] unless stub[:detector_model_version].nil?
        data['detectorModelArn'] = stub[:detector_model_arn] unless stub[:detector_model_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['evaluationMethod'] = stub[:evaluation_method] unless stub[:evaluation_method].nil?
        data
      end
    end

    # Operation Stubber for ListDetectorModels
    class ListDetectorModels
      def self.default(visited=[])
        {
          detector_model_summaries: Stubs::DetectorModelSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorModelSummaries'] = Stubs::DetectorModelSummaries.stub(stub[:detector_model_summaries]) unless stub[:detector_model_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DetectorModelSummaries
    class DetectorModelSummaries
      def self.default(visited=[])
        return nil if visited.include?('DetectorModelSummaries')
        visited = visited + ['DetectorModelSummaries']
        [
          Stubs::DetectorModelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DetectorModelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetectorModelSummary
    class DetectorModelSummary
      def self.default(visited=[])
        return nil if visited.include?('DetectorModelSummary')
        visited = visited + ['DetectorModelSummary']
        {
          detector_model_name: 'detector_model_name',
          detector_model_description: 'detector_model_description',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorModelSummary.new
        data = {}
        data['detectorModelName'] = stub[:detector_model_name] unless stub[:detector_model_name].nil?
        data['detectorModelDescription'] = stub[:detector_model_description] unless stub[:detector_model_description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListInputRoutings
    class ListInputRoutings
      def self.default(visited=[])
        {
          routed_resources: Stubs::RoutedResources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['routedResources'] = Stubs::RoutedResources.stub(stub[:routed_resources]) unless stub[:routed_resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoutedResources
    class RoutedResources
      def self.default(visited=[])
        return nil if visited.include?('RoutedResources')
        visited = visited + ['RoutedResources']
        [
          Stubs::RoutedResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RoutedResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RoutedResource
    class RoutedResource
      def self.default(visited=[])
        return nil if visited.include?('RoutedResource')
        visited = visited + ['RoutedResource']
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutedResource.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListInputs
    class ListInputs
      def self.default(visited=[])
        {
          input_summaries: Stubs::InputSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputSummaries'] = Stubs::InputSummaries.stub(stub[:input_summaries]) unless stub[:input_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InputSummaries
    class InputSummaries
      def self.default(visited=[])
        return nil if visited.include?('InputSummaries')
        visited = visited + ['InputSummaries']
        [
          Stubs::InputSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputSummary
    class InputSummary
      def self.default(visited=[])
        return nil if visited.include?('InputSummary')
        visited = visited + ['InputSummary']
        {
          input_name: 'input_name',
          input_description: 'input_description',
          input_arn: 'input_arn',
          creation_time: Time.now,
          last_update_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSummary.new
        data = {}
        data['inputName'] = stub[:input_name] unless stub[:input_name].nil?
        data['inputDescription'] = stub[:input_description] unless stub[:input_description].nil?
        data['inputArn'] = stub[:input_arn] unless stub[:input_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutLoggingOptions
    class PutLoggingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDetectorModelAnalysis
    class StartDetectorModelAnalysis
      def self.default(visited=[])
        {
          analysis_id: 'analysis_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['analysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAlarmModel
    class UpdateAlarmModel
      def self.default(visited=[])
        {
          creation_time: Time.now,
          alarm_model_arn: 'alarm_model_arn',
          alarm_model_version: 'alarm_model_version',
          last_update_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['alarmModelArn'] = stub[:alarm_model_arn] unless stub[:alarm_model_arn].nil?
        data['alarmModelVersion'] = stub[:alarm_model_version] unless stub[:alarm_model_version].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDetectorModel
    class UpdateDetectorModel
      def self.default(visited=[])
        {
          detector_model_configuration: Stubs::DetectorModelConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorModelConfiguration'] = Stubs::DetectorModelConfiguration.stub(stub[:detector_model_configuration]) unless stub[:detector_model_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateInput
    class UpdateInput
      def self.default(visited=[])
        {
          input_configuration: Stubs::InputConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['inputConfiguration'] = Stubs::InputConfiguration.stub(stub[:input_configuration]) unless stub[:input_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
