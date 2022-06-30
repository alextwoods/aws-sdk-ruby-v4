# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutEquipment
  module Stubs

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateInferenceScheduler
    class CreateInferenceScheduler
      def self.default(visited=[])
        {
          inference_scheduler_arn: 'inference_scheduler_arn',
          inference_scheduler_name: 'inference_scheduler_name',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InferenceSchedulerArn'] = stub[:inference_scheduler_arn] unless stub[:inference_scheduler_arn].nil?
        data['InferenceSchedulerName'] = stub[:inference_scheduler_name] unless stub[:inference_scheduler_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModel
    class CreateModel
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInferenceScheduler
    class DeleteInferenceScheduler
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModel
    class DeleteModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDataIngestionJob
    class DescribeDataIngestionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          dataset_arn: 'dataset_arn',
          ingestion_input_configuration: Stubs::IngestionInputConfiguration.default(visited),
          role_arn: 'role_arn',
          created_at: Time.now,
          status: 'status',
          failed_reason: 'failed_reason',
          data_quality_summary: Stubs::DataQualitySummary.default(visited),
          ingested_files_summary: Stubs::IngestedFilesSummary.default(visited),
          status_detail: 'status_detail',
          ingested_data_size: 1,
          data_start_time: Time.now,
          data_end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['IngestionInputConfiguration'] = Stubs::IngestionInputConfiguration.stub(stub[:ingestion_input_configuration]) unless stub[:ingestion_input_configuration].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailedReason'] = stub[:failed_reason] unless stub[:failed_reason].nil?
        data['DataQualitySummary'] = Stubs::DataQualitySummary.stub(stub[:data_quality_summary]) unless stub[:data_quality_summary].nil?
        data['IngestedFilesSummary'] = Stubs::IngestedFilesSummary.stub(stub[:ingested_files_summary]) unless stub[:ingested_files_summary].nil?
        data['StatusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        data['IngestedDataSize'] = stub[:ingested_data_size] unless stub[:ingested_data_size].nil?
        data['DataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_start_time]).to_i unless stub[:data_start_time].nil?
        data['DataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_end_time]).to_i unless stub[:data_end_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for IngestedFilesSummary
    class IngestedFilesSummary
      def self.default(visited=[])
        return nil if visited.include?('IngestedFilesSummary')
        visited = visited + ['IngestedFilesSummary']
        {
          total_number_of_files: 1,
          ingested_number_of_files: 1,
          discarded_files: Stubs::ListOfDiscardedFiles.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestedFilesSummary.new
        data = {}
        data['TotalNumberOfFiles'] = stub[:total_number_of_files] unless stub[:total_number_of_files].nil?
        data['IngestedNumberOfFiles'] = stub[:ingested_number_of_files] unless stub[:ingested_number_of_files].nil?
        data['DiscardedFiles'] = Stubs::ListOfDiscardedFiles.stub(stub[:discarded_files]) unless stub[:discarded_files].nil?
        data
      end
    end

    # List Stubber for ListOfDiscardedFiles
    class ListOfDiscardedFiles
      def self.default(visited=[])
        return nil if visited.include?('ListOfDiscardedFiles')
        visited = visited + ['ListOfDiscardedFiles']
        [
          Stubs::S3Object.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::S3Object.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3Object
    class S3Object
      def self.default(visited=[])
        return nil if visited.include?('S3Object')
        visited = visited + ['S3Object']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Object.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for DataQualitySummary
    class DataQualitySummary
      def self.default(visited=[])
        return nil if visited.include?('DataQualitySummary')
        visited = visited + ['DataQualitySummary']
        {
          insufficient_sensor_data: Stubs::InsufficientSensorData.default(visited),
          missing_sensor_data: Stubs::MissingSensorData.default(visited),
          invalid_sensor_data: Stubs::InvalidSensorData.default(visited),
          unsupported_timestamps: Stubs::UnsupportedTimestamps.default(visited),
          duplicate_timestamps: Stubs::DuplicateTimestamps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataQualitySummary.new
        data = {}
        data['InsufficientSensorData'] = Stubs::InsufficientSensorData.stub(stub[:insufficient_sensor_data]) unless stub[:insufficient_sensor_data].nil?
        data['MissingSensorData'] = Stubs::MissingSensorData.stub(stub[:missing_sensor_data]) unless stub[:missing_sensor_data].nil?
        data['InvalidSensorData'] = Stubs::InvalidSensorData.stub(stub[:invalid_sensor_data]) unless stub[:invalid_sensor_data].nil?
        data['UnsupportedTimestamps'] = Stubs::UnsupportedTimestamps.stub(stub[:unsupported_timestamps]) unless stub[:unsupported_timestamps].nil?
        data['DuplicateTimestamps'] = Stubs::DuplicateTimestamps.stub(stub[:duplicate_timestamps]) unless stub[:duplicate_timestamps].nil?
        data
      end
    end

    # Structure Stubber for DuplicateTimestamps
    class DuplicateTimestamps
      def self.default(visited=[])
        return nil if visited.include?('DuplicateTimestamps')
        visited = visited + ['DuplicateTimestamps']
        {
          total_number_of_duplicate_timestamps: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DuplicateTimestamps.new
        data = {}
        data['TotalNumberOfDuplicateTimestamps'] = stub[:total_number_of_duplicate_timestamps] unless stub[:total_number_of_duplicate_timestamps].nil?
        data
      end
    end

    # Structure Stubber for UnsupportedTimestamps
    class UnsupportedTimestamps
      def self.default(visited=[])
        return nil if visited.include?('UnsupportedTimestamps')
        visited = visited + ['UnsupportedTimestamps']
        {
          total_number_of_unsupported_timestamps: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::UnsupportedTimestamps.new
        data = {}
        data['TotalNumberOfUnsupportedTimestamps'] = stub[:total_number_of_unsupported_timestamps] unless stub[:total_number_of_unsupported_timestamps].nil?
        data
      end
    end

    # Structure Stubber for InvalidSensorData
    class InvalidSensorData
      def self.default(visited=[])
        return nil if visited.include?('InvalidSensorData')
        visited = visited + ['InvalidSensorData']
        {
          affected_sensor_count: 1,
          total_number_of_invalid_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InvalidSensorData.new
        data = {}
        data['AffectedSensorCount'] = stub[:affected_sensor_count] unless stub[:affected_sensor_count].nil?
        data['TotalNumberOfInvalidValues'] = stub[:total_number_of_invalid_values] unless stub[:total_number_of_invalid_values].nil?
        data
      end
    end

    # Structure Stubber for MissingSensorData
    class MissingSensorData
      def self.default(visited=[])
        return nil if visited.include?('MissingSensorData')
        visited = visited + ['MissingSensorData']
        {
          affected_sensor_count: 1,
          total_number_of_missing_values: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MissingSensorData.new
        data = {}
        data['AffectedSensorCount'] = stub[:affected_sensor_count] unless stub[:affected_sensor_count].nil?
        data['TotalNumberOfMissingValues'] = stub[:total_number_of_missing_values] unless stub[:total_number_of_missing_values].nil?
        data
      end
    end

    # Structure Stubber for InsufficientSensorData
    class InsufficientSensorData
      def self.default(visited=[])
        return nil if visited.include?('InsufficientSensorData')
        visited = visited + ['InsufficientSensorData']
        {
          missing_complete_sensor_data: Stubs::MissingCompleteSensorData.default(visited),
          sensors_with_short_date_range: Stubs::SensorsWithShortDateRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InsufficientSensorData.new
        data = {}
        data['MissingCompleteSensorData'] = Stubs::MissingCompleteSensorData.stub(stub[:missing_complete_sensor_data]) unless stub[:missing_complete_sensor_data].nil?
        data['SensorsWithShortDateRange'] = Stubs::SensorsWithShortDateRange.stub(stub[:sensors_with_short_date_range]) unless stub[:sensors_with_short_date_range].nil?
        data
      end
    end

    # Structure Stubber for SensorsWithShortDateRange
    class SensorsWithShortDateRange
      def self.default(visited=[])
        return nil if visited.include?('SensorsWithShortDateRange')
        visited = visited + ['SensorsWithShortDateRange']
        {
          affected_sensor_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SensorsWithShortDateRange.new
        data = {}
        data['AffectedSensorCount'] = stub[:affected_sensor_count] unless stub[:affected_sensor_count].nil?
        data
      end
    end

    # Structure Stubber for MissingCompleteSensorData
    class MissingCompleteSensorData
      def self.default(visited=[])
        return nil if visited.include?('MissingCompleteSensorData')
        visited = visited + ['MissingCompleteSensorData']
        {
          affected_sensor_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MissingCompleteSensorData.new
        data = {}
        data['AffectedSensorCount'] = stub[:affected_sensor_count] unless stub[:affected_sensor_count].nil?
        data
      end
    end

    # Structure Stubber for IngestionInputConfiguration
    class IngestionInputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('IngestionInputConfiguration')
        visited = visited + ['IngestionInputConfiguration']
        {
          s3_input_configuration: Stubs::IngestionS3InputConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestionInputConfiguration.new
        data = {}
        data['S3InputConfiguration'] = Stubs::IngestionS3InputConfiguration.stub(stub[:s3_input_configuration]) unless stub[:s3_input_configuration].nil?
        data
      end
    end

    # Structure Stubber for IngestionS3InputConfiguration
    class IngestionS3InputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('IngestionS3InputConfiguration')
        visited = visited + ['IngestionS3InputConfiguration']
        {
          bucket: 'bucket',
          prefix: 'prefix',
          key_pattern: 'key_pattern',
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestionS3InputConfiguration.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['KeyPattern'] = stub[:key_pattern] unless stub[:key_pattern].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          created_at: Time.now,
          last_updated_at: Time.now,
          status: 'status',
          schema: 'schema',
          server_side_kms_key_id: 'server_side_kms_key_id',
          ingestion_input_configuration: Stubs::IngestionInputConfiguration.default(visited),
          data_quality_summary: Stubs::DataQualitySummary.default(visited),
          ingested_files_summary: Stubs::IngestedFilesSummary.default(visited),
          role_arn: 'role_arn',
          data_start_time: Time.now,
          data_end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Schema'] = stub[:schema] unless stub[:schema].nil?
        data['ServerSideKmsKeyId'] = stub[:server_side_kms_key_id] unless stub[:server_side_kms_key_id].nil?
        data['IngestionInputConfiguration'] = Stubs::IngestionInputConfiguration.stub(stub[:ingestion_input_configuration]) unless stub[:ingestion_input_configuration].nil?
        data['DataQualitySummary'] = Stubs::DataQualitySummary.stub(stub[:data_quality_summary]) unless stub[:data_quality_summary].nil?
        data['IngestedFilesSummary'] = Stubs::IngestedFilesSummary.stub(stub[:ingested_files_summary]) unless stub[:ingested_files_summary].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['DataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_start_time]).to_i unless stub[:data_start_time].nil?
        data['DataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_end_time]).to_i unless stub[:data_end_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeInferenceScheduler
    class DescribeInferenceScheduler
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
          model_name: 'model_name',
          inference_scheduler_name: 'inference_scheduler_name',
          inference_scheduler_arn: 'inference_scheduler_arn',
          status: 'status',
          data_delay_offset_in_minutes: 1,
          data_upload_frequency: 'data_upload_frequency',
          created_at: Time.now,
          updated_at: Time.now,
          data_input_configuration: Stubs::InferenceInputConfiguration.default(visited),
          data_output_configuration: Stubs::InferenceOutputConfiguration.default(visited),
          role_arn: 'role_arn',
          server_side_kms_key_id: 'server_side_kms_key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['InferenceSchedulerName'] = stub[:inference_scheduler_name] unless stub[:inference_scheduler_name].nil?
        data['InferenceSchedulerArn'] = stub[:inference_scheduler_arn] unless stub[:inference_scheduler_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DataDelayOffsetInMinutes'] = stub[:data_delay_offset_in_minutes] unless stub[:data_delay_offset_in_minutes].nil?
        data['DataUploadFrequency'] = stub[:data_upload_frequency] unless stub[:data_upload_frequency].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['DataInputConfiguration'] = Stubs::InferenceInputConfiguration.stub(stub[:data_input_configuration]) unless stub[:data_input_configuration].nil?
        data['DataOutputConfiguration'] = Stubs::InferenceOutputConfiguration.stub(stub[:data_output_configuration]) unless stub[:data_output_configuration].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ServerSideKmsKeyId'] = stub[:server_side_kms_key_id] unless stub[:server_side_kms_key_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InferenceOutputConfiguration
    class InferenceOutputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InferenceOutputConfiguration')
        visited = visited + ['InferenceOutputConfiguration']
        {
          s3_output_configuration: Stubs::InferenceS3OutputConfiguration.default(visited),
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceOutputConfiguration.new
        data = {}
        data['S3OutputConfiguration'] = Stubs::InferenceS3OutputConfiguration.stub(stub[:s3_output_configuration]) unless stub[:s3_output_configuration].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for InferenceS3OutputConfiguration
    class InferenceS3OutputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InferenceS3OutputConfiguration')
        visited = visited + ['InferenceS3OutputConfiguration']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceS3OutputConfiguration.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for InferenceInputConfiguration
    class InferenceInputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InferenceInputConfiguration')
        visited = visited + ['InferenceInputConfiguration']
        {
          s3_input_configuration: Stubs::InferenceS3InputConfiguration.default(visited),
          input_time_zone_offset: 'input_time_zone_offset',
          inference_input_name_configuration: Stubs::InferenceInputNameConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceInputConfiguration.new
        data = {}
        data['S3InputConfiguration'] = Stubs::InferenceS3InputConfiguration.stub(stub[:s3_input_configuration]) unless stub[:s3_input_configuration].nil?
        data['InputTimeZoneOffset'] = stub[:input_time_zone_offset] unless stub[:input_time_zone_offset].nil?
        data['InferenceInputNameConfiguration'] = Stubs::InferenceInputNameConfiguration.stub(stub[:inference_input_name_configuration]) unless stub[:inference_input_name_configuration].nil?
        data
      end
    end

    # Structure Stubber for InferenceInputNameConfiguration
    class InferenceInputNameConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InferenceInputNameConfiguration')
        visited = visited + ['InferenceInputNameConfiguration']
        {
          timestamp_format: 'timestamp_format',
          component_timestamp_delimiter: 'component_timestamp_delimiter',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceInputNameConfiguration.new
        data = {}
        data['TimestampFormat'] = stub[:timestamp_format] unless stub[:timestamp_format].nil?
        data['ComponentTimestampDelimiter'] = stub[:component_timestamp_delimiter] unless stub[:component_timestamp_delimiter].nil?
        data
      end
    end

    # Structure Stubber for InferenceS3InputConfiguration
    class InferenceS3InputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InferenceS3InputConfiguration')
        visited = visited + ['InferenceS3InputConfiguration']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceS3InputConfiguration.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for DescribeModel
    class DescribeModel
      def self.default(visited=[])
        {
          model_name: 'model_name',
          model_arn: 'model_arn',
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          schema: 'schema',
          labels_input_configuration: Stubs::LabelsInputConfiguration.default(visited),
          training_data_start_time: Time.now,
          training_data_end_time: Time.now,
          evaluation_data_start_time: Time.now,
          evaluation_data_end_time: Time.now,
          role_arn: 'role_arn',
          data_pre_processing_configuration: Stubs::DataPreProcessingConfiguration.default(visited),
          status: 'status',
          training_execution_start_time: Time.now,
          training_execution_end_time: Time.now,
          failed_reason: 'failed_reason',
          model_metrics: 'model_metrics',
          last_updated_time: Time.now,
          created_at: Time.now,
          server_side_kms_key_id: 'server_side_kms_key_id',
          off_condition: 'off_condition',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['Schema'] = stub[:schema] unless stub[:schema].nil?
        data['LabelsInputConfiguration'] = Stubs::LabelsInputConfiguration.stub(stub[:labels_input_configuration]) unless stub[:labels_input_configuration].nil?
        data['TrainingDataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_data_start_time]).to_i unless stub[:training_data_start_time].nil?
        data['TrainingDataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_data_end_time]).to_i unless stub[:training_data_end_time].nil?
        data['EvaluationDataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:evaluation_data_start_time]).to_i unless stub[:evaluation_data_start_time].nil?
        data['EvaluationDataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:evaluation_data_end_time]).to_i unless stub[:evaluation_data_end_time].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['DataPreProcessingConfiguration'] = Stubs::DataPreProcessingConfiguration.stub(stub[:data_pre_processing_configuration]) unless stub[:data_pre_processing_configuration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TrainingExecutionStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_execution_start_time]).to_i unless stub[:training_execution_start_time].nil?
        data['TrainingExecutionEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_execution_end_time]).to_i unless stub[:training_execution_end_time].nil?
        data['FailedReason'] = stub[:failed_reason] unless stub[:failed_reason].nil?
        data['ModelMetrics'] = stub[:model_metrics] unless stub[:model_metrics].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ServerSideKmsKeyId'] = stub[:server_side_kms_key_id] unless stub[:server_side_kms_key_id].nil?
        data['OffCondition'] = stub[:off_condition] unless stub[:off_condition].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataPreProcessingConfiguration
    class DataPreProcessingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataPreProcessingConfiguration')
        visited = visited + ['DataPreProcessingConfiguration']
        {
          target_sampling_rate: 'target_sampling_rate',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataPreProcessingConfiguration.new
        data = {}
        data['TargetSamplingRate'] = stub[:target_sampling_rate] unless stub[:target_sampling_rate].nil?
        data
      end
    end

    # Structure Stubber for LabelsInputConfiguration
    class LabelsInputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LabelsInputConfiguration')
        visited = visited + ['LabelsInputConfiguration']
        {
          s3_input_configuration: Stubs::LabelsS3InputConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelsInputConfiguration.new
        data = {}
        data['S3InputConfiguration'] = Stubs::LabelsS3InputConfiguration.stub(stub[:s3_input_configuration]) unless stub[:s3_input_configuration].nil?
        data
      end
    end

    # Structure Stubber for LabelsS3InputConfiguration
    class LabelsS3InputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LabelsS3InputConfiguration')
        visited = visited + ['LabelsS3InputConfiguration']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelsS3InputConfiguration.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for ListDataIngestionJobs
    class ListDataIngestionJobs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          data_ingestion_job_summaries: Stubs::DataIngestionJobSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DataIngestionJobSummaries'] = Stubs::DataIngestionJobSummaries.stub(stub[:data_ingestion_job_summaries]) unless stub[:data_ingestion_job_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataIngestionJobSummaries
    class DataIngestionJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('DataIngestionJobSummaries')
        visited = visited + ['DataIngestionJobSummaries']
        [
          Stubs::DataIngestionJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataIngestionJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataIngestionJobSummary
    class DataIngestionJobSummary
      def self.default(visited=[])
        return nil if visited.include?('DataIngestionJobSummary')
        visited = visited + ['DataIngestionJobSummary']
        {
          job_id: 'job_id',
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          ingestion_input_configuration: Stubs::IngestionInputConfiguration.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataIngestionJobSummary.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['IngestionInputConfiguration'] = Stubs::IngestionInputConfiguration.stub(stub[:ingestion_input_configuration]) unless stub[:ingestion_input_configuration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          next_token: 'next_token',
          dataset_summaries: Stubs::DatasetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DatasetSummaries'] = Stubs::DatasetSummaries.stub(stub[:dataset_summaries]) unless stub[:dataset_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetSummaries
    class DatasetSummaries
      def self.default(visited=[])
        return nil if visited.include?('DatasetSummaries')
        visited = visited + ['DatasetSummaries']
        [
          Stubs::DatasetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetSummary
    class DatasetSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetSummary')
        visited = visited + ['DatasetSummary']
        {
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          status: 'status',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetSummary.new
        data = {}
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListInferenceExecutions
    class ListInferenceExecutions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          inference_execution_summaries: Stubs::InferenceExecutionSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['InferenceExecutionSummaries'] = Stubs::InferenceExecutionSummaries.stub(stub[:inference_execution_summaries]) unless stub[:inference_execution_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InferenceExecutionSummaries
    class InferenceExecutionSummaries
      def self.default(visited=[])
        return nil if visited.include?('InferenceExecutionSummaries')
        visited = visited + ['InferenceExecutionSummaries']
        [
          Stubs::InferenceExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InferenceExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InferenceExecutionSummary
    class InferenceExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('InferenceExecutionSummary')
        visited = visited + ['InferenceExecutionSummary']
        {
          model_name: 'model_name',
          model_arn: 'model_arn',
          inference_scheduler_name: 'inference_scheduler_name',
          inference_scheduler_arn: 'inference_scheduler_arn',
          scheduled_start_time: Time.now,
          data_start_time: Time.now,
          data_end_time: Time.now,
          data_input_configuration: Stubs::InferenceInputConfiguration.default(visited),
          data_output_configuration: Stubs::InferenceOutputConfiguration.default(visited),
          customer_result_object: Stubs::S3Object.default(visited),
          status: 'status',
          failed_reason: 'failed_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceExecutionSummary.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['InferenceSchedulerName'] = stub[:inference_scheduler_name] unless stub[:inference_scheduler_name].nil?
        data['InferenceSchedulerArn'] = stub[:inference_scheduler_arn] unless stub[:inference_scheduler_arn].nil?
        data['ScheduledStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_start_time]).to_i unless stub[:scheduled_start_time].nil?
        data['DataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_start_time]).to_i unless stub[:data_start_time].nil?
        data['DataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_end_time]).to_i unless stub[:data_end_time].nil?
        data['DataInputConfiguration'] = Stubs::InferenceInputConfiguration.stub(stub[:data_input_configuration]) unless stub[:data_input_configuration].nil?
        data['DataOutputConfiguration'] = Stubs::InferenceOutputConfiguration.stub(stub[:data_output_configuration]) unless stub[:data_output_configuration].nil?
        data['CustomerResultObject'] = Stubs::S3Object.stub(stub[:customer_result_object]) unless stub[:customer_result_object].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailedReason'] = stub[:failed_reason] unless stub[:failed_reason].nil?
        data
      end
    end

    # Operation Stubber for ListInferenceSchedulers
    class ListInferenceSchedulers
      def self.default(visited=[])
        {
          next_token: 'next_token',
          inference_scheduler_summaries: Stubs::InferenceSchedulerSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['InferenceSchedulerSummaries'] = Stubs::InferenceSchedulerSummaries.stub(stub[:inference_scheduler_summaries]) unless stub[:inference_scheduler_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InferenceSchedulerSummaries
    class InferenceSchedulerSummaries
      def self.default(visited=[])
        return nil if visited.include?('InferenceSchedulerSummaries')
        visited = visited + ['InferenceSchedulerSummaries']
        [
          Stubs::InferenceSchedulerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InferenceSchedulerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InferenceSchedulerSummary
    class InferenceSchedulerSummary
      def self.default(visited=[])
        return nil if visited.include?('InferenceSchedulerSummary')
        visited = visited + ['InferenceSchedulerSummary']
        {
          model_name: 'model_name',
          model_arn: 'model_arn',
          inference_scheduler_name: 'inference_scheduler_name',
          inference_scheduler_arn: 'inference_scheduler_arn',
          status: 'status',
          data_delay_offset_in_minutes: 1,
          data_upload_frequency: 'data_upload_frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceSchedulerSummary.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['InferenceSchedulerName'] = stub[:inference_scheduler_name] unless stub[:inference_scheduler_name].nil?
        data['InferenceSchedulerArn'] = stub[:inference_scheduler_arn] unless stub[:inference_scheduler_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DataDelayOffsetInMinutes'] = stub[:data_delay_offset_in_minutes] unless stub[:data_delay_offset_in_minutes].nil?
        data['DataUploadFrequency'] = stub[:data_upload_frequency] unless stub[:data_upload_frequency].nil?
        data
      end
    end

    # Operation Stubber for ListModels
    class ListModels
      def self.default(visited=[])
        {
          next_token: 'next_token',
          model_summaries: Stubs::ModelSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ModelSummaries'] = Stubs::ModelSummaries.stub(stub[:model_summaries]) unless stub[:model_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ModelSummaries
    class ModelSummaries
      def self.default(visited=[])
        return nil if visited.include?('ModelSummaries')
        visited = visited + ['ModelSummaries']
        [
          Stubs::ModelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ModelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelSummary
    class ModelSummary
      def self.default(visited=[])
        return nil if visited.include?('ModelSummary')
        visited = visited + ['ModelSummary']
        {
          model_name: 'model_name',
          model_arn: 'model_arn',
          dataset_name: 'dataset_name',
          dataset_arn: 'dataset_arn',
          status: 'status',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelSummary.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListSensorStatistics
    class ListSensorStatistics
      def self.default(visited=[])
        {
          sensor_statistics_summaries: Stubs::SensorStatisticsSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SensorStatisticsSummaries'] = Stubs::SensorStatisticsSummaries.stub(stub[:sensor_statistics_summaries]) unless stub[:sensor_statistics_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SensorStatisticsSummaries
    class SensorStatisticsSummaries
      def self.default(visited=[])
        return nil if visited.include?('SensorStatisticsSummaries')
        visited = visited + ['SensorStatisticsSummaries']
        [
          Stubs::SensorStatisticsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SensorStatisticsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SensorStatisticsSummary
    class SensorStatisticsSummary
      def self.default(visited=[])
        return nil if visited.include?('SensorStatisticsSummary')
        visited = visited + ['SensorStatisticsSummary']
        {
          component_name: 'component_name',
          sensor_name: 'sensor_name',
          data_exists: false,
          missing_values: Stubs::CountPercent.default(visited),
          invalid_values: Stubs::CountPercent.default(visited),
          invalid_date_entries: Stubs::CountPercent.default(visited),
          duplicate_timestamps: Stubs::CountPercent.default(visited),
          categorical_values: Stubs::CategoricalValues.default(visited),
          multiple_operating_modes: Stubs::MultipleOperatingModes.default(visited),
          large_timestamp_gaps: Stubs::LargeTimestampGaps.default(visited),
          monotonic_values: Stubs::MonotonicValues.default(visited),
          data_start_time: Time.now,
          data_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SensorStatisticsSummary.new
        data = {}
        data['ComponentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['SensorName'] = stub[:sensor_name] unless stub[:sensor_name].nil?
        data['DataExists'] = stub[:data_exists] unless stub[:data_exists].nil?
        data['MissingValues'] = Stubs::CountPercent.stub(stub[:missing_values]) unless stub[:missing_values].nil?
        data['InvalidValues'] = Stubs::CountPercent.stub(stub[:invalid_values]) unless stub[:invalid_values].nil?
        data['InvalidDateEntries'] = Stubs::CountPercent.stub(stub[:invalid_date_entries]) unless stub[:invalid_date_entries].nil?
        data['DuplicateTimestamps'] = Stubs::CountPercent.stub(stub[:duplicate_timestamps]) unless stub[:duplicate_timestamps].nil?
        data['CategoricalValues'] = Stubs::CategoricalValues.stub(stub[:categorical_values]) unless stub[:categorical_values].nil?
        data['MultipleOperatingModes'] = Stubs::MultipleOperatingModes.stub(stub[:multiple_operating_modes]) unless stub[:multiple_operating_modes].nil?
        data['LargeTimestampGaps'] = Stubs::LargeTimestampGaps.stub(stub[:large_timestamp_gaps]) unless stub[:large_timestamp_gaps].nil?
        data['MonotonicValues'] = Stubs::MonotonicValues.stub(stub[:monotonic_values]) unless stub[:monotonic_values].nil?
        data['DataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_start_time]).to_i unless stub[:data_start_time].nil?
        data['DataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_end_time]).to_i unless stub[:data_end_time].nil?
        data
      end
    end

    # Structure Stubber for MonotonicValues
    class MonotonicValues
      def self.default(visited=[])
        return nil if visited.include?('MonotonicValues')
        visited = visited + ['MonotonicValues']
        {
          status: 'status',
          monotonicity: 'monotonicity',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonotonicValues.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Monotonicity'] = stub[:monotonicity] unless stub[:monotonicity].nil?
        data
      end
    end

    # Structure Stubber for LargeTimestampGaps
    class LargeTimestampGaps
      def self.default(visited=[])
        return nil if visited.include?('LargeTimestampGaps')
        visited = visited + ['LargeTimestampGaps']
        {
          status: 'status',
          number_of_large_timestamp_gaps: 1,
          max_timestamp_gap_in_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LargeTimestampGaps.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NumberOfLargeTimestampGaps'] = stub[:number_of_large_timestamp_gaps] unless stub[:number_of_large_timestamp_gaps].nil?
        data['MaxTimestampGapInDays'] = stub[:max_timestamp_gap_in_days] unless stub[:max_timestamp_gap_in_days].nil?
        data
      end
    end

    # Structure Stubber for MultipleOperatingModes
    class MultipleOperatingModes
      def self.default(visited=[])
        return nil if visited.include?('MultipleOperatingModes')
        visited = visited + ['MultipleOperatingModes']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultipleOperatingModes.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for CategoricalValues
    class CategoricalValues
      def self.default(visited=[])
        return nil if visited.include?('CategoricalValues')
        visited = visited + ['CategoricalValues']
        {
          status: 'status',
          number_of_category: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoricalValues.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NumberOfCategory'] = stub[:number_of_category] unless stub[:number_of_category].nil?
        data
      end
    end

    # Structure Stubber for CountPercent
    class CountPercent
      def self.default(visited=[])
        return nil if visited.include?('CountPercent')
        visited = visited + ['CountPercent']
        {
          count: 1,
          percentage: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CountPercent.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Percentage'] = Hearth::NumberHelper.serialize(stub[:percentage])
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for StartDataIngestionJob
    class StartDataIngestionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartInferenceScheduler
    class StartInferenceScheduler
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
          model_name: 'model_name',
          inference_scheduler_name: 'inference_scheduler_name',
          inference_scheduler_arn: 'inference_scheduler_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['InferenceSchedulerName'] = stub[:inference_scheduler_name] unless stub[:inference_scheduler_name].nil?
        data['InferenceSchedulerArn'] = stub[:inference_scheduler_arn] unless stub[:inference_scheduler_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopInferenceScheduler
    class StopInferenceScheduler
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
          model_name: 'model_name',
          inference_scheduler_name: 'inference_scheduler_name',
          inference_scheduler_arn: 'inference_scheduler_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['InferenceSchedulerName'] = stub[:inference_scheduler_name] unless stub[:inference_scheduler_name].nil?
        data['InferenceSchedulerArn'] = stub[:inference_scheduler_arn] unless stub[:inference_scheduler_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInferenceScheduler
    class UpdateInferenceScheduler
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
