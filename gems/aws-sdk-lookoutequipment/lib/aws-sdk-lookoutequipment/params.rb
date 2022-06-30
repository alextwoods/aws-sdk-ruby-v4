# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::LookoutEquipment
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CategoricalValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoricalValues, context: context)
        type = Types::CategoricalValues.new
        type.status = params[:status]
        type.number_of_category = params[:number_of_category]
        type
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

    module CountPercent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountPercent, context: context)
        type = Types::CountPercent.new
        type.count = params[:count]
        type.percentage = params[:percentage]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type.dataset_schema = DatasetSchema.build(params[:dataset_schema], context: "#{context}[:dataset_schema]") unless params[:dataset_schema].nil?
        type.server_side_kms_key_id = params[:server_side_kms_key_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.status = params[:status]
        type
      end
    end

    module CreateInferenceSchedulerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInferenceSchedulerInput, context: context)
        type = Types::CreateInferenceSchedulerInput.new
        type.model_name = params[:model_name]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.data_delay_offset_in_minutes = params[:data_delay_offset_in_minutes]
        type.data_upload_frequency = params[:data_upload_frequency]
        type.data_input_configuration = InferenceInputConfiguration.build(params[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless params[:data_input_configuration].nil?
        type.data_output_configuration = InferenceOutputConfiguration.build(params[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless params[:data_output_configuration].nil?
        type.role_arn = params[:role_arn]
        type.server_side_kms_key_id = params[:server_side_kms_key_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateInferenceSchedulerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInferenceSchedulerOutput, context: context)
        type = Types::CreateInferenceSchedulerOutput.new
        type.inference_scheduler_arn = params[:inference_scheduler_arn]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.status = params[:status]
        type
      end
    end

    module CreateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelInput, context: context)
        type = Types::CreateModelInput.new
        type.model_name = params[:model_name]
        type.dataset_name = params[:dataset_name]
        type.dataset_schema = DatasetSchema.build(params[:dataset_schema], context: "#{context}[:dataset_schema]") unless params[:dataset_schema].nil?
        type.labels_input_configuration = LabelsInputConfiguration.build(params[:labels_input_configuration], context: "#{context}[:labels_input_configuration]") unless params[:labels_input_configuration].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.training_data_start_time = params[:training_data_start_time]
        type.training_data_end_time = params[:training_data_end_time]
        type.evaluation_data_start_time = params[:evaluation_data_start_time]
        type.evaluation_data_end_time = params[:evaluation_data_end_time]
        type.role_arn = params[:role_arn]
        type.data_pre_processing_configuration = DataPreProcessingConfiguration.build(params[:data_pre_processing_configuration], context: "#{context}[:data_pre_processing_configuration]") unless params[:data_pre_processing_configuration].nil?
        type.server_side_kms_key_id = params[:server_side_kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.off_condition = params[:off_condition]
        type
      end
    end

    module CreateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelOutput, context: context)
        type = Types::CreateModelOutput.new
        type.model_arn = params[:model_arn]
        type.status = params[:status]
        type
      end
    end

    module DataIngestionJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataIngestionJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataIngestionJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataIngestionJobSummary, context: context)
        type = Types::DataIngestionJobSummary.new
        type.job_id = params[:job_id]
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.ingestion_input_configuration = IngestionInputConfiguration.build(params[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless params[:ingestion_input_configuration].nil?
        type.status = params[:status]
        type
      end
    end

    module DataPreProcessingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataPreProcessingConfiguration, context: context)
        type = Types::DataPreProcessingConfiguration.new
        type.target_sampling_rate = params[:target_sampling_rate]
        type
      end
    end

    module DataQualitySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataQualitySummary, context: context)
        type = Types::DataQualitySummary.new
        type.insufficient_sensor_data = InsufficientSensorData.build(params[:insufficient_sensor_data], context: "#{context}[:insufficient_sensor_data]") unless params[:insufficient_sensor_data].nil?
        type.missing_sensor_data = MissingSensorData.build(params[:missing_sensor_data], context: "#{context}[:missing_sensor_data]") unless params[:missing_sensor_data].nil?
        type.invalid_sensor_data = InvalidSensorData.build(params[:invalid_sensor_data], context: "#{context}[:invalid_sensor_data]") unless params[:invalid_sensor_data].nil?
        type.unsupported_timestamps = UnsupportedTimestamps.build(params[:unsupported_timestamps], context: "#{context}[:unsupported_timestamps]") unless params[:unsupported_timestamps].nil?
        type.duplicate_timestamps = DuplicateTimestamps.build(params[:duplicate_timestamps], context: "#{context}[:duplicate_timestamps]") unless params[:duplicate_timestamps].nil?
        type
      end
    end

    module DatasetSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSchema, context: context)
        type = Types::DatasetSchema.new
        type.inline_data_schema = params[:inline_data_schema]
        type
      end
    end

    module DatasetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSummary, context: context)
        type = Types::DatasetSummary.new
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.dataset_name = params[:dataset_name]
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

    module DeleteInferenceSchedulerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInferenceSchedulerInput, context: context)
        type = Types::DeleteInferenceSchedulerInput.new
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type
      end
    end

    module DeleteInferenceSchedulerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInferenceSchedulerOutput, context: context)
        type = Types::DeleteInferenceSchedulerOutput.new
        type
      end
    end

    module DeleteModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelInput, context: context)
        type = Types::DeleteModelInput.new
        type.model_name = params[:model_name]
        type
      end
    end

    module DeleteModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelOutput, context: context)
        type = Types::DeleteModelOutput.new
        type
      end
    end

    module DescribeDataIngestionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataIngestionJobInput, context: context)
        type = Types::DescribeDataIngestionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeDataIngestionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataIngestionJobOutput, context: context)
        type = Types::DescribeDataIngestionJobOutput.new
        type.job_id = params[:job_id]
        type.dataset_arn = params[:dataset_arn]
        type.ingestion_input_configuration = IngestionInputConfiguration.build(params[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless params[:ingestion_input_configuration].nil?
        type.role_arn = params[:role_arn]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.failed_reason = params[:failed_reason]
        type.data_quality_summary = DataQualitySummary.build(params[:data_quality_summary], context: "#{context}[:data_quality_summary]") unless params[:data_quality_summary].nil?
        type.ingested_files_summary = IngestedFilesSummary.build(params[:ingested_files_summary], context: "#{context}[:ingested_files_summary]") unless params[:ingested_files_summary].nil?
        type.status_detail = params[:status_detail]
        type.ingested_data_size = params[:ingested_data_size]
        type.data_start_time = params[:data_start_time]
        type.data_end_time = params[:data_end_time]
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.status = params[:status]
        type.schema = params[:schema]
        type.server_side_kms_key_id = params[:server_side_kms_key_id]
        type.ingestion_input_configuration = IngestionInputConfiguration.build(params[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless params[:ingestion_input_configuration].nil?
        type.data_quality_summary = DataQualitySummary.build(params[:data_quality_summary], context: "#{context}[:data_quality_summary]") unless params[:data_quality_summary].nil?
        type.ingested_files_summary = IngestedFilesSummary.build(params[:ingested_files_summary], context: "#{context}[:ingested_files_summary]") unless params[:ingested_files_summary].nil?
        type.role_arn = params[:role_arn]
        type.data_start_time = params[:data_start_time]
        type.data_end_time = params[:data_end_time]
        type
      end
    end

    module DescribeInferenceSchedulerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInferenceSchedulerInput, context: context)
        type = Types::DescribeInferenceSchedulerInput.new
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type
      end
    end

    module DescribeInferenceSchedulerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInferenceSchedulerOutput, context: context)
        type = Types::DescribeInferenceSchedulerOutput.new
        type.model_arn = params[:model_arn]
        type.model_name = params[:model_name]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.inference_scheduler_arn = params[:inference_scheduler_arn]
        type.status = params[:status]
        type.data_delay_offset_in_minutes = params[:data_delay_offset_in_minutes]
        type.data_upload_frequency = params[:data_upload_frequency]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.data_input_configuration = InferenceInputConfiguration.build(params[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless params[:data_input_configuration].nil?
        type.data_output_configuration = InferenceOutputConfiguration.build(params[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless params[:data_output_configuration].nil?
        type.role_arn = params[:role_arn]
        type.server_side_kms_key_id = params[:server_side_kms_key_id]
        type
      end
    end

    module DescribeModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelInput, context: context)
        type = Types::DescribeModelInput.new
        type.model_name = params[:model_name]
        type
      end
    end

    module DescribeModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelOutput, context: context)
        type = Types::DescribeModelOutput.new
        type.model_name = params[:model_name]
        type.model_arn = params[:model_arn]
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.schema = params[:schema]
        type.labels_input_configuration = LabelsInputConfiguration.build(params[:labels_input_configuration], context: "#{context}[:labels_input_configuration]") unless params[:labels_input_configuration].nil?
        type.training_data_start_time = params[:training_data_start_time]
        type.training_data_end_time = params[:training_data_end_time]
        type.evaluation_data_start_time = params[:evaluation_data_start_time]
        type.evaluation_data_end_time = params[:evaluation_data_end_time]
        type.role_arn = params[:role_arn]
        type.data_pre_processing_configuration = DataPreProcessingConfiguration.build(params[:data_pre_processing_configuration], context: "#{context}[:data_pre_processing_configuration]") unless params[:data_pre_processing_configuration].nil?
        type.status = params[:status]
        type.training_execution_start_time = params[:training_execution_start_time]
        type.training_execution_end_time = params[:training_execution_end_time]
        type.failed_reason = params[:failed_reason]
        type.model_metrics = params[:model_metrics]
        type.last_updated_time = params[:last_updated_time]
        type.created_at = params[:created_at]
        type.server_side_kms_key_id = params[:server_side_kms_key_id]
        type.off_condition = params[:off_condition]
        type
      end
    end

    module DuplicateTimestamps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateTimestamps, context: context)
        type = Types::DuplicateTimestamps.new
        type.total_number_of_duplicate_timestamps = params[:total_number_of_duplicate_timestamps]
        type
      end
    end

    module InferenceExecutionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InferenceExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferenceExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceExecutionSummary, context: context)
        type = Types::InferenceExecutionSummary.new
        type.model_name = params[:model_name]
        type.model_arn = params[:model_arn]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.inference_scheduler_arn = params[:inference_scheduler_arn]
        type.scheduled_start_time = params[:scheduled_start_time]
        type.data_start_time = params[:data_start_time]
        type.data_end_time = params[:data_end_time]
        type.data_input_configuration = InferenceInputConfiguration.build(params[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless params[:data_input_configuration].nil?
        type.data_output_configuration = InferenceOutputConfiguration.build(params[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless params[:data_output_configuration].nil?
        type.customer_result_object = S3Object.build(params[:customer_result_object], context: "#{context}[:customer_result_object]") unless params[:customer_result_object].nil?
        type.status = params[:status]
        type.failed_reason = params[:failed_reason]
        type
      end
    end

    module InferenceInputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceInputConfiguration, context: context)
        type = Types::InferenceInputConfiguration.new
        type.s3_input_configuration = InferenceS3InputConfiguration.build(params[:s3_input_configuration], context: "#{context}[:s3_input_configuration]") unless params[:s3_input_configuration].nil?
        type.input_time_zone_offset = params[:input_time_zone_offset]
        type.inference_input_name_configuration = InferenceInputNameConfiguration.build(params[:inference_input_name_configuration], context: "#{context}[:inference_input_name_configuration]") unless params[:inference_input_name_configuration].nil?
        type
      end
    end

    module InferenceInputNameConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceInputNameConfiguration, context: context)
        type = Types::InferenceInputNameConfiguration.new
        type.timestamp_format = params[:timestamp_format]
        type.component_timestamp_delimiter = params[:component_timestamp_delimiter]
        type
      end
    end

    module InferenceOutputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceOutputConfiguration, context: context)
        type = Types::InferenceOutputConfiguration.new
        type.s3_output_configuration = InferenceS3OutputConfiguration.build(params[:s3_output_configuration], context: "#{context}[:s3_output_configuration]") unless params[:s3_output_configuration].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module InferenceS3InputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceS3InputConfiguration, context: context)
        type = Types::InferenceS3InputConfiguration.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module InferenceS3OutputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceS3OutputConfiguration, context: context)
        type = Types::InferenceS3OutputConfiguration.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module InferenceSchedulerSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InferenceSchedulerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferenceSchedulerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceSchedulerSummary, context: context)
        type = Types::InferenceSchedulerSummary.new
        type.model_name = params[:model_name]
        type.model_arn = params[:model_arn]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.inference_scheduler_arn = params[:inference_scheduler_arn]
        type.status = params[:status]
        type.data_delay_offset_in_minutes = params[:data_delay_offset_in_minutes]
        type.data_upload_frequency = params[:data_upload_frequency]
        type
      end
    end

    module IngestedFilesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestedFilesSummary, context: context)
        type = Types::IngestedFilesSummary.new
        type.total_number_of_files = params[:total_number_of_files]
        type.ingested_number_of_files = params[:ingested_number_of_files]
        type.discarded_files = ListOfDiscardedFiles.build(params[:discarded_files], context: "#{context}[:discarded_files]") unless params[:discarded_files].nil?
        type
      end
    end

    module IngestionInputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestionInputConfiguration, context: context)
        type = Types::IngestionInputConfiguration.new
        type.s3_input_configuration = IngestionS3InputConfiguration.build(params[:s3_input_configuration], context: "#{context}[:s3_input_configuration]") unless params[:s3_input_configuration].nil?
        type
      end
    end

    module IngestionS3InputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestionS3InputConfiguration, context: context)
        type = Types::IngestionS3InputConfiguration.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type.key_pattern = params[:key_pattern]
        type
      end
    end

    module InsufficientSensorData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientSensorData, context: context)
        type = Types::InsufficientSensorData.new
        type.missing_complete_sensor_data = MissingCompleteSensorData.build(params[:missing_complete_sensor_data], context: "#{context}[:missing_complete_sensor_data]") unless params[:missing_complete_sensor_data].nil?
        type.sensors_with_short_date_range = SensorsWithShortDateRange.build(params[:sensors_with_short_date_range], context: "#{context}[:sensors_with_short_date_range]") unless params[:sensors_with_short_date_range].nil?
        type
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

    module InvalidSensorData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSensorData, context: context)
        type = Types::InvalidSensorData.new
        type.affected_sensor_count = params[:affected_sensor_count]
        type.total_number_of_invalid_values = params[:total_number_of_invalid_values]
        type
      end
    end

    module LabelsInputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelsInputConfiguration, context: context)
        type = Types::LabelsInputConfiguration.new
        type.s3_input_configuration = LabelsS3InputConfiguration.build(params[:s3_input_configuration], context: "#{context}[:s3_input_configuration]") unless params[:s3_input_configuration].nil?
        type
      end
    end

    module LabelsS3InputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelsS3InputConfiguration, context: context)
        type = Types::LabelsS3InputConfiguration.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module LargeTimestampGaps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LargeTimestampGaps, context: context)
        type = Types::LargeTimestampGaps.new
        type.status = params[:status]
        type.number_of_large_timestamp_gaps = params[:number_of_large_timestamp_gaps]
        type.max_timestamp_gap_in_days = params[:max_timestamp_gap_in_days]
        type
      end
    end

    module ListDataIngestionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataIngestionJobsInput, context: context)
        type = Types::ListDataIngestionJobsInput.new
        type.dataset_name = params[:dataset_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status = params[:status]
        type
      end
    end

    module ListDataIngestionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataIngestionJobsOutput, context: context)
        type = Types::ListDataIngestionJobsOutput.new
        type.next_token = params[:next_token]
        type.data_ingestion_job_summaries = DataIngestionJobSummaries.build(params[:data_ingestion_job_summaries], context: "#{context}[:data_ingestion_job_summaries]") unless params[:data_ingestion_job_summaries].nil?
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.dataset_name_begins_with = params[:dataset_name_begins_with]
        type
      end
    end

    module ListDatasetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsOutput, context: context)
        type = Types::ListDatasetsOutput.new
        type.next_token = params[:next_token]
        type.dataset_summaries = DatasetSummaries.build(params[:dataset_summaries], context: "#{context}[:dataset_summaries]") unless params[:dataset_summaries].nil?
        type
      end
    end

    module ListInferenceExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInferenceExecutionsInput, context: context)
        type = Types::ListInferenceExecutionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.data_start_time_after = params[:data_start_time_after]
        type.data_end_time_before = params[:data_end_time_before]
        type.status = params[:status]
        type
      end
    end

    module ListInferenceExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInferenceExecutionsOutput, context: context)
        type = Types::ListInferenceExecutionsOutput.new
        type.next_token = params[:next_token]
        type.inference_execution_summaries = InferenceExecutionSummaries.build(params[:inference_execution_summaries], context: "#{context}[:inference_execution_summaries]") unless params[:inference_execution_summaries].nil?
        type
      end
    end

    module ListInferenceSchedulersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInferenceSchedulersInput, context: context)
        type = Types::ListInferenceSchedulersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.inference_scheduler_name_begins_with = params[:inference_scheduler_name_begins_with]
        type.model_name = params[:model_name]
        type
      end
    end

    module ListInferenceSchedulersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInferenceSchedulersOutput, context: context)
        type = Types::ListInferenceSchedulersOutput.new
        type.next_token = params[:next_token]
        type.inference_scheduler_summaries = InferenceSchedulerSummaries.build(params[:inference_scheduler_summaries], context: "#{context}[:inference_scheduler_summaries]") unless params[:inference_scheduler_summaries].nil?
        type
      end
    end

    module ListModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelsInput, context: context)
        type = Types::ListModelsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status = params[:status]
        type.model_name_begins_with = params[:model_name_begins_with]
        type.dataset_name_begins_with = params[:dataset_name_begins_with]
        type
      end
    end

    module ListModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelsOutput, context: context)
        type = Types::ListModelsOutput.new
        type.next_token = params[:next_token]
        type.model_summaries = ModelSummaries.build(params[:model_summaries], context: "#{context}[:model_summaries]") unless params[:model_summaries].nil?
        type
      end
    end

    module ListOfDiscardedFiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Object.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListSensorStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSensorStatisticsInput, context: context)
        type = Types::ListSensorStatisticsInput.new
        type.dataset_name = params[:dataset_name]
        type.ingestion_job_id = params[:ingestion_job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSensorStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSensorStatisticsOutput, context: context)
        type = Types::ListSensorStatisticsOutput.new
        type.sensor_statistics_summaries = SensorStatisticsSummaries.build(params[:sensor_statistics_summaries], context: "#{context}[:sensor_statistics_summaries]") unless params[:sensor_statistics_summaries].nil?
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

    module MissingCompleteSensorData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingCompleteSensorData, context: context)
        type = Types::MissingCompleteSensorData.new
        type.affected_sensor_count = params[:affected_sensor_count]
        type
      end
    end

    module MissingSensorData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingSensorData, context: context)
        type = Types::MissingSensorData.new
        type.affected_sensor_count = params[:affected_sensor_count]
        type.total_number_of_missing_values = params[:total_number_of_missing_values]
        type
      end
    end

    module ModelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelSummary, context: context)
        type = Types::ModelSummary.new
        type.model_name = params[:model_name]
        type.model_arn = params[:model_arn]
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type
      end
    end

    module MonotonicValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonotonicValues, context: context)
        type = Types::MonotonicValues.new
        type.status = params[:status]
        type.monotonicity = params[:monotonicity]
        type
      end
    end

    module MultipleOperatingModes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultipleOperatingModes, context: context)
        type = Types::MultipleOperatingModes.new
        type.status = params[:status]
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

    module S3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Object, context: context)
        type = Types::S3Object.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module SensorStatisticsSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SensorStatisticsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SensorStatisticsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SensorStatisticsSummary, context: context)
        type = Types::SensorStatisticsSummary.new
        type.component_name = params[:component_name]
        type.sensor_name = params[:sensor_name]
        type.data_exists = params[:data_exists]
        type.missing_values = CountPercent.build(params[:missing_values], context: "#{context}[:missing_values]") unless params[:missing_values].nil?
        type.invalid_values = CountPercent.build(params[:invalid_values], context: "#{context}[:invalid_values]") unless params[:invalid_values].nil?
        type.invalid_date_entries = CountPercent.build(params[:invalid_date_entries], context: "#{context}[:invalid_date_entries]") unless params[:invalid_date_entries].nil?
        type.duplicate_timestamps = CountPercent.build(params[:duplicate_timestamps], context: "#{context}[:duplicate_timestamps]") unless params[:duplicate_timestamps].nil?
        type.categorical_values = CategoricalValues.build(params[:categorical_values], context: "#{context}[:categorical_values]") unless params[:categorical_values].nil?
        type.multiple_operating_modes = MultipleOperatingModes.build(params[:multiple_operating_modes], context: "#{context}[:multiple_operating_modes]") unless params[:multiple_operating_modes].nil?
        type.large_timestamp_gaps = LargeTimestampGaps.build(params[:large_timestamp_gaps], context: "#{context}[:large_timestamp_gaps]") unless params[:large_timestamp_gaps].nil?
        type.monotonic_values = MonotonicValues.build(params[:monotonic_values], context: "#{context}[:monotonic_values]") unless params[:monotonic_values].nil?
        type.data_start_time = params[:data_start_time]
        type.data_end_time = params[:data_end_time]
        type
      end
    end

    module SensorsWithShortDateRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SensorsWithShortDateRange, context: context)
        type = Types::SensorsWithShortDateRange.new
        type.affected_sensor_count = params[:affected_sensor_count]
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

    module StartDataIngestionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDataIngestionJobInput, context: context)
        type = Types::StartDataIngestionJobInput.new
        type.dataset_name = params[:dataset_name]
        type.ingestion_input_configuration = IngestionInputConfiguration.build(params[:ingestion_input_configuration], context: "#{context}[:ingestion_input_configuration]") unless params[:ingestion_input_configuration].nil?
        type.role_arn = params[:role_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartDataIngestionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDataIngestionJobOutput, context: context)
        type = Types::StartDataIngestionJobOutput.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type
      end
    end

    module StartInferenceSchedulerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInferenceSchedulerInput, context: context)
        type = Types::StartInferenceSchedulerInput.new
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type
      end
    end

    module StartInferenceSchedulerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInferenceSchedulerOutput, context: context)
        type = Types::StartInferenceSchedulerOutput.new
        type.model_arn = params[:model_arn]
        type.model_name = params[:model_name]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.inference_scheduler_arn = params[:inference_scheduler_arn]
        type.status = params[:status]
        type
      end
    end

    module StopInferenceSchedulerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInferenceSchedulerInput, context: context)
        type = Types::StopInferenceSchedulerInput.new
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type
      end
    end

    module StopInferenceSchedulerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInferenceSchedulerOutput, context: context)
        type = Types::StopInferenceSchedulerOutput.new
        type.model_arn = params[:model_arn]
        type.model_name = params[:model_name]
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.inference_scheduler_arn = params[:inference_scheduler_arn]
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedTimestamps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedTimestamps, context: context)
        type = Types::UnsupportedTimestamps.new
        type.total_number_of_unsupported_timestamps = params[:total_number_of_unsupported_timestamps]
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

    module UpdateInferenceSchedulerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInferenceSchedulerInput, context: context)
        type = Types::UpdateInferenceSchedulerInput.new
        type.inference_scheduler_name = params[:inference_scheduler_name]
        type.data_delay_offset_in_minutes = params[:data_delay_offset_in_minutes]
        type.data_upload_frequency = params[:data_upload_frequency]
        type.data_input_configuration = InferenceInputConfiguration.build(params[:data_input_configuration], context: "#{context}[:data_input_configuration]") unless params[:data_input_configuration].nil?
        type.data_output_configuration = InferenceOutputConfiguration.build(params[:data_output_configuration], context: "#{context}[:data_output_configuration]") unless params[:data_output_configuration].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module UpdateInferenceSchedulerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInferenceSchedulerOutput, context: context)
        type = Types::UpdateInferenceSchedulerOutput.new
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
