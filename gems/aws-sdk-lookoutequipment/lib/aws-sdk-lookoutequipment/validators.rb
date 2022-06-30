# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutEquipment
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CategoricalValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoricalValues, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:number_of_category], ::Integer, context: "#{context}[:number_of_category]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CountPercent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountPercent, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:percentage], ::Float, context: "#{context}[:percentage]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Validators::DatasetSchema.validate!(input[:dataset_schema], context: "#{context}[:dataset_schema]") unless input[:dataset_schema].nil?
        Hearth::Validator.validate!(input[:server_side_kms_key_id], ::String, context: "#{context}[:server_side_kms_key_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateInferenceSchedulerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInferenceSchedulerInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:data_delay_offset_in_minutes], ::Integer, context: "#{context}[:data_delay_offset_in_minutes]")
        Hearth::Validator.validate!(input[:data_upload_frequency], ::String, context: "#{context}[:data_upload_frequency]")
        Validators::InferenceInputConfiguration.validate!(input[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless input[:data_input_configuration].nil?
        Validators::InferenceOutputConfiguration.validate!(input[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless input[:data_output_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:server_side_kms_key_id], ::String, context: "#{context}[:server_side_kms_key_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateInferenceSchedulerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInferenceSchedulerOutput, context: context)
        Hearth::Validator.validate!(input[:inference_scheduler_arn], ::String, context: "#{context}[:inference_scheduler_arn]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Validators::DatasetSchema.validate!(input[:dataset_schema], context: "#{context}[:dataset_schema]") unless input[:dataset_schema].nil?
        Validators::LabelsInputConfiguration.validate!(input[:labels_input_configuration], context: "#{context}[:labels_input_configuration]") unless input[:labels_input_configuration].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:training_data_start_time], ::Time, context: "#{context}[:training_data_start_time]")
        Hearth::Validator.validate!(input[:training_data_end_time], ::Time, context: "#{context}[:training_data_end_time]")
        Hearth::Validator.validate!(input[:evaluation_data_start_time], ::Time, context: "#{context}[:evaluation_data_start_time]")
        Hearth::Validator.validate!(input[:evaluation_data_end_time], ::Time, context: "#{context}[:evaluation_data_end_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPreProcessingConfiguration.validate!(input[:data_pre_processing_configuration], context: "#{context}[:data_pre_processing_configuration]") unless input[:data_pre_processing_configuration].nil?
        Hearth::Validator.validate!(input[:server_side_kms_key_id], ::String, context: "#{context}[:server_side_kms_key_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:off_condition], ::String, context: "#{context}[:off_condition]")
      end
    end

    class CreateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DataIngestionJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataIngestionJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataIngestionJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataIngestionJobSummary, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Validators::IngestionInputConfiguration.validate!(input[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless input[:ingestion_input_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DataPreProcessingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataPreProcessingConfiguration, context: context)
        Hearth::Validator.validate!(input[:target_sampling_rate], ::String, context: "#{context}[:target_sampling_rate]")
      end
    end

    class DataQualitySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataQualitySummary, context: context)
        Validators::InsufficientSensorData.validate!(input[:insufficient_sensor_data], context: "#{context}[:insufficient_sensor_data]") unless input[:insufficient_sensor_data].nil?
        Validators::MissingSensorData.validate!(input[:missing_sensor_data], context: "#{context}[:missing_sensor_data]") unless input[:missing_sensor_data].nil?
        Validators::InvalidSensorData.validate!(input[:invalid_sensor_data], context: "#{context}[:invalid_sensor_data]") unless input[:invalid_sensor_data].nil?
        Validators::UnsupportedTimestamps.validate!(input[:unsupported_timestamps], context: "#{context}[:unsupported_timestamps]") unless input[:unsupported_timestamps].nil?
        Validators::DuplicateTimestamps.validate!(input[:duplicate_timestamps], context: "#{context}[:duplicate_timestamps]") unless input[:duplicate_timestamps].nil?
      end
    end

    class DatasetSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSchema, context: context)
        Hearth::Validator.validate!(input[:inline_data_schema], ::String, context: "#{context}[:inline_data_schema]")
      end
    end

    class DatasetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
      end
    end

    class DeleteInferenceSchedulerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInferenceSchedulerInput, context: context)
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
      end
    end

    class DeleteInferenceSchedulerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInferenceSchedulerOutput, context: context)
      end
    end

    class DeleteModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DeleteModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelOutput, context: context)
      end
    end

    class DescribeDataIngestionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataIngestionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeDataIngestionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataIngestionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Validators::IngestionInputConfiguration.validate!(input[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless input[:ingestion_input_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failed_reason], ::String, context: "#{context}[:failed_reason]")
        Validators::DataQualitySummary.validate!(input[:data_quality_summary], context: "#{context}[:data_quality_summary]") unless input[:data_quality_summary].nil?
        Validators::IngestedFilesSummary.validate!(input[:ingested_files_summary], context: "#{context}[:ingested_files_summary]") unless input[:ingested_files_summary].nil?
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
        Hearth::Validator.validate!(input[:ingested_data_size], ::Integer, context: "#{context}[:ingested_data_size]")
        Hearth::Validator.validate!(input[:data_start_time], ::Time, context: "#{context}[:data_start_time]")
        Hearth::Validator.validate!(input[:data_end_time], ::Time, context: "#{context}[:data_end_time]")
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:server_side_kms_key_id], ::String, context: "#{context}[:server_side_kms_key_id]")
        Validators::IngestionInputConfiguration.validate!(input[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless input[:ingestion_input_configuration].nil?
        Validators::DataQualitySummary.validate!(input[:data_quality_summary], context: "#{context}[:data_quality_summary]") unless input[:data_quality_summary].nil?
        Validators::IngestedFilesSummary.validate!(input[:ingested_files_summary], context: "#{context}[:ingested_files_summary]") unless input[:ingested_files_summary].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:data_start_time], ::Time, context: "#{context}[:data_start_time]")
        Hearth::Validator.validate!(input[:data_end_time], ::Time, context: "#{context}[:data_end_time]")
      end
    end

    class DescribeInferenceSchedulerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInferenceSchedulerInput, context: context)
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
      end
    end

    class DescribeInferenceSchedulerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInferenceSchedulerOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_arn], ::String, context: "#{context}[:inference_scheduler_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:data_delay_offset_in_minutes], ::Integer, context: "#{context}[:data_delay_offset_in_minutes]")
        Hearth::Validator.validate!(input[:data_upload_frequency], ::String, context: "#{context}[:data_upload_frequency]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::InferenceInputConfiguration.validate!(input[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless input[:data_input_configuration].nil?
        Validators::InferenceOutputConfiguration.validate!(input[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless input[:data_output_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:server_side_kms_key_id], ::String, context: "#{context}[:server_side_kms_key_id]")
      end
    end

    class DescribeModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DescribeModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelOutput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Validators::LabelsInputConfiguration.validate!(input[:labels_input_configuration], context: "#{context}[:labels_input_configuration]") unless input[:labels_input_configuration].nil?
        Hearth::Validator.validate!(input[:training_data_start_time], ::Time, context: "#{context}[:training_data_start_time]")
        Hearth::Validator.validate!(input[:training_data_end_time], ::Time, context: "#{context}[:training_data_end_time]")
        Hearth::Validator.validate!(input[:evaluation_data_start_time], ::Time, context: "#{context}[:evaluation_data_start_time]")
        Hearth::Validator.validate!(input[:evaluation_data_end_time], ::Time, context: "#{context}[:evaluation_data_end_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DataPreProcessingConfiguration.validate!(input[:data_pre_processing_configuration], context: "#{context}[:data_pre_processing_configuration]") unless input[:data_pre_processing_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:training_execution_start_time], ::Time, context: "#{context}[:training_execution_start_time]")
        Hearth::Validator.validate!(input[:training_execution_end_time], ::Time, context: "#{context}[:training_execution_end_time]")
        Hearth::Validator.validate!(input[:failed_reason], ::String, context: "#{context}[:failed_reason]")
        Hearth::Validator.validate!(input[:model_metrics], ::String, context: "#{context}[:model_metrics]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:server_side_kms_key_id], ::String, context: "#{context}[:server_side_kms_key_id]")
        Hearth::Validator.validate!(input[:off_condition], ::String, context: "#{context}[:off_condition]")
      end
    end

    class DuplicateTimestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateTimestamps, context: context)
        Hearth::Validator.validate!(input[:total_number_of_duplicate_timestamps], ::Integer, context: "#{context}[:total_number_of_duplicate_timestamps]")
      end
    end

    class InferenceExecutionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InferenceExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferenceExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_arn], ::String, context: "#{context}[:inference_scheduler_arn]")
        Hearth::Validator.validate!(input[:scheduled_start_time], ::Time, context: "#{context}[:scheduled_start_time]")
        Hearth::Validator.validate!(input[:data_start_time], ::Time, context: "#{context}[:data_start_time]")
        Hearth::Validator.validate!(input[:data_end_time], ::Time, context: "#{context}[:data_end_time]")
        Validators::InferenceInputConfiguration.validate!(input[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless input[:data_input_configuration].nil?
        Validators::InferenceOutputConfiguration.validate!(input[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless input[:data_output_configuration].nil?
        Validators::S3Object.validate!(input[:customer_result_object], context: "#{context}[:customer_result_object]") unless input[:customer_result_object].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failed_reason], ::String, context: "#{context}[:failed_reason]")
      end
    end

    class InferenceInputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceInputConfiguration, context: context)
        Validators::InferenceS3InputConfiguration.validate!(input[:s3_input_configuration], context: "#{context}[:s3_input_configuration]") unless input[:s3_input_configuration].nil?
        Hearth::Validator.validate!(input[:input_time_zone_offset], ::String, context: "#{context}[:input_time_zone_offset]")
        Validators::InferenceInputNameConfiguration.validate!(input[:inference_input_name_configuration], context: "#{context}[:inference_input_name_configuration]") unless input[:inference_input_name_configuration].nil?
      end
    end

    class InferenceInputNameConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceInputNameConfiguration, context: context)
        Hearth::Validator.validate!(input[:timestamp_format], ::String, context: "#{context}[:timestamp_format]")
        Hearth::Validator.validate!(input[:component_timestamp_delimiter], ::String, context: "#{context}[:component_timestamp_delimiter]")
      end
    end

    class InferenceOutputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceOutputConfiguration, context: context)
        Validators::InferenceS3OutputConfiguration.validate!(input[:s3_output_configuration], context: "#{context}[:s3_output_configuration]") unless input[:s3_output_configuration].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class InferenceS3InputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceS3InputConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class InferenceS3OutputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceS3OutputConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class InferenceSchedulerSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InferenceSchedulerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferenceSchedulerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceSchedulerSummary, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_arn], ::String, context: "#{context}[:inference_scheduler_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:data_delay_offset_in_minutes], ::Integer, context: "#{context}[:data_delay_offset_in_minutes]")
        Hearth::Validator.validate!(input[:data_upload_frequency], ::String, context: "#{context}[:data_upload_frequency]")
      end
    end

    class IngestedFilesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestedFilesSummary, context: context)
        Hearth::Validator.validate!(input[:total_number_of_files], ::Integer, context: "#{context}[:total_number_of_files]")
        Hearth::Validator.validate!(input[:ingested_number_of_files], ::Integer, context: "#{context}[:ingested_number_of_files]")
        Validators::ListOfDiscardedFiles.validate!(input[:discarded_files], context: "#{context}[:discarded_files]") unless input[:discarded_files].nil?
      end
    end

    class IngestionInputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestionInputConfiguration, context: context)
        Validators::IngestionS3InputConfiguration.validate!(input[:s3_input_configuration], context: "#{context}[:s3_input_configuration]") unless input[:s3_input_configuration].nil?
      end
    end

    class IngestionS3InputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestionS3InputConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:key_pattern], ::String, context: "#{context}[:key_pattern]")
      end
    end

    class InsufficientSensorData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientSensorData, context: context)
        Validators::MissingCompleteSensorData.validate!(input[:missing_complete_sensor_data], context: "#{context}[:missing_complete_sensor_data]") unless input[:missing_complete_sensor_data].nil?
        Validators::SensorsWithShortDateRange.validate!(input[:sensors_with_short_date_range], context: "#{context}[:sensors_with_short_date_range]") unless input[:sensors_with_short_date_range].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSensorData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSensorData, context: context)
        Hearth::Validator.validate!(input[:affected_sensor_count], ::Integer, context: "#{context}[:affected_sensor_count]")
        Hearth::Validator.validate!(input[:total_number_of_invalid_values], ::Integer, context: "#{context}[:total_number_of_invalid_values]")
      end
    end

    class LabelsInputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelsInputConfiguration, context: context)
        Validators::LabelsS3InputConfiguration.validate!(input[:s3_input_configuration], context: "#{context}[:s3_input_configuration]") unless input[:s3_input_configuration].nil?
      end
    end

    class LabelsS3InputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelsS3InputConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class LargeTimestampGaps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LargeTimestampGaps, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:number_of_large_timestamp_gaps], ::Integer, context: "#{context}[:number_of_large_timestamp_gaps]")
        Hearth::Validator.validate!(input[:max_timestamp_gap_in_days], ::Integer, context: "#{context}[:max_timestamp_gap_in_days]")
      end
    end

    class ListDataIngestionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataIngestionJobsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListDataIngestionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataIngestionJobsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DataIngestionJobSummaries.validate!(input[:data_ingestion_job_summaries], context: "#{context}[:data_ingestion_job_summaries]") unless input[:data_ingestion_job_summaries].nil?
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:dataset_name_begins_with], ::String, context: "#{context}[:dataset_name_begins_with]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DatasetSummaries.validate!(input[:dataset_summaries], context: "#{context}[:dataset_summaries]") unless input[:dataset_summaries].nil?
      end
    end

    class ListInferenceExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInferenceExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:data_start_time_after], ::Time, context: "#{context}[:data_start_time_after]")
        Hearth::Validator.validate!(input[:data_end_time_before], ::Time, context: "#{context}[:data_end_time_before]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListInferenceExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInferenceExecutionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::InferenceExecutionSummaries.validate!(input[:inference_execution_summaries], context: "#{context}[:inference_execution_summaries]") unless input[:inference_execution_summaries].nil?
      end
    end

    class ListInferenceSchedulersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInferenceSchedulersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:inference_scheduler_name_begins_with], ::String, context: "#{context}[:inference_scheduler_name_begins_with]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class ListInferenceSchedulersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInferenceSchedulersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::InferenceSchedulerSummaries.validate!(input[:inference_scheduler_summaries], context: "#{context}[:inference_scheduler_summaries]") unless input[:inference_scheduler_summaries].nil?
      end
    end

    class ListModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:model_name_begins_with], ::String, context: "#{context}[:model_name_begins_with]")
        Hearth::Validator.validate!(input[:dataset_name_begins_with], ::String, context: "#{context}[:dataset_name_begins_with]")
      end
    end

    class ListModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ModelSummaries.validate!(input[:model_summaries], context: "#{context}[:model_summaries]") unless input[:model_summaries].nil?
      end
    end

    class ListOfDiscardedFiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::S3Object.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListSensorStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSensorStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:ingestion_job_id], ::String, context: "#{context}[:ingestion_job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSensorStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSensorStatisticsOutput, context: context)
        Validators::SensorStatisticsSummaries.validate!(input[:sensor_statistics_summaries], context: "#{context}[:sensor_statistics_summaries]") unless input[:sensor_statistics_summaries].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MissingCompleteSensorData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingCompleteSensorData, context: context)
        Hearth::Validator.validate!(input[:affected_sensor_count], ::Integer, context: "#{context}[:affected_sensor_count]")
      end
    end

    class MissingSensorData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingSensorData, context: context)
        Hearth::Validator.validate!(input[:affected_sensor_count], ::Integer, context: "#{context}[:affected_sensor_count]")
        Hearth::Validator.validate!(input[:total_number_of_missing_values], ::Integer, context: "#{context}[:total_number_of_missing_values]")
      end
    end

    class ModelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ModelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelSummary, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class MonotonicValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonotonicValues, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:monotonicity], ::String, context: "#{context}[:monotonicity]")
      end
    end

    class MultipleOperatingModes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultipleOperatingModes, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Object, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class SensorStatisticsSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SensorStatisticsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SensorStatisticsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SensorStatisticsSummary, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:sensor_name], ::String, context: "#{context}[:sensor_name]")
        Hearth::Validator.validate!(input[:data_exists], ::TrueClass, ::FalseClass, context: "#{context}[:data_exists]")
        Validators::CountPercent.validate!(input[:missing_values], context: "#{context}[:missing_values]") unless input[:missing_values].nil?
        Validators::CountPercent.validate!(input[:invalid_values], context: "#{context}[:invalid_values]") unless input[:invalid_values].nil?
        Validators::CountPercent.validate!(input[:invalid_date_entries], context: "#{context}[:invalid_date_entries]") unless input[:invalid_date_entries].nil?
        Validators::CountPercent.validate!(input[:duplicate_timestamps], context: "#{context}[:duplicate_timestamps]") unless input[:duplicate_timestamps].nil?
        Validators::CategoricalValues.validate!(input[:categorical_values], context: "#{context}[:categorical_values]") unless input[:categorical_values].nil?
        Validators::MultipleOperatingModes.validate!(input[:multiple_operating_modes], context: "#{context}[:multiple_operating_modes]") unless input[:multiple_operating_modes].nil?
        Validators::LargeTimestampGaps.validate!(input[:large_timestamp_gaps], context: "#{context}[:large_timestamp_gaps]") unless input[:large_timestamp_gaps].nil?
        Validators::MonotonicValues.validate!(input[:monotonic_values], context: "#{context}[:monotonic_values]") unless input[:monotonic_values].nil?
        Hearth::Validator.validate!(input[:data_start_time], ::Time, context: "#{context}[:data_start_time]")
        Hearth::Validator.validate!(input[:data_end_time], ::Time, context: "#{context}[:data_end_time]")
      end
    end

    class SensorsWithShortDateRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SensorsWithShortDateRange, context: context)
        Hearth::Validator.validate!(input[:affected_sensor_count], ::Integer, context: "#{context}[:affected_sensor_count]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartDataIngestionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDataIngestionJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Validators::IngestionInputConfiguration.validate!(input[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless input[:ingestion_input_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartDataIngestionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDataIngestionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StartInferenceSchedulerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInferenceSchedulerInput, context: context)
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
      end
    end

    class StartInferenceSchedulerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInferenceSchedulerOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_arn], ::String, context: "#{context}[:inference_scheduler_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StopInferenceSchedulerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInferenceSchedulerInput, context: context)
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
      end
    end

    class StopInferenceSchedulerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInferenceSchedulerOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:inference_scheduler_arn], ::String, context: "#{context}[:inference_scheduler_arn]")
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
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
      end
    end

    class UnsupportedTimestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedTimestamps, context: context)
        Hearth::Validator.validate!(input[:total_number_of_unsupported_timestamps], ::Integer, context: "#{context}[:total_number_of_unsupported_timestamps]")
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

    class UpdateInferenceSchedulerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInferenceSchedulerInput, context: context)
        Hearth::Validator.validate!(input[:inference_scheduler_name], ::String, context: "#{context}[:inference_scheduler_name]")
        Hearth::Validator.validate!(input[:data_delay_offset_in_minutes], ::Integer, context: "#{context}[:data_delay_offset_in_minutes]")
        Hearth::Validator.validate!(input[:data_upload_frequency], ::String, context: "#{context}[:data_upload_frequency]")
        Validators::InferenceInputConfiguration.validate!(input[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless input[:data_input_configuration].nil?
        Validators::InferenceOutputConfiguration.validate!(input[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless input[:data_output_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class UpdateInferenceSchedulerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInferenceSchedulerOutput, context: context)
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
