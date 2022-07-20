# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Evidently
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module BatchEvaluateFeatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEvaluateFeatureInput, context: context)
        type = Types::BatchEvaluateFeatureInput.new
        type.project = params[:project]
        type.requests = EvaluationRequestsList.build(params[:requests], context: "#{context}[:requests]") unless params[:requests].nil?
        type
      end
    end

    module BatchEvaluateFeatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEvaluateFeatureOutput, context: context)
        type = Types::BatchEvaluateFeatureOutput.new
        type.results = EvaluationResultsList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module CloudWatchLogsDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsDestination, context: context)
        type = Types::CloudWatchLogsDestination.new
        type.log_group = params[:log_group]
        type
      end
    end

    module CloudWatchLogsDestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsDestinationConfig, context: context)
        type = Types::CloudWatchLogsDestinationConfig.new
        type.log_group = params[:log_group]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentInput, context: context)
        type = Types::CreateExperimentInput.new
        type.project = params[:project]
        type.name = params[:name]
        type.description = params[:description]
        type.treatments = TreatmentConfigList.build(params[:treatments], context: "#{context}[:treatments]") unless params[:treatments].nil?
        type.metric_goals = MetricGoalConfigList.build(params[:metric_goals], context: "#{context}[:metric_goals]") unless params[:metric_goals].nil?
        type.randomization_salt = params[:randomization_salt]
        type.sampling_rate = params[:sampling_rate]
        type.online_ab_config = OnlineAbConfig.build(params[:online_ab_config], context: "#{context}[:online_ab_config]") unless params[:online_ab_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentOutput, context: context)
        type = Types::CreateExperimentOutput.new
        type.experiment = Experiment.build(params[:experiment], context: "#{context}[:experiment]") unless params[:experiment].nil?
        type
      end
    end

    module CreateFeatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFeatureInput, context: context)
        type = Types::CreateFeatureInput.new
        type.project = params[:project]
        type.name = params[:name]
        type.evaluation_strategy = params[:evaluation_strategy]
        type.description = params[:description]
        type.variations = VariationConfigsList.build(params[:variations], context: "#{context}[:variations]") unless params[:variations].nil?
        type.default_variation = params[:default_variation]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.entity_overrides = EntityOverrideMap.build(params[:entity_overrides], context: "#{context}[:entity_overrides]") unless params[:entity_overrides].nil?
        type
      end
    end

    module CreateFeatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFeatureOutput, context: context)
        type = Types::CreateFeatureOutput.new
        type.feature = Feature.build(params[:feature], context: "#{context}[:feature]") unless params[:feature].nil?
        type
      end
    end

    module CreateLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchInput, context: context)
        type = Types::CreateLaunchInput.new
        type.project = params[:project]
        type.name = params[:name]
        type.description = params[:description]
        type.scheduled_splits_config = ScheduledSplitsLaunchConfig.build(params[:scheduled_splits_config], context: "#{context}[:scheduled_splits_config]") unless params[:scheduled_splits_config].nil?
        type.metric_monitors = MetricMonitorConfigList.build(params[:metric_monitors], context: "#{context}[:metric_monitors]") unless params[:metric_monitors].nil?
        type.groups = LaunchGroupConfigList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.randomization_salt = params[:randomization_salt]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchOutput, context: context)
        type = Types::CreateLaunchOutput.new
        type.launch = Launch.build(params[:launch], context: "#{context}[:launch]") unless params[:launch].nil?
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.data_delivery = ProjectDataDeliveryConfig.build(params[:data_delivery], context: "#{context}[:data_delivery]") unless params[:data_delivery].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module DeleteExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperimentInput, context: context)
        type = Types::DeleteExperimentInput.new
        type.project = params[:project]
        type.experiment = params[:experiment]
        type
      end
    end

    module DeleteExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperimentOutput, context: context)
        type = Types::DeleteExperimentOutput.new
        type
      end
    end

    module DeleteFeatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFeatureInput, context: context)
        type = Types::DeleteFeatureInput.new
        type.project = params[:project]
        type.feature = params[:feature]
        type
      end
    end

    module DeleteFeatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFeatureOutput, context: context)
        type = Types::DeleteFeatureOutput.new
        type
      end
    end

    module DeleteLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchInput, context: context)
        type = Types::DeleteLaunchInput.new
        type.project = params[:project]
        type.launch = params[:launch]
        type
      end
    end

    module DeleteLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchOutput, context: context)
        type = Types::DeleteLaunchOutput.new
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project = params[:project]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type
      end
    end

    module DoubleValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityOverrideMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EvaluateFeatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateFeatureInput, context: context)
        type = Types::EvaluateFeatureInput.new
        type.project = params[:project]
        type.feature = params[:feature]
        type.entity_id = params[:entity_id]
        type.evaluation_context = params[:evaluation_context]
        type
      end
    end

    module EvaluateFeatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateFeatureOutput, context: context)
        type = Types::EvaluateFeatureOutput.new
        type.variation = params[:variation]
        type.value = VariableValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.reason = params[:reason]
        type.details = params[:details]
        type
      end
    end

    module EvaluationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationRequest, context: context)
        type = Types::EvaluationRequest.new
        type.feature = params[:feature]
        type.entity_id = params[:entity_id]
        type.evaluation_context = params[:evaluation_context]
        type
      end
    end

    module EvaluationRequestsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResult, context: context)
        type = Types::EvaluationResult.new
        type.project = params[:project]
        type.feature = params[:feature]
        type.variation = params[:variation]
        type.value = VariableValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.entity_id = params[:entity_id]
        type.reason = params[:reason]
        type.details = params[:details]
        type
      end
    end

    module EvaluationResultsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EvaluationRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationRule, context: context)
        type = Types::EvaluationRule.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module EvaluationRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.timestamp = params[:timestamp]
        type.type = params[:type]
        type.data = params[:data]
        type
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Experiment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Experiment, context: context)
        type = Types::Experiment.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.project = params[:project]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.schedule = ExperimentSchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.execution = ExperimentExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type.treatments = TreatmentList.build(params[:treatments], context: "#{context}[:treatments]") unless params[:treatments].nil?
        type.metric_goals = MetricGoalsList.build(params[:metric_goals], context: "#{context}[:metric_goals]") unless params[:metric_goals].nil?
        type.randomization_salt = params[:randomization_salt]
        type.sampling_rate = params[:sampling_rate]
        type.type = params[:type]
        type.online_ab_definition = OnlineAbDefinition.build(params[:online_ab_definition], context: "#{context}[:online_ab_definition]") unless params[:online_ab_definition].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ExperimentExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentExecution, context: context)
        type = Types::ExperimentExecution.new
        type.started_time = params[:started_time]
        type.ended_time = params[:ended_time]
        type
      end
    end

    module ExperimentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Experiment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentReport, context: context)
        type = Types::ExperimentReport.new
        type.metric_name = params[:metric_name]
        type.treatment_name = params[:treatment_name]
        type.report_name = params[:report_name]
        type.content = params[:content]
        type
      end
    end

    module ExperimentReportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentReport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentReportNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperimentResultRequestTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperimentResultsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentResultsData, context: context)
        type = Types::ExperimentResultsData.new
        type.metric_name = params[:metric_name]
        type.treatment_name = params[:treatment_name]
        type.result_stat = params[:result_stat]
        type.values = DoubleValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ExperimentResultsDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentResultsData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentSchedule, context: context)
        type = Types::ExperimentSchedule.new
        type.analysis_complete_time = params[:analysis_complete_time]
        type
      end
    end

    module Feature
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Feature, context: context)
        type = Types::Feature.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.project = params[:project]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.description = params[:description]
        type.evaluation_strategy = params[:evaluation_strategy]
        type.value_type = params[:value_type]
        type.variations = VariationsList.build(params[:variations], context: "#{context}[:variations]") unless params[:variations].nil?
        type.default_variation = params[:default_variation]
        type.evaluation_rules = EvaluationRulesList.build(params[:evaluation_rules], context: "#{context}[:evaluation_rules]") unless params[:evaluation_rules].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.entity_overrides = EntityOverrideMap.build(params[:entity_overrides], context: "#{context}[:entity_overrides]") unless params[:entity_overrides].nil?
        type
      end
    end

    module FeatureSummariesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FeatureSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FeatureSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureSummary, context: context)
        type = Types::FeatureSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.project = params[:project]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.evaluation_strategy = params[:evaluation_strategy]
        type.evaluation_rules = EvaluationRulesList.build(params[:evaluation_rules], context: "#{context}[:evaluation_rules]") unless params[:evaluation_rules].nil?
        type.default_variation = params[:default_variation]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FeatureToVariationMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentInput, context: context)
        type = Types::GetExperimentInput.new
        type.project = params[:project]
        type.experiment = params[:experiment]
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

    module GetExperimentResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentResultsInput, context: context)
        type = Types::GetExperimentResultsInput.new
        type.project = params[:project]
        type.experiment = params[:experiment]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.metric_names = MetricNameList.build(params[:metric_names], context: "#{context}[:metric_names]") unless params[:metric_names].nil?
        type.treatment_names = TreatmentNameList.build(params[:treatment_names], context: "#{context}[:treatment_names]") unless params[:treatment_names].nil?
        type.base_stat = params[:base_stat]
        type.result_stats = ExperimentResultRequestTypeList.build(params[:result_stats], context: "#{context}[:result_stats]") unless params[:result_stats].nil?
        type.report_names = ExperimentReportNameList.build(params[:report_names], context: "#{context}[:report_names]") unless params[:report_names].nil?
        type.period = params[:period]
        type
      end
    end

    module GetExperimentResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExperimentResultsOutput, context: context)
        type = Types::GetExperimentResultsOutput.new
        type.results_data = ExperimentResultsDataList.build(params[:results_data], context: "#{context}[:results_data]") unless params[:results_data].nil?
        type.reports = ExperimentReportList.build(params[:reports], context: "#{context}[:reports]") unless params[:reports].nil?
        type.timestamps = TimestampList.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type.details = params[:details]
        type
      end
    end

    module GetFeatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFeatureInput, context: context)
        type = Types::GetFeatureInput.new
        type.project = params[:project]
        type.feature = params[:feature]
        type
      end
    end

    module GetFeatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFeatureOutput, context: context)
        type = Types::GetFeatureOutput.new
        type.feature = Feature.build(params[:feature], context: "#{context}[:feature]") unless params[:feature].nil?
        type
      end
    end

    module GetLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchInput, context: context)
        type = Types::GetLaunchInput.new
        type.project = params[:project]
        type.launch = params[:launch]
        type
      end
    end

    module GetLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchOutput, context: context)
        type = Types::GetLaunchOutput.new
        type.launch = Launch.build(params[:launch], context: "#{context}[:launch]") unless params[:launch].nil?
        type
      end
    end

    module GetProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProjectInput, context: context)
        type = Types::GetProjectInput.new
        type.project = params[:project]
        type
      end
    end

    module GetProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProjectOutput, context: context)
        type = Types::GetProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module GroupToWeightMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module Launch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Launch, context: context)
        type = Types::Launch.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.project = params[:project]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.execution = LaunchExecution.build(params[:execution], context: "#{context}[:execution]") unless params[:execution].nil?
        type.groups = LaunchGroupList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.metric_monitors = MetricMonitorList.build(params[:metric_monitors], context: "#{context}[:metric_monitors]") unless params[:metric_monitors].nil?
        type.randomization_salt = params[:randomization_salt]
        type.type = params[:type]
        type.scheduled_splits_definition = ScheduledSplitsLaunchDefinition.build(params[:scheduled_splits_definition], context: "#{context}[:scheduled_splits_definition]") unless params[:scheduled_splits_definition].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LaunchExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchExecution, context: context)
        type = Types::LaunchExecution.new
        type.started_time = params[:started_time]
        type.ended_time = params[:ended_time]
        type
      end
    end

    module LaunchGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchGroup, context: context)
        type = Types::LaunchGroup.new
        type.name = params[:name]
        type.description = params[:description]
        type.feature_variations = FeatureToVariationMap.build(params[:feature_variations], context: "#{context}[:feature_variations]") unless params[:feature_variations].nil?
        type
      end
    end

    module LaunchGroupConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchGroupConfig, context: context)
        type = Types::LaunchGroupConfig.new
        type.name = params[:name]
        type.description = params[:description]
        type.feature = params[:feature]
        type.variation = params[:variation]
        type
      end
    end

    module LaunchGroupConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchGroupConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Launch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListExperimentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentsInput, context: context)
        type = Types::ListExperimentsInput.new
        type.project = params[:project]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.status = params[:status]
        type
      end
    end

    module ListExperimentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentsOutput, context: context)
        type = Types::ListExperimentsOutput.new
        type.experiments = ExperimentList.build(params[:experiments], context: "#{context}[:experiments]") unless params[:experiments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFeaturesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFeaturesInput, context: context)
        type = Types::ListFeaturesInput.new
        type.project = params[:project]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFeaturesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFeaturesOutput, context: context)
        type = Types::ListFeaturesOutput.new
        type.features = FeatureSummariesList.build(params[:features], context: "#{context}[:features]") unless params[:features].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLaunchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchesInput, context: context)
        type = Types::ListLaunchesInput.new
        type.project = params[:project]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.status = params[:status]
        type
      end
    end

    module ListLaunchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchesOutput, context: context)
        type = Types::ListLaunchesOutput.new
        type.launches = LaunchesList.build(params[:launches], context: "#{context}[:launches]") unless params[:launches].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = ProjectSummariesList.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
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

    module MetricDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDefinition, context: context)
        type = Types::MetricDefinition.new
        type.name = params[:name]
        type.entity_id_key = params[:entity_id_key]
        type.value_key = params[:value_key]
        type.event_pattern = params[:event_pattern]
        type.unit_label = params[:unit_label]
        type
      end
    end

    module MetricDefinitionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDefinitionConfig, context: context)
        type = Types::MetricDefinitionConfig.new
        type.name = params[:name]
        type.entity_id_key = params[:entity_id_key]
        type.value_key = params[:value_key]
        type.event_pattern = params[:event_pattern]
        type.unit_label = params[:unit_label]
        type
      end
    end

    module MetricGoal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricGoal, context: context)
        type = Types::MetricGoal.new
        type.metric_definition = MetricDefinition.build(params[:metric_definition], context: "#{context}[:metric_definition]") unless params[:metric_definition].nil?
        type.desired_change = params[:desired_change]
        type
      end
    end

    module MetricGoalConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricGoalConfig, context: context)
        type = Types::MetricGoalConfig.new
        type.metric_definition = MetricDefinitionConfig.build(params[:metric_definition], context: "#{context}[:metric_definition]") unless params[:metric_definition].nil?
        type.desired_change = params[:desired_change]
        type
      end
    end

    module MetricGoalConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricGoalConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricGoalsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricGoal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricMonitor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricMonitor, context: context)
        type = Types::MetricMonitor.new
        type.metric_definition = MetricDefinition.build(params[:metric_definition], context: "#{context}[:metric_definition]") unless params[:metric_definition].nil?
        type
      end
    end

    module MetricMonitorConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricMonitorConfig, context: context)
        type = Types::MetricMonitorConfig.new
        type.metric_definition = MetricDefinitionConfig.build(params[:metric_definition], context: "#{context}[:metric_definition]") unless params[:metric_definition].nil?
        type
      end
    end

    module MetricMonitorConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricMonitorConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricMonitorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricMonitor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OnlineAbConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnlineAbConfig, context: context)
        type = Types::OnlineAbConfig.new
        type.control_treatment_name = params[:control_treatment_name]
        type.treatment_weights = TreatmentToWeightMap.build(params[:treatment_weights], context: "#{context}[:treatment_weights]") unless params[:treatment_weights].nil?
        type
      end
    end

    module OnlineAbDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnlineAbDefinition, context: context)
        type = Types::OnlineAbDefinition.new
        type.control_treatment_name = params[:control_treatment_name]
        type.treatment_weights = TreatmentToWeightMap.build(params[:treatment_weights], context: "#{context}[:treatment_weights]") unless params[:treatment_weights].nil?
        type
      end
    end

    module Project
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Project, context: context)
        type = Types::Project.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.feature_count = params[:feature_count]
        type.launch_count = params[:launch_count]
        type.active_launch_count = params[:active_launch_count]
        type.experiment_count = params[:experiment_count]
        type.active_experiment_count = params[:active_experiment_count]
        type.data_delivery = ProjectDataDelivery.build(params[:data_delivery], context: "#{context}[:data_delivery]") unless params[:data_delivery].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ProjectDataDelivery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectDataDelivery, context: context)
        type = Types::ProjectDataDelivery.new
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.cloud_watch_logs = CloudWatchLogsDestination.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type
      end
    end

    module ProjectDataDeliveryConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectDataDeliveryConfig, context: context)
        type = Types::ProjectDataDeliveryConfig.new
        type.s3_destination = S3DestinationConfig.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.cloud_watch_logs = CloudWatchLogsDestinationConfig.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type
      end
    end

    module ProjectSummariesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.feature_count = params[:feature_count]
        type.launch_count = params[:launch_count]
        type.active_launch_count = params[:active_launch_count]
        type.experiment_count = params[:experiment_count]
        type.active_experiment_count = params[:active_experiment_count]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutProjectEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProjectEventsInput, context: context)
        type = Types::PutProjectEventsInput.new
        type.project = params[:project]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module PutProjectEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProjectEventsOutput, context: context)
        type = Types::PutProjectEventsOutput.new
        type.failed_event_count = params[:failed_event_count]
        type.event_results = PutProjectEventsResultEntryList.build(params[:event_results], context: "#{context}[:event_results]") unless params[:event_results].nil?
        type
      end
    end

    module PutProjectEventsResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProjectEventsResultEntry, context: context)
        type = Types::PutProjectEventsResultEntry.new
        type.event_id = params[:event_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PutProjectEventsResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutProjectEventsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module S3DestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationConfig, context: context)
        type = Types::S3DestinationConfig.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module ScheduledSplit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledSplit, context: context)
        type = Types::ScheduledSplit.new
        type.start_time = params[:start_time]
        type.group_weights = GroupToWeightMap.build(params[:group_weights], context: "#{context}[:group_weights]") unless params[:group_weights].nil?
        type
      end
    end

    module ScheduledSplitConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledSplitConfig, context: context)
        type = Types::ScheduledSplitConfig.new
        type.start_time = params[:start_time]
        type.group_weights = GroupToWeightMap.build(params[:group_weights], context: "#{context}[:group_weights]") unless params[:group_weights].nil?
        type
      end
    end

    module ScheduledSplitConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledSplitConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledSplitsLaunchConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledSplitsLaunchConfig, context: context)
        type = Types::ScheduledSplitsLaunchConfig.new
        type.steps = ScheduledSplitConfigList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module ScheduledSplitsLaunchDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledSplitsLaunchDefinition, context: context)
        type = Types::ScheduledSplitsLaunchDefinition.new
        type.steps = ScheduledStepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module ScheduledStepList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledSplit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
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

    module StartExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExperimentInput, context: context)
        type = Types::StartExperimentInput.new
        type.project = params[:project]
        type.experiment = params[:experiment]
        type.analysis_complete_time = params[:analysis_complete_time]
        type
      end
    end

    module StartExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExperimentOutput, context: context)
        type = Types::StartExperimentOutput.new
        type.started_time = params[:started_time]
        type
      end
    end

    module StartLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLaunchInput, context: context)
        type = Types::StartLaunchInput.new
        type.project = params[:project]
        type.launch = params[:launch]
        type
      end
    end

    module StartLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLaunchOutput, context: context)
        type = Types::StartLaunchOutput.new
        type.launch = Launch.build(params[:launch], context: "#{context}[:launch]") unless params[:launch].nil?
        type
      end
    end

    module StopExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExperimentInput, context: context)
        type = Types::StopExperimentInput.new
        type.project = params[:project]
        type.experiment = params[:experiment]
        type.desired_state = params[:desired_state]
        type.reason = params[:reason]
        type
      end
    end

    module StopExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopExperimentOutput, context: context)
        type = Types::StopExperimentOutput.new
        type.ended_time = params[:ended_time]
        type
      end
    end

    module StopLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopLaunchInput, context: context)
        type = Types::StopLaunchInput.new
        type.project = params[:project]
        type.launch = params[:launch]
        type.desired_state = params[:desired_state]
        type.reason = params[:reason]
        type
      end
    end

    module StopLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopLaunchOutput, context: context)
        type = Types::StopLaunchOutput.new
        type.ended_time = params[:ended_time]
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module TimestampList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Treatment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Treatment, context: context)
        type = Types::Treatment.new
        type.name = params[:name]
        type.description = params[:description]
        type.feature_variations = FeatureToVariationMap.build(params[:feature_variations], context: "#{context}[:feature_variations]") unless params[:feature_variations].nil?
        type
      end
    end

    module TreatmentConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TreatmentConfig, context: context)
        type = Types::TreatmentConfig.new
        type.name = params[:name]
        type.description = params[:description]
        type.feature = params[:feature]
        type.variation = params[:variation]
        type
      end
    end

    module TreatmentConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TreatmentConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TreatmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Treatment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TreatmentNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TreatmentToWeightMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
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

    module UpdateExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentInput, context: context)
        type = Types::UpdateExperimentInput.new
        type.project = params[:project]
        type.experiment = params[:experiment]
        type.description = params[:description]
        type.treatments = TreatmentConfigList.build(params[:treatments], context: "#{context}[:treatments]") unless params[:treatments].nil?
        type.metric_goals = MetricGoalConfigList.build(params[:metric_goals], context: "#{context}[:metric_goals]") unless params[:metric_goals].nil?
        type.randomization_salt = params[:randomization_salt]
        type.sampling_rate = params[:sampling_rate]
        type.online_ab_config = OnlineAbConfig.build(params[:online_ab_config], context: "#{context}[:online_ab_config]") unless params[:online_ab_config].nil?
        type
      end
    end

    module UpdateExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentOutput, context: context)
        type = Types::UpdateExperimentOutput.new
        type.experiment = Experiment.build(params[:experiment], context: "#{context}[:experiment]") unless params[:experiment].nil?
        type
      end
    end

    module UpdateFeatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFeatureInput, context: context)
        type = Types::UpdateFeatureInput.new
        type.project = params[:project]
        type.feature = params[:feature]
        type.evaluation_strategy = params[:evaluation_strategy]
        type.description = params[:description]
        type.add_or_update_variations = VariationConfigsList.build(params[:add_or_update_variations], context: "#{context}[:add_or_update_variations]") unless params[:add_or_update_variations].nil?
        type.remove_variations = VariationNameList.build(params[:remove_variations], context: "#{context}[:remove_variations]") unless params[:remove_variations].nil?
        type.default_variation = params[:default_variation]
        type.entity_overrides = EntityOverrideMap.build(params[:entity_overrides], context: "#{context}[:entity_overrides]") unless params[:entity_overrides].nil?
        type
      end
    end

    module UpdateFeatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFeatureOutput, context: context)
        type = Types::UpdateFeatureOutput.new
        type.feature = Feature.build(params[:feature], context: "#{context}[:feature]") unless params[:feature].nil?
        type
      end
    end

    module UpdateLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchInput, context: context)
        type = Types::UpdateLaunchInput.new
        type.project = params[:project]
        type.launch = params[:launch]
        type.description = params[:description]
        type.groups = LaunchGroupConfigList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.metric_monitors = MetricMonitorConfigList.build(params[:metric_monitors], context: "#{context}[:metric_monitors]") unless params[:metric_monitors].nil?
        type.randomization_salt = params[:randomization_salt]
        type.scheduled_splits_config = ScheduledSplitsLaunchConfig.build(params[:scheduled_splits_config], context: "#{context}[:scheduled_splits_config]") unless params[:scheduled_splits_config].nil?
        type
      end
    end

    module UpdateLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchOutput, context: context)
        type = Types::UpdateLaunchOutput.new
        type.launch = Launch.build(params[:launch], context: "#{context}[:launch]") unless params[:launch].nil?
        type
      end
    end

    module UpdateProjectDataDeliveryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectDataDeliveryInput, context: context)
        type = Types::UpdateProjectDataDeliveryInput.new
        type.project = params[:project]
        type.s3_destination = S3DestinationConfig.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.cloud_watch_logs = CloudWatchLogsDestinationConfig.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type
      end
    end

    module UpdateProjectDataDeliveryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectDataDeliveryOutput, context: context)
        type = Types::UpdateProjectDataDeliveryOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.project = params[:project]
        type.description = params[:description]
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VariableValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::VariableValue)
        Hearth::Validator.validate!(params, ::Hash, Types::VariableValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :bool_value
          Types::VariableValue::BoolValue.new(
            params[:bool_value]
          )
        when :string_value
          Types::VariableValue::StringValue.new(
            params[:string_value]
          )
        when :long_value
          Types::VariableValue::LongValue.new(
            params[:long_value]
          )
        when :double_value
          Types::VariableValue::DoubleValue.new(
            params[:double_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :bool_value, :string_value, :long_value, :double_value set"
        end
      end
    end

    module Variation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Variation, context: context)
        type = Types::Variation.new
        type.name = params[:name]
        type.value = VariableValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module VariationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariationConfig, context: context)
        type = Types::VariationConfig.new
        type.name = params[:name]
        type.value = VariableValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module VariationConfigsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VariationConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VariationNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VariationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Variation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
