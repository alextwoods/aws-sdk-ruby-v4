# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::LookoutVision
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
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

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.project_name = params[:project_name]
        type.dataset_type = params[:dataset_type]
        type.dataset_source = DatasetSource.build(params[:dataset_source], context: "#{context}[:dataset_source]") unless params[:dataset_source].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_metadata = DatasetMetadata.build(params[:dataset_metadata], context: "#{context}[:dataset_metadata]") unless params[:dataset_metadata].nil?
        type
      end
    end

    module CreateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelInput, context: context)
        type = Types::CreateModelInput.new
        type.project_name = params[:project_name]
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelOutput, context: context)
        type = Types::CreateModelOutput.new
        type.model_metadata = ModelMetadata.build(params[:model_metadata], context: "#{context}[:model_metadata]") unless params[:model_metadata].nil?
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.project_name = params[:project_name]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project_metadata = ProjectMetadata.build(params[:project_metadata], context: "#{context}[:project_metadata]") unless params[:project_metadata].nil?
        type
      end
    end

    module DatasetDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetDescription, context: context)
        type = Types::DatasetDescription.new
        type.project_name = params[:project_name]
        type.dataset_type = params[:dataset_type]
        type.creation_timestamp = params[:creation_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.image_stats = DatasetImageStats.build(params[:image_stats], context: "#{context}[:image_stats]") unless params[:image_stats].nil?
        type
      end
    end

    module DatasetEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DatasetGroundTruthManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetGroundTruthManifest, context: context)
        type = Types::DatasetGroundTruthManifest.new
        type.s3_object = InputS3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module DatasetImageStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetImageStats, context: context)
        type = Types::DatasetImageStats.new
        type.total = params[:total]
        type.labeled = params[:labeled]
        type.normal = params[:normal]
        type.anomaly = params[:anomaly]
        type
      end
    end

    module DatasetMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetMetadata, context: context)
        type = Types::DatasetMetadata.new
        type.dataset_type = params[:dataset_type]
        type.creation_timestamp = params[:creation_timestamp]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module DatasetMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSource, context: context)
        type = Types::DatasetSource.new
        type.ground_truth_manifest = DatasetGroundTruthManifest.build(params[:ground_truth_manifest], context: "#{context}[:ground_truth_manifest]") unless params[:ground_truth_manifest].nil?
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.project_name = params[:project_name]
        type.dataset_type = params[:dataset_type]
        type.client_token = params[:client_token] || SecureRandom.uuid
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

    module DeleteModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelInput, context: context)
        type = Types::DeleteModelInput.new
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelOutput, context: context)
        type = Types::DeleteModelOutput.new
        type.model_arn = params[:model_arn]
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project_name = params[:project_name]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type.project_arn = params[:project_arn]
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.project_name = params[:project_name]
        type.dataset_type = params[:dataset_type]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset_description = DatasetDescription.build(params[:dataset_description], context: "#{context}[:dataset_description]") unless params[:dataset_description].nil?
        type
      end
    end

    module DescribeModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelInput, context: context)
        type = Types::DescribeModelInput.new
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type
      end
    end

    module DescribeModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelOutput, context: context)
        type = Types::DescribeModelOutput.new
        type.model_description = ModelDescription.build(params[:model_description], context: "#{context}[:model_description]") unless params[:model_description].nil?
        type
      end
    end

    module DescribeModelPackagingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelPackagingJobInput, context: context)
        type = Types::DescribeModelPackagingJobInput.new
        type.project_name = params[:project_name]
        type.job_name = params[:job_name]
        type
      end
    end

    module DescribeModelPackagingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelPackagingJobOutput, context: context)
        type = Types::DescribeModelPackagingJobOutput.new
        type.model_packaging_description = ModelPackagingDescription.build(params[:model_packaging_description], context: "#{context}[:model_packaging_description]") unless params[:model_packaging_description].nil?
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.project_description = ProjectDescription.build(params[:project_description], context: "#{context}[:project_description]") unless params[:project_description].nil?
        type
      end
    end

    module DetectAnomaliesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectAnomaliesInput, context: context)
        type = Types::DetectAnomaliesInput.new
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.content_type = params[:content_type]
        type
      end
    end

    module DetectAnomaliesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectAnomaliesOutput, context: context)
        type = Types::DetectAnomaliesOutput.new
        type.detect_anomaly_result = DetectAnomalyResult.build(params[:detect_anomaly_result], context: "#{context}[:detect_anomaly_result]") unless params[:detect_anomaly_result].nil?
        type
      end
    end

    module DetectAnomalyResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectAnomalyResult, context: context)
        type = Types::DetectAnomalyResult.new
        type.source = ImageSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.is_anomalous = params[:is_anomalous]
        type.confidence = params[:confidence]
        type
      end
    end

    module GreengrassConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GreengrassConfiguration, context: context)
        type = Types::GreengrassConfiguration.new
        type.compiler_options = params[:compiler_options]
        type.target_device = params[:target_device]
        type.target_platform = TargetPlatform.build(params[:target_platform], context: "#{context}[:target_platform]") unless params[:target_platform].nil?
        type.s3_output_location = S3Location.build(params[:s3_output_location], context: "#{context}[:s3_output_location]") unless params[:s3_output_location].nil?
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type.component_description = params[:component_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GreengrassOutputDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GreengrassOutputDetails, context: context)
        type = Types::GreengrassOutputDetails.new
        type.component_version_arn = params[:component_version_arn]
        type.component_name = params[:component_name]
        type.component_version = params[:component_version]
        type
      end
    end

    module ImageSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageSource, context: context)
        type = Types::ImageSource.new
        type.type = params[:type]
        type
      end
    end

    module InputS3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputS3Object, context: context)
        type = Types::InputS3Object.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListDatasetEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetEntriesInput, context: context)
        type = Types::ListDatasetEntriesInput.new
        type.project_name = params[:project_name]
        type.dataset_type = params[:dataset_type]
        type.labeled = params[:labeled]
        type.anomaly_class = params[:anomaly_class]
        type.before_creation_date = params[:before_creation_date]
        type.after_creation_date = params[:after_creation_date]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.source_ref_contains = params[:source_ref_contains]
        type
      end
    end

    module ListDatasetEntriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetEntriesOutput, context: context)
        type = Types::ListDatasetEntriesOutput.new
        type.dataset_entries = DatasetEntryList.build(params[:dataset_entries], context: "#{context}[:dataset_entries]") unless params[:dataset_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelPackagingJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelPackagingJobsInput, context: context)
        type = Types::ListModelPackagingJobsInput.new
        type.project_name = params[:project_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListModelPackagingJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelPackagingJobsOutput, context: context)
        type = Types::ListModelPackagingJobsOutput.new
        type.model_packaging_jobs = ModelPackagingJobsList.build(params[:model_packaging_jobs], context: "#{context}[:model_packaging_jobs]") unless params[:model_packaging_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelsInput, context: context)
        type = Types::ListModelsInput.new
        type.project_name = params[:project_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelsOutput, context: context)
        type = Types::ListModelsOutput.new
        type.models = ModelMetadataList.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = ProjectMetadataList.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ModelDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelDescription, context: context)
        type = Types::ModelDescription.new
        type.model_version = params[:model_version]
        type.model_arn = params[:model_arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.description = params[:description]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.performance = ModelPerformance.build(params[:performance], context: "#{context}[:performance]") unless params[:performance].nil?
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.evaluation_manifest = OutputS3Object.build(params[:evaluation_manifest], context: "#{context}[:evaluation_manifest]") unless params[:evaluation_manifest].nil?
        type.evaluation_result = OutputS3Object.build(params[:evaluation_result], context: "#{context}[:evaluation_result]") unless params[:evaluation_result].nil?
        type.evaluation_end_timestamp = params[:evaluation_end_timestamp]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ModelMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelMetadata, context: context)
        type = Types::ModelMetadata.new
        type.creation_timestamp = params[:creation_timestamp]
        type.model_version = params[:model_version]
        type.model_arn = params[:model_arn]
        type.description = params[:description]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.performance = ModelPerformance.build(params[:performance], context: "#{context}[:performance]") unless params[:performance].nil?
        type
      end
    end

    module ModelMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackagingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackagingConfiguration, context: context)
        type = Types::ModelPackagingConfiguration.new
        type.greengrass = GreengrassConfiguration.build(params[:greengrass], context: "#{context}[:greengrass]") unless params[:greengrass].nil?
        type
      end
    end

    module ModelPackagingDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackagingDescription, context: context)
        type = Types::ModelPackagingDescription.new
        type.job_name = params[:job_name]
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type.model_packaging_configuration = ModelPackagingConfiguration.build(params[:model_packaging_configuration], context: "#{context}[:model_packaging_configuration]") unless params[:model_packaging_configuration].nil?
        type.model_packaging_job_description = params[:model_packaging_job_description]
        type.model_packaging_method = params[:model_packaging_method]
        type.model_packaging_output_details = ModelPackagingOutputDetails.build(params[:model_packaging_output_details], context: "#{context}[:model_packaging_output_details]") unless params[:model_packaging_output_details].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_timestamp = params[:creation_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ModelPackagingJobMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackagingJobMetadata, context: context)
        type = Types::ModelPackagingJobMetadata.new
        type.job_name = params[:job_name]
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type.model_packaging_job_description = params[:model_packaging_job_description]
        type.model_packaging_method = params[:model_packaging_method]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_timestamp = params[:creation_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ModelPackagingJobsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelPackagingJobMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackagingOutputDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackagingOutputDetails, context: context)
        type = Types::ModelPackagingOutputDetails.new
        type.greengrass = GreengrassOutputDetails.build(params[:greengrass], context: "#{context}[:greengrass]") unless params[:greengrass].nil?
        type
      end
    end

    module ModelPerformance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPerformance, context: context)
        type = Types::ModelPerformance.new
        type.f1_score = params[:f1_score]
        type.recall = params[:recall]
        type.precision = params[:precision]
        type
      end
    end

    module OutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputConfig, context: context)
        type = Types::OutputConfig.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module OutputS3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputS3Object, context: context)
        type = Types::OutputS3Object.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module ProjectDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectDescription, context: context)
        type = Types::ProjectDescription.new
        type.project_arn = params[:project_arn]
        type.project_name = params[:project_name]
        type.creation_timestamp = params[:creation_timestamp]
        type.datasets = DatasetMetadataList.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type
      end
    end

    module ProjectMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectMetadata, context: context)
        type = Types::ProjectMetadata.new
        type.project_arn = params[:project_arn]
        type.project_name = params[:project_name]
        type.creation_timestamp = params[:creation_timestamp]
        type
      end
    end

    module ProjectMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module StartModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartModelInput, context: context)
        type = Types::StartModelInput.new
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type.min_inference_units = params[:min_inference_units]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartModelOutput, context: context)
        type = Types::StartModelOutput.new
        type.status = params[:status]
        type
      end
    end

    module StartModelPackagingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartModelPackagingJobInput, context: context)
        type = Types::StartModelPackagingJobInput.new
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type.job_name = params[:job_name]
        type.configuration = ModelPackagingConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartModelPackagingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartModelPackagingJobOutput, context: context)
        type = Types::StartModelPackagingJobOutput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module StopModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopModelInput, context: context)
        type = Types::StopModelInput.new
        type.project_name = params[:project_name]
        type.model_version = params[:model_version]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StopModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopModelOutput, context: context)
        type = Types::StopModelOutput.new
        type.status = params[:status]
        type
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TargetPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetPlatform, context: context)
        type = Types::TargetPlatform.new
        type.os = params[:os]
        type.arch = params[:arch]
        type.accelerator = params[:accelerator]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
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

    module UpdateDatasetEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetEntriesInput, context: context)
        type = Types::UpdateDatasetEntriesInput.new
        type.project_name = params[:project_name]
        type.dataset_type = params[:dataset_type]
        type.changes = params[:changes]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateDatasetEntriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetEntriesOutput, context: context)
        type = Types::UpdateDatasetEntriesOutput.new
        type.status = params[:status]
        type
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
