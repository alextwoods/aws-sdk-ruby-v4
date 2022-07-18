# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Fis
  module Validators

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ActionParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ActionTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ActionParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionParameter, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:required], ::TrueClass, ::FalseClass, context: "#{context}[:required]")
      end
    end

    class ActionParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ActionParameter.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ActionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ActionTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ActionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTarget, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ActionTargetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ActionTarget.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateExperimentTemplateActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentTemplateActionInput, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ExperimentTemplateActionParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ExperimentTemplateActionTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        ExperimentTemplateActionStartAfterList.validate!(input[:start_after], context: "#{context}[:start_after]") unless input[:start_after].nil?
      end
    end

    class CreateExperimentTemplateActionInputMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CreateExperimentTemplateActionInput.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class CreateExperimentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        CreateExperimentTemplateStopConditionInputList.validate!(input[:stop_conditions], context: "#{context}[:stop_conditions]") unless input[:stop_conditions].nil?
        CreateExperimentTemplateTargetInputMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        CreateExperimentTemplateActionInputMap.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        CreateExperimentTemplateLogConfigurationInput.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
      end
    end

    class CreateExperimentTemplateLogConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentTemplateLogConfigurationInput, context: context)
        ExperimentTemplateCloudWatchLogsLogConfigurationInput.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        ExperimentTemplateS3LogConfigurationInput.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        Hearth::Validator.validate!(input[:log_schema_version], ::Integer, context: "#{context}[:log_schema_version]")
      end
    end

    class CreateExperimentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentTemplateOutput, context: context)
        ExperimentTemplate.validate!(input[:experiment_template], context: "#{context}[:experiment_template]") unless input[:experiment_template].nil?
      end
    end

    class CreateExperimentTemplateStopConditionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentTemplateStopConditionInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CreateExperimentTemplateStopConditionInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateExperimentTemplateStopConditionInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateExperimentTemplateTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentTemplateTargetInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        TagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        ExperimentTemplateTargetFilterInputList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:selection_mode], ::String, context: "#{context}[:selection_mode]")
        ExperimentTemplateTargetParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class CreateExperimentTemplateTargetInputMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CreateExperimentTemplateTargetInput.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class DeleteExperimentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperimentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteExperimentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperimentTemplateOutput, context: context)
        ExperimentTemplate.validate!(input[:experiment_template], context: "#{context}[:experiment_template]") unless input[:experiment_template].nil?
      end
    end

    class Experiment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Experiment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:experiment_template_id], ::String, context: "#{context}[:experiment_template_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ExperimentState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        ExperimentTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        ExperimentActionMap.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        ExperimentStopConditionList.validate!(input[:stop_conditions], context: "#{context}[:stop_conditions]") unless input[:stop_conditions].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ExperimentLogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
      end
    end

    class ExperimentAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentAction, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ExperimentActionParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ExperimentActionTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        ExperimentActionStartAfterList.validate!(input[:start_after], context: "#{context}[:start_after]") unless input[:start_after].nil?
        ExperimentActionState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ExperimentActionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ExperimentAction.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExperimentActionParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExperimentActionStartAfterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperimentActionState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentActionState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ExperimentActionTargetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExperimentCloudWatchLogsLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentCloudWatchLogsLogConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class ExperimentLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentLogConfiguration, context: context)
        ExperimentCloudWatchLogsLogConfiguration.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        ExperimentS3LogConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        Hearth::Validator.validate!(input[:log_schema_version], ::Integer, context: "#{context}[:log_schema_version]")
      end
    end

    class ExperimentS3LogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentS3LogConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ExperimentState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ExperimentStopCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentStopCondition, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ExperimentStopConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentStopCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:experiment_template_id], ::String, context: "#{context}[:experiment_template_id]")
        ExperimentState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ExperimentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTarget, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        TagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        ExperimentTargetFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:selection_mode], ::String, context: "#{context}[:selection_mode]")
        ExperimentTargetParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ExperimentTargetFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTargetFilter, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        ExperimentTargetFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ExperimentTargetFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentTargetFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentTargetFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperimentTargetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ExperimentTarget.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExperimentTargetParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExperimentTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplate, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ExperimentTemplateTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        ExperimentTemplateActionMap.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        ExperimentTemplateStopConditionList.validate!(input[:stop_conditions], context: "#{context}[:stop_conditions]") unless input[:stop_conditions].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ExperimentTemplateLogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
      end
    end

    class ExperimentTemplateAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateAction, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ExperimentTemplateActionParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ExperimentTemplateActionTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        ExperimentTemplateActionStartAfterList.validate!(input[:start_after], context: "#{context}[:start_after]") unless input[:start_after].nil?
      end
    end

    class ExperimentTemplateActionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ExperimentTemplateAction.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExperimentTemplateActionParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExperimentTemplateActionStartAfterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperimentTemplateActionTargetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExperimentTemplateCloudWatchLogsLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateCloudWatchLogsLogConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class ExperimentTemplateCloudWatchLogsLogConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class ExperimentTemplateLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateLogConfiguration, context: context)
        ExperimentTemplateCloudWatchLogsLogConfiguration.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        ExperimentTemplateS3LogConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        Hearth::Validator.validate!(input[:log_schema_version], ::Integer, context: "#{context}[:log_schema_version]")
      end
    end

    class ExperimentTemplateS3LogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateS3LogConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ExperimentTemplateS3LogConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateS3LogConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ExperimentTemplateStopCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateStopCondition, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ExperimentTemplateStopConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentTemplateStopCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ExperimentTemplateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentTemplateTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateTarget, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        TagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        ExperimentTemplateTargetFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:selection_mode], ::String, context: "#{context}[:selection_mode]")
        ExperimentTemplateTargetParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ExperimentTemplateTargetFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateTargetFilter, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        ExperimentTemplateTargetFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ExperimentTemplateTargetFilterInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentTemplateTargetInputFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentTemplateTargetFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentTemplateTargetFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentTemplateTargetFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperimentTemplateTargetInputFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentTemplateTargetInputFilter, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        ExperimentTemplateTargetFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ExperimentTemplateTargetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ExperimentTemplateTarget.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExperimentTemplateTargetParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActionOutput, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class GetExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentOutput, context: context)
        Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
      end
    end

    class GetExperimentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetExperimentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentTemplateOutput, context: context)
        ExperimentTemplate.validate!(input[:experiment_template], context: "#{context}[:experiment_template]") unless input[:experiment_template].nil?
      end
    end

    class GetTargetResourceTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTargetResourceTypeInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class GetTargetResourceTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTargetResourceTypeOutput, context: context)
        TargetResourceType.validate!(input[:target_resource_type], context: "#{context}[:target_resource_type]") unless input[:target_resource_type].nil?
      end
    end

    class ListActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionsOutput, context: context)
        ActionSummaryList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperimentTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperimentTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentTemplatesOutput, context: context)
        ExperimentTemplateSummaryList.validate!(input[:experiment_templates], context: "#{context}[:experiment_templates]") unless input[:experiment_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperimentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperimentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentsOutput, context: context)
        ExperimentSummaryList.validate!(input[:experiments], context: "#{context}[:experiments]") unless input[:experiments].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTargetResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetResourceTypesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTargetResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetResourceTypesOutput, context: context)
        TargetResourceTypeSummaryList.validate!(input[:target_resource_types], context: "#{context}[:target_resource_types]") unless input[:target_resource_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ResourceArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExperimentInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:experiment_template_id], ::String, context: "#{context}[:experiment_template_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExperimentOutput, context: context)
        Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
      end
    end

    class StopExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExperimentInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class StopExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExperimentOutput, context: context)
        Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetResourceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetResourceType, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TargetResourceTypeParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class TargetResourceTypeParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetResourceTypeParameter, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:required], ::TrueClass, ::FalseClass, context: "#{context}[:required]")
      end
    end

    class TargetResourceTypeParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          TargetResourceTypeParameter.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class TargetResourceTypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetResourceTypeSummary, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class TargetResourceTypeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetResourceTypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateExperimentTemplateActionInputItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentTemplateActionInputItem, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ExperimentTemplateActionParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ExperimentTemplateActionTargetMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        ExperimentTemplateActionStartAfterList.validate!(input[:start_after], context: "#{context}[:start_after]") unless input[:start_after].nil?
      end
    end

    class UpdateExperimentTemplateActionInputMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          UpdateExperimentTemplateActionInputItem.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class UpdateExperimentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        UpdateExperimentTemplateStopConditionInputList.validate!(input[:stop_conditions], context: "#{context}[:stop_conditions]") unless input[:stop_conditions].nil?
        UpdateExperimentTemplateTargetInputMap.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        UpdateExperimentTemplateActionInputMap.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        UpdateExperimentTemplateLogConfigurationInput.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
      end
    end

    class UpdateExperimentTemplateLogConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentTemplateLogConfigurationInput, context: context)
        ExperimentTemplateCloudWatchLogsLogConfigurationInput.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        ExperimentTemplateS3LogConfigurationInput.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        Hearth::Validator.validate!(input[:log_schema_version], ::Integer, context: "#{context}[:log_schema_version]")
      end
    end

    class UpdateExperimentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentTemplateOutput, context: context)
        ExperimentTemplate.validate!(input[:experiment_template], context: "#{context}[:experiment_template]") unless input[:experiment_template].nil?
      end
    end

    class UpdateExperimentTemplateStopConditionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentTemplateStopConditionInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class UpdateExperimentTemplateStopConditionInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateExperimentTemplateStopConditionInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateExperimentTemplateTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentTemplateTargetInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        TagMap.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        ExperimentTemplateTargetFilterInputList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:selection_mode], ::String, context: "#{context}[:selection_mode]")
        ExperimentTemplateTargetParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class UpdateExperimentTemplateTargetInputMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          UpdateExperimentTemplateTargetInput.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
