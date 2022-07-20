# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutEquipment
  module Parsers

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_name = map['DatasetName']
        data.dataset_arn = map['DatasetArn']
        data.status = map['Status']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateInferenceScheduler
    class CreateInferenceScheduler
      def self.parse(http_resp)
        data = Types::CreateInferenceSchedulerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.inference_scheduler_arn = map['InferenceSchedulerArn']
        data.inference_scheduler_name = map['InferenceSchedulerName']
        data.status = map['Status']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateModel
    class CreateModel
      def self.parse(http_resp)
        data = Types::CreateModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_arn = map['ModelArn']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteInferenceScheduler
    class DeleteInferenceScheduler
      def self.parse(http_resp)
        data = Types::DeleteInferenceSchedulerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModel
    class DeleteModel
      def self.parse(http_resp)
        data = Types::DeleteModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDataIngestionJob
    class DescribeDataIngestionJob
      def self.parse(http_resp)
        data = Types::DescribeDataIngestionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.dataset_arn = map['DatasetArn']
        data.ingestion_input_configuration = (IngestionInputConfiguration.parse(map['IngestionInputConfiguration']) unless map['IngestionInputConfiguration'].nil?)
        data.role_arn = map['RoleArn']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.status = map['Status']
        data.failed_reason = map['FailedReason']
        data.data_quality_summary = (DataQualitySummary.parse(map['DataQualitySummary']) unless map['DataQualitySummary'].nil?)
        data.ingested_files_summary = (IngestedFilesSummary.parse(map['IngestedFilesSummary']) unless map['IngestedFilesSummary'].nil?)
        data.status_detail = map['StatusDetail']
        data.ingested_data_size = map['IngestedDataSize']
        data.data_start_time = Time.at(map['DataStartTime'].to_i) if map['DataStartTime']
        data.data_end_time = Time.at(map['DataEndTime'].to_i) if map['DataEndTime']
        data
      end
    end

    class IngestedFilesSummary
      def self.parse(map)
        data = Types::IngestedFilesSummary.new
        data.total_number_of_files = map['TotalNumberOfFiles']
        data.ingested_number_of_files = map['IngestedNumberOfFiles']
        data.discarded_files = (ListOfDiscardedFiles.parse(map['DiscardedFiles']) unless map['DiscardedFiles'].nil?)
        return data
      end
    end

    class ListOfDiscardedFiles
      def self.parse(list)
        list.map do |value|
          S3Object.parse(value) unless value.nil?
        end
      end
    end

    class S3Object
      def self.parse(map)
        data = Types::S3Object.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    class DataQualitySummary
      def self.parse(map)
        data = Types::DataQualitySummary.new
        data.insufficient_sensor_data = (InsufficientSensorData.parse(map['InsufficientSensorData']) unless map['InsufficientSensorData'].nil?)
        data.missing_sensor_data = (MissingSensorData.parse(map['MissingSensorData']) unless map['MissingSensorData'].nil?)
        data.invalid_sensor_data = (InvalidSensorData.parse(map['InvalidSensorData']) unless map['InvalidSensorData'].nil?)
        data.unsupported_timestamps = (UnsupportedTimestamps.parse(map['UnsupportedTimestamps']) unless map['UnsupportedTimestamps'].nil?)
        data.duplicate_timestamps = (DuplicateTimestamps.parse(map['DuplicateTimestamps']) unless map['DuplicateTimestamps'].nil?)
        return data
      end
    end

    class DuplicateTimestamps
      def self.parse(map)
        data = Types::DuplicateTimestamps.new
        data.total_number_of_duplicate_timestamps = map['TotalNumberOfDuplicateTimestamps']
        return data
      end
    end

    class UnsupportedTimestamps
      def self.parse(map)
        data = Types::UnsupportedTimestamps.new
        data.total_number_of_unsupported_timestamps = map['TotalNumberOfUnsupportedTimestamps']
        return data
      end
    end

    class InvalidSensorData
      def self.parse(map)
        data = Types::InvalidSensorData.new
        data.affected_sensor_count = map['AffectedSensorCount']
        data.total_number_of_invalid_values = map['TotalNumberOfInvalidValues']
        return data
      end
    end

    class MissingSensorData
      def self.parse(map)
        data = Types::MissingSensorData.new
        data.affected_sensor_count = map['AffectedSensorCount']
        data.total_number_of_missing_values = map['TotalNumberOfMissingValues']
        return data
      end
    end

    class InsufficientSensorData
      def self.parse(map)
        data = Types::InsufficientSensorData.new
        data.missing_complete_sensor_data = (MissingCompleteSensorData.parse(map['MissingCompleteSensorData']) unless map['MissingCompleteSensorData'].nil?)
        data.sensors_with_short_date_range = (SensorsWithShortDateRange.parse(map['SensorsWithShortDateRange']) unless map['SensorsWithShortDateRange'].nil?)
        return data
      end
    end

    class SensorsWithShortDateRange
      def self.parse(map)
        data = Types::SensorsWithShortDateRange.new
        data.affected_sensor_count = map['AffectedSensorCount']
        return data
      end
    end

    class MissingCompleteSensorData
      def self.parse(map)
        data = Types::MissingCompleteSensorData.new
        data.affected_sensor_count = map['AffectedSensorCount']
        return data
      end
    end

    class IngestionInputConfiguration
      def self.parse(map)
        data = Types::IngestionInputConfiguration.new
        data.s3_input_configuration = (IngestionS3InputConfiguration.parse(map['S3InputConfiguration']) unless map['S3InputConfiguration'].nil?)
        return data
      end
    end

    class IngestionS3InputConfiguration
      def self.parse(map)
        data = Types::IngestionS3InputConfiguration.new
        data.bucket = map['Bucket']
        data.prefix = map['Prefix']
        data.key_pattern = map['KeyPattern']
        return data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_name = map['DatasetName']
        data.dataset_arn = map['DatasetArn']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.status = map['Status']
        data.schema = map['Schema']
        data.server_side_kms_key_id = map['ServerSideKmsKeyId']
        data.ingestion_input_configuration = (IngestionInputConfiguration.parse(map['IngestionInputConfiguration']) unless map['IngestionInputConfiguration'].nil?)
        data.data_quality_summary = (DataQualitySummary.parse(map['DataQualitySummary']) unless map['DataQualitySummary'].nil?)
        data.ingested_files_summary = (IngestedFilesSummary.parse(map['IngestedFilesSummary']) unless map['IngestedFilesSummary'].nil?)
        data.role_arn = map['RoleArn']
        data.data_start_time = Time.at(map['DataStartTime'].to_i) if map['DataStartTime']
        data.data_end_time = Time.at(map['DataEndTime'].to_i) if map['DataEndTime']
        data
      end
    end

    # Operation Parser for DescribeInferenceScheduler
    class DescribeInferenceScheduler
      def self.parse(http_resp)
        data = Types::DescribeInferenceSchedulerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_arn = map['ModelArn']
        data.model_name = map['ModelName']
        data.inference_scheduler_name = map['InferenceSchedulerName']
        data.inference_scheduler_arn = map['InferenceSchedulerArn']
        data.status = map['Status']
        data.data_delay_offset_in_minutes = map['DataDelayOffsetInMinutes']
        data.data_upload_frequency = map['DataUploadFrequency']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.data_input_configuration = (InferenceInputConfiguration.parse(map['DataInputConfiguration']) unless map['DataInputConfiguration'].nil?)
        data.data_output_configuration = (InferenceOutputConfiguration.parse(map['DataOutputConfiguration']) unless map['DataOutputConfiguration'].nil?)
        data.role_arn = map['RoleArn']
        data.server_side_kms_key_id = map['ServerSideKmsKeyId']
        data
      end
    end

    class InferenceOutputConfiguration
      def self.parse(map)
        data = Types::InferenceOutputConfiguration.new
        data.s3_output_configuration = (InferenceS3OutputConfiguration.parse(map['S3OutputConfiguration']) unless map['S3OutputConfiguration'].nil?)
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class InferenceS3OutputConfiguration
      def self.parse(map)
        data = Types::InferenceS3OutputConfiguration.new
        data.bucket = map['Bucket']
        data.prefix = map['Prefix']
        return data
      end
    end

    class InferenceInputConfiguration
      def self.parse(map)
        data = Types::InferenceInputConfiguration.new
        data.s3_input_configuration = (InferenceS3InputConfiguration.parse(map['S3InputConfiguration']) unless map['S3InputConfiguration'].nil?)
        data.input_time_zone_offset = map['InputTimeZoneOffset']
        data.inference_input_name_configuration = (InferenceInputNameConfiguration.parse(map['InferenceInputNameConfiguration']) unless map['InferenceInputNameConfiguration'].nil?)
        return data
      end
    end

    class InferenceInputNameConfiguration
      def self.parse(map)
        data = Types::InferenceInputNameConfiguration.new
        data.timestamp_format = map['TimestampFormat']
        data.component_timestamp_delimiter = map['ComponentTimestampDelimiter']
        return data
      end
    end

    class InferenceS3InputConfiguration
      def self.parse(map)
        data = Types::InferenceS3InputConfiguration.new
        data.bucket = map['Bucket']
        data.prefix = map['Prefix']
        return data
      end
    end

    # Operation Parser for DescribeModel
    class DescribeModel
      def self.parse(http_resp)
        data = Types::DescribeModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_name = map['ModelName']
        data.model_arn = map['ModelArn']
        data.dataset_name = map['DatasetName']
        data.dataset_arn = map['DatasetArn']
        data.schema = map['Schema']
        data.labels_input_configuration = (LabelsInputConfiguration.parse(map['LabelsInputConfiguration']) unless map['LabelsInputConfiguration'].nil?)
        data.training_data_start_time = Time.at(map['TrainingDataStartTime'].to_i) if map['TrainingDataStartTime']
        data.training_data_end_time = Time.at(map['TrainingDataEndTime'].to_i) if map['TrainingDataEndTime']
        data.evaluation_data_start_time = Time.at(map['EvaluationDataStartTime'].to_i) if map['EvaluationDataStartTime']
        data.evaluation_data_end_time = Time.at(map['EvaluationDataEndTime'].to_i) if map['EvaluationDataEndTime']
        data.role_arn = map['RoleArn']
        data.data_pre_processing_configuration = (DataPreProcessingConfiguration.parse(map['DataPreProcessingConfiguration']) unless map['DataPreProcessingConfiguration'].nil?)
        data.status = map['Status']
        data.training_execution_start_time = Time.at(map['TrainingExecutionStartTime'].to_i) if map['TrainingExecutionStartTime']
        data.training_execution_end_time = Time.at(map['TrainingExecutionEndTime'].to_i) if map['TrainingExecutionEndTime']
        data.failed_reason = map['FailedReason']
        data.model_metrics = map['ModelMetrics']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.server_side_kms_key_id = map['ServerSideKmsKeyId']
        data.off_condition = map['OffCondition']
        data
      end
    end

    class DataPreProcessingConfiguration
      def self.parse(map)
        data = Types::DataPreProcessingConfiguration.new
        data.target_sampling_rate = map['TargetSamplingRate']
        return data
      end
    end

    class LabelsInputConfiguration
      def self.parse(map)
        data = Types::LabelsInputConfiguration.new
        data.s3_input_configuration = (LabelsS3InputConfiguration.parse(map['S3InputConfiguration']) unless map['S3InputConfiguration'].nil?)
        return data
      end
    end

    class LabelsS3InputConfiguration
      def self.parse(map)
        data = Types::LabelsS3InputConfiguration.new
        data.bucket = map['Bucket']
        data.prefix = map['Prefix']
        return data
      end
    end

    # Operation Parser for ListDataIngestionJobs
    class ListDataIngestionJobs
      def self.parse(http_resp)
        data = Types::ListDataIngestionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.data_ingestion_job_summaries = (DataIngestionJobSummaries.parse(map['DataIngestionJobSummaries']) unless map['DataIngestionJobSummaries'].nil?)
        data
      end
    end

    class DataIngestionJobSummaries
      def self.parse(list)
        list.map do |value|
          DataIngestionJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class DataIngestionJobSummary
      def self.parse(map)
        data = Types::DataIngestionJobSummary.new
        data.job_id = map['JobId']
        data.dataset_name = map['DatasetName']
        data.dataset_arn = map['DatasetArn']
        data.ingestion_input_configuration = (IngestionInputConfiguration.parse(map['IngestionInputConfiguration']) unless map['IngestionInputConfiguration'].nil?)
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListDatasets
    class ListDatasets
      def self.parse(http_resp)
        data = Types::ListDatasetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.dataset_summaries = (DatasetSummaries.parse(map['DatasetSummaries']) unless map['DatasetSummaries'].nil?)
        data
      end
    end

    class DatasetSummaries
      def self.parse(list)
        list.map do |value|
          DatasetSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetSummary
      def self.parse(map)
        data = Types::DatasetSummary.new
        data.dataset_name = map['DatasetName']
        data.dataset_arn = map['DatasetArn']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        return data
      end
    end

    # Operation Parser for ListInferenceExecutions
    class ListInferenceExecutions
      def self.parse(http_resp)
        data = Types::ListInferenceExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.inference_execution_summaries = (InferenceExecutionSummaries.parse(map['InferenceExecutionSummaries']) unless map['InferenceExecutionSummaries'].nil?)
        data
      end
    end

    class InferenceExecutionSummaries
      def self.parse(list)
        list.map do |value|
          InferenceExecutionSummary.parse(value) unless value.nil?
        end
      end
    end

    class InferenceExecutionSummary
      def self.parse(map)
        data = Types::InferenceExecutionSummary.new
        data.model_name = map['ModelName']
        data.model_arn = map['ModelArn']
        data.inference_scheduler_name = map['InferenceSchedulerName']
        data.inference_scheduler_arn = map['InferenceSchedulerArn']
        data.scheduled_start_time = Time.at(map['ScheduledStartTime'].to_i) if map['ScheduledStartTime']
        data.data_start_time = Time.at(map['DataStartTime'].to_i) if map['DataStartTime']
        data.data_end_time = Time.at(map['DataEndTime'].to_i) if map['DataEndTime']
        data.data_input_configuration = (InferenceInputConfiguration.parse(map['DataInputConfiguration']) unless map['DataInputConfiguration'].nil?)
        data.data_output_configuration = (InferenceOutputConfiguration.parse(map['DataOutputConfiguration']) unless map['DataOutputConfiguration'].nil?)
        data.customer_result_object = (S3Object.parse(map['CustomerResultObject']) unless map['CustomerResultObject'].nil?)
        data.status = map['Status']
        data.failed_reason = map['FailedReason']
        return data
      end
    end

    # Operation Parser for ListInferenceSchedulers
    class ListInferenceSchedulers
      def self.parse(http_resp)
        data = Types::ListInferenceSchedulersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.inference_scheduler_summaries = (InferenceSchedulerSummaries.parse(map['InferenceSchedulerSummaries']) unless map['InferenceSchedulerSummaries'].nil?)
        data
      end
    end

    class InferenceSchedulerSummaries
      def self.parse(list)
        list.map do |value|
          InferenceSchedulerSummary.parse(value) unless value.nil?
        end
      end
    end

    class InferenceSchedulerSummary
      def self.parse(map)
        data = Types::InferenceSchedulerSummary.new
        data.model_name = map['ModelName']
        data.model_arn = map['ModelArn']
        data.inference_scheduler_name = map['InferenceSchedulerName']
        data.inference_scheduler_arn = map['InferenceSchedulerArn']
        data.status = map['Status']
        data.data_delay_offset_in_minutes = map['DataDelayOffsetInMinutes']
        data.data_upload_frequency = map['DataUploadFrequency']
        return data
      end
    end

    # Operation Parser for ListModels
    class ListModels
      def self.parse(http_resp)
        data = Types::ListModelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.model_summaries = (ModelSummaries.parse(map['ModelSummaries']) unless map['ModelSummaries'].nil?)
        data
      end
    end

    class ModelSummaries
      def self.parse(list)
        list.map do |value|
          ModelSummary.parse(value) unless value.nil?
        end
      end
    end

    class ModelSummary
      def self.parse(map)
        data = Types::ModelSummary.new
        data.model_name = map['ModelName']
        data.model_arn = map['ModelArn']
        data.dataset_name = map['DatasetName']
        data.dataset_arn = map['DatasetArn']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        return data
      end
    end

    # Operation Parser for ListSensorStatistics
    class ListSensorStatistics
      def self.parse(http_resp)
        data = Types::ListSensorStatisticsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sensor_statistics_summaries = (SensorStatisticsSummaries.parse(map['SensorStatisticsSummaries']) unless map['SensorStatisticsSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SensorStatisticsSummaries
      def self.parse(list)
        list.map do |value|
          SensorStatisticsSummary.parse(value) unless value.nil?
        end
      end
    end

    class SensorStatisticsSummary
      def self.parse(map)
        data = Types::SensorStatisticsSummary.new
        data.component_name = map['ComponentName']
        data.sensor_name = map['SensorName']
        data.data_exists = map['DataExists']
        data.missing_values = (CountPercent.parse(map['MissingValues']) unless map['MissingValues'].nil?)
        data.invalid_values = (CountPercent.parse(map['InvalidValues']) unless map['InvalidValues'].nil?)
        data.invalid_date_entries = (CountPercent.parse(map['InvalidDateEntries']) unless map['InvalidDateEntries'].nil?)
        data.duplicate_timestamps = (CountPercent.parse(map['DuplicateTimestamps']) unless map['DuplicateTimestamps'].nil?)
        data.categorical_values = (CategoricalValues.parse(map['CategoricalValues']) unless map['CategoricalValues'].nil?)
        data.multiple_operating_modes = (MultipleOperatingModes.parse(map['MultipleOperatingModes']) unless map['MultipleOperatingModes'].nil?)
        data.large_timestamp_gaps = (LargeTimestampGaps.parse(map['LargeTimestampGaps']) unless map['LargeTimestampGaps'].nil?)
        data.monotonic_values = (MonotonicValues.parse(map['MonotonicValues']) unless map['MonotonicValues'].nil?)
        data.data_start_time = Time.at(map['DataStartTime'].to_i) if map['DataStartTime']
        data.data_end_time = Time.at(map['DataEndTime'].to_i) if map['DataEndTime']
        return data
      end
    end

    class MonotonicValues
      def self.parse(map)
        data = Types::MonotonicValues.new
        data.status = map['Status']
        data.monotonicity = map['Monotonicity']
        return data
      end
    end

    class LargeTimestampGaps
      def self.parse(map)
        data = Types::LargeTimestampGaps.new
        data.status = map['Status']
        data.number_of_large_timestamp_gaps = map['NumberOfLargeTimestampGaps']
        data.max_timestamp_gap_in_days = map['MaxTimestampGapInDays']
        return data
      end
    end

    class MultipleOperatingModes
      def self.parse(map)
        data = Types::MultipleOperatingModes.new
        data.status = map['Status']
        return data
      end
    end

    class CategoricalValues
      def self.parse(map)
        data = Types::CategoricalValues.new
        data.status = map['Status']
        data.number_of_category = map['NumberOfCategory']
        return data
      end
    end

    class CountPercent
      def self.parse(map)
        data = Types::CountPercent.new
        data.count = map['Count']
        data.percentage = Hearth::NumberHelper.deserialize(map['Percentage'])
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for StartDataIngestionJob
    class StartDataIngestionJob
      def self.parse(http_resp)
        data = Types::StartDataIngestionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for StartInferenceScheduler
    class StartInferenceScheduler
      def self.parse(http_resp)
        data = Types::StartInferenceSchedulerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_arn = map['ModelArn']
        data.model_name = map['ModelName']
        data.inference_scheduler_name = map['InferenceSchedulerName']
        data.inference_scheduler_arn = map['InferenceSchedulerArn']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for StopInferenceScheduler
    class StopInferenceScheduler
      def self.parse(http_resp)
        data = Types::StopInferenceSchedulerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_arn = map['ModelArn']
        data.model_name = map['ModelName']
        data.inference_scheduler_name = map['InferenceSchedulerName']
        data.inference_scheduler_arn = map['InferenceSchedulerArn']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateInferenceScheduler
    class UpdateInferenceScheduler
      def self.parse(http_resp)
        data = Types::UpdateInferenceSchedulerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
