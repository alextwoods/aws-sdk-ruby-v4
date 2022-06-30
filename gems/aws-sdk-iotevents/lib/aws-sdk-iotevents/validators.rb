# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTEvents
  module Validators

    class AcknowledgeFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcknowledgeFlow, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Validators::SetVariableAction.validate!(input[:set_variable], context: "#{context}[:set_variable]") unless input[:set_variable].nil?
        Validators::SNSTopicPublishAction.validate!(input[:sns], context: "#{context}[:sns]") unless input[:sns].nil?
        Validators::IotTopicPublishAction.validate!(input[:iot_topic_publish], context: "#{context}[:iot_topic_publish]") unless input[:iot_topic_publish].nil?
        Validators::SetTimerAction.validate!(input[:set_timer], context: "#{context}[:set_timer]") unless input[:set_timer].nil?
        Validators::ClearTimerAction.validate!(input[:clear_timer], context: "#{context}[:clear_timer]") unless input[:clear_timer].nil?
        Validators::ResetTimerAction.validate!(input[:reset_timer], context: "#{context}[:reset_timer]") unless input[:reset_timer].nil?
        Validators::LambdaAction.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
        Validators::IotEventsAction.validate!(input[:iot_events], context: "#{context}[:iot_events]") unless input[:iot_events].nil?
        Validators::SqsAction.validate!(input[:sqs], context: "#{context}[:sqs]") unless input[:sqs].nil?
        Validators::FirehoseAction.validate!(input[:firehose], context: "#{context}[:firehose]") unless input[:firehose].nil?
        Validators::DynamoDBAction.validate!(input[:dynamo_db], context: "#{context}[:dynamo_db]") unless input[:dynamo_db].nil?
        Validators::DynamoDBv2Action.validate!(input[:dynamo_d_bv2], context: "#{context}[:dynamo_d_bv2]") unless input[:dynamo_d_bv2].nil?
        Validators::IotSiteWiseAction.validate!(input[:iot_site_wise], context: "#{context}[:iot_site_wise]") unless input[:iot_site_wise].nil?
      end
    end

    class Actions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmAction, context: context)
        Validators::SNSTopicPublishAction.validate!(input[:sns], context: "#{context}[:sns]") unless input[:sns].nil?
        Validators::IotTopicPublishAction.validate!(input[:iot_topic_publish], context: "#{context}[:iot_topic_publish]") unless input[:iot_topic_publish].nil?
        Validators::LambdaAction.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
        Validators::IotEventsAction.validate!(input[:iot_events], context: "#{context}[:iot_events]") unless input[:iot_events].nil?
        Validators::SqsAction.validate!(input[:sqs], context: "#{context}[:sqs]") unless input[:sqs].nil?
        Validators::FirehoseAction.validate!(input[:firehose], context: "#{context}[:firehose]") unless input[:firehose].nil?
        Validators::DynamoDBAction.validate!(input[:dynamo_db], context: "#{context}[:dynamo_db]") unless input[:dynamo_db].nil?
        Validators::DynamoDBv2Action.validate!(input[:dynamo_d_bv2], context: "#{context}[:dynamo_d_bv2]") unless input[:dynamo_d_bv2].nil?
        Validators::IotSiteWiseAction.validate!(input[:iot_site_wise], context: "#{context}[:iot_site_wise]") unless input[:iot_site_wise].nil?
      end
    end

    class AlarmActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AlarmAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmCapabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmCapabilities, context: context)
        Validators::InitializationConfiguration.validate!(input[:initialization_configuration], context: "#{context}[:initialization_configuration]") unless input[:initialization_configuration].nil?
        Validators::AcknowledgeFlow.validate!(input[:acknowledge_flow], context: "#{context}[:acknowledge_flow]") unless input[:acknowledge_flow].nil?
      end
    end

    class AlarmEventActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmEventActions, context: context)
        Validators::AlarmActions.validate!(input[:alarm_actions], context: "#{context}[:alarm_actions]") unless input[:alarm_actions].nil?
      end
    end

    class AlarmModelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AlarmModelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmModelSummary, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:alarm_model_description], ::String, context: "#{context}[:alarm_model_description]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
      end
    end

    class AlarmModelVersionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AlarmModelVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmModelVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmModelVersionSummary, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_arn], ::String, context: "#{context}[:alarm_model_arn]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class AlarmNotification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmNotification, context: context)
        Validators::NotificationActions.validate!(input[:notification_actions], context: "#{context}[:notification_actions]") unless input[:notification_actions].nil?
      end
    end

    class AlarmRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmRule, context: context)
        Validators::SimpleRule.validate!(input[:simple_rule], context: "#{context}[:simple_rule]") unless input[:simple_rule].nil?
      end
    end

    class AnalysisResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisResult, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::AnalysisResultLocations.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
      end
    end

    class AnalysisResultLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisResultLocation, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class AnalysisResultLocations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnalysisResultLocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnalysisResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnalysisResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetPropertyTimestamp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetPropertyTimestamp, context: context)
        Hearth::Validator.validate!(input[:time_in_seconds], ::String, context: "#{context}[:time_in_seconds]")
        Hearth::Validator.validate!(input[:offset_in_nanos], ::String, context: "#{context}[:offset_in_nanos]")
      end
    end

    class AssetPropertyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetPropertyValue, context: context)
        Validators::AssetPropertyVariant.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Validators::AssetPropertyTimestamp.validate!(input[:timestamp], context: "#{context}[:timestamp]") unless input[:timestamp].nil?
        Hearth::Validator.validate!(input[:quality], ::String, context: "#{context}[:quality]")
      end
    end

    class AssetPropertyVariant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetPropertyVariant, context: context)
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate!(input[:integer_value], ::String, context: "#{context}[:integer_value]")
        Hearth::Validator.validate!(input[:double_value], ::String, context: "#{context}[:double_value]")
        Hearth::Validator.validate!(input[:boolean_value], ::String, context: "#{context}[:boolean_value]")
      end
    end

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClearTimerAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClearTimerAction, context: context)
        Hearth::Validator.validate!(input[:timer_name], ::String, context: "#{context}[:timer_name]")
      end
    end

    class CreateAlarmModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlarmModelInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_description], ::String, context: "#{context}[:alarm_model_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:severity], ::Integer, context: "#{context}[:severity]")
        Validators::AlarmRule.validate!(input[:alarm_rule], context: "#{context}[:alarm_rule]") unless input[:alarm_rule].nil?
        Validators::AlarmNotification.validate!(input[:alarm_notification], context: "#{context}[:alarm_notification]") unless input[:alarm_notification].nil?
        Validators::AlarmEventActions.validate!(input[:alarm_event_actions], context: "#{context}[:alarm_event_actions]") unless input[:alarm_event_actions].nil?
        Validators::AlarmCapabilities.validate!(input[:alarm_capabilities], context: "#{context}[:alarm_capabilities]") unless input[:alarm_capabilities].nil?
      end
    end

    class CreateAlarmModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlarmModelOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:alarm_model_arn], ::String, context: "#{context}[:alarm_model_arn]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateDetectorModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDetectorModelInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Validators::DetectorModelDefinition.validate!(input[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless input[:detector_model_definition].nil?
        Hearth::Validator.validate!(input[:detector_model_description], ::String, context: "#{context}[:detector_model_description]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:evaluation_method], ::String, context: "#{context}[:evaluation_method]")
      end
    end

    class CreateDetectorModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDetectorModelOutput, context: context)
        Validators::DetectorModelConfiguration.validate!(input[:detector_model_configuration], context: "#{context}[:detector_model_configuration]") unless input[:detector_model_configuration].nil?
      end
    end

    class CreateInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInputInput, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:input_description], ::String, context: "#{context}[:input_description]")
        Validators::InputDefinition.validate!(input[:input_definition], context: "#{context}[:input_definition]") unless input[:input_definition].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInputOutput, context: context)
        Validators::InputConfiguration.validate!(input[:input_configuration], context: "#{context}[:input_configuration]") unless input[:input_configuration].nil?
      end
    end

    class DeleteAlarmModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlarmModelInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
      end
    end

    class DeleteAlarmModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlarmModelOutput, context: context)
      end
    end

    class DeleteDetectorModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorModelInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
      end
    end

    class DeleteDetectorModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorModelOutput, context: context)
      end
    end

    class DeleteInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInputInput, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
      end
    end

    class DeleteInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInputOutput, context: context)
      end
    end

    class DescribeAlarmModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmModelInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
      end
    end

    class DescribeAlarmModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlarmModelOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:alarm_model_arn], ::String, context: "#{context}[:alarm_model_arn]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_description], ::String, context: "#{context}[:alarm_model_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:severity], ::Integer, context: "#{context}[:severity]")
        Validators::AlarmRule.validate!(input[:alarm_rule], context: "#{context}[:alarm_rule]") unless input[:alarm_rule].nil?
        Validators::AlarmNotification.validate!(input[:alarm_notification], context: "#{context}[:alarm_notification]") unless input[:alarm_notification].nil?
        Validators::AlarmEventActions.validate!(input[:alarm_event_actions], context: "#{context}[:alarm_event_actions]") unless input[:alarm_event_actions].nil?
        Validators::AlarmCapabilities.validate!(input[:alarm_capabilities], context: "#{context}[:alarm_capabilities]") unless input[:alarm_capabilities].nil?
      end
    end

    class DescribeDetectorModelAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorModelAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
      end
    end

    class DescribeDetectorModelAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorModelAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeDetectorModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorModelInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:detector_model_version], ::String, context: "#{context}[:detector_model_version]")
      end
    end

    class DescribeDetectorModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorModelOutput, context: context)
        Validators::DetectorModel.validate!(input[:detector_model], context: "#{context}[:detector_model]") unless input[:detector_model].nil?
      end
    end

    class DescribeInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputInput, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
      end
    end

    class DescribeInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInputOutput, context: context)
        Validators::Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
      end
    end

    class DescribeLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingOptionsInput, context: context)
      end
    end

    class DescribeLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingOptionsOutput, context: context)
        Validators::LoggingOptions.validate!(input[:logging_options], context: "#{context}[:logging_options]") unless input[:logging_options].nil?
      end
    end

    class DetectorDebugOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorDebugOption, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:key_value], ::String, context: "#{context}[:key_value]")
      end
    end

    class DetectorDebugOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DetectorDebugOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectorModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorModel, context: context)
        Validators::DetectorModelDefinition.validate!(input[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless input[:detector_model_definition].nil?
        Validators::DetectorModelConfiguration.validate!(input[:detector_model_configuration], context: "#{context}[:detector_model_configuration]") unless input[:detector_model_configuration].nil?
      end
    end

    class DetectorModelConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorModelConfiguration, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:detector_model_version], ::String, context: "#{context}[:detector_model_version]")
        Hearth::Validator.validate!(input[:detector_model_description], ::String, context: "#{context}[:detector_model_description]")
        Hearth::Validator.validate!(input[:detector_model_arn], ::String, context: "#{context}[:detector_model_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:evaluation_method], ::String, context: "#{context}[:evaluation_method]")
      end
    end

    class DetectorModelDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorModelDefinition, context: context)
        Validators::States.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:initial_state_name], ::String, context: "#{context}[:initial_state_name]")
      end
    end

    class DetectorModelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DetectorModelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectorModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorModelSummary, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:detector_model_description], ::String, context: "#{context}[:detector_model_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DetectorModelVersionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DetectorModelVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectorModelVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorModelVersionSummary, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:detector_model_version], ::String, context: "#{context}[:detector_model_version]")
        Hearth::Validator.validate!(input[:detector_model_arn], ::String, context: "#{context}[:detector_model_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:evaluation_method], ::String, context: "#{context}[:evaluation_method]")
      end
    end

    class DynamoDBAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDBAction, context: context)
        Hearth::Validator.validate!(input[:hash_key_type], ::String, context: "#{context}[:hash_key_type]")
        Hearth::Validator.validate!(input[:hash_key_field], ::String, context: "#{context}[:hash_key_field]")
        Hearth::Validator.validate!(input[:hash_key_value], ::String, context: "#{context}[:hash_key_value]")
        Hearth::Validator.validate!(input[:range_key_type], ::String, context: "#{context}[:range_key_type]")
        Hearth::Validator.validate!(input[:range_key_field], ::String, context: "#{context}[:range_key_field]")
        Hearth::Validator.validate!(input[:range_key_value], ::String, context: "#{context}[:range_key_value]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:payload_field], ::String, context: "#{context}[:payload_field]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class DynamoDBv2Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDBv2Action, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class EmailConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailConfiguration, context: context)
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
        Validators::EmailContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::EmailRecipients.validate!(input[:recipients], context: "#{context}[:recipients]") unless input[:recipients].nil?
      end
    end

    class EmailConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EmailConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EmailContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailContent, context: context)
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:additional_message], ::String, context: "#{context}[:additional_message]")
      end
    end

    class EmailRecipients
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailRecipients, context: context)
        Validators::RecipientDetails.validate!(input[:to], context: "#{context}[:to]") unless input[:to].nil?
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:event_name], ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
        Validators::Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class Events
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirehoseAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirehoseAction, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_name], ::String, context: "#{context}[:delivery_stream_name]")
        Hearth::Validator.validate!(input[:separator], ::String, context: "#{context}[:separator]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class GetDetectorModelAnalysisResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorModelAnalysisResultsInput, context: context)
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetDetectorModelAnalysisResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorModelAnalysisResultsOutput, context: context)
        Validators::AnalysisResults.validate!(input[:analysis_results], context: "#{context}[:analysis_results]") unless input[:analysis_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InitializationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitializationConfiguration, context: context)
        Hearth::Validator.validate!(input[:disabled_on_initialization], ::TrueClass, ::FalseClass, context: "#{context}[:disabled_on_initialization]")
      end
    end

    class Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Input, context: context)
        Validators::InputConfiguration.validate!(input[:input_configuration], context: "#{context}[:input_configuration]") unless input[:input_configuration].nil?
        Validators::InputDefinition.validate!(input[:input_definition], context: "#{context}[:input_definition]") unless input[:input_definition].nil?
      end
    end

    class InputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputConfiguration, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:input_description], ::String, context: "#{context}[:input_description]")
        Hearth::Validator.validate!(input[:input_arn], ::String, context: "#{context}[:input_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class InputDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDefinition, context: context)
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class InputIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputIdentifier, context: context)
        Validators::IotEventsInputIdentifier.validate!(input[:iot_events_input_identifier], context: "#{context}[:iot_events_input_identifier]") unless input[:iot_events_input_identifier].nil?
        Validators::IotSiteWiseInputIdentifier.validate!(input[:iot_site_wise_input_identifier], context: "#{context}[:iot_site_wise_input_identifier]") unless input[:iot_site_wise_input_identifier].nil?
      end
    end

    class InputSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSummary, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:input_description], ::String, context: "#{context}[:input_description]")
        Hearth::Validator.validate!(input[:input_arn], ::String, context: "#{context}[:input_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
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

    class IotEventsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotEventsAction, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class IotEventsInputIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotEventsInputIdentifier, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
      end
    end

    class IotSiteWiseAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotSiteWiseAction, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        Validators::AssetPropertyValue.validate!(input[:property_value], context: "#{context}[:property_value]") unless input[:property_value].nil?
      end
    end

    class IotSiteWiseAssetModelPropertyIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotSiteWiseAssetModelPropertyIdentifier, context: context)
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
      end
    end

    class IotSiteWiseInputIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotSiteWiseInputIdentifier, context: context)
        Validators::IotSiteWiseAssetModelPropertyIdentifier.validate!(input[:iot_site_wise_asset_model_property_identifier], context: "#{context}[:iot_site_wise_asset_model_property_identifier]") unless input[:iot_site_wise_asset_model_property_identifier].nil?
      end
    end

    class IotTopicPublishAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotTopicPublishAction, context: context)
        Hearth::Validator.validate!(input[:mqtt_topic], ::String, context: "#{context}[:mqtt_topic]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class LambdaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaAction, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAlarmModelVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmModelVersionsInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAlarmModelVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmModelVersionsOutput, context: context)
        Validators::AlarmModelVersionSummaries.validate!(input[:alarm_model_version_summaries], context: "#{context}[:alarm_model_version_summaries]") unless input[:alarm_model_version_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAlarmModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmModelsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAlarmModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmModelsOutput, context: context)
        Validators::AlarmModelSummaries.validate!(input[:alarm_model_summaries], context: "#{context}[:alarm_model_summaries]") unless input[:alarm_model_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectorModelVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorModelVersionsInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDetectorModelVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorModelVersionsOutput, context: context)
        Validators::DetectorModelVersionSummaries.validate!(input[:detector_model_version_summaries], context: "#{context}[:detector_model_version_summaries]") unless input[:detector_model_version_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDetectorModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorModelsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDetectorModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDetectorModelsOutput, context: context)
        Validators::DetectorModelSummaries.validate!(input[:detector_model_summaries], context: "#{context}[:detector_model_summaries]") unless input[:detector_model_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputRoutingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputRoutingsInput, context: context)
        Validators::InputIdentifier.validate!(input[:input_identifier], context: "#{context}[:input_identifier]") unless input[:input_identifier].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputRoutingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputRoutingsOutput, context: context)
        Validators::RoutedResources.validate!(input[:routed_resources], context: "#{context}[:routed_resources]") unless input[:routed_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInputsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInputsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInputsOutput, context: context)
        Validators::InputSummaries.validate!(input[:input_summaries], context: "#{context}[:input_summaries]") unless input[:input_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LoggingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingOptions, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::DetectorDebugOptions.validate!(input[:detector_debug_options], context: "#{context}[:detector_debug_options]") unless input[:detector_debug_options].nil?
      end
    end

    class NotificationAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationAction, context: context)
        Validators::NotificationTargetActions.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::SMSConfigurations.validate!(input[:sms_configurations], context: "#{context}[:sms_configurations]") unless input[:sms_configurations].nil?
        Validators::EmailConfigurations.validate!(input[:email_configurations], context: "#{context}[:email_configurations]") unless input[:email_configurations].nil?
      end
    end

    class NotificationActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NotificationAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationTargetActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationTargetActions, context: context)
        Validators::LambdaAction.validate!(input[:lambda_action], context: "#{context}[:lambda_action]") unless input[:lambda_action].nil?
      end
    end

    class OnEnterLifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnEnterLifecycle, context: context)
        Validators::Events.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class OnExitLifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnExitLifecycle, context: context)
        Validators::Events.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class OnInputLifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnInputLifecycle, context: context)
        Validators::Events.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Validators::TransitionEvents.validate!(input[:transition_events], context: "#{context}[:transition_events]") unless input[:transition_events].nil?
      end
    end

    class Payload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Payload, context: context)
        Hearth::Validator.validate!(input[:content_expression], ::String, context: "#{context}[:content_expression]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PutLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingOptionsInput, context: context)
        Validators::LoggingOptions.validate!(input[:logging_options], context: "#{context}[:logging_options]") unless input[:logging_options].nil?
      end
    end

    class PutLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingOptionsOutput, context: context)
      end
    end

    class RecipientDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipientDetail, context: context)
        Validators::SSOIdentity.validate!(input[:sso_identity], context: "#{context}[:sso_identity]") unless input[:sso_identity].nil?
      end
    end

    class RecipientDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecipientDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResetTimerAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetTimerAction, context: context)
        Hearth::Validator.validate!(input[:timer_name], ::String, context: "#{context}[:timer_name]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RoutedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutedResource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RoutedResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RoutedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SMSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSConfiguration, context: context)
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:additional_message], ::String, context: "#{context}[:additional_message]")
        Validators::RecipientDetails.validate!(input[:recipients], context: "#{context}[:recipients]") unless input[:recipients].nil?
      end
    end

    class SMSConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SMSConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SNSTopicPublishAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSTopicPublishAction, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class SSOIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSOIdentity, context: context)
        Hearth::Validator.validate!(input[:identity_store_id], ::String, context: "#{context}[:identity_store_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetTimerAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTimerAction, context: context)
        Hearth::Validator.validate!(input[:timer_name], ::String, context: "#{context}[:timer_name]")
        Hearth::Validator.validate!(input[:seconds], ::Integer, context: "#{context}[:seconds]")
        Hearth::Validator.validate!(input[:duration_expression], ::String, context: "#{context}[:duration_expression]")
      end
    end

    class SetVariableAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVariableAction, context: context)
        Hearth::Validator.validate!(input[:variable_name], ::String, context: "#{context}[:variable_name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SimpleRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleRule, context: context)
        Hearth::Validator.validate!(input[:input_property], ::String, context: "#{context}[:input_property]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:threshold], ::String, context: "#{context}[:threshold]")
      end
    end

    class SqsAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqsAction, context: context)
        Hearth::Validator.validate!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate!(input[:use_base64], ::TrueClass, ::FalseClass, context: "#{context}[:use_base64]")
        Validators::Payload.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class StartDetectorModelAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDetectorModelAnalysisInput, context: context)
        Validators::DetectorModelDefinition.validate!(input[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless input[:detector_model_definition].nil?
      end
    end

    class StartDetectorModelAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDetectorModelAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
      end
    end

    class State
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::State, context: context)
        Hearth::Validator.validate!(input[:state_name], ::String, context: "#{context}[:state_name]")
        Validators::OnInputLifecycle.validate!(input[:on_input], context: "#{context}[:on_input]") unless input[:on_input].nil?
        Validators::OnEnterLifecycle.validate!(input[:on_enter], context: "#{context}[:on_enter]") unless input[:on_enter].nil?
        Validators::OnExitLifecycle.validate!(input[:on_exit], context: "#{context}[:on_exit]") unless input[:on_exit].nil?
      end
    end

    class States
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::State.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransitionEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransitionEvent, context: context)
        Hearth::Validator.validate!(input[:event_name], ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
        Validators::Actions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:next_state], ::String, context: "#{context}[:next_state]")
      end
    end

    class TransitionEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TransitionEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAlarmModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAlarmModelInput, context: context)
        Hearth::Validator.validate!(input[:alarm_model_name], ::String, context: "#{context}[:alarm_model_name]")
        Hearth::Validator.validate!(input[:alarm_model_description], ::String, context: "#{context}[:alarm_model_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:severity], ::Integer, context: "#{context}[:severity]")
        Validators::AlarmRule.validate!(input[:alarm_rule], context: "#{context}[:alarm_rule]") unless input[:alarm_rule].nil?
        Validators::AlarmNotification.validate!(input[:alarm_notification], context: "#{context}[:alarm_notification]") unless input[:alarm_notification].nil?
        Validators::AlarmEventActions.validate!(input[:alarm_event_actions], context: "#{context}[:alarm_event_actions]") unless input[:alarm_event_actions].nil?
        Validators::AlarmCapabilities.validate!(input[:alarm_capabilities], context: "#{context}[:alarm_capabilities]") unless input[:alarm_capabilities].nil?
      end
    end

    class UpdateAlarmModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAlarmModelOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:alarm_model_arn], ::String, context: "#{context}[:alarm_model_arn]")
        Hearth::Validator.validate!(input[:alarm_model_version], ::String, context: "#{context}[:alarm_model_version]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateDetectorModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorModelInput, context: context)
        Hearth::Validator.validate!(input[:detector_model_name], ::String, context: "#{context}[:detector_model_name]")
        Validators::DetectorModelDefinition.validate!(input[:detector_model_definition], context: "#{context}[:detector_model_definition]") unless input[:detector_model_definition].nil?
        Hearth::Validator.validate!(input[:detector_model_description], ::String, context: "#{context}[:detector_model_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:evaluation_method], ::String, context: "#{context}[:evaluation_method]")
      end
    end

    class UpdateDetectorModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorModelOutput, context: context)
        Validators::DetectorModelConfiguration.validate!(input[:detector_model_configuration], context: "#{context}[:detector_model_configuration]") unless input[:detector_model_configuration].nil?
      end
    end

    class UpdateInputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputInput, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:input_description], ::String, context: "#{context}[:input_description]")
        Validators::InputDefinition.validate!(input[:input_definition], context: "#{context}[:input_definition]") unless input[:input_definition].nil?
      end
    end

    class UpdateInputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInputOutput, context: context)
        Validators::InputConfiguration.validate!(input[:input_configuration], context: "#{context}[:input_configuration]") unless input[:input_configuration].nil?
      end
    end

  end
end
