# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTEvents
  module Params

    module AcknowledgeFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcknowledgeFlow, context: context)
        type = Types::AcknowledgeFlow.new
        type.enabled = params[:enabled]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.set_variable = SetVariableAction.build(params[:set_variable], context: "#{context}[:set_variable]") unless params[:set_variable].nil?
        type.sns = SNSTopicPublishAction.build(params[:sns], context: "#{context}[:sns]") unless params[:sns].nil?
        type.iot_topic_publish = IotTopicPublishAction.build(params[:iot_topic_publish], context: "#{context}[:iot_topic_publish]") unless params[:iot_topic_publish].nil?
        type.set_timer = SetTimerAction.build(params[:set_timer], context: "#{context}[:set_timer]") unless params[:set_timer].nil?
        type.clear_timer = ClearTimerAction.build(params[:clear_timer], context: "#{context}[:clear_timer]") unless params[:clear_timer].nil?
        type.reset_timer = ResetTimerAction.build(params[:reset_timer], context: "#{context}[:reset_timer]") unless params[:reset_timer].nil?
        type.lambda = LambdaAction.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type.iot_events = IotEventsAction.build(params[:iot_events], context: "#{context}[:iot_events]") unless params[:iot_events].nil?
        type.sqs = SqsAction.build(params[:sqs], context: "#{context}[:sqs]") unless params[:sqs].nil?
        type.firehose = FirehoseAction.build(params[:firehose], context: "#{context}[:firehose]") unless params[:firehose].nil?
        type.dynamo_db = DynamoDBAction.build(params[:dynamo_db], context: "#{context}[:dynamo_db]") unless params[:dynamo_db].nil?
        type.dynamo_d_bv2 = DynamoDBv2Action.build(params[:dynamo_d_bv2], context: "#{context}[:dynamo_d_bv2]") unless params[:dynamo_d_bv2].nil?
        type.iot_site_wise = IotSiteWiseAction.build(params[:iot_site_wise], context: "#{context}[:iot_site_wise]") unless params[:iot_site_wise].nil?
        type
      end
    end

    module Actions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmAction, context: context)
        type = Types::AlarmAction.new
        type.sns = SNSTopicPublishAction.build(params[:sns], context: "#{context}[:sns]") unless params[:sns].nil?
        type.iot_topic_publish = IotTopicPublishAction.build(params[:iot_topic_publish], context: "#{context}[:iot_topic_publish]") unless params[:iot_topic_publish].nil?
        type.lambda = LambdaAction.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type.iot_events = IotEventsAction.build(params[:iot_events], context: "#{context}[:iot_events]") unless params[:iot_events].nil?
        type.sqs = SqsAction.build(params[:sqs], context: "#{context}[:sqs]") unless params[:sqs].nil?
        type.firehose = FirehoseAction.build(params[:firehose], context: "#{context}[:firehose]") unless params[:firehose].nil?
        type.dynamo_db = DynamoDBAction.build(params[:dynamo_db], context: "#{context}[:dynamo_db]") unless params[:dynamo_db].nil?
        type.dynamo_d_bv2 = DynamoDBv2Action.build(params[:dynamo_d_bv2], context: "#{context}[:dynamo_d_bv2]") unless params[:dynamo_d_bv2].nil?
        type.iot_site_wise = IotSiteWiseAction.build(params[:iot_site_wise], context: "#{context}[:iot_site_wise]") unless params[:iot_site_wise].nil?
        type
      end
    end

    module AlarmActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmCapabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmCapabilities, context: context)
        type = Types::AlarmCapabilities.new
        type.initialization_configuration = InitializationConfiguration.build(params[:initialization_configuration], context: "#{context}[:initialization_configuration]") unless params[:initialization_configuration].nil?
        type.acknowledge_flow = AcknowledgeFlow.build(params[:acknowledge_flow], context: "#{context}[:acknowledge_flow]") unless params[:acknowledge_flow].nil?
        type
      end
    end

    module AlarmEventActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmEventActions, context: context)
        type = Types::AlarmEventActions.new
        type.alarm_actions = AlarmActions.build(params[:alarm_actions], context: "#{context}[:alarm_actions]") unless params[:alarm_actions].nil?
        type
      end
    end

    module AlarmModelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmModelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmModelSummary, context: context)
        type = Types::AlarmModelSummary.new
        type.creation_time = params[:creation_time]
        type.alarm_model_description = params[:alarm_model_description]
        type.alarm_model_name = params[:alarm_model_name]
        type
      end
    end

    module AlarmModelVersionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmModelVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmModelVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmModelVersionSummary, context: context)
        type = Types::AlarmModelVersionSummary.new
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_arn = params[:alarm_model_arn]
        type.alarm_model_version = params[:alarm_model_version]
        type.role_arn = params[:role_arn]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module AlarmNotification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmNotification, context: context)
        type = Types::AlarmNotification.new
        type.notification_actions = NotificationActions.build(params[:notification_actions], context: "#{context}[:notification_actions]") unless params[:notification_actions].nil?
        type
      end
    end

    module AlarmRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmRule, context: context)
        type = Types::AlarmRule.new
        type.simple_rule = SimpleRule.build(params[:simple_rule], context: "#{context}[:simple_rule]") unless params[:simple_rule].nil?
        type
      end
    end

    module AnalysisResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisResult, context: context)
        type = Types::AnalysisResult.new
        type.type = params[:type]
        type.level = params[:level]
        type.message = params[:message]
        type.locations = AnalysisResultLocations.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type
      end
    end

    module AnalysisResultLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisResultLocation, context: context)
        type = Types::AnalysisResultLocation.new
        type.path = params[:path]
        type
      end
    end

    module AnalysisResultLocations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalysisResultLocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnalysisResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalysisResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetPropertyTimestamp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyTimestamp, context: context)
        type = Types::AssetPropertyTimestamp.new
        type.time_in_seconds = params[:time_in_seconds]
        type.offset_in_nanos = params[:offset_in_nanos]
        type
      end
    end

    module AssetPropertyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyValue, context: context)
        type = Types::AssetPropertyValue.new
        type.value = AssetPropertyVariant.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.timestamp = AssetPropertyTimestamp.build(params[:timestamp], context: "#{context}[:timestamp]") unless params[:timestamp].nil?
        type.quality = params[:quality]
        type
      end
    end

    module AssetPropertyVariant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyVariant, context: context)
        type = Types::AssetPropertyVariant.new
        type.string_value = params[:string_value]
        type.integer_value = params[:integer_value]
        type.double_value = params[:double_value]
        type.boolean_value = params[:boolean_value]
        type
      end
    end

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.json_path = params[:json_path]
        type
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClearTimerAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClearTimerAction, context: context)
        type = Types::ClearTimerAction.new
        type.timer_name = params[:timer_name]
        type
      end
    end

    module CreateAlarmModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlarmModelInput, context: context)
        type = Types::CreateAlarmModelInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_description = params[:alarm_model_description]
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.key = params[:key]
        type.severity = params[:severity]
        type.alarm_rule = AlarmRule.build(params[:alarm_rule], context: "#{context}[:alarm_rule]") unless params[:alarm_rule].nil?
        type.alarm_notification = AlarmNotification.build(params[:alarm_notification], context: "#{context}[:alarm_notification]") unless params[:alarm_notification].nil?
        type.alarm_event_actions = AlarmEventActions.build(params[:alarm_event_actions], context: "#{context}[:alarm_event_actions]") unless params[:alarm_event_actions].nil?
        type.alarm_capabilities = AlarmCapabilities.build(params[:alarm_capabilities], context: "#{context}[:alarm_capabilities]") unless params[:alarm_capabilities].nil?
        type
      end
    end

    module CreateAlarmModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlarmModelOutput, context: context)
        type = Types::CreateAlarmModelOutput.new
        type.creation_time = params[:creation_time]
        type.alarm_model_arn = params[:alarm_model_arn]
        type.alarm_model_version = params[:alarm_model_version]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type
      end
    end

    module CreateDetectorModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDetectorModelInput, context: context)
        type = Types::CreateDetectorModelInput.new
        type.detector_model_name = params[:detector_model_name]
        type.detector_model_definition = DetectorModelDefinition.build(params[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless params[:detector_model_definition].nil?
        type.detector_model_description = params[:detector_model_description]
        type.key = params[:key]
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.evaluation_method = params[:evaluation_method]
        type
      end
    end

    module CreateDetectorModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDetectorModelOutput, context: context)
        type = Types::CreateDetectorModelOutput.new
        type.detector_model_configuration = DetectorModelConfiguration.build(params[:detector_model_configuration], context: "#{context}[:detector_model_configuration]") unless params[:detector_model_configuration].nil?
        type
      end
    end

    module CreateInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInputInput, context: context)
        type = Types::CreateInputInput.new
        type.input_name = params[:input_name]
        type.input_description = params[:input_description]
        type.input_definition = InputDefinition.build(params[:input_definition], context: "#{context}[:input_definition]") unless params[:input_definition].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInputOutput, context: context)
        type = Types::CreateInputOutput.new
        type.input_configuration = InputConfiguration.build(params[:input_configuration], context: "#{context}[:input_configuration]") unless params[:input_configuration].nil?
        type
      end
    end

    module DeleteAlarmModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlarmModelInput, context: context)
        type = Types::DeleteAlarmModelInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type
      end
    end

    module DeleteAlarmModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlarmModelOutput, context: context)
        type = Types::DeleteAlarmModelOutput.new
        type
      end
    end

    module DeleteDetectorModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorModelInput, context: context)
        type = Types::DeleteDetectorModelInput.new
        type.detector_model_name = params[:detector_model_name]
        type
      end
    end

    module DeleteDetectorModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorModelOutput, context: context)
        type = Types::DeleteDetectorModelOutput.new
        type
      end
    end

    module DeleteInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInputInput, context: context)
        type = Types::DeleteInputInput.new
        type.input_name = params[:input_name]
        type
      end
    end

    module DeleteInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInputOutput, context: context)
        type = Types::DeleteInputOutput.new
        type
      end
    end

    module DescribeAlarmModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlarmModelInput, context: context)
        type = Types::DescribeAlarmModelInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_version = params[:alarm_model_version]
        type
      end
    end

    module DescribeAlarmModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlarmModelOutput, context: context)
        type = Types::DescribeAlarmModelOutput.new
        type.creation_time = params[:creation_time]
        type.alarm_model_arn = params[:alarm_model_arn]
        type.alarm_model_version = params[:alarm_model_version]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_description = params[:alarm_model_description]
        type.role_arn = params[:role_arn]
        type.key = params[:key]
        type.severity = params[:severity]
        type.alarm_rule = AlarmRule.build(params[:alarm_rule], context: "#{context}[:alarm_rule]") unless params[:alarm_rule].nil?
        type.alarm_notification = AlarmNotification.build(params[:alarm_notification], context: "#{context}[:alarm_notification]") unless params[:alarm_notification].nil?
        type.alarm_event_actions = AlarmEventActions.build(params[:alarm_event_actions], context: "#{context}[:alarm_event_actions]") unless params[:alarm_event_actions].nil?
        type.alarm_capabilities = AlarmCapabilities.build(params[:alarm_capabilities], context: "#{context}[:alarm_capabilities]") unless params[:alarm_capabilities].nil?
        type
      end
    end

    module DescribeDetectorModelAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorModelAnalysisInput, context: context)
        type = Types::DescribeDetectorModelAnalysisInput.new
        type.analysis_id = params[:analysis_id]
        type
      end
    end

    module DescribeDetectorModelAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorModelAnalysisOutput, context: context)
        type = Types::DescribeDetectorModelAnalysisOutput.new
        type.status = params[:status]
        type
      end
    end

    module DescribeDetectorModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorModelInput, context: context)
        type = Types::DescribeDetectorModelInput.new
        type.detector_model_name = params[:detector_model_name]
        type.detector_model_version = params[:detector_model_version]
        type
      end
    end

    module DescribeDetectorModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorModelOutput, context: context)
        type = Types::DescribeDetectorModelOutput.new
        type.detector_model = DetectorModel.build(params[:detector_model], context: "#{context}[:detector_model]") unless params[:detector_model].nil?
        type
      end
    end

    module DescribeInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputInput, context: context)
        type = Types::DescribeInputInput.new
        type.input_name = params[:input_name]
        type
      end
    end

    module DescribeInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInputOutput, context: context)
        type = Types::DescribeInputOutput.new
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type
      end
    end

    module DescribeLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingOptionsInput, context: context)
        type = Types::DescribeLoggingOptionsInput.new
        type
      end
    end

    module DescribeLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingOptionsOutput, context: context)
        type = Types::DescribeLoggingOptionsOutput.new
        type.logging_options = LoggingOptions.build(params[:logging_options], context: "#{context}[:logging_options]") unless params[:logging_options].nil?
        type
      end
    end

    module DetectorDebugOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorDebugOption, context: context)
        type = Types::DetectorDebugOption.new
        type.detector_model_name = params[:detector_model_name]
        type.key_value = params[:key_value]
        type
      end
    end

    module DetectorDebugOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectorDebugOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectorModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorModel, context: context)
        type = Types::DetectorModel.new
        type.detector_model_definition = DetectorModelDefinition.build(params[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless params[:detector_model_definition].nil?
        type.detector_model_configuration = DetectorModelConfiguration.build(params[:detector_model_configuration], context: "#{context}[:detector_model_configuration]") unless params[:detector_model_configuration].nil?
        type
      end
    end

    module DetectorModelConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorModelConfiguration, context: context)
        type = Types::DetectorModelConfiguration.new
        type.detector_model_name = params[:detector_model_name]
        type.detector_model_version = params[:detector_model_version]
        type.detector_model_description = params[:detector_model_description]
        type.detector_model_arn = params[:detector_model_arn]
        type.role_arn = params[:role_arn]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type.key = params[:key]
        type.evaluation_method = params[:evaluation_method]
        type
      end
    end

    module DetectorModelDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorModelDefinition, context: context)
        type = Types::DetectorModelDefinition.new
        type.states = States.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.initial_state_name = params[:initial_state_name]
        type
      end
    end

    module DetectorModelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectorModelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectorModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorModelSummary, context: context)
        type = Types::DetectorModelSummary.new
        type.detector_model_name = params[:detector_model_name]
        type.detector_model_description = params[:detector_model_description]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DetectorModelVersionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectorModelVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectorModelVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorModelVersionSummary, context: context)
        type = Types::DetectorModelVersionSummary.new
        type.detector_model_name = params[:detector_model_name]
        type.detector_model_version = params[:detector_model_version]
        type.detector_model_arn = params[:detector_model_arn]
        type.role_arn = params[:role_arn]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type.evaluation_method = params[:evaluation_method]
        type
      end
    end

    module DynamoDBAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDBAction, context: context)
        type = Types::DynamoDBAction.new
        type.hash_key_type = params[:hash_key_type]
        type.hash_key_field = params[:hash_key_field]
        type.hash_key_value = params[:hash_key_value]
        type.range_key_type = params[:range_key_type]
        type.range_key_field = params[:range_key_field]
        type.range_key_value = params[:range_key_value]
        type.operation = params[:operation]
        type.payload_field = params[:payload_field]
        type.table_name = params[:table_name]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module DynamoDBv2Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDBv2Action, context: context)
        type = Types::DynamoDBv2Action.new
        type.table_name = params[:table_name]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module EmailConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailConfiguration, context: context)
        type = Types::EmailConfiguration.new
        type.from = params[:from]
        type.content = EmailContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.recipients = EmailRecipients.build(params[:recipients], context: "#{context}[:recipients]") unless params[:recipients].nil?
        type
      end
    end

    module EmailConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EmailConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EmailContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailContent, context: context)
        type = Types::EmailContent.new
        type.subject = params[:subject]
        type.additional_message = params[:additional_message]
        type
      end
    end

    module EmailRecipients
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailRecipients, context: context)
        type = Types::EmailRecipients.new
        type.to = RecipientDetails.build(params[:to], context: "#{context}[:to]") unless params[:to].nil?
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.event_name = params[:event_name]
        type.condition = params[:condition]
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module Events
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirehoseAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirehoseAction, context: context)
        type = Types::FirehoseAction.new
        type.delivery_stream_name = params[:delivery_stream_name]
        type.separator = params[:separator]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module GetDetectorModelAnalysisResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorModelAnalysisResultsInput, context: context)
        type = Types::GetDetectorModelAnalysisResultsInput.new
        type.analysis_id = params[:analysis_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetDetectorModelAnalysisResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorModelAnalysisResultsOutput, context: context)
        type = Types::GetDetectorModelAnalysisResultsOutput.new
        type.analysis_results = AnalysisResults.build(params[:analysis_results], context: "#{context}[:analysis_results]") unless params[:analysis_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InitializationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitializationConfiguration, context: context)
        type = Types::InitializationConfiguration.new
        type.disabled_on_initialization = params[:disabled_on_initialization]
        type
      end
    end

    module Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Input, context: context)
        type = Types::Input.new
        type.input_configuration = InputConfiguration.build(params[:input_configuration], context: "#{context}[:input_configuration]") unless params[:input_configuration].nil?
        type.input_definition = InputDefinition.build(params[:input_definition], context: "#{context}[:input_definition]") unless params[:input_definition].nil?
        type
      end
    end

    module InputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputConfiguration, context: context)
        type = Types::InputConfiguration.new
        type.input_name = params[:input_name]
        type.input_description = params[:input_description]
        type.input_arn = params[:input_arn]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type
      end
    end

    module InputDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDefinition, context: context)
        type = Types::InputDefinition.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module InputIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputIdentifier, context: context)
        type = Types::InputIdentifier.new
        type.iot_events_input_identifier = IotEventsInputIdentifier.build(params[:iot_events_input_identifier], context: "#{context}[:iot_events_input_identifier]") unless params[:iot_events_input_identifier].nil?
        type.iot_site_wise_input_identifier = IotSiteWiseInputIdentifier.build(params[:iot_site_wise_input_identifier], context: "#{context}[:iot_site_wise_input_identifier]") unless params[:iot_site_wise_input_identifier].nil?
        type
      end
    end

    module InputSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSummary, context: context)
        type = Types::InputSummary.new
        type.input_name = params[:input_name]
        type.input_description = params[:input_description]
        type.input_arn = params[:input_arn]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type
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

    module IotEventsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotEventsAction, context: context)
        type = Types::IotEventsAction.new
        type.input_name = params[:input_name]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module IotEventsInputIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotEventsInputIdentifier, context: context)
        type = Types::IotEventsInputIdentifier.new
        type.input_name = params[:input_name]
        type
      end
    end

    module IotSiteWiseAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotSiteWiseAction, context: context)
        type = Types::IotSiteWiseAction.new
        type.entry_id = params[:entry_id]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.property_value = AssetPropertyValue.build(params[:property_value], context: "#{context}[:property_value]") unless params[:property_value].nil?
        type
      end
    end

    module IotSiteWiseAssetModelPropertyIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotSiteWiseAssetModelPropertyIdentifier, context: context)
        type = Types::IotSiteWiseAssetModelPropertyIdentifier.new
        type.asset_model_id = params[:asset_model_id]
        type.property_id = params[:property_id]
        type
      end
    end

    module IotSiteWiseInputIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotSiteWiseInputIdentifier, context: context)
        type = Types::IotSiteWiseInputIdentifier.new
        type.iot_site_wise_asset_model_property_identifier = IotSiteWiseAssetModelPropertyIdentifier.build(params[:iot_site_wise_asset_model_property_identifier], context: "#{context}[:iot_site_wise_asset_model_property_identifier]") unless params[:iot_site_wise_asset_model_property_identifier].nil?
        type
      end
    end

    module IotTopicPublishAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotTopicPublishAction, context: context)
        type = Types::IotTopicPublishAction.new
        type.mqtt_topic = params[:mqtt_topic]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module LambdaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaAction, context: context)
        type = Types::LambdaAction.new
        type.function_arn = params[:function_arn]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAlarmModelVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmModelVersionsInput, context: context)
        type = Types::ListAlarmModelVersionsInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAlarmModelVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmModelVersionsOutput, context: context)
        type = Types::ListAlarmModelVersionsOutput.new
        type.alarm_model_version_summaries = AlarmModelVersionSummaries.build(params[:alarm_model_version_summaries], context: "#{context}[:alarm_model_version_summaries]") unless params[:alarm_model_version_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAlarmModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmModelsInput, context: context)
        type = Types::ListAlarmModelsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAlarmModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmModelsOutput, context: context)
        type = Types::ListAlarmModelsOutput.new
        type.alarm_model_summaries = AlarmModelSummaries.build(params[:alarm_model_summaries], context: "#{context}[:alarm_model_summaries]") unless params[:alarm_model_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectorModelVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorModelVersionsInput, context: context)
        type = Types::ListDetectorModelVersionsInput.new
        type.detector_model_name = params[:detector_model_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDetectorModelVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorModelVersionsOutput, context: context)
        type = Types::ListDetectorModelVersionsOutput.new
        type.detector_model_version_summaries = DetectorModelVersionSummaries.build(params[:detector_model_version_summaries], context: "#{context}[:detector_model_version_summaries]") unless params[:detector_model_version_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDetectorModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorModelsInput, context: context)
        type = Types::ListDetectorModelsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDetectorModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDetectorModelsOutput, context: context)
        type = Types::ListDetectorModelsOutput.new
        type.detector_model_summaries = DetectorModelSummaries.build(params[:detector_model_summaries], context: "#{context}[:detector_model_summaries]") unless params[:detector_model_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputRoutingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputRoutingsInput, context: context)
        type = Types::ListInputRoutingsInput.new
        type.input_identifier = InputIdentifier.build(params[:input_identifier], context: "#{context}[:input_identifier]") unless params[:input_identifier].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputRoutingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputRoutingsOutput, context: context)
        type = Types::ListInputRoutingsOutput.new
        type.routed_resources = RoutedResources.build(params[:routed_resources], context: "#{context}[:routed_resources]") unless params[:routed_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInputsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputsInput, context: context)
        type = Types::ListInputsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInputsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInputsOutput, context: context)
        type = Types::ListInputsOutput.new
        type.input_summaries = InputSummaries.build(params[:input_summaries], context: "#{context}[:input_summaries]") unless params[:input_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LoggingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingOptions, context: context)
        type = Types::LoggingOptions.new
        type.role_arn = params[:role_arn]
        type.level = params[:level]
        type.enabled = params[:enabled]
        type.detector_debug_options = DetectorDebugOptions.build(params[:detector_debug_options], context: "#{context}[:detector_debug_options]") unless params[:detector_debug_options].nil?
        type
      end
    end

    module NotificationAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationAction, context: context)
        type = Types::NotificationAction.new
        type.action = NotificationTargetActions.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.sms_configurations = SMSConfigurations.build(params[:sms_configurations], context: "#{context}[:sms_configurations]") unless params[:sms_configurations].nil?
        type.email_configurations = EmailConfigurations.build(params[:email_configurations], context: "#{context}[:email_configurations]") unless params[:email_configurations].nil?
        type
      end
    end

    module NotificationActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationTargetActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationTargetActions, context: context)
        type = Types::NotificationTargetActions.new
        type.lambda_action = LambdaAction.build(params[:lambda_action], context: "#{context}[:lambda_action]") unless params[:lambda_action].nil?
        type
      end
    end

    module OnEnterLifecycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnEnterLifecycle, context: context)
        type = Types::OnEnterLifecycle.new
        type.events = Events.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module OnExitLifecycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnExitLifecycle, context: context)
        type = Types::OnExitLifecycle.new
        type.events = Events.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module OnInputLifecycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnInputLifecycle, context: context)
        type = Types::OnInputLifecycle.new
        type.events = Events.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.transition_events = TransitionEvents.build(params[:transition_events], context: "#{context}[:transition_events]") unless params[:transition_events].nil?
        type
      end
    end

    module Payload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Payload, context: context)
        type = Types::Payload.new
        type.content_expression = params[:content_expression]
        type.type = params[:type]
        type
      end
    end

    module PutLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingOptionsInput, context: context)
        type = Types::PutLoggingOptionsInput.new
        type.logging_options = LoggingOptions.build(params[:logging_options], context: "#{context}[:logging_options]") unless params[:logging_options].nil?
        type
      end
    end

    module PutLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingOptionsOutput, context: context)
        type = Types::PutLoggingOptionsOutput.new
        type
      end
    end

    module RecipientDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipientDetail, context: context)
        type = Types::RecipientDetail.new
        type.sso_identity = SSOIdentity.build(params[:sso_identity], context: "#{context}[:sso_identity]") unless params[:sso_identity].nil?
        type
      end
    end

    module RecipientDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecipientDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResetTimerAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetTimerAction, context: context)
        type = Types::ResetTimerAction.new
        type.timer_name = params[:timer_name]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
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

    module RoutedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutedResource, context: context)
        type = Types::RoutedResource.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module RoutedResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SMSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSConfiguration, context: context)
        type = Types::SMSConfiguration.new
        type.sender_id = params[:sender_id]
        type.additional_message = params[:additional_message]
        type.recipients = RecipientDetails.build(params[:recipients], context: "#{context}[:recipients]") unless params[:recipients].nil?
        type
      end
    end

    module SMSConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SMSConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SNSTopicPublishAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSTopicPublishAction, context: context)
        type = Types::SNSTopicPublishAction.new
        type.target_arn = params[:target_arn]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module SSOIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSOIdentity, context: context)
        type = Types::SSOIdentity.new
        type.identity_store_id = params[:identity_store_id]
        type.user_id = params[:user_id]
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

    module SetTimerAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTimerAction, context: context)
        type = Types::SetTimerAction.new
        type.timer_name = params[:timer_name]
        type.seconds = params[:seconds]
        type.duration_expression = params[:duration_expression]
        type
      end
    end

    module SetVariableAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVariableAction, context: context)
        type = Types::SetVariableAction.new
        type.variable_name = params[:variable_name]
        type.value = params[:value]
        type
      end
    end

    module SimpleRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleRule, context: context)
        type = Types::SimpleRule.new
        type.input_property = params[:input_property]
        type.comparison_operator = params[:comparison_operator]
        type.threshold = params[:threshold]
        type
      end
    end

    module SqsAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqsAction, context: context)
        type = Types::SqsAction.new
        type.queue_url = params[:queue_url]
        type.use_base64 = params[:use_base64]
        type.payload = Payload.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module StartDetectorModelAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDetectorModelAnalysisInput, context: context)
        type = Types::StartDetectorModelAnalysisInput.new
        type.detector_model_definition = DetectorModelDefinition.build(params[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless params[:detector_model_definition].nil?
        type
      end
    end

    module StartDetectorModelAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDetectorModelAnalysisOutput, context: context)
        type = Types::StartDetectorModelAnalysisOutput.new
        type.analysis_id = params[:analysis_id]
        type
      end
    end

    module State
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::State, context: context)
        type = Types::State.new
        type.state_name = params[:state_name]
        type.on_input = OnInputLifecycle.build(params[:on_input], context: "#{context}[:on_input]") unless params[:on_input].nil?
        type.on_enter = OnEnterLifecycle.build(params[:on_enter], context: "#{context}[:on_enter]") unless params[:on_enter].nil?
        type.on_exit = OnExitLifecycle.build(params[:on_exit], context: "#{context}[:on_exit]") unless params[:on_exit].nil?
        type
      end
    end

    module States
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << State.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module TransitionEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransitionEvent, context: context)
        type = Types::TransitionEvent.new
        type.event_name = params[:event_name]
        type.condition = params[:condition]
        type.actions = Actions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.next_state = params[:next_state]
        type
      end
    end

    module TransitionEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransitionEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAlarmModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAlarmModelInput, context: context)
        type = Types::UpdateAlarmModelInput.new
        type.alarm_model_name = params[:alarm_model_name]
        type.alarm_model_description = params[:alarm_model_description]
        type.role_arn = params[:role_arn]
        type.severity = params[:severity]
        type.alarm_rule = AlarmRule.build(params[:alarm_rule], context: "#{context}[:alarm_rule]") unless params[:alarm_rule].nil?
        type.alarm_notification = AlarmNotification.build(params[:alarm_notification], context: "#{context}[:alarm_notification]") unless params[:alarm_notification].nil?
        type.alarm_event_actions = AlarmEventActions.build(params[:alarm_event_actions], context: "#{context}[:alarm_event_actions]") unless params[:alarm_event_actions].nil?
        type.alarm_capabilities = AlarmCapabilities.build(params[:alarm_capabilities], context: "#{context}[:alarm_capabilities]") unless params[:alarm_capabilities].nil?
        type
      end
    end

    module UpdateAlarmModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAlarmModelOutput, context: context)
        type = Types::UpdateAlarmModelOutput.new
        type.creation_time = params[:creation_time]
        type.alarm_model_arn = params[:alarm_model_arn]
        type.alarm_model_version = params[:alarm_model_version]
        type.last_update_time = params[:last_update_time]
        type.status = params[:status]
        type
      end
    end

    module UpdateDetectorModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorModelInput, context: context)
        type = Types::UpdateDetectorModelInput.new
        type.detector_model_name = params[:detector_model_name]
        type.detector_model_definition = DetectorModelDefinition.build(params[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless params[:detector_model_definition].nil?
        type.detector_model_description = params[:detector_model_description]
        type.role_arn = params[:role_arn]
        type.evaluation_method = params[:evaluation_method]
        type
      end
    end

    module UpdateDetectorModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorModelOutput, context: context)
        type = Types::UpdateDetectorModelOutput.new
        type.detector_model_configuration = DetectorModelConfiguration.build(params[:detector_model_configuration], context: "#{context}[:detector_model_configuration]") unless params[:detector_model_configuration].nil?
        type
      end
    end

    module UpdateInputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputInput, context: context)
        type = Types::UpdateInputInput.new
        type.input_name = params[:input_name]
        type.input_description = params[:input_description]
        type.input_definition = InputDefinition.build(params[:input_definition], context: "#{context}[:input_definition]") unless params[:input_definition].nil?
        type
      end
    end

    module UpdateInputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInputOutput, context: context)
        type = Types::UpdateInputOutput.new
        type.input_configuration = InputConfiguration.build(params[:input_configuration], context: "#{context}[:input_configuration]") unless params[:input_configuration].nil?
        type
      end
    end

  end
end
