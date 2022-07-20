# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Personalize
  module Params

    module Algorithm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Algorithm, context: context)
        type = Types::Algorithm.new
        type.name = params[:name]
        type.algorithm_arn = params[:algorithm_arn]
        type.algorithm_image = AlgorithmImage.build(params[:algorithm_image], context: "#{context}[:algorithm_image]") unless params[:algorithm_image].nil?
        type.default_hyper_parameters = HyperParameters.build(params[:default_hyper_parameters], context: "#{context}[:default_hyper_parameters]") unless params[:default_hyper_parameters].nil?
        type.default_hyper_parameter_ranges = DefaultHyperParameterRanges.build(params[:default_hyper_parameter_ranges], context: "#{context}[:default_hyper_parameter_ranges]") unless params[:default_hyper_parameter_ranges].nil?
        type.default_resource_config = ResourceConfig.build(params[:default_resource_config], context: "#{context}[:default_resource_config]") unless params[:default_resource_config].nil?
        type.training_input_mode = params[:training_input_mode]
        type.role_arn = params[:role_arn]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module AlgorithmImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmImage, context: context)
        type = Types::AlgorithmImage.new
        type.name = params[:name]
        type.docker_uri = params[:docker_uri]
        type
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoMLConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLConfig, context: context)
        type = Types::AutoMLConfig.new
        type.metric_name = params[:metric_name]
        type.recipe_list = ArnList.build(params[:recipe_list], context: "#{context}[:recipe_list]") unless params[:recipe_list].nil?
        type
      end
    end

    module AutoMLResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLResult, context: context)
        type = Types::AutoMLResult.new
        type.best_recipe_arn = params[:best_recipe_arn]
        type
      end
    end

    module BatchInferenceJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchInferenceJob, context: context)
        type = Types::BatchInferenceJob.new
        type.job_name = params[:job_name]
        type.batch_inference_job_arn = params[:batch_inference_job_arn]
        type.filter_arn = params[:filter_arn]
        type.failure_reason = params[:failure_reason]
        type.solution_version_arn = params[:solution_version_arn]
        type.num_results = params[:num_results]
        type.job_input = BatchInferenceJobInput.build(params[:job_input], context: "#{context}[:job_input]") unless params[:job_input].nil?
        type.job_output = BatchInferenceJobOutput.build(params[:job_output], context: "#{context}[:job_output]") unless params[:job_output].nil?
        type.batch_inference_job_config = BatchInferenceJobConfig.build(params[:batch_inference_job_config], context: "#{context}[:batch_inference_job_config]") unless params[:batch_inference_job_config].nil?
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module BatchInferenceJobConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchInferenceJobConfig, context: context)
        type = Types::BatchInferenceJobConfig.new
        type.item_exploration_config = HyperParameters.build(params[:item_exploration_config], context: "#{context}[:item_exploration_config]") unless params[:item_exploration_config].nil?
        type
      end
    end

    module BatchInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchInferenceJobInput, context: context)
        type = Types::BatchInferenceJobInput.new
        type.s3_data_source = S3DataConfig.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type
      end
    end

    module BatchInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchInferenceJobOutput, context: context)
        type = Types::BatchInferenceJobOutput.new
        type.s3_data_destination = S3DataConfig.build(params[:s3_data_destination], context: "#{context}[:s3_data_destination]") unless params[:s3_data_destination].nil?
        type
      end
    end

    module BatchInferenceJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchInferenceJobSummary, context: context)
        type = Types::BatchInferenceJobSummary.new
        type.batch_inference_job_arn = params[:batch_inference_job_arn]
        type.job_name = params[:job_name]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type.solution_version_arn = params[:solution_version_arn]
        type
      end
    end

    module BatchInferenceJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchInferenceJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchSegmentJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSegmentJob, context: context)
        type = Types::BatchSegmentJob.new
        type.job_name = params[:job_name]
        type.batch_segment_job_arn = params[:batch_segment_job_arn]
        type.filter_arn = params[:filter_arn]
        type.failure_reason = params[:failure_reason]
        type.solution_version_arn = params[:solution_version_arn]
        type.num_results = params[:num_results]
        type.job_input = BatchSegmentJobInput.build(params[:job_input], context: "#{context}[:job_input]") unless params[:job_input].nil?
        type.job_output = BatchSegmentJobOutput.build(params[:job_output], context: "#{context}[:job_output]") unless params[:job_output].nil?
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module BatchSegmentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSegmentJobInput, context: context)
        type = Types::BatchSegmentJobInput.new
        type.s3_data_source = S3DataConfig.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type
      end
    end

    module BatchSegmentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSegmentJobOutput, context: context)
        type = Types::BatchSegmentJobOutput.new
        type.s3_data_destination = S3DataConfig.build(params[:s3_data_destination], context: "#{context}[:s3_data_destination]") unless params[:s3_data_destination].nil?
        type
      end
    end

    module BatchSegmentJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSegmentJobSummary, context: context)
        type = Types::BatchSegmentJobSummary.new
        type.batch_segment_job_arn = params[:batch_segment_job_arn]
        type.job_name = params[:job_name]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type.solution_version_arn = params[:solution_version_arn]
        type
      end
    end

    module BatchSegmentJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchSegmentJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Campaign
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Campaign, context: context)
        type = Types::Campaign.new
        type.name = params[:name]
        type.campaign_arn = params[:campaign_arn]
        type.solution_version_arn = params[:solution_version_arn]
        type.min_provisioned_tps = params[:min_provisioned_tps]
        type.campaign_config = CampaignConfig.build(params[:campaign_config], context: "#{context}[:campaign_config]") unless params[:campaign_config].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.latest_campaign_update = CampaignUpdateSummary.build(params[:latest_campaign_update], context: "#{context}[:latest_campaign_update]") unless params[:latest_campaign_update].nil?
        type
      end
    end

    module CampaignConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignConfig, context: context)
        type = Types::CampaignConfig.new
        type.item_exploration_config = HyperParameters.build(params[:item_exploration_config], context: "#{context}[:item_exploration_config]") unless params[:item_exploration_config].nil?
        type
      end
    end

    module CampaignSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignSummary, context: context)
        type = Types::CampaignSummary.new
        type.name = params[:name]
        type.campaign_arn = params[:campaign_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module CampaignUpdateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignUpdateSummary, context: context)
        type = Types::CampaignUpdateSummary.new
        type.solution_version_arn = params[:solution_version_arn]
        type.min_provisioned_tps = params[:min_provisioned_tps]
        type.campaign_config = CampaignConfig.build(params[:campaign_config], context: "#{context}[:campaign_config]") unless params[:campaign_config].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module Campaigns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CampaignSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CategoricalHyperParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoricalHyperParameterRange, context: context)
        type = Types::CategoricalHyperParameterRange.new
        type.name = params[:name]
        type.values = CategoricalValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module CategoricalHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CategoricalHyperParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CategoricalValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContinuousHyperParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinuousHyperParameterRange, context: context)
        type = Types::ContinuousHyperParameterRange.new
        type.name = params[:name]
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type
      end
    end

    module ContinuousHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContinuousHyperParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateBatchInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchInferenceJobInput, context: context)
        type = Types::CreateBatchInferenceJobInput.new
        type.job_name = params[:job_name]
        type.solution_version_arn = params[:solution_version_arn]
        type.filter_arn = params[:filter_arn]
        type.num_results = params[:num_results]
        type.job_input = BatchInferenceJobInput.build(params[:job_input], context: "#{context}[:job_input]") unless params[:job_input].nil?
        type.job_output = BatchInferenceJobOutput.build(params[:job_output], context: "#{context}[:job_output]") unless params[:job_output].nil?
        type.role_arn = params[:role_arn]
        type.batch_inference_job_config = BatchInferenceJobConfig.build(params[:batch_inference_job_config], context: "#{context}[:batch_inference_job_config]") unless params[:batch_inference_job_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBatchInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchInferenceJobOutput, context: context)
        type = Types::CreateBatchInferenceJobOutput.new
        type.batch_inference_job_arn = params[:batch_inference_job_arn]
        type
      end
    end

    module CreateBatchSegmentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchSegmentJobInput, context: context)
        type = Types::CreateBatchSegmentJobInput.new
        type.job_name = params[:job_name]
        type.solution_version_arn = params[:solution_version_arn]
        type.filter_arn = params[:filter_arn]
        type.num_results = params[:num_results]
        type.job_input = BatchSegmentJobInput.build(params[:job_input], context: "#{context}[:job_input]") unless params[:job_input].nil?
        type.job_output = BatchSegmentJobOutput.build(params[:job_output], context: "#{context}[:job_output]") unless params[:job_output].nil?
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBatchSegmentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchSegmentJobOutput, context: context)
        type = Types::CreateBatchSegmentJobOutput.new
        type.batch_segment_job_arn = params[:batch_segment_job_arn]
        type
      end
    end

    module CreateCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCampaignInput, context: context)
        type = Types::CreateCampaignInput.new
        type.name = params[:name]
        type.solution_version_arn = params[:solution_version_arn]
        type.min_provisioned_tps = params[:min_provisioned_tps]
        type.campaign_config = CampaignConfig.build(params[:campaign_config], context: "#{context}[:campaign_config]") unless params[:campaign_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCampaignOutput, context: context)
        type = Types::CreateCampaignOutput.new
        type.campaign_arn = params[:campaign_arn]
        type
      end
    end

    module CreateDatasetExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetExportJobInput, context: context)
        type = Types::CreateDatasetExportJobInput.new
        type.job_name = params[:job_name]
        type.dataset_arn = params[:dataset_arn]
        type.ingestion_mode = params[:ingestion_mode]
        type.role_arn = params[:role_arn]
        type.job_output = DatasetExportJobOutput.build(params[:job_output], context: "#{context}[:job_output]") unless params[:job_output].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetExportJobOutput, context: context)
        type = Types::CreateDatasetExportJobOutput.new
        type.dataset_export_job_arn = params[:dataset_export_job_arn]
        type
      end
    end

    module CreateDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetGroupInput, context: context)
        type = Types::CreateDatasetGroupInput.new
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type.domain = params[:domain]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetGroupOutput, context: context)
        type = Types::CreateDatasetGroupOutput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.domain = params[:domain]
        type
      end
    end

    module CreateDatasetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetImportJobInput, context: context)
        type = Types::CreateDatasetImportJobInput.new
        type.job_name = params[:job_name]
        type.dataset_arn = params[:dataset_arn]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetImportJobOutput, context: context)
        type = Types::CreateDatasetImportJobOutput.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.name = params[:name]
        type.schema_arn = params[:schema_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.dataset_type = params[:dataset_type]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module CreateEventTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventTrackerInput, context: context)
        type = Types::CreateEventTrackerInput.new
        type.name = params[:name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEventTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventTrackerOutput, context: context)
        type = Types::CreateEventTrackerOutput.new
        type.event_tracker_arn = params[:event_tracker_arn]
        type.tracking_id = params[:tracking_id]
        type
      end
    end

    module CreateFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFilterInput, context: context)
        type = Types::CreateFilterInput.new
        type.name = params[:name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.filter_expression = params[:filter_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFilterOutput, context: context)
        type = Types::CreateFilterOutput.new
        type.filter_arn = params[:filter_arn]
        type
      end
    end

    module CreateRecommenderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommenderInput, context: context)
        type = Types::CreateRecommenderInput.new
        type.name = params[:name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.recipe_arn = params[:recipe_arn]
        type.recommender_config = RecommenderConfig.build(params[:recommender_config], context: "#{context}[:recommender_config]") unless params[:recommender_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRecommenderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommenderOutput, context: context)
        type = Types::CreateRecommenderOutput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module CreateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaInput, context: context)
        type = Types::CreateSchemaInput.new
        type.name = params[:name]
        type.schema = params[:schema]
        type.domain = params[:domain]
        type
      end
    end

    module CreateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaOutput, context: context)
        type = Types::CreateSchemaOutput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module CreateSolutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSolutionInput, context: context)
        type = Types::CreateSolutionInput.new
        type.name = params[:name]
        type.perform_hpo = params[:perform_hpo]
        type.perform_auto_ml = params[:perform_auto_ml]
        type.recipe_arn = params[:recipe_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.event_type = params[:event_type]
        type.solution_config = SolutionConfig.build(params[:solution_config], context: "#{context}[:solution_config]") unless params[:solution_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSolutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSolutionOutput, context: context)
        type = Types::CreateSolutionOutput.new
        type.solution_arn = params[:solution_arn]
        type
      end
    end

    module CreateSolutionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSolutionVersionInput, context: context)
        type = Types::CreateSolutionVersionInput.new
        type.solution_arn = params[:solution_arn]
        type.training_mode = params[:training_mode]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSolutionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSolutionVersionOutput, context: context)
        type = Types::CreateSolutionVersionOutput.new
        type.solution_version_arn = params[:solution_version_arn]
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.data_location = params[:data_location]
        type
      end
    end

    module Dataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dataset, context: context)
        type = Types::Dataset.new
        type.name = params[:name]
        type.dataset_arn = params[:dataset_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.dataset_type = params[:dataset_type]
        type.schema_arn = params[:schema_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module DatasetExportJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetExportJob, context: context)
        type = Types::DatasetExportJob.new
        type.job_name = params[:job_name]
        type.dataset_export_job_arn = params[:dataset_export_job_arn]
        type.dataset_arn = params[:dataset_arn]
        type.ingestion_mode = params[:ingestion_mode]
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.job_output = DatasetExportJobOutput.build(params[:job_output], context: "#{context}[:job_output]") unless params[:job_output].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DatasetExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetExportJobOutput, context: context)
        type = Types::DatasetExportJobOutput.new
        type.s3_data_destination = S3DataConfig.build(params[:s3_data_destination], context: "#{context}[:s3_data_destination]") unless params[:s3_data_destination].nil?
        type
      end
    end

    module DatasetExportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetExportJobSummary, context: context)
        type = Types::DatasetExportJobSummary.new
        type.dataset_export_job_arn = params[:dataset_export_job_arn]
        type.job_name = params[:job_name]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DatasetExportJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetExportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetGroup, context: context)
        type = Types::DatasetGroup.new
        type.name = params[:name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.status = params[:status]
        type.role_arn = params[:role_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type.domain = params[:domain]
        type
      end
    end

    module DatasetGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetGroupSummary, context: context)
        type = Types::DatasetGroupSummary.new
        type.name = params[:name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type.domain = params[:domain]
        type
      end
    end

    module DatasetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetImportJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetImportJob, context: context)
        type = Types::DatasetImportJob.new
        type.job_name = params[:job_name]
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type.dataset_arn = params[:dataset_arn]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DatasetImportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetImportJobSummary, context: context)
        type = Types::DatasetImportJobSummary.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type.job_name = params[:job_name]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DatasetImportJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetImportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSchema, context: context)
        type = Types::DatasetSchema.new
        type.name = params[:name]
        type.schema_arn = params[:schema_arn]
        type.schema = params[:schema]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.domain = params[:domain]
        type
      end
    end

    module DatasetSchemaSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSchemaSummary, context: context)
        type = Types::DatasetSchemaSummary.new
        type.name = params[:name]
        type.schema_arn = params[:schema_arn]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.domain = params[:domain]
        type
      end
    end

    module DatasetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSummary, context: context)
        type = Types::DatasetSummary.new
        type.name = params[:name]
        type.dataset_arn = params[:dataset_arn]
        type.dataset_type = params[:dataset_type]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module Datasets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DefaultCategoricalHyperParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultCategoricalHyperParameterRange, context: context)
        type = Types::DefaultCategoricalHyperParameterRange.new
        type.name = params[:name]
        type.values = CategoricalValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.is_tunable = params[:is_tunable]
        type
      end
    end

    module DefaultCategoricalHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DefaultCategoricalHyperParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DefaultContinuousHyperParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultContinuousHyperParameterRange, context: context)
        type = Types::DefaultContinuousHyperParameterRange.new
        type.name = params[:name]
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type.is_tunable = params[:is_tunable]
        type
      end
    end

    module DefaultContinuousHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DefaultContinuousHyperParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DefaultHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultHyperParameterRanges, context: context)
        type = Types::DefaultHyperParameterRanges.new
        type.integer_hyper_parameter_ranges = DefaultIntegerHyperParameterRanges.build(params[:integer_hyper_parameter_ranges], context: "#{context}[:integer_hyper_parameter_ranges]") unless params[:integer_hyper_parameter_ranges].nil?
        type.continuous_hyper_parameter_ranges = DefaultContinuousHyperParameterRanges.build(params[:continuous_hyper_parameter_ranges], context: "#{context}[:continuous_hyper_parameter_ranges]") unless params[:continuous_hyper_parameter_ranges].nil?
        type.categorical_hyper_parameter_ranges = DefaultCategoricalHyperParameterRanges.build(params[:categorical_hyper_parameter_ranges], context: "#{context}[:categorical_hyper_parameter_ranges]") unless params[:categorical_hyper_parameter_ranges].nil?
        type
      end
    end

    module DefaultIntegerHyperParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultIntegerHyperParameterRange, context: context)
        type = Types::DefaultIntegerHyperParameterRange.new
        type.name = params[:name]
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type.is_tunable = params[:is_tunable]
        type
      end
    end

    module DefaultIntegerHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DefaultIntegerHyperParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCampaignInput, context: context)
        type = Types::DeleteCampaignInput.new
        type.campaign_arn = params[:campaign_arn]
        type
      end
    end

    module DeleteCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCampaignOutput, context: context)
        type = Types::DeleteCampaignOutput.new
        type
      end
    end

    module DeleteDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetGroupInput, context: context)
        type = Types::DeleteDatasetGroupInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type
      end
    end

    module DeleteDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetGroupOutput, context: context)
        type = Types::DeleteDatasetGroupOutput.new
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module DeleteDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetOutput, context: context)
        type = Types::DeleteDatasetOutput.new
        type
      end
    end

    module DeleteEventTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventTrackerInput, context: context)
        type = Types::DeleteEventTrackerInput.new
        type.event_tracker_arn = params[:event_tracker_arn]
        type
      end
    end

    module DeleteEventTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventTrackerOutput, context: context)
        type = Types::DeleteEventTrackerOutput.new
        type
      end
    end

    module DeleteFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFilterInput, context: context)
        type = Types::DeleteFilterInput.new
        type.filter_arn = params[:filter_arn]
        type
      end
    end

    module DeleteFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFilterOutput, context: context)
        type = Types::DeleteFilterOutput.new
        type
      end
    end

    module DeleteRecommenderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommenderInput, context: context)
        type = Types::DeleteRecommenderInput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module DeleteRecommenderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommenderOutput, context: context)
        type = Types::DeleteRecommenderOutput.new
        type
      end
    end

    module DeleteSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaInput, context: context)
        type = Types::DeleteSchemaInput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module DeleteSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaOutput, context: context)
        type = Types::DeleteSchemaOutput.new
        type
      end
    end

    module DeleteSolutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSolutionInput, context: context)
        type = Types::DeleteSolutionInput.new
        type.solution_arn = params[:solution_arn]
        type
      end
    end

    module DeleteSolutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSolutionOutput, context: context)
        type = Types::DeleteSolutionOutput.new
        type
      end
    end

    module DescribeAlgorithmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlgorithmInput, context: context)
        type = Types::DescribeAlgorithmInput.new
        type.algorithm_arn = params[:algorithm_arn]
        type
      end
    end

    module DescribeAlgorithmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlgorithmOutput, context: context)
        type = Types::DescribeAlgorithmOutput.new
        type.algorithm = Algorithm.build(params[:algorithm], context: "#{context}[:algorithm]") unless params[:algorithm].nil?
        type
      end
    end

    module DescribeBatchInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBatchInferenceJobInput, context: context)
        type = Types::DescribeBatchInferenceJobInput.new
        type.batch_inference_job_arn = params[:batch_inference_job_arn]
        type
      end
    end

    module DescribeBatchInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBatchInferenceJobOutput, context: context)
        type = Types::DescribeBatchInferenceJobOutput.new
        type.batch_inference_job = BatchInferenceJob.build(params[:batch_inference_job], context: "#{context}[:batch_inference_job]") unless params[:batch_inference_job].nil?
        type
      end
    end

    module DescribeBatchSegmentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBatchSegmentJobInput, context: context)
        type = Types::DescribeBatchSegmentJobInput.new
        type.batch_segment_job_arn = params[:batch_segment_job_arn]
        type
      end
    end

    module DescribeBatchSegmentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBatchSegmentJobOutput, context: context)
        type = Types::DescribeBatchSegmentJobOutput.new
        type.batch_segment_job = BatchSegmentJob.build(params[:batch_segment_job], context: "#{context}[:batch_segment_job]") unless params[:batch_segment_job].nil?
        type
      end
    end

    module DescribeCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCampaignInput, context: context)
        type = Types::DescribeCampaignInput.new
        type.campaign_arn = params[:campaign_arn]
        type
      end
    end

    module DescribeCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCampaignOutput, context: context)
        type = Types::DescribeCampaignOutput.new
        type.campaign = Campaign.build(params[:campaign], context: "#{context}[:campaign]") unless params[:campaign].nil?
        type
      end
    end

    module DescribeDatasetExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetExportJobInput, context: context)
        type = Types::DescribeDatasetExportJobInput.new
        type.dataset_export_job_arn = params[:dataset_export_job_arn]
        type
      end
    end

    module DescribeDatasetExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetExportJobOutput, context: context)
        type = Types::DescribeDatasetExportJobOutput.new
        type.dataset_export_job = DatasetExportJob.build(params[:dataset_export_job], context: "#{context}[:dataset_export_job]") unless params[:dataset_export_job].nil?
        type
      end
    end

    module DescribeDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetGroupInput, context: context)
        type = Types::DescribeDatasetGroupInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type
      end
    end

    module DescribeDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetGroupOutput, context: context)
        type = Types::DescribeDatasetGroupOutput.new
        type.dataset_group = DatasetGroup.build(params[:dataset_group], context: "#{context}[:dataset_group]") unless params[:dataset_group].nil?
        type
      end
    end

    module DescribeDatasetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetImportJobInput, context: context)
        type = Types::DescribeDatasetImportJobInput.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type
      end
    end

    module DescribeDatasetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetImportJobOutput, context: context)
        type = Types::DescribeDatasetImportJobOutput.new
        type.dataset_import_job = DatasetImportJob.build(params[:dataset_import_job], context: "#{context}[:dataset_import_job]") unless params[:dataset_import_job].nil?
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset = Dataset.build(params[:dataset], context: "#{context}[:dataset]") unless params[:dataset].nil?
        type
      end
    end

    module DescribeEventTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventTrackerInput, context: context)
        type = Types::DescribeEventTrackerInput.new
        type.event_tracker_arn = params[:event_tracker_arn]
        type
      end
    end

    module DescribeEventTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventTrackerOutput, context: context)
        type = Types::DescribeEventTrackerOutput.new
        type.event_tracker = EventTracker.build(params[:event_tracker], context: "#{context}[:event_tracker]") unless params[:event_tracker].nil?
        type
      end
    end

    module DescribeFeatureTransformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFeatureTransformationInput, context: context)
        type = Types::DescribeFeatureTransformationInput.new
        type.feature_transformation_arn = params[:feature_transformation_arn]
        type
      end
    end

    module DescribeFeatureTransformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFeatureTransformationOutput, context: context)
        type = Types::DescribeFeatureTransformationOutput.new
        type.feature_transformation = FeatureTransformation.build(params[:feature_transformation], context: "#{context}[:feature_transformation]") unless params[:feature_transformation].nil?
        type
      end
    end

    module DescribeFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFilterInput, context: context)
        type = Types::DescribeFilterInput.new
        type.filter_arn = params[:filter_arn]
        type
      end
    end

    module DescribeFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFilterOutput, context: context)
        type = Types::DescribeFilterOutput.new
        type.filter = Filter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module DescribeRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecipeInput, context: context)
        type = Types::DescribeRecipeInput.new
        type.recipe_arn = params[:recipe_arn]
        type
      end
    end

    module DescribeRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecipeOutput, context: context)
        type = Types::DescribeRecipeOutput.new
        type.recipe = Recipe.build(params[:recipe], context: "#{context}[:recipe]") unless params[:recipe].nil?
        type
      end
    end

    module DescribeRecommenderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecommenderInput, context: context)
        type = Types::DescribeRecommenderInput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module DescribeRecommenderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecommenderOutput, context: context)
        type = Types::DescribeRecommenderOutput.new
        type.recommender = Recommender.build(params[:recommender], context: "#{context}[:recommender]") unless params[:recommender].nil?
        type
      end
    end

    module DescribeSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchemaInput, context: context)
        type = Types::DescribeSchemaInput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module DescribeSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchemaOutput, context: context)
        type = Types::DescribeSchemaOutput.new
        type.schema = DatasetSchema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type
      end
    end

    module DescribeSolutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSolutionInput, context: context)
        type = Types::DescribeSolutionInput.new
        type.solution_arn = params[:solution_arn]
        type
      end
    end

    module DescribeSolutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSolutionOutput, context: context)
        type = Types::DescribeSolutionOutput.new
        type.solution = Solution.build(params[:solution], context: "#{context}[:solution]") unless params[:solution].nil?
        type
      end
    end

    module DescribeSolutionVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSolutionVersionInput, context: context)
        type = Types::DescribeSolutionVersionInput.new
        type.solution_version_arn = params[:solution_version_arn]
        type
      end
    end

    module DescribeSolutionVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSolutionVersionOutput, context: context)
        type = Types::DescribeSolutionVersionOutput.new
        type.solution_version = SolutionVersion.build(params[:solution_version], context: "#{context}[:solution_version]") unless params[:solution_version].nil?
        type
      end
    end

    module EventTracker
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTracker, context: context)
        type = Types::EventTracker.new
        type.name = params[:name]
        type.event_tracker_arn = params[:event_tracker_arn]
        type.account_id = params[:account_id]
        type.tracking_id = params[:tracking_id]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module EventTrackerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTrackerSummary, context: context)
        type = Types::EventTrackerSummary.new
        type.name = params[:name]
        type.event_tracker_arn = params[:event_tracker_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module EventTrackers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventTrackerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FeatureTransformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureTransformation, context: context)
        type = Types::FeatureTransformation.new
        type.name = params[:name]
        type.feature_transformation_arn = params[:feature_transformation_arn]
        type.default_parameters = FeaturizationParameters.build(params[:default_parameters], context: "#{context}[:default_parameters]") unless params[:default_parameters].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.status = params[:status]
        type
      end
    end

    module FeatureTransformationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FeaturizationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.filter_arn = params[:filter_arn]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.failure_reason = params[:failure_reason]
        type.filter_expression = params[:filter_expression]
        type.status = params[:status]
        type
      end
    end

    module FilterSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterSummary, context: context)
        type = Types::FilterSummary.new
        type.name = params[:name]
        type.filter_arn = params[:filter_arn]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.failure_reason = params[:failure_reason]
        type.status = params[:status]
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetSolutionMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSolutionMetricsInput, context: context)
        type = Types::GetSolutionMetricsInput.new
        type.solution_version_arn = params[:solution_version_arn]
        type
      end
    end

    module GetSolutionMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSolutionMetricsOutput, context: context)
        type = Types::GetSolutionMetricsOutput.new
        type.solution_version_arn = params[:solution_version_arn]
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module HPOConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HPOConfig, context: context)
        type = Types::HPOConfig.new
        type.hpo_objective = HPOObjective.build(params[:hpo_objective], context: "#{context}[:hpo_objective]") unless params[:hpo_objective].nil?
        type.hpo_resource_config = HPOResourceConfig.build(params[:hpo_resource_config], context: "#{context}[:hpo_resource_config]") unless params[:hpo_resource_config].nil?
        type.algorithm_hyper_parameter_ranges = HyperParameterRanges.build(params[:algorithm_hyper_parameter_ranges], context: "#{context}[:algorithm_hyper_parameter_ranges]") unless params[:algorithm_hyper_parameter_ranges].nil?
        type
      end
    end

    module HPOObjective
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HPOObjective, context: context)
        type = Types::HPOObjective.new
        type.type = params[:type]
        type.metric_name = params[:metric_name]
        type.metric_regex = params[:metric_regex]
        type
      end
    end

    module HPOResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HPOResourceConfig, context: context)
        type = Types::HPOResourceConfig.new
        type.max_number_of_training_jobs = params[:max_number_of_training_jobs]
        type.max_parallel_training_jobs = params[:max_parallel_training_jobs]
        type
      end
    end

    module HyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterRanges, context: context)
        type = Types::HyperParameterRanges.new
        type.integer_hyper_parameter_ranges = IntegerHyperParameterRanges.build(params[:integer_hyper_parameter_ranges], context: "#{context}[:integer_hyper_parameter_ranges]") unless params[:integer_hyper_parameter_ranges].nil?
        type.continuous_hyper_parameter_ranges = ContinuousHyperParameterRanges.build(params[:continuous_hyper_parameter_ranges], context: "#{context}[:continuous_hyper_parameter_ranges]") unless params[:continuous_hyper_parameter_ranges].nil?
        type.categorical_hyper_parameter_ranges = CategoricalHyperParameterRanges.build(params[:categorical_hyper_parameter_ranges], context: "#{context}[:categorical_hyper_parameter_ranges]") unless params[:categorical_hyper_parameter_ranges].nil?
        type
      end
    end

    module HyperParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module IntegerHyperParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegerHyperParameterRange, context: context)
        type = Types::IntegerHyperParameterRange.new
        type.name = params[:name]
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type
      end
    end

    module IntegerHyperParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntegerHyperParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
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

    module ListBatchInferenceJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchInferenceJobsInput, context: context)
        type = Types::ListBatchInferenceJobsInput.new
        type.solution_version_arn = params[:solution_version_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBatchInferenceJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchInferenceJobsOutput, context: context)
        type = Types::ListBatchInferenceJobsOutput.new
        type.batch_inference_jobs = BatchInferenceJobs.build(params[:batch_inference_jobs], context: "#{context}[:batch_inference_jobs]") unless params[:batch_inference_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBatchSegmentJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchSegmentJobsInput, context: context)
        type = Types::ListBatchSegmentJobsInput.new
        type.solution_version_arn = params[:solution_version_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBatchSegmentJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchSegmentJobsOutput, context: context)
        type = Types::ListBatchSegmentJobsOutput.new
        type.batch_segment_jobs = BatchSegmentJobs.build(params[:batch_segment_jobs], context: "#{context}[:batch_segment_jobs]") unless params[:batch_segment_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCampaignsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCampaignsInput, context: context)
        type = Types::ListCampaignsInput.new
        type.solution_arn = params[:solution_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCampaignsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCampaignsOutput, context: context)
        type = Types::ListCampaignsOutput.new
        type.campaigns = Campaigns.build(params[:campaigns], context: "#{context}[:campaigns]") unless params[:campaigns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetExportJobsInput, context: context)
        type = Types::ListDatasetExportJobsInput.new
        type.dataset_arn = params[:dataset_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetExportJobsOutput, context: context)
        type = Types::ListDatasetExportJobsOutput.new
        type.dataset_export_jobs = DatasetExportJobs.build(params[:dataset_export_jobs], context: "#{context}[:dataset_export_jobs]") unless params[:dataset_export_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetGroupsInput, context: context)
        type = Types::ListDatasetGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetGroupsOutput, context: context)
        type = Types::ListDatasetGroupsOutput.new
        type.dataset_groups = DatasetGroups.build(params[:dataset_groups], context: "#{context}[:dataset_groups]") unless params[:dataset_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetImportJobsInput, context: context)
        type = Types::ListDatasetImportJobsInput.new
        type.dataset_arn = params[:dataset_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetImportJobsOutput, context: context)
        type = Types::ListDatasetImportJobsOutput.new
        type.dataset_import_jobs = DatasetImportJobs.build(params[:dataset_import_jobs], context: "#{context}[:dataset_import_jobs]") unless params[:dataset_import_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsOutput, context: context)
        type = Types::ListDatasetsOutput.new
        type.datasets = Datasets.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventTrackersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventTrackersInput, context: context)
        type = Types::ListEventTrackersInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventTrackersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventTrackersOutput, context: context)
        type = Types::ListEventTrackersOutput.new
        type.event_trackers = EventTrackers.build(params[:event_trackers], context: "#{context}[:event_trackers]") unless params[:event_trackers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFiltersInput, context: context)
        type = Types::ListFiltersInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFiltersOutput, context: context)
        type = Types::ListFiltersOutput.new
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecipesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecipesInput, context: context)
        type = Types::ListRecipesInput.new
        type.recipe_provider = params[:recipe_provider]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.domain = params[:domain]
        type
      end
    end

    module ListRecipesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecipesOutput, context: context)
        type = Types::ListRecipesOutput.new
        type.recipes = Recipes.build(params[:recipes], context: "#{context}[:recipes]") unless params[:recipes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecommendersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendersInput, context: context)
        type = Types::ListRecommendersInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRecommendersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendersOutput, context: context)
        type = Types::ListRecommendersOutput.new
        type.recommenders = Recommenders.build(params[:recommenders], context: "#{context}[:recommenders]") unless params[:recommenders].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasInput, context: context)
        type = Types::ListSchemasInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasOutput, context: context)
        type = Types::ListSchemasOutput.new
        type.schemas = Schemas.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSolutionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSolutionVersionsInput, context: context)
        type = Types::ListSolutionVersionsInput.new
        type.solution_arn = params[:solution_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSolutionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSolutionVersionsOutput, context: context)
        type = Types::ListSolutionVersionsOutput.new
        type.solution_versions = SolutionVersions.build(params[:solution_versions], context: "#{context}[:solution_versions]") unless params[:solution_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSolutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSolutionsInput, context: context)
        type = Types::ListSolutionsInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSolutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSolutionsOutput, context: context)
        type = Types::ListSolutionsOutput.new
        type.solutions = Solutions.build(params[:solutions], context: "#{context}[:solutions]") unless params[:solutions].nil?
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

    module Metrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module OptimizationObjective
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptimizationObjective, context: context)
        type = Types::OptimizationObjective.new
        type.item_attribute = params[:item_attribute]
        type.objective_sensitivity = params[:objective_sensitivity]
        type
      end
    end

    module Recipe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recipe, context: context)
        type = Types::Recipe.new
        type.name = params[:name]
        type.recipe_arn = params[:recipe_arn]
        type.algorithm_arn = params[:algorithm_arn]
        type.feature_transformation_arn = params[:feature_transformation_arn]
        type.status = params[:status]
        type.description = params[:description]
        type.creation_date_time = params[:creation_date_time]
        type.recipe_type = params[:recipe_type]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module RecipeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipeSummary, context: context)
        type = Types::RecipeSummary.new
        type.name = params[:name]
        type.recipe_arn = params[:recipe_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.domain = params[:domain]
        type
      end
    end

    module Recipes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecipeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Recommender
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommender, context: context)
        type = Types::Recommender.new
        type.recommender_arn = params[:recommender_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.name = params[:name]
        type.recipe_arn = params[:recipe_arn]
        type.recommender_config = RecommenderConfig.build(params[:recommender_config], context: "#{context}[:recommender_config]") unless params[:recommender_config].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.latest_recommender_update = RecommenderUpdateSummary.build(params[:latest_recommender_update], context: "#{context}[:latest_recommender_update]") unless params[:latest_recommender_update].nil?
        type.model_metrics = Metrics.build(params[:model_metrics], context: "#{context}[:model_metrics]") unless params[:model_metrics].nil?
        type
      end
    end

    module RecommenderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommenderConfig, context: context)
        type = Types::RecommenderConfig.new
        type.item_exploration_config = HyperParameters.build(params[:item_exploration_config], context: "#{context}[:item_exploration_config]") unless params[:item_exploration_config].nil?
        type.min_recommendation_requests_per_second = params[:min_recommendation_requests_per_second]
        type
      end
    end

    module RecommenderSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommenderSummary, context: context)
        type = Types::RecommenderSummary.new
        type.name = params[:name]
        type.recommender_arn = params[:recommender_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.recipe_arn = params[:recipe_arn]
        type.recommender_config = RecommenderConfig.build(params[:recommender_config], context: "#{context}[:recommender_config]") unless params[:recommender_config].nil?
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module RecommenderUpdateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommenderUpdateSummary, context: context)
        type = Types::RecommenderUpdateSummary.new
        type.recommender_config = RecommenderConfig.build(params[:recommender_config], context: "#{context}[:recommender_config]") unless params[:recommender_config].nil?
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module Recommenders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommenderSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
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

    module S3DataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DataConfig, context: context)
        type = Types::S3DataConfig.new
        type.path = params[:path]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module Schemas
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetSchemaSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Solution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Solution, context: context)
        type = Types::Solution.new
        type.name = params[:name]
        type.solution_arn = params[:solution_arn]
        type.perform_hpo = params[:perform_hpo]
        type.perform_auto_ml = params[:perform_auto_ml]
        type.recipe_arn = params[:recipe_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.event_type = params[:event_type]
        type.solution_config = SolutionConfig.build(params[:solution_config], context: "#{context}[:solution_config]") unless params[:solution_config].nil?
        type.auto_ml_result = AutoMLResult.build(params[:auto_ml_result], context: "#{context}[:auto_ml_result]") unless params[:auto_ml_result].nil?
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.latest_solution_version = SolutionVersionSummary.build(params[:latest_solution_version], context: "#{context}[:latest_solution_version]") unless params[:latest_solution_version].nil?
        type
      end
    end

    module SolutionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SolutionConfig, context: context)
        type = Types::SolutionConfig.new
        type.event_value_threshold = params[:event_value_threshold]
        type.hpo_config = HPOConfig.build(params[:hpo_config], context: "#{context}[:hpo_config]") unless params[:hpo_config].nil?
        type.algorithm_hyper_parameters = HyperParameters.build(params[:algorithm_hyper_parameters], context: "#{context}[:algorithm_hyper_parameters]") unless params[:algorithm_hyper_parameters].nil?
        type.feature_transformation_parameters = FeatureTransformationParameters.build(params[:feature_transformation_parameters], context: "#{context}[:feature_transformation_parameters]") unless params[:feature_transformation_parameters].nil?
        type.auto_ml_config = AutoMLConfig.build(params[:auto_ml_config], context: "#{context}[:auto_ml_config]") unless params[:auto_ml_config].nil?
        type.optimization_objective = OptimizationObjective.build(params[:optimization_objective], context: "#{context}[:optimization_objective]") unless params[:optimization_objective].nil?
        type
      end
    end

    module SolutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SolutionSummary, context: context)
        type = Types::SolutionSummary.new
        type.name = params[:name]
        type.solution_arn = params[:solution_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module SolutionVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SolutionVersion, context: context)
        type = Types::SolutionVersion.new
        type.solution_version_arn = params[:solution_version_arn]
        type.solution_arn = params[:solution_arn]
        type.perform_hpo = params[:perform_hpo]
        type.perform_auto_ml = params[:perform_auto_ml]
        type.recipe_arn = params[:recipe_arn]
        type.event_type = params[:event_type]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.solution_config = SolutionConfig.build(params[:solution_config], context: "#{context}[:solution_config]") unless params[:solution_config].nil?
        type.training_hours = params[:training_hours]
        type.training_mode = params[:training_mode]
        type.tuned_hpo_params = TunedHPOParams.build(params[:tuned_hpo_params], context: "#{context}[:tuned_hpo_params]") unless params[:tuned_hpo_params].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type
      end
    end

    module SolutionVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SolutionVersionSummary, context: context)
        type = Types::SolutionVersionSummary.new
        type.solution_version_arn = params[:solution_version_arn]
        type.status = params[:status]
        type.creation_date_time = params[:creation_date_time]
        type.last_updated_date_time = params[:last_updated_date_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module SolutionVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SolutionVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Solutions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SolutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartRecommenderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecommenderInput, context: context)
        type = Types::StartRecommenderInput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module StartRecommenderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecommenderOutput, context: context)
        type = Types::StartRecommenderOutput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module StopRecommenderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRecommenderInput, context: context)
        type = Types::StopRecommenderInput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module StopRecommenderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRecommenderOutput, context: context)
        type = Types::StopRecommenderOutput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module StopSolutionVersionCreationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSolutionVersionCreationInput, context: context)
        type = Types::StopSolutionVersionCreationInput.new
        type.solution_version_arn = params[:solution_version_arn]
        type
      end
    end

    module StopSolutionVersionCreationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSolutionVersionCreationOutput, context: context)
        type = Types::StopSolutionVersionCreationOutput.new
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.tag_key = params[:tag_key]
        type.tag_value = params[:tag_value]
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

    module TooManyTagKeysException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagKeysException, context: context)
        type = Types::TooManyTagKeysException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module TunedHPOParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TunedHPOParams, context: context)
        type = Types::TunedHPOParams.new
        type.algorithm_hyper_parameters = HyperParameters.build(params[:algorithm_hyper_parameters], context: "#{context}[:algorithm_hyper_parameters]") unless params[:algorithm_hyper_parameters].nil?
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

    module UpdateCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCampaignInput, context: context)
        type = Types::UpdateCampaignInput.new
        type.campaign_arn = params[:campaign_arn]
        type.solution_version_arn = params[:solution_version_arn]
        type.min_provisioned_tps = params[:min_provisioned_tps]
        type.campaign_config = CampaignConfig.build(params[:campaign_config], context: "#{context}[:campaign_config]") unless params[:campaign_config].nil?
        type
      end
    end

    module UpdateCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCampaignOutput, context: context)
        type = Types::UpdateCampaignOutput.new
        type.campaign_arn = params[:campaign_arn]
        type
      end
    end

    module UpdateRecommenderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecommenderInput, context: context)
        type = Types::UpdateRecommenderInput.new
        type.recommender_arn = params[:recommender_arn]
        type.recommender_config = RecommenderConfig.build(params[:recommender_config], context: "#{context}[:recommender_config]") unless params[:recommender_config].nil?
        type
      end
    end

    module UpdateRecommenderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecommenderOutput, context: context)
        type = Types::UpdateRecommenderOutput.new
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

  end
end
