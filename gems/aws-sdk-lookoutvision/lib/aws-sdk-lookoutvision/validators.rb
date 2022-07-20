# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::LookoutVision
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        DatasetSource.validate!(input[:dataset_source], context: "#{context}[:dataset_source]") unless input[:dataset_source].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        DatasetMetadata.validate!(input[:dataset_metadata], context: "#{context}[:dataset_metadata]") unless input[:dataset_metadata].nil?
      end
    end

    class CreateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelOutput, context: context)
        ModelMetadata.validate!(input[:model_metadata], context: "#{context}[:model_metadata]") unless input[:model_metadata].nil?
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        ProjectMetadata.validate!(input[:project_metadata], context: "#{context}[:project_metadata]") unless input[:project_metadata].nil?
      end
    end

    class DatasetDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetDescription, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        DatasetImageStats.validate!(input[:image_stats], context: "#{context}[:image_stats]") unless input[:image_stats].nil?
      end
    end

    class DatasetEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DatasetGroundTruthManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetGroundTruthManifest, context: context)
        InputS3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class DatasetImageStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetImageStats, context: context)
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:labeled], ::Integer, context: "#{context}[:labeled]")
        Hearth::Validator.validate!(input[:normal], ::Integer, context: "#{context}[:normal]")
        Hearth::Validator.validate!(input[:anomaly], ::Integer, context: "#{context}[:anomaly]")
      end
    end

    class DatasetMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetMetadata, context: context)
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class DatasetMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSource, context: context)
        DatasetGroundTruthManifest.validate!(input[:ground_truth_manifest], context: "#{context}[:ground_truth_manifest]") unless input[:ground_truth_manifest].nil?
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
      end
    end

    class DeleteModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        DatasetDescription.validate!(input[:dataset_description], context: "#{context}[:dataset_description]") unless input[:dataset_description].nil?
      end
    end

    class DescribeModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class DescribeModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelOutput, context: context)
        ModelDescription.validate!(input[:model_description], context: "#{context}[:model_description]") unless input[:model_description].nil?
      end
    end

    class DescribeModelPackagingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelPackagingJobInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class DescribeModelPackagingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelPackagingJobOutput, context: context)
        ModelPackagingDescription.validate!(input[:model_packaging_description], context: "#{context}[:model_packaging_description]") unless input[:model_packaging_description].nil?
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        ProjectDescription.validate!(input[:project_description], context: "#{context}[:project_description]") unless input[:project_description].nil?
      end
    end

    class DetectAnomaliesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectAnomaliesInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end

        unless input[:body].respond_to?(:size)
          raise ArgumentError, "Expected #{context} to respond_to(:size)"
        end
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class DetectAnomaliesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectAnomaliesOutput, context: context)
        DetectAnomalyResult.validate!(input[:detect_anomaly_result], context: "#{context}[:detect_anomaly_result]") unless input[:detect_anomaly_result].nil?
      end
    end

    class DetectAnomalyResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectAnomalyResult, context: context)
        ImageSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:is_anomalous], ::TrueClass, ::FalseClass, context: "#{context}[:is_anomalous]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class GreengrassConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GreengrassConfiguration, context: context)
        Hearth::Validator.validate!(input[:compiler_options], ::String, context: "#{context}[:compiler_options]")
        Hearth::Validator.validate!(input[:target_device], ::String, context: "#{context}[:target_device]")
        TargetPlatform.validate!(input[:target_platform], context: "#{context}[:target_platform]") unless input[:target_platform].nil?
        S3Location.validate!(input[:s3_output_location], context: "#{context}[:s3_output_location]") unless input[:s3_output_location].nil?
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
        Hearth::Validator.validate!(input[:component_description], ::String, context: "#{context}[:component_description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GreengrassOutputDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GreengrassOutputDetails, context: context)
        Hearth::Validator.validate!(input[:component_version_arn], ::String, context: "#{context}[:component_version_arn]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_version], ::String, context: "#{context}[:component_version]")
      end
    end

    class ImageSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InputS3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputS3Object, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListDatasetEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetEntriesInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:labeled], ::TrueClass, ::FalseClass, context: "#{context}[:labeled]")
        Hearth::Validator.validate!(input[:anomaly_class], ::String, context: "#{context}[:anomaly_class]")
        Hearth::Validator.validate!(input[:before_creation_date], ::Time, context: "#{context}[:before_creation_date]")
        Hearth::Validator.validate!(input[:after_creation_date], ::Time, context: "#{context}[:after_creation_date]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:source_ref_contains], ::String, context: "#{context}[:source_ref_contains]")
      end
    end

    class ListDatasetEntriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetEntriesOutput, context: context)
        DatasetEntryList.validate!(input[:dataset_entries], context: "#{context}[:dataset_entries]") unless input[:dataset_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelPackagingJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelPackagingJobsInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListModelPackagingJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelPackagingJobsOutput, context: context)
        ModelPackagingJobsList.validate!(input[:model_packaging_jobs], context: "#{context}[:model_packaging_jobs]") unless input[:model_packaging_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelsInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelsOutput, context: context)
        ModelMetadataList.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        ProjectMetadataList.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ModelDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelDescription, context: context)
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        ModelPerformance.validate!(input[:performance], context: "#{context}[:performance]") unless input[:performance].nil?
        OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        OutputS3Object.validate!(input[:evaluation_manifest], context: "#{context}[:evaluation_manifest]") unless input[:evaluation_manifest].nil?
        OutputS3Object.validate!(input[:evaluation_result], context: "#{context}[:evaluation_result]") unless input[:evaluation_result].nil?
        Hearth::Validator.validate!(input[:evaluation_end_timestamp], ::Time, context: "#{context}[:evaluation_end_timestamp]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ModelMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelMetadata, context: context)
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        ModelPerformance.validate!(input[:performance], context: "#{context}[:performance]") unless input[:performance].nil?
      end
    end

    class ModelMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackagingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackagingConfiguration, context: context)
        GreengrassConfiguration.validate!(input[:greengrass], context: "#{context}[:greengrass]") unless input[:greengrass].nil?
      end
    end

    class ModelPackagingDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackagingDescription, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        ModelPackagingConfiguration.validate!(input[:model_packaging_configuration], context: "#{context}[:model_packaging_configuration]") unless input[:model_packaging_configuration].nil?
        Hearth::Validator.validate!(input[:model_packaging_job_description], ::String, context: "#{context}[:model_packaging_job_description]")
        Hearth::Validator.validate!(input[:model_packaging_method], ::String, context: "#{context}[:model_packaging_method]")
        ModelPackagingOutputDetails.validate!(input[:model_packaging_output_details], context: "#{context}[:model_packaging_output_details]") unless input[:model_packaging_output_details].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ModelPackagingJobMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackagingJobMetadata, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:model_packaging_job_description], ::String, context: "#{context}[:model_packaging_job_description]")
        Hearth::Validator.validate!(input[:model_packaging_method], ::String, context: "#{context}[:model_packaging_method]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ModelPackagingJobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelPackagingJobMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackagingOutputDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackagingOutputDetails, context: context)
        GreengrassOutputDetails.validate!(input[:greengrass], context: "#{context}[:greengrass]") unless input[:greengrass].nil?
      end
    end

    class ModelPerformance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPerformance, context: context)
        Hearth::Validator.validate!(input[:f1_score], ::Float, context: "#{context}[:f1_score]")
        Hearth::Validator.validate!(input[:recall], ::Float, context: "#{context}[:recall]")
        Hearth::Validator.validate!(input[:precision], ::Float, context: "#{context}[:precision]")
      end
    end

    class OutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputConfig, context: context)
        S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class OutputS3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputS3Object, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class ProjectDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectDescription, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        DatasetMetadataList.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
      end
    end

    class ProjectMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectMetadata, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
      end
    end

    class ProjectMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class StartModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartModelInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:min_inference_units], ::Integer, context: "#{context}[:min_inference_units]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartModelOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StartModelPackagingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartModelPackagingJobInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        ModelPackagingConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartModelPackagingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartModelPackagingJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class StopModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopModelInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StopModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopModelOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetPlatform, context: context)
        Hearth::Validator.validate!(input[:os], ::String, context: "#{context}[:os]")
        Hearth::Validator.validate!(input[:arch], ::String, context: "#{context}[:arch]")
        Hearth::Validator.validate!(input[:accelerator], ::String, context: "#{context}[:accelerator]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
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

    class UpdateDatasetEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetEntriesInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:changes], ::String, context: "#{context}[:changes]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateDatasetEntriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetEntriesOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
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
