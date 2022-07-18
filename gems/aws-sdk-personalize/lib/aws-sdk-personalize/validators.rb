# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Personalize
  module Validators

    class Algorithm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Algorithm, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        AlgorithmImage.validate!(input[:algorithm_image], context: "#{context}[:algorithm_image]") unless input[:algorithm_image].nil?
        HyperParameters.validate!(input[:default_hyper_parameters], context: "#{context}[:default_hyper_parameters]") unless input[:default_hyper_parameters].nil?
        DefaultHyperParameterRanges.validate!(input[:default_hyper_parameter_ranges], context: "#{context}[:default_hyper_parameter_ranges]") unless input[:default_hyper_parameter_ranges].nil?
        ResourceConfig.validate!(input[:default_resource_config], context: "#{context}[:default_resource_config]") unless input[:default_resource_config].nil?
        Hearth::Validator.validate!(input[:training_input_mode], ::String, context: "#{context}[:training_input_mode]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class AlgorithmImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmImage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:docker_uri], ::String, context: "#{context}[:docker_uri]")
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoMLConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLConfig, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        ArnList.validate!(input[:recipe_list], context: "#{context}[:recipe_list]") unless input[:recipe_list].nil?
      end
    end

    class AutoMLResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLResult, context: context)
        Hearth::Validator.validate!(input[:best_recipe_arn], ::String, context: "#{context}[:best_recipe_arn]")
      end
    end

    class BatchInferenceJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchInferenceJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:batch_inference_job_arn], ::String, context: "#{context}[:batch_inference_job_arn]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        BatchInferenceJobInput.validate!(input[:job_input], context: "#{context}[:job_input]") unless input[:job_input].nil?
        BatchInferenceJobOutput.validate!(input[:job_output], context: "#{context}[:job_output]") unless input[:job_output].nil?
        BatchInferenceJobConfig.validate!(input[:batch_inference_job_config], context: "#{context}[:batch_inference_job_config]") unless input[:batch_inference_job_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class BatchInferenceJobConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchInferenceJobConfig, context: context)
        HyperParameters.validate!(input[:item_exploration_config], context: "#{context}[:item_exploration_config]") unless input[:item_exploration_config].nil?
      end
    end

    class BatchInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchInferenceJobInput, context: context)
        S3DataConfig.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
      end
    end

    class BatchInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchInferenceJobOutput, context: context)
        S3DataConfig.validate!(input[:s3_data_destination], context: "#{context}[:s3_data_destination]") unless input[:s3_data_destination].nil?
      end
    end

    class BatchInferenceJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchInferenceJobSummary, context: context)
        Hearth::Validator.validate!(input[:batch_inference_job_arn], ::String, context: "#{context}[:batch_inference_job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
      end
    end

    class BatchInferenceJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchInferenceJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchSegmentJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSegmentJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:batch_segment_job_arn], ::String, context: "#{context}[:batch_segment_job_arn]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        BatchSegmentJobInput.validate!(input[:job_input], context: "#{context}[:job_input]") unless input[:job_input].nil?
        BatchSegmentJobOutput.validate!(input[:job_output], context: "#{context}[:job_output]") unless input[:job_output].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class BatchSegmentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSegmentJobInput, context: context)
        S3DataConfig.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
      end
    end

    class BatchSegmentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSegmentJobOutput, context: context)
        S3DataConfig.validate!(input[:s3_data_destination], context: "#{context}[:s3_data_destination]") unless input[:s3_data_destination].nil?
      end
    end

    class BatchSegmentJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSegmentJobSummary, context: context)
        Hearth::Validator.validate!(input[:batch_segment_job_arn], ::String, context: "#{context}[:batch_segment_job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
      end
    end

    class BatchSegmentJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchSegmentJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Campaign
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Campaign, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:min_provisioned_tps], ::Integer, context: "#{context}[:min_provisioned_tps]")
        CampaignConfig.validate!(input[:campaign_config], context: "#{context}[:campaign_config]") unless input[:campaign_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        CampaignUpdateSummary.validate!(input[:latest_campaign_update], context: "#{context}[:latest_campaign_update]") unless input[:latest_campaign_update].nil?
      end
    end

    class CampaignConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignConfig, context: context)
        HyperParameters.validate!(input[:item_exploration_config], context: "#{context}[:item_exploration_config]") unless input[:item_exploration_config].nil?
      end
    end

    class CampaignSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class CampaignUpdateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignUpdateSummary, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:min_provisioned_tps], ::Integer, context: "#{context}[:min_provisioned_tps]")
        CampaignConfig.validate!(input[:campaign_config], context: "#{context}[:campaign_config]") unless input[:campaign_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class Campaigns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CampaignSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CategoricalHyperParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoricalHyperParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CategoricalValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class CategoricalHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CategoricalHyperParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CategoricalValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContinuousHyperParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousHyperParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:min_value], ::Float, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::Float, context: "#{context}[:max_value]")
      end
    end

    class ContinuousHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContinuousHyperParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateBatchInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        BatchInferenceJobInput.validate!(input[:job_input], context: "#{context}[:job_input]") unless input[:job_input].nil?
        BatchInferenceJobOutput.validate!(input[:job_output], context: "#{context}[:job_output]") unless input[:job_output].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        BatchInferenceJobConfig.validate!(input[:batch_inference_job_config], context: "#{context}[:batch_inference_job_config]") unless input[:batch_inference_job_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBatchInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:batch_inference_job_arn], ::String, context: "#{context}[:batch_inference_job_arn]")
      end
    end

    class CreateBatchSegmentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchSegmentJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        BatchSegmentJobInput.validate!(input[:job_input], context: "#{context}[:job_input]") unless input[:job_input].nil?
        BatchSegmentJobOutput.validate!(input[:job_output], context: "#{context}[:job_output]") unless input[:job_output].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBatchSegmentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchSegmentJobOutput, context: context)
        Hearth::Validator.validate!(input[:batch_segment_job_arn], ::String, context: "#{context}[:batch_segment_job_arn]")
      end
    end

    class CreateCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCampaignInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:min_provisioned_tps], ::Integer, context: "#{context}[:min_provisioned_tps]")
        CampaignConfig.validate!(input[:campaign_config], context: "#{context}[:campaign_config]") unless input[:campaign_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCampaignOutput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
      end
    end

    class CreateDatasetExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetExportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:ingestion_mode], ::String, context: "#{context}[:ingestion_mode]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        DatasetExportJobOutput.validate!(input[:job_output], context: "#{context}[:job_output]") unless input[:job_output].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_export_job_arn], ::String, context: "#{context}[:dataset_export_job_arn]")
      end
    end

    class CreateDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetGroupOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class CreateDatasetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class CreateEventTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventTrackerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventTrackerOutput, context: context)
        Hearth::Validator.validate!(input[:event_tracker_arn], ::String, context: "#{context}[:event_tracker_arn]")
        Hearth::Validator.validate!(input[:tracking_id], ::String, context: "#{context}[:tracking_id]")
      end
    end

    class CreateFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFilterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFilterOutput, context: context)
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
      end
    end

    class CreateRecommenderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommenderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        RecommenderConfig.validate!(input[:recommender_config], context: "#{context}[:recommender_config]") unless input[:recommender_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRecommenderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommenderOutput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class CreateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class CreateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class CreateSolutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSolutionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:perform_hpo], ::TrueClass, ::FalseClass, context: "#{context}[:perform_hpo]")
        Hearth::Validator.validate!(input[:perform_auto_ml], ::TrueClass, ::FalseClass, context: "#{context}[:perform_auto_ml]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        SolutionConfig.validate!(input[:solution_config], context: "#{context}[:solution_config]") unless input[:solution_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSolutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSolutionOutput, context: context)
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
      end
    end

    class CreateSolutionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSolutionVersionInput, context: context)
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
        Hearth::Validator.validate!(input[:training_mode], ::String, context: "#{context}[:training_mode]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSolutionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSolutionVersionOutput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Hearth::Validator.validate!(input[:data_location], ::String, context: "#{context}[:data_location]")
      end
    end

    class Dataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dataset, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class DatasetExportJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetExportJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:dataset_export_job_arn], ::String, context: "#{context}[:dataset_export_job_arn]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:ingestion_mode], ::String, context: "#{context}[:ingestion_mode]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DatasetExportJobOutput.validate!(input[:job_output], context: "#{context}[:job_output]") unless input[:job_output].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DatasetExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetExportJobOutput, context: context)
        S3DataConfig.validate!(input[:s3_data_destination], context: "#{context}[:s3_data_destination]") unless input[:s3_data_destination].nil?
      end
    end

    class DatasetExportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetExportJobSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_export_job_arn], ::String, context: "#{context}[:dataset_export_job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DatasetExportJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetExportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DatasetGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetGroupSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DatasetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetImportJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetImportJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DatasetImportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetImportJobSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DatasetImportJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetImportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSchema, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DatasetSchemaSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSchemaSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DatasetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class Datasets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DefaultCategoricalHyperParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultCategoricalHyperParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CategoricalValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:is_tunable], ::TrueClass, ::FalseClass, context: "#{context}[:is_tunable]")
      end
    end

    class DefaultCategoricalHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DefaultCategoricalHyperParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DefaultContinuousHyperParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultContinuousHyperParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:min_value], ::Float, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::Float, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:is_tunable], ::TrueClass, ::FalseClass, context: "#{context}[:is_tunable]")
      end
    end

    class DefaultContinuousHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DefaultContinuousHyperParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DefaultHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultHyperParameterRanges, context: context)
        DefaultIntegerHyperParameterRanges.validate!(input[:integer_hyper_parameter_ranges], context: "#{context}[:integer_hyper_parameter_ranges]") unless input[:integer_hyper_parameter_ranges].nil?
        DefaultContinuousHyperParameterRanges.validate!(input[:continuous_hyper_parameter_ranges], context: "#{context}[:continuous_hyper_parameter_ranges]") unless input[:continuous_hyper_parameter_ranges].nil?
        DefaultCategoricalHyperParameterRanges.validate!(input[:categorical_hyper_parameter_ranges], context: "#{context}[:categorical_hyper_parameter_ranges]") unless input[:categorical_hyper_parameter_ranges].nil?
      end
    end

    class DefaultIntegerHyperParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultIntegerHyperParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:min_value], ::Integer, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::Integer, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:is_tunable], ::TrueClass, ::FalseClass, context: "#{context}[:is_tunable]")
      end
    end

    class DefaultIntegerHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DefaultIntegerHyperParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCampaignInput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
      end
    end

    class DeleteCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCampaignOutput, context: context)
      end
    end

    class DeleteDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
      end
    end

    class DeleteDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetGroupOutput, context: context)
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
      end
    end

    class DeleteEventTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventTrackerInput, context: context)
        Hearth::Validator.validate!(input[:event_tracker_arn], ::String, context: "#{context}[:event_tracker_arn]")
      end
    end

    class DeleteEventTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventTrackerOutput, context: context)
      end
    end

    class DeleteFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFilterInput, context: context)
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
      end
    end

    class DeleteFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFilterOutput, context: context)
      end
    end

    class DeleteRecommenderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommenderInput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class DeleteRecommenderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommenderOutput, context: context)
      end
    end

    class DeleteSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class DeleteSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaOutput, context: context)
      end
    end

    class DeleteSolutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSolutionInput, context: context)
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
      end
    end

    class DeleteSolutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSolutionOutput, context: context)
      end
    end

    class DescribeAlgorithmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlgorithmInput, context: context)
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
      end
    end

    class DescribeAlgorithmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlgorithmOutput, context: context)
        Algorithm.validate!(input[:algorithm], context: "#{context}[:algorithm]") unless input[:algorithm].nil?
      end
    end

    class DescribeBatchInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBatchInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:batch_inference_job_arn], ::String, context: "#{context}[:batch_inference_job_arn]")
      end
    end

    class DescribeBatchInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBatchInferenceJobOutput, context: context)
        BatchInferenceJob.validate!(input[:batch_inference_job], context: "#{context}[:batch_inference_job]") unless input[:batch_inference_job].nil?
      end
    end

    class DescribeBatchSegmentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBatchSegmentJobInput, context: context)
        Hearth::Validator.validate!(input[:batch_segment_job_arn], ::String, context: "#{context}[:batch_segment_job_arn]")
      end
    end

    class DescribeBatchSegmentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBatchSegmentJobOutput, context: context)
        BatchSegmentJob.validate!(input[:batch_segment_job], context: "#{context}[:batch_segment_job]") unless input[:batch_segment_job].nil?
      end
    end

    class DescribeCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCampaignInput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
      end
    end

    class DescribeCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCampaignOutput, context: context)
        Campaign.validate!(input[:campaign], context: "#{context}[:campaign]") unless input[:campaign].nil?
      end
    end

    class DescribeDatasetExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetExportJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_export_job_arn], ::String, context: "#{context}[:dataset_export_job_arn]")
      end
    end

    class DescribeDatasetExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetExportJobOutput, context: context)
        DatasetExportJob.validate!(input[:dataset_export_job], context: "#{context}[:dataset_export_job]") unless input[:dataset_export_job].nil?
      end
    end

    class DescribeDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
      end
    end

    class DescribeDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetGroupOutput, context: context)
        DatasetGroup.validate!(input[:dataset_group], context: "#{context}[:dataset_group]") unless input[:dataset_group].nil?
      end
    end

    class DescribeDatasetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
      end
    end

    class DescribeDatasetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetImportJobOutput, context: context)
        DatasetImportJob.validate!(input[:dataset_import_job], context: "#{context}[:dataset_import_job]") unless input[:dataset_import_job].nil?
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        Dataset.validate!(input[:dataset], context: "#{context}[:dataset]") unless input[:dataset].nil?
      end
    end

    class DescribeEventTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventTrackerInput, context: context)
        Hearth::Validator.validate!(input[:event_tracker_arn], ::String, context: "#{context}[:event_tracker_arn]")
      end
    end

    class DescribeEventTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventTrackerOutput, context: context)
        EventTracker.validate!(input[:event_tracker], context: "#{context}[:event_tracker]") unless input[:event_tracker].nil?
      end
    end

    class DescribeFeatureTransformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFeatureTransformationInput, context: context)
        Hearth::Validator.validate!(input[:feature_transformation_arn], ::String, context: "#{context}[:feature_transformation_arn]")
      end
    end

    class DescribeFeatureTransformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFeatureTransformationOutput, context: context)
        FeatureTransformation.validate!(input[:feature_transformation], context: "#{context}[:feature_transformation]") unless input[:feature_transformation].nil?
      end
    end

    class DescribeFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFilterInput, context: context)
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
      end
    end

    class DescribeFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFilterOutput, context: context)
        Filter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class DescribeRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecipeInput, context: context)
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
      end
    end

    class DescribeRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecipeOutput, context: context)
        Recipe.validate!(input[:recipe], context: "#{context}[:recipe]") unless input[:recipe].nil?
      end
    end

    class DescribeRecommenderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecommenderInput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class DescribeRecommenderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecommenderOutput, context: context)
        Recommender.validate!(input[:recommender], context: "#{context}[:recommender]") unless input[:recommender].nil?
      end
    end

    class DescribeSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchemaInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class DescribeSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchemaOutput, context: context)
        DatasetSchema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
      end
    end

    class DescribeSolutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSolutionInput, context: context)
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
      end
    end

    class DescribeSolutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSolutionOutput, context: context)
        Solution.validate!(input[:solution], context: "#{context}[:solution]") unless input[:solution].nil?
      end
    end

    class DescribeSolutionVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSolutionVersionInput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
      end
    end

    class DescribeSolutionVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSolutionVersionOutput, context: context)
        SolutionVersion.validate!(input[:solution_version], context: "#{context}[:solution_version]") unless input[:solution_version].nil?
      end
    end

    class EventTracker
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTracker, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_tracker_arn], ::String, context: "#{context}[:event_tracker_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:tracking_id], ::String, context: "#{context}[:tracking_id]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class EventTrackerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTrackerSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_tracker_arn], ::String, context: "#{context}[:event_tracker_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class EventTrackers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventTrackerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FeatureTransformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureTransformation, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:feature_transformation_arn], ::String, context: "#{context}[:feature_transformation_arn]")
        FeaturizationParameters.validate!(input[:default_parameters], context: "#{context}[:default_parameters]") unless input[:default_parameters].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class FeatureTransformationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FeaturizationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class FilterSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetSolutionMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSolutionMetricsInput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
      end
    end

    class GetSolutionMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSolutionMetricsOutput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class HPOConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HPOConfig, context: context)
        HPOObjective.validate!(input[:hpo_objective], context: "#{context}[:hpo_objective]") unless input[:hpo_objective].nil?
        HPOResourceConfig.validate!(input[:hpo_resource_config], context: "#{context}[:hpo_resource_config]") unless input[:hpo_resource_config].nil?
        HyperParameterRanges.validate!(input[:algorithm_hyper_parameter_ranges], context: "#{context}[:algorithm_hyper_parameter_ranges]") unless input[:algorithm_hyper_parameter_ranges].nil?
      end
    end

    class HPOObjective
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HPOObjective, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_regex], ::String, context: "#{context}[:metric_regex]")
      end
    end

    class HPOResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HPOResourceConfig, context: context)
        Hearth::Validator.validate!(input[:max_number_of_training_jobs], ::String, context: "#{context}[:max_number_of_training_jobs]")
        Hearth::Validator.validate!(input[:max_parallel_training_jobs], ::String, context: "#{context}[:max_parallel_training_jobs]")
      end
    end

    class HyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterRanges, context: context)
        IntegerHyperParameterRanges.validate!(input[:integer_hyper_parameter_ranges], context: "#{context}[:integer_hyper_parameter_ranges]") unless input[:integer_hyper_parameter_ranges].nil?
        ContinuousHyperParameterRanges.validate!(input[:continuous_hyper_parameter_ranges], context: "#{context}[:continuous_hyper_parameter_ranges]") unless input[:continuous_hyper_parameter_ranges].nil?
        CategoricalHyperParameterRanges.validate!(input[:categorical_hyper_parameter_ranges], context: "#{context}[:categorical_hyper_parameter_ranges]") unless input[:categorical_hyper_parameter_ranges].nil?
      end
    end

    class HyperParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class IntegerHyperParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegerHyperParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:min_value], ::Integer, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::Integer, context: "#{context}[:max_value]")
      end
    end

    class IntegerHyperParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntegerHyperParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListBatchInferenceJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchInferenceJobsInput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBatchInferenceJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchInferenceJobsOutput, context: context)
        BatchInferenceJobs.validate!(input[:batch_inference_jobs], context: "#{context}[:batch_inference_jobs]") unless input[:batch_inference_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBatchSegmentJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchSegmentJobsInput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBatchSegmentJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchSegmentJobsOutput, context: context)
        BatchSegmentJobs.validate!(input[:batch_segment_jobs], context: "#{context}[:batch_segment_jobs]") unless input[:batch_segment_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCampaignsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCampaignsInput, context: context)
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCampaignsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCampaignsOutput, context: context)
        Campaigns.validate!(input[:campaigns], context: "#{context}[:campaigns]") unless input[:campaigns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetExportJobsOutput, context: context)
        DatasetExportJobs.validate!(input[:dataset_export_jobs], context: "#{context}[:dataset_export_jobs]") unless input[:dataset_export_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetGroupsOutput, context: context)
        DatasetGroups.validate!(input[:dataset_groups], context: "#{context}[:dataset_groups]") unless input[:dataset_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetImportJobsOutput, context: context)
        DatasetImportJobs.validate!(input[:dataset_import_jobs], context: "#{context}[:dataset_import_jobs]") unless input[:dataset_import_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Datasets.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventTrackersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventTrackersInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventTrackersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventTrackersOutput, context: context)
        EventTrackers.validate!(input[:event_trackers], context: "#{context}[:event_trackers]") unless input[:event_trackers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFiltersInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFiltersOutput, context: context)
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecipesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecipesInput, context: context)
        Hearth::Validator.validate!(input[:recipe_provider], ::String, context: "#{context}[:recipe_provider]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class ListRecipesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecipesOutput, context: context)
        Recipes.validate!(input[:recipes], context: "#{context}[:recipes]") unless input[:recipes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecommendersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendersInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRecommendersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendersOutput, context: context)
        Recommenders.validate!(input[:recommenders], context: "#{context}[:recommenders]") unless input[:recommenders].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasOutput, context: context)
        Schemas.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSolutionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSolutionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSolutionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSolutionVersionsOutput, context: context)
        SolutionVersions.validate!(input[:solution_versions], context: "#{context}[:solution_versions]") unless input[:solution_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSolutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSolutionsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSolutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSolutionsOutput, context: context)
        Solutions.validate!(input[:solutions], context: "#{context}[:solutions]") unless input[:solutions].nil?
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class OptimizationObjective
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptimizationObjective, context: context)
        Hearth::Validator.validate!(input[:item_attribute], ::String, context: "#{context}[:item_attribute]")
        Hearth::Validator.validate!(input[:objective_sensitivity], ::String, context: "#{context}[:objective_sensitivity]")
      end
    end

    class Recipe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recipe, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        Hearth::Validator.validate!(input[:feature_transformation_arn], ::String, context: "#{context}[:feature_transformation_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:recipe_type], ::String, context: "#{context}[:recipe_type]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class RecipeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipeSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class Recipes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecipeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Recommender
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommender, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        RecommenderConfig.validate!(input[:recommender_config], context: "#{context}[:recommender_config]") unless input[:recommender_config].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        RecommenderUpdateSummary.validate!(input[:latest_recommender_update], context: "#{context}[:latest_recommender_update]") unless input[:latest_recommender_update].nil?
        Metrics.validate!(input[:model_metrics], context: "#{context}[:model_metrics]") unless input[:model_metrics].nil?
      end
    end

    class RecommenderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommenderConfig, context: context)
        HyperParameters.validate!(input[:item_exploration_config], context: "#{context}[:item_exploration_config]") unless input[:item_exploration_config].nil?
        Hearth::Validator.validate!(input[:min_recommendation_requests_per_second], ::Integer, context: "#{context}[:min_recommendation_requests_per_second]")
      end
    end

    class RecommenderSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommenderSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        RecommenderConfig.validate!(input[:recommender_config], context: "#{context}[:recommender_config]") unless input[:recommender_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class RecommenderUpdateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommenderUpdateSummary, context: context)
        RecommenderConfig.validate!(input[:recommender_config], context: "#{context}[:recommender_config]") unless input[:recommender_config].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class Recommenders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommenderSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
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

    class S3DataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DataConfig, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class Schemas
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetSchemaSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Solution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Solution, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
        Hearth::Validator.validate!(input[:perform_hpo], ::TrueClass, ::FalseClass, context: "#{context}[:perform_hpo]")
        Hearth::Validator.validate!(input[:perform_auto_ml], ::TrueClass, ::FalseClass, context: "#{context}[:perform_auto_ml]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        SolutionConfig.validate!(input[:solution_config], context: "#{context}[:solution_config]") unless input[:solution_config].nil?
        AutoMLResult.validate!(input[:auto_ml_result], context: "#{context}[:auto_ml_result]") unless input[:auto_ml_result].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        SolutionVersionSummary.validate!(input[:latest_solution_version], context: "#{context}[:latest_solution_version]") unless input[:latest_solution_version].nil?
      end
    end

    class SolutionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SolutionConfig, context: context)
        Hearth::Validator.validate!(input[:event_value_threshold], ::String, context: "#{context}[:event_value_threshold]")
        HPOConfig.validate!(input[:hpo_config], context: "#{context}[:hpo_config]") unless input[:hpo_config].nil?
        HyperParameters.validate!(input[:algorithm_hyper_parameters], context: "#{context}[:algorithm_hyper_parameters]") unless input[:algorithm_hyper_parameters].nil?
        FeatureTransformationParameters.validate!(input[:feature_transformation_parameters], context: "#{context}[:feature_transformation_parameters]") unless input[:feature_transformation_parameters].nil?
        AutoMLConfig.validate!(input[:auto_ml_config], context: "#{context}[:auto_ml_config]") unless input[:auto_ml_config].nil?
        OptimizationObjective.validate!(input[:optimization_objective], context: "#{context}[:optimization_objective]") unless input[:optimization_objective].nil?
      end
    end

    class SolutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SolutionSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class SolutionVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SolutionVersion, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:solution_arn], ::String, context: "#{context}[:solution_arn]")
        Hearth::Validator.validate!(input[:perform_hpo], ::TrueClass, ::FalseClass, context: "#{context}[:perform_hpo]")
        Hearth::Validator.validate!(input[:perform_auto_ml], ::TrueClass, ::FalseClass, context: "#{context}[:perform_auto_ml]")
        Hearth::Validator.validate!(input[:recipe_arn], ::String, context: "#{context}[:recipe_arn]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        SolutionConfig.validate!(input[:solution_config], context: "#{context}[:solution_config]") unless input[:solution_config].nil?
        Hearth::Validator.validate!(input[:training_hours], ::Float, context: "#{context}[:training_hours]")
        Hearth::Validator.validate!(input[:training_mode], ::String, context: "#{context}[:training_mode]")
        TunedHPOParams.validate!(input[:tuned_hpo_params], context: "#{context}[:tuned_hpo_params]") unless input[:tuned_hpo_params].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
      end
    end

    class SolutionVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SolutionVersionSummary, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:last_updated_date_time], ::Time, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class SolutionVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SolutionVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Solutions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SolutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartRecommenderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecommenderInput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class StartRecommenderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecommenderOutput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class StopRecommenderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRecommenderInput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class StopRecommenderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRecommenderOutput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class StopSolutionVersionCreationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSolutionVersionCreationInput, context: context)
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
      end
    end

    class StopSolutionVersionCreationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSolutionVersionCreationOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:tag_value], ::String, context: "#{context}[:tag_value]")
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagKeysException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagKeysException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TunedHPOParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TunedHPOParams, context: context)
        HyperParameters.validate!(input[:algorithm_hyper_parameters], context: "#{context}[:algorithm_hyper_parameters]") unless input[:algorithm_hyper_parameters].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCampaignInput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
        Hearth::Validator.validate!(input[:solution_version_arn], ::String, context: "#{context}[:solution_version_arn]")
        Hearth::Validator.validate!(input[:min_provisioned_tps], ::Integer, context: "#{context}[:min_provisioned_tps]")
        CampaignConfig.validate!(input[:campaign_config], context: "#{context}[:campaign_config]") unless input[:campaign_config].nil?
      end
    end

    class UpdateCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCampaignOutput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
      end
    end

    class UpdateRecommenderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecommenderInput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
        RecommenderConfig.validate!(input[:recommender_config], context: "#{context}[:recommender_config]") unless input[:recommender_config].nil?
      end
    end

    class UpdateRecommenderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecommenderOutput, context: context)
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

  end
end
