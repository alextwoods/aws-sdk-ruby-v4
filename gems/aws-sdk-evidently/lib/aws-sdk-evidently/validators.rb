# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Evidently
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchEvaluateFeatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEvaluateFeatureInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Validators::EvaluationRequestsList.validate!(input[:requests], context: "#{context}[:requests]") unless input[:requests].nil?
      end
    end

    class BatchEvaluateFeatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEvaluateFeatureOutput, context: context)
        Validators::EvaluationResultsList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class CloudWatchLogsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsDestination, context: context)
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class CloudWatchLogsDestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsDestinationConfig, context: context)
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TreatmentConfigList.validate!(input[:treatments], context: "#{context}[:treatments]") unless input[:treatments].nil?
        Validators::MetricGoalConfigList.validate!(input[:metric_goals], context: "#{context}[:metric_goals]") unless input[:metric_goals].nil?
        Hearth::Validator.validate!(input[:randomization_salt], ::String, context: "#{context}[:randomization_salt]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
        Validators::OnlineAbConfig.validate!(input[:online_ab_config], context: "#{context}[:online_ab_config]") unless input[:online_ab_config].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentOutput, context: context)
        Validators::Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
      end
    end

    class CreateFeatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFeatureInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:evaluation_strategy], ::String, context: "#{context}[:evaluation_strategy]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::VariationConfigsList.validate!(input[:variations], context: "#{context}[:variations]") unless input[:variations].nil?
        Hearth::Validator.validate!(input[:default_variation], ::String, context: "#{context}[:default_variation]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EntityOverrideMap.validate!(input[:entity_overrides], context: "#{context}[:entity_overrides]") unless input[:entity_overrides].nil?
      end
    end

    class CreateFeatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFeatureOutput, context: context)
        Validators::Feature.validate!(input[:feature], context: "#{context}[:feature]") unless input[:feature].nil?
      end
    end

    class CreateLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ScheduledSplitsLaunchConfig.validate!(input[:scheduled_splits_config], context: "#{context}[:scheduled_splits_config]") unless input[:scheduled_splits_config].nil?
        Validators::MetricMonitorConfigList.validate!(input[:metric_monitors], context: "#{context}[:metric_monitors]") unless input[:metric_monitors].nil?
        Validators::LaunchGroupConfigList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:randomization_salt], ::String, context: "#{context}[:randomization_salt]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchOutput, context: context)
        Validators::Launch.validate!(input[:launch], context: "#{context}[:launch]") unless input[:launch].nil?
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ProjectDataDeliveryConfig.validate!(input[:data_delivery], context: "#{context}[:data_delivery]") unless input[:data_delivery].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class DeleteExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperimentInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:experiment], ::String, context: "#{context}[:experiment]")
      end
    end

    class DeleteExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperimentOutput, context: context)
      end
    end

    class DeleteFeatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFeatureInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
      end
    end

    class DeleteFeatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFeatureOutput, context: context)
      end
    end

    class DeleteLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:launch], ::String, context: "#{context}[:launch]")
      end
    end

    class DeleteLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchOutput, context: context)
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
      end
    end

    class DoubleValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityOverrideMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EvaluateFeatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateFeatureInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:evaluation_context], ::String, context: "#{context}[:evaluation_context]")
      end
    end

    class EvaluateFeatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateFeatureOutput, context: context)
        Hearth::Validator.validate!(input[:variation], ::String, context: "#{context}[:variation]")
        Validators::VariableValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class EvaluationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationRequest, context: context)
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:evaluation_context], ::String, context: "#{context}[:evaluation_context]")
      end
    end

    class EvaluationRequestsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResult, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:variation], ::String, context: "#{context}[:variation]")
        Validators::VariableValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class EvaluationResultsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EvaluationRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EvaluationRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluationRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Experiment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Experiment, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Validators::ExperimentSchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Validators::ExperimentExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
        Validators::TreatmentList.validate!(input[:treatments], context: "#{context}[:treatments]") unless input[:treatments].nil?
        Validators::MetricGoalsList.validate!(input[:metric_goals], context: "#{context}[:metric_goals]") unless input[:metric_goals].nil?
        Hearth::Validator.validate!(input[:randomization_salt], ::String, context: "#{context}[:randomization_salt]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::OnlineAbDefinition.validate!(input[:online_ab_definition], context: "#{context}[:online_ab_definition]") unless input[:online_ab_definition].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ExperimentExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentExecution, context: context)
        Hearth::Validator.validate!(input[:started_time], ::Time, context: "#{context}[:started_time]")
        Hearth::Validator.validate!(input[:ended_time], ::Time, context: "#{context}[:ended_time]")
      end
    end

    class ExperimentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Experiment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentReport, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:treatment_name], ::String, context: "#{context}[:treatment_name]")
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class ExperimentReportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExperimentReport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentReportNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperimentResultRequestTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperimentResultsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentResultsData, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:treatment_name], ::String, context: "#{context}[:treatment_name]")
        Hearth::Validator.validate!(input[:result_stat], ::String, context: "#{context}[:result_stat]")
        Validators::DoubleValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ExperimentResultsDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExperimentResultsData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentSchedule, context: context)
        Hearth::Validator.validate!(input[:analysis_complete_time], ::Time, context: "#{context}[:analysis_complete_time]")
      end
    end

    class Feature
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Feature, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:evaluation_strategy], ::String, context: "#{context}[:evaluation_strategy]")
        Hearth::Validator.validate!(input[:value_type], ::String, context: "#{context}[:value_type]")
        Validators::VariationsList.validate!(input[:variations], context: "#{context}[:variations]") unless input[:variations].nil?
        Hearth::Validator.validate!(input[:default_variation], ::String, context: "#{context}[:default_variation]")
        Validators::EvaluationRulesList.validate!(input[:evaluation_rules], context: "#{context}[:evaluation_rules]") unless input[:evaluation_rules].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::EntityOverrideMap.validate!(input[:entity_overrides], context: "#{context}[:entity_overrides]") unless input[:entity_overrides].nil?
      end
    end

    class FeatureSummariesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FeatureSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FeatureSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:evaluation_strategy], ::String, context: "#{context}[:evaluation_strategy]")
        Validators::EvaluationRulesList.validate!(input[:evaluation_rules], context: "#{context}[:evaluation_rules]") unless input[:evaluation_rules].nil?
        Hearth::Validator.validate!(input[:default_variation], ::String, context: "#{context}[:default_variation]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FeatureToVariationMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:experiment], ::String, context: "#{context}[:experiment]")
      end
    end

    class GetExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentOutput, context: context)
        Validators::Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
      end
    end

    class GetExperimentResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentResultsInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:experiment], ::String, context: "#{context}[:experiment]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::MetricNameList.validate!(input[:metric_names], context: "#{context}[:metric_names]") unless input[:metric_names].nil?
        Validators::TreatmentNameList.validate!(input[:treatment_names], context: "#{context}[:treatment_names]") unless input[:treatment_names].nil?
        Hearth::Validator.validate!(input[:base_stat], ::String, context: "#{context}[:base_stat]")
        Validators::ExperimentResultRequestTypeList.validate!(input[:result_stats], context: "#{context}[:result_stats]") unless input[:result_stats].nil?
        Validators::ExperimentReportNameList.validate!(input[:report_names], context: "#{context}[:report_names]") unless input[:report_names].nil?
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
      end
    end

    class GetExperimentResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExperimentResultsOutput, context: context)
        Validators::ExperimentResultsDataList.validate!(input[:results_data], context: "#{context}[:results_data]") unless input[:results_data].nil?
        Validators::ExperimentReportList.validate!(input[:reports], context: "#{context}[:reports]") unless input[:reports].nil?
        Validators::TimestampList.validate!(input[:timestamps], context: "#{context}[:timestamps]") unless input[:timestamps].nil?
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class GetFeatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFeatureInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
      end
    end

    class GetFeatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFeatureOutput, context: context)
        Validators::Feature.validate!(input[:feature], context: "#{context}[:feature]") unless input[:feature].nil?
      end
    end

    class GetLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:launch], ::String, context: "#{context}[:launch]")
      end
    end

    class GetLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchOutput, context: context)
        Validators::Launch.validate!(input[:launch], context: "#{context}[:launch]") unless input[:launch].nil?
      end
    end

    class GetProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProjectInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
      end
    end

    class GetProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProjectOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class GroupToWeightMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Launch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Launch, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Validators::LaunchExecution.validate!(input[:execution], context: "#{context}[:execution]") unless input[:execution].nil?
        Validators::LaunchGroupList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Validators::MetricMonitorList.validate!(input[:metric_monitors], context: "#{context}[:metric_monitors]") unless input[:metric_monitors].nil?
        Hearth::Validator.validate!(input[:randomization_salt], ::String, context: "#{context}[:randomization_salt]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ScheduledSplitsLaunchDefinition.validate!(input[:scheduled_splits_definition], context: "#{context}[:scheduled_splits_definition]") unless input[:scheduled_splits_definition].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LaunchExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchExecution, context: context)
        Hearth::Validator.validate!(input[:started_time], ::Time, context: "#{context}[:started_time]")
        Hearth::Validator.validate!(input[:ended_time], ::Time, context: "#{context}[:ended_time]")
      end
    end

    class LaunchGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FeatureToVariationMap.validate!(input[:feature_variations], context: "#{context}[:feature_variations]") unless input[:feature_variations].nil?
      end
    end

    class LaunchGroupConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchGroupConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:variation], ::String, context: "#{context}[:variation]")
      end
    end

    class LaunchGroupConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchGroupConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Launch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListExperimentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentsInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListExperimentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentsOutput, context: context)
        Validators::ExperimentList.validate!(input[:experiments], context: "#{context}[:experiments]") unless input[:experiments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFeaturesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFeaturesInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFeaturesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFeaturesOutput, context: context)
        Validators::FeatureSummariesList.validate!(input[:features], context: "#{context}[:features]") unless input[:features].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLaunchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchesInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListLaunchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchesOutput, context: context)
        Validators::LaunchesList.validate!(input[:launches], context: "#{context}[:launches]") unless input[:launches].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        Validators::ProjectSummariesList.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MetricDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:entity_id_key], ::String, context: "#{context}[:entity_id_key]")
        Hearth::Validator.validate!(input[:value_key], ::String, context: "#{context}[:value_key]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:unit_label], ::String, context: "#{context}[:unit_label]")
      end
    end

    class MetricDefinitionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDefinitionConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:entity_id_key], ::String, context: "#{context}[:entity_id_key]")
        Hearth::Validator.validate!(input[:value_key], ::String, context: "#{context}[:value_key]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:unit_label], ::String, context: "#{context}[:unit_label]")
      end
    end

    class MetricGoal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricGoal, context: context)
        Validators::MetricDefinition.validate!(input[:metric_definition], context: "#{context}[:metric_definition]") unless input[:metric_definition].nil?
        Hearth::Validator.validate!(input[:desired_change], ::String, context: "#{context}[:desired_change]")
      end
    end

    class MetricGoalConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricGoalConfig, context: context)
        Validators::MetricDefinitionConfig.validate!(input[:metric_definition], context: "#{context}[:metric_definition]") unless input[:metric_definition].nil?
        Hearth::Validator.validate!(input[:desired_change], ::String, context: "#{context}[:desired_change]")
      end
    end

    class MetricGoalConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricGoalConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricGoalsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricGoal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricMonitor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricMonitor, context: context)
        Validators::MetricDefinition.validate!(input[:metric_definition], context: "#{context}[:metric_definition]") unless input[:metric_definition].nil?
      end
    end

    class MetricMonitorConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricMonitorConfig, context: context)
        Validators::MetricDefinitionConfig.validate!(input[:metric_definition], context: "#{context}[:metric_definition]") unless input[:metric_definition].nil?
      end
    end

    class MetricMonitorConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricMonitorConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricMonitorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricMonitor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OnlineAbConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnlineAbConfig, context: context)
        Hearth::Validator.validate!(input[:control_treatment_name], ::String, context: "#{context}[:control_treatment_name]")
        Validators::TreatmentToWeightMap.validate!(input[:treatment_weights], context: "#{context}[:treatment_weights]") unless input[:treatment_weights].nil?
      end
    end

    class OnlineAbDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnlineAbDefinition, context: context)
        Hearth::Validator.validate!(input[:control_treatment_name], ::String, context: "#{context}[:control_treatment_name]")
        Validators::TreatmentToWeightMap.validate!(input[:treatment_weights], context: "#{context}[:treatment_weights]") unless input[:treatment_weights].nil?
      end
    end

    class Project
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Project, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:feature_count], ::Integer, context: "#{context}[:feature_count]")
        Hearth::Validator.validate!(input[:launch_count], ::Integer, context: "#{context}[:launch_count]")
        Hearth::Validator.validate!(input[:active_launch_count], ::Integer, context: "#{context}[:active_launch_count]")
        Hearth::Validator.validate!(input[:experiment_count], ::Integer, context: "#{context}[:experiment_count]")
        Hearth::Validator.validate!(input[:active_experiment_count], ::Integer, context: "#{context}[:active_experiment_count]")
        Validators::ProjectDataDelivery.validate!(input[:data_delivery], context: "#{context}[:data_delivery]") unless input[:data_delivery].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ProjectDataDelivery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectDataDelivery, context: context)
        Validators::S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Validators::CloudWatchLogsDestination.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
      end
    end

    class ProjectDataDeliveryConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectDataDeliveryConfig, context: context)
        Validators::S3DestinationConfig.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Validators::CloudWatchLogsDestinationConfig.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
      end
    end

    class ProjectSummariesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:feature_count], ::Integer, context: "#{context}[:feature_count]")
        Hearth::Validator.validate!(input[:launch_count], ::Integer, context: "#{context}[:launch_count]")
        Hearth::Validator.validate!(input[:active_launch_count], ::Integer, context: "#{context}[:active_launch_count]")
        Hearth::Validator.validate!(input[:experiment_count], ::Integer, context: "#{context}[:experiment_count]")
        Hearth::Validator.validate!(input[:active_experiment_count], ::Integer, context: "#{context}[:active_experiment_count]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutProjectEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProjectEventsInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Validators::EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class PutProjectEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProjectEventsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_event_count], ::Integer, context: "#{context}[:failed_event_count]")
        Validators::PutProjectEventsResultEntryList.validate!(input[:event_results], context: "#{context}[:event_results]") unless input[:event_results].nil?
      end
    end

    class PutProjectEventsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProjectEventsResultEntry, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PutProjectEventsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PutProjectEventsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class S3DestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationConfig, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ScheduledSplit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledSplit, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Validators::GroupToWeightMap.validate!(input[:group_weights], context: "#{context}[:group_weights]") unless input[:group_weights].nil?
      end
    end

    class ScheduledSplitConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledSplitConfig, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Validators::GroupToWeightMap.validate!(input[:group_weights], context: "#{context}[:group_weights]") unless input[:group_weights].nil?
      end
    end

    class ScheduledSplitConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledSplitConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledSplitsLaunchConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledSplitsLaunchConfig, context: context)
        Validators::ScheduledSplitConfigList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class ScheduledSplitsLaunchDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledSplitsLaunchDefinition, context: context)
        Validators::ScheduledStepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class ScheduledStepList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledSplit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExperimentInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:experiment], ::String, context: "#{context}[:experiment]")
        Hearth::Validator.validate!(input[:analysis_complete_time], ::Time, context: "#{context}[:analysis_complete_time]")
      end
    end

    class StartExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExperimentOutput, context: context)
        Hearth::Validator.validate!(input[:started_time], ::Time, context: "#{context}[:started_time]")
      end
    end

    class StartLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLaunchInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:launch], ::String, context: "#{context}[:launch]")
      end
    end

    class StartLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLaunchOutput, context: context)
        Validators::Launch.validate!(input[:launch], context: "#{context}[:launch]") unless input[:launch].nil?
      end
    end

    class StopExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExperimentInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:experiment], ::String, context: "#{context}[:experiment]")
        Hearth::Validator.validate!(input[:desired_state], ::String, context: "#{context}[:desired_state]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StopExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopExperimentOutput, context: context)
        Hearth::Validator.validate!(input[:ended_time], ::Time, context: "#{context}[:ended_time]")
      end
    end

    class StopLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopLaunchInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:launch], ::String, context: "#{context}[:launch]")
        Hearth::Validator.validate!(input[:desired_state], ::String, context: "#{context}[:desired_state]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StopLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopLaunchOutput, context: context)
        Hearth::Validator.validate!(input[:ended_time], ::Time, context: "#{context}[:ended_time]")
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class TimestampList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class Treatment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Treatment, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FeatureToVariationMap.validate!(input[:feature_variations], context: "#{context}[:feature_variations]") unless input[:feature_variations].nil?
      end
    end

    class TreatmentConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TreatmentConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:variation], ::String, context: "#{context}[:variation]")
      end
    end

    class TreatmentConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TreatmentConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TreatmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Treatment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TreatmentNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TreatmentToWeightMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:experiment], ::String, context: "#{context}[:experiment]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TreatmentConfigList.validate!(input[:treatments], context: "#{context}[:treatments]") unless input[:treatments].nil?
        Validators::MetricGoalConfigList.validate!(input[:metric_goals], context: "#{context}[:metric_goals]") unless input[:metric_goals].nil?
        Hearth::Validator.validate!(input[:randomization_salt], ::String, context: "#{context}[:randomization_salt]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
        Validators::OnlineAbConfig.validate!(input[:online_ab_config], context: "#{context}[:online_ab_config]") unless input[:online_ab_config].nil?
      end
    end

    class UpdateExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentOutput, context: context)
        Validators::Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
      end
    end

    class UpdateFeatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFeatureInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:evaluation_strategy], ::String, context: "#{context}[:evaluation_strategy]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::VariationConfigsList.validate!(input[:add_or_update_variations], context: "#{context}[:add_or_update_variations]") unless input[:add_or_update_variations].nil?
        Validators::VariationNameList.validate!(input[:remove_variations], context: "#{context}[:remove_variations]") unless input[:remove_variations].nil?
        Hearth::Validator.validate!(input[:default_variation], ::String, context: "#{context}[:default_variation]")
        Validators::EntityOverrideMap.validate!(input[:entity_overrides], context: "#{context}[:entity_overrides]") unless input[:entity_overrides].nil?
      end
    end

    class UpdateFeatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFeatureOutput, context: context)
        Validators::Feature.validate!(input[:feature], context: "#{context}[:feature]") unless input[:feature].nil?
      end
    end

    class UpdateLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:launch], ::String, context: "#{context}[:launch]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LaunchGroupConfigList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Validators::MetricMonitorConfigList.validate!(input[:metric_monitors], context: "#{context}[:metric_monitors]") unless input[:metric_monitors].nil?
        Hearth::Validator.validate!(input[:randomization_salt], ::String, context: "#{context}[:randomization_salt]")
        Validators::ScheduledSplitsLaunchConfig.validate!(input[:scheduled_splits_config], context: "#{context}[:scheduled_splits_config]") unless input[:scheduled_splits_config].nil?
      end
    end

    class UpdateLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchOutput, context: context)
        Validators::Launch.validate!(input[:launch], context: "#{context}[:launch]") unless input[:launch].nil?
      end
    end

    class UpdateProjectDataDeliveryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectDataDeliveryInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Validators::S3DestinationConfig.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Validators::CloudWatchLogsDestinationConfig.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
      end
    end

    class UpdateProjectDataDeliveryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectDataDeliveryOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project], ::String, context: "#{context}[:project]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VariableValue
      def self.validate!(input, context:)
        case input
        when Types::VariableValue::BoolValue
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::VariableValue::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::VariableValue::LongValue
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::VariableValue::DoubleValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VariableValue, got #{input.class}."
        end
      end

      class BoolValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class LongValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class DoubleValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Float, context: context)
        end
      end
    end

    class Variation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Variation, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::VariableValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class VariationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariationConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::VariableValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class VariationConfigsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VariationConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VariationNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VariationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Variation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
