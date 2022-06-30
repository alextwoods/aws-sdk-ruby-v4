# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Fis
  module Params

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.id = params[:id]
        type.description = params[:description]
        type.parameters = ActionParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = ActionTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ActionParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionParameter, context: context)
        type = Types::ActionParameter.new
        type.description = params[:description]
        type.required = params[:required]
        type
      end
    end

    module ActionParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ActionParameter.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ActionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionSummary, context: context)
        type = Types::ActionSummary.new
        type.id = params[:id]
        type.description = params[:description]
        type.targets = ActionTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ActionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTarget, context: context)
        type = Types::ActionTarget.new
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ActionTargetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ActionTarget.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateExperimentTemplateActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentTemplateActionInput, context: context)
        type = Types::CreateExperimentTemplateActionInput.new
        type.action_id = params[:action_id]
        type.description = params[:description]
        type.parameters = ExperimentTemplateActionParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = ExperimentTemplateActionTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.start_after = ExperimentTemplateActionStartAfterList.build(params[:start_after], context: "#{context}[:start_after]") unless params[:start_after].nil?
        type
      end
    end

    module CreateExperimentTemplateActionInputMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CreateExperimentTemplateActionInput.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module CreateExperimentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentTemplateInput, context: context)
        type = Types::CreateExperimentTemplateInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.description = params[:description]
        type.stop_conditions = CreateExperimentTemplateStopConditionInputList.build(params[:stop_conditions], context: "#{context}[:stop_conditions]") unless params[:stop_conditions].nil?
        type.targets = CreateExperimentTemplateTargetInputMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.actions = CreateExperimentTemplateActionInputMap.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.log_configuration = CreateExperimentTemplateLogConfigurationInput.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type
      end
    end

    module CreateExperimentTemplateLogConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentTemplateLogConfigurationInput, context: context)
        type = Types::CreateExperimentTemplateLogConfigurationInput.new
        type.cloud_watch_logs_configuration = ExperimentTemplateCloudWatchLogsLogConfigurationInput.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.s3_configuration = ExperimentTemplateS3LogConfigurationInput.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.log_schema_version = params[:log_schema_version]
        type
      end
    end

    module CreateExperimentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentTemplateOutput, context: context)
        type = Types::CreateExperimentTemplateOutput.new
        type.experiment_template = ExperimentTemplate.build(params[:experiment_template], context: "#{context}[:experiment_template]") unless params[:experiment_template].nil?
        type
      end
    end

    module CreateExperimentTemplateStopConditionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentTemplateStopConditionInput, context: context)
        type = Types::CreateExperimentTemplateStopConditionInput.new
        type.source = params[:source]
        type.value = params[:value]
        type
      end
    end

    module CreateExperimentTemplateStopConditionInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateExperimentTemplateStopConditionInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateExperimentTemplateTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentTemplateTargetInput, context: context)
        type = Types::CreateExperimentTemplateTargetInput.new
        type.resource_type = params[:resource_type]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_tags = TagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.filters = ExperimentTemplateTargetFilterInputList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.selection_mode = params[:selection_mode]
        type.parameters = ExperimentTemplateTargetParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module CreateExperimentTemplateTargetInputMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CreateExperimentTemplateTargetInput.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module DeleteExperimentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperimentTemplateInput, context: context)
        type = Types::DeleteExperimentTemplateInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteExperimentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperimentTemplateOutput, context: context)
        type = Types::DeleteExperimentTemplateOutput.new
        type.experiment_template = ExperimentTemplate.build(params[:experiment_template], context: "#{context}[:experiment_template]") unless params[:experiment_template].nil?
        type
      end
    end

    module Experiment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Experiment, context: context)
        type = Types::Experiment.new
        type.id = params[:id]
        type.experiment_template_id = params[:experiment_template_id]
        type.role_arn = params[:role_arn]
        type.state = ExperimentState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.targets = ExperimentTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.actions = ExperimentActionMap.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.stop_conditions = ExperimentStopConditionList.build(params[:stop_conditions], context: "#{context}[:stop_conditions]") unless params[:stop_conditions].nil?
        type.creation_time = params[:creation_time]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.log_configuration = ExperimentLogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type
      end
    end

    module ExperimentAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentAction, context: context)
        type = Types::ExperimentAction.new
        type.action_id = params[:action_id]
        type.description = params[:description]
        type.parameters = ExperimentActionParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = ExperimentActionTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.start_after = ExperimentActionStartAfterList.build(params[:start_after], context: "#{context}[:start_after]") unless params[:start_after].nil?
        type.state = ExperimentActionState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ExperimentActionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExperimentAction.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExperimentActionParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExperimentActionStartAfterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperimentActionState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentActionState, context: context)
        type = Types::ExperimentActionState.new
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module ExperimentActionTargetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExperimentCloudWatchLogsLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentCloudWatchLogsLogConfiguration, context: context)
        type = Types::ExperimentCloudWatchLogsLogConfiguration.new
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module ExperimentLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentLogConfiguration, context: context)
        type = Types::ExperimentLogConfiguration.new
        type.cloud_watch_logs_configuration = ExperimentCloudWatchLogsLogConfiguration.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.s3_configuration = ExperimentS3LogConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.log_schema_version = params[:log_schema_version]
        type
      end
    end

    module ExperimentS3LogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentS3LogConfiguration, context: context)
        type = Types::ExperimentS3LogConfiguration.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type
      end
    end

    module ExperimentState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentState, context: context)
        type = Types::ExperimentState.new
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module ExperimentStopCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentStopCondition, context: context)
        type = Types::ExperimentStopCondition.new
        type.source = params[:source]
        type.value = params[:value]
        type
      end
    end

    module ExperimentStopConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentStopCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentSummary, context: context)
        type = Types::ExperimentSummary.new
        type.id = params[:id]
        type.experiment_template_id = params[:experiment_template_id]
        type.state = ExperimentState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.creation_time = params[:creation_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ExperimentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTarget, context: context)
        type = Types::ExperimentTarget.new
        type.resource_type = params[:resource_type]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_tags = TagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.filters = ExperimentTargetFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.selection_mode = params[:selection_mode]
        type.parameters = ExperimentTargetParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ExperimentTargetFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTargetFilter, context: context)
        type = Types::ExperimentTargetFilter.new
        type.path = params[:path]
        type.values = ExperimentTargetFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ExperimentTargetFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentTargetFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentTargetFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperimentTargetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExperimentTarget.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExperimentTargetParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExperimentTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplate, context: context)
        type = Types::ExperimentTemplate.new
        type.id = params[:id]
        type.description = params[:description]
        type.targets = ExperimentTemplateTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.actions = ExperimentTemplateActionMap.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.stop_conditions = ExperimentTemplateStopConditionList.build(params[:stop_conditions], context: "#{context}[:stop_conditions]") unless params[:stop_conditions].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.log_configuration = ExperimentTemplateLogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type
      end
    end

    module ExperimentTemplateAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateAction, context: context)
        type = Types::ExperimentTemplateAction.new
        type.action_id = params[:action_id]
        type.description = params[:description]
        type.parameters = ExperimentTemplateActionParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = ExperimentTemplateActionTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.start_after = ExperimentTemplateActionStartAfterList.build(params[:start_after], context: "#{context}[:start_after]") unless params[:start_after].nil?
        type
      end
    end

    module ExperimentTemplateActionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExperimentTemplateAction.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExperimentTemplateActionParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExperimentTemplateActionStartAfterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperimentTemplateActionTargetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExperimentTemplateCloudWatchLogsLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateCloudWatchLogsLogConfiguration, context: context)
        type = Types::ExperimentTemplateCloudWatchLogsLogConfiguration.new
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module ExperimentTemplateCloudWatchLogsLogConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput, context: context)
        type = Types::ExperimentTemplateCloudWatchLogsLogConfigurationInput.new
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module ExperimentTemplateLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateLogConfiguration, context: context)
        type = Types::ExperimentTemplateLogConfiguration.new
        type.cloud_watch_logs_configuration = ExperimentTemplateCloudWatchLogsLogConfiguration.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.s3_configuration = ExperimentTemplateS3LogConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.log_schema_version = params[:log_schema_version]
        type
      end
    end

    module ExperimentTemplateS3LogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateS3LogConfiguration, context: context)
        type = Types::ExperimentTemplateS3LogConfiguration.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type
      end
    end

    module ExperimentTemplateS3LogConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateS3LogConfigurationInput, context: context)
        type = Types::ExperimentTemplateS3LogConfigurationInput.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type
      end
    end

    module ExperimentTemplateStopCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateStopCondition, context: context)
        type = Types::ExperimentTemplateStopCondition.new
        type.source = params[:source]
        type.value = params[:value]
        type
      end
    end

    module ExperimentTemplateStopConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentTemplateStopCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateSummary, context: context)
        type = Types::ExperimentTemplateSummary.new
        type.id = params[:id]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ExperimentTemplateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentTemplateTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateTarget, context: context)
        type = Types::ExperimentTemplateTarget.new
        type.resource_type = params[:resource_type]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_tags = TagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.filters = ExperimentTemplateTargetFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.selection_mode = params[:selection_mode]
        type.parameters = ExperimentTemplateTargetParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ExperimentTemplateTargetFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateTargetFilter, context: context)
        type = Types::ExperimentTemplateTargetFilter.new
        type.path = params[:path]
        type.values = ExperimentTemplateTargetFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ExperimentTemplateTargetFilterInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentTemplateTargetInputFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentTemplateTargetFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentTemplateTargetFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentTemplateTargetFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperimentTemplateTargetInputFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentTemplateTargetInputFilter, context: context)
        type = Types::ExperimentTemplateTargetInputFilter.new
        type.path = params[:path]
        type.values = ExperimentTemplateTargetFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ExperimentTemplateTargetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExperimentTemplateTarget.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExperimentTemplateTargetParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActionInput, context: context)
        type = Types::GetActionInput.new
        type.id = params[:id]
        type
      end
    end

    module GetActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActionOutput, context: context)
        type = Types::GetActionOutput.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module GetExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentInput, context: context)
        type = Types::GetExperimentInput.new
        type.id = params[:id]
        type
      end
    end

    module GetExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentOutput, context: context)
        type = Types::GetExperimentOutput.new
        type.experiment = Experiment.build(params[:experiment], context: "#{context}[:experiment]") unless params[:experiment].nil?
        type
      end
    end

    module GetExperimentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentTemplateInput, context: context)
        type = Types::GetExperimentTemplateInput.new
        type.id = params[:id]
        type
      end
    end

    module GetExperimentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentTemplateOutput, context: context)
        type = Types::GetExperimentTemplateOutput.new
        type.experiment_template = ExperimentTemplate.build(params[:experiment_template], context: "#{context}[:experiment_template]") unless params[:experiment_template].nil?
        type
      end
    end

    module GetTargetResourceTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTargetResourceTypeInput, context: context)
        type = Types::GetTargetResourceTypeInput.new
        type.resource_type = params[:resource_type]
        type
      end
    end

    module GetTargetResourceTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTargetResourceTypeOutput, context: context)
        type = Types::GetTargetResourceTypeOutput.new
        type.target_resource_type = TargetResourceType.build(params[:target_resource_type], context: "#{context}[:target_resource_type]") unless params[:target_resource_type].nil?
        type
      end
    end

    module ListActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionsInput, context: context)
        type = Types::ListActionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionsOutput, context: context)
        type = Types::ListActionsOutput.new
        type.actions = ActionSummaryList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperimentTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentTemplatesInput, context: context)
        type = Types::ListExperimentTemplatesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperimentTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentTemplatesOutput, context: context)
        type = Types::ListExperimentTemplatesOutput.new
        type.experiment_templates = ExperimentTemplateSummaryList.build(params[:experiment_templates], context: "#{context}[:experiment_templates]") unless params[:experiment_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperimentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentsInput, context: context)
        type = Types::ListExperimentsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperimentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentsOutput, context: context)
        type = Types::ListExperimentsOutput.new
        type.experiments = ExperimentSummaryList.build(params[:experiments], context: "#{context}[:experiments]") unless params[:experiments].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTargetResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetResourceTypesInput, context: context)
        type = Types::ListTargetResourceTypesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTargetResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetResourceTypesOutput, context: context)
        type = Types::ListTargetResourceTypesOutput.new
        type.target_resource_types = TargetResourceTypeSummaryList.build(params[:target_resource_types], context: "#{context}[:target_resource_types]") unless params[:target_resource_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ResourceArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StartExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExperimentInput, context: context)
        type = Types::StartExperimentInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.experiment_template_id = params[:experiment_template_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExperimentOutput, context: context)
        type = Types::StartExperimentOutput.new
        type.experiment = Experiment.build(params[:experiment], context: "#{context}[:experiment]") unless params[:experiment].nil?
        type
      end
    end

    module StopExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExperimentInput, context: context)
        type = Types::StopExperimentInput.new
        type.id = params[:id]
        type
      end
    end

    module StopExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExperimentOutput, context: context)
        type = Types::StopExperimentOutput.new
        type.experiment = Experiment.build(params[:experiment], context: "#{context}[:experiment]") unless params[:experiment].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TargetResourceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetResourceType, context: context)
        type = Types::TargetResourceType.new
        type.resource_type = params[:resource_type]
        type.description = params[:description]
        type.parameters = TargetResourceTypeParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module TargetResourceTypeParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetResourceTypeParameter, context: context)
        type = Types::TargetResourceTypeParameter.new
        type.description = params[:description]
        type.required = params[:required]
        type
      end
    end

    module TargetResourceTypeParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = TargetResourceTypeParameter.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module TargetResourceTypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetResourceTypeSummary, context: context)
        type = Types::TargetResourceTypeSummary.new
        type.resource_type = params[:resource_type]
        type.description = params[:description]
        type
      end
    end

    module TargetResourceTypeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetResourceTypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateExperimentTemplateActionInputItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentTemplateActionInputItem, context: context)
        type = Types::UpdateExperimentTemplateActionInputItem.new
        type.action_id = params[:action_id]
        type.description = params[:description]
        type.parameters = ExperimentTemplateActionParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = ExperimentTemplateActionTargetMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.start_after = ExperimentTemplateActionStartAfterList.build(params[:start_after], context: "#{context}[:start_after]") unless params[:start_after].nil?
        type
      end
    end

    module UpdateExperimentTemplateActionInputMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = UpdateExperimentTemplateActionInputItem.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module UpdateExperimentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentTemplateInput, context: context)
        type = Types::UpdateExperimentTemplateInput.new
        type.id = params[:id]
        type.description = params[:description]
        type.stop_conditions = UpdateExperimentTemplateStopConditionInputList.build(params[:stop_conditions], context: "#{context}[:stop_conditions]") unless params[:stop_conditions].nil?
        type.targets = UpdateExperimentTemplateTargetInputMap.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.actions = UpdateExperimentTemplateActionInputMap.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.role_arn = params[:role_arn]
        type.log_configuration = UpdateExperimentTemplateLogConfigurationInput.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type
      end
    end

    module UpdateExperimentTemplateLogConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentTemplateLogConfigurationInput, context: context)
        type = Types::UpdateExperimentTemplateLogConfigurationInput.new
        type.cloud_watch_logs_configuration = ExperimentTemplateCloudWatchLogsLogConfigurationInput.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.s3_configuration = ExperimentTemplateS3LogConfigurationInput.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.log_schema_version = params[:log_schema_version]
        type
      end
    end

    module UpdateExperimentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentTemplateOutput, context: context)
        type = Types::UpdateExperimentTemplateOutput.new
        type.experiment_template = ExperimentTemplate.build(params[:experiment_template], context: "#{context}[:experiment_template]") unless params[:experiment_template].nil?
        type
      end
    end

    module UpdateExperimentTemplateStopConditionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentTemplateStopConditionInput, context: context)
        type = Types::UpdateExperimentTemplateStopConditionInput.new
        type.source = params[:source]
        type.value = params[:value]
        type
      end
    end

    module UpdateExperimentTemplateStopConditionInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateExperimentTemplateStopConditionInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateExperimentTemplateTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentTemplateTargetInput, context: context)
        type = Types::UpdateExperimentTemplateTargetInput.new
        type.resource_type = params[:resource_type]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_tags = TagMap.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.filters = ExperimentTemplateTargetFilterInputList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.selection_mode = params[:selection_mode]
        type.parameters = ExperimentTemplateTargetParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module UpdateExperimentTemplateTargetInputMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = UpdateExperimentTemplateTargetInput.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
