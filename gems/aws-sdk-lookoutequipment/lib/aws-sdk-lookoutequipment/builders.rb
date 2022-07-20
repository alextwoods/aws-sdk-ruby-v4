# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutEquipment
  module Builders

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.CreateDataset'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['DatasetSchema'] = Builders::DatasetSchema.build(input[:dataset_schema]) unless input[:dataset_schema].nil?
        data['ServerSideKmsKeyId'] = input[:server_side_kms_key_id] unless input[:server_side_kms_key_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for DatasetSchema
    class DatasetSchema
      def self.build(input)
        data = {}
        data['InlineDataSchema'] = input[:inline_data_schema] unless input[:inline_data_schema].nil?
        data
      end
    end

    # Operation Builder for CreateInferenceScheduler
    class CreateInferenceScheduler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.CreateInferenceScheduler'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        data['DataDelayOffsetInMinutes'] = input[:data_delay_offset_in_minutes] unless input[:data_delay_offset_in_minutes].nil?
        data['DataUploadFrequency'] = input[:data_upload_frequency] unless input[:data_upload_frequency].nil?
        data['DataInputConfiguration'] = Builders::InferenceInputConfiguration.build(input[:data_input_configuration]) unless input[:data_input_configuration].nil?
        data['DataOutputConfiguration'] = Builders::InferenceOutputConfiguration.build(input[:data_output_configuration]) unless input[:data_output_configuration].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ServerSideKmsKeyId'] = input[:server_side_kms_key_id] unless input[:server_side_kms_key_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InferenceOutputConfiguration
    class InferenceOutputConfiguration
      def self.build(input)
        data = {}
        data['S3OutputConfiguration'] = Builders::InferenceS3OutputConfiguration.build(input[:s3_output_configuration]) unless input[:s3_output_configuration].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for InferenceS3OutputConfiguration
    class InferenceS3OutputConfiguration
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for InferenceInputConfiguration
    class InferenceInputConfiguration
      def self.build(input)
        data = {}
        data['S3InputConfiguration'] = Builders::InferenceS3InputConfiguration.build(input[:s3_input_configuration]) unless input[:s3_input_configuration].nil?
        data['InputTimeZoneOffset'] = input[:input_time_zone_offset] unless input[:input_time_zone_offset].nil?
        data['InferenceInputNameConfiguration'] = Builders::InferenceInputNameConfiguration.build(input[:inference_input_name_configuration]) unless input[:inference_input_name_configuration].nil?
        data
      end
    end

    # Structure Builder for InferenceInputNameConfiguration
    class InferenceInputNameConfiguration
      def self.build(input)
        data = {}
        data['TimestampFormat'] = input[:timestamp_format] unless input[:timestamp_format].nil?
        data['ComponentTimestampDelimiter'] = input[:component_timestamp_delimiter] unless input[:component_timestamp_delimiter].nil?
        data
      end
    end

    # Structure Builder for InferenceS3InputConfiguration
    class InferenceS3InputConfiguration
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for CreateModel
    class CreateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.CreateModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['DatasetSchema'] = Builders::DatasetSchema.build(input[:dataset_schema]) unless input[:dataset_schema].nil?
        data['LabelsInputConfiguration'] = Builders::LabelsInputConfiguration.build(input[:labels_input_configuration]) unless input[:labels_input_configuration].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['TrainingDataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:training_data_start_time]).to_i unless input[:training_data_start_time].nil?
        data['TrainingDataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:training_data_end_time]).to_i unless input[:training_data_end_time].nil?
        data['EvaluationDataStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:evaluation_data_start_time]).to_i unless input[:evaluation_data_start_time].nil?
        data['EvaluationDataEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:evaluation_data_end_time]).to_i unless input[:evaluation_data_end_time].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['DataPreProcessingConfiguration'] = Builders::DataPreProcessingConfiguration.build(input[:data_pre_processing_configuration]) unless input[:data_pre_processing_configuration].nil?
        data['ServerSideKmsKeyId'] = input[:server_side_kms_key_id] unless input[:server_side_kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['OffCondition'] = input[:off_condition] unless input[:off_condition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataPreProcessingConfiguration
    class DataPreProcessingConfiguration
      def self.build(input)
        data = {}
        data['TargetSamplingRate'] = input[:target_sampling_rate] unless input[:target_sampling_rate].nil?
        data
      end
    end

    # Structure Builder for LabelsInputConfiguration
    class LabelsInputConfiguration
      def self.build(input)
        data = {}
        data['S3InputConfiguration'] = Builders::LabelsS3InputConfiguration.build(input[:s3_input_configuration]) unless input[:s3_input_configuration].nil?
        data
      end
    end

    # Structure Builder for LabelsS3InputConfiguration
    class LabelsS3InputConfiguration
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DeleteDataset'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInferenceScheduler
    class DeleteInferenceScheduler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DeleteInferenceScheduler'
        data = {}
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModel
    class DeleteModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DeleteModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataIngestionJob
    class DescribeDataIngestionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DescribeDataIngestionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DescribeDataset'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInferenceScheduler
    class DescribeInferenceScheduler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DescribeInferenceScheduler'
        data = {}
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModel
    class DescribeModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.DescribeModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDataIngestionJobs
    class ListDataIngestionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListDataIngestionJobs'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListDatasets'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['DatasetNameBeginsWith'] = input[:dataset_name_begins_with] unless input[:dataset_name_begins_with].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInferenceExecutions
    class ListInferenceExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListInferenceExecutions'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        data['DataStartTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:data_start_time_after]).to_i unless input[:data_start_time_after].nil?
        data['DataEndTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:data_end_time_before]).to_i unless input[:data_end_time_before].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInferenceSchedulers
    class ListInferenceSchedulers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListInferenceSchedulers'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['InferenceSchedulerNameBeginsWith'] = input[:inference_scheduler_name_begins_with] unless input[:inference_scheduler_name_begins_with].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModels
    class ListModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListModels'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['ModelNameBeginsWith'] = input[:model_name_begins_with] unless input[:model_name_begins_with].nil?
        data['DatasetNameBeginsWith'] = input[:dataset_name_begins_with] unless input[:dataset_name_begins_with].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSensorStatistics
    class ListSensorStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListSensorStatistics'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['IngestionJobId'] = input[:ingestion_job_id] unless input[:ingestion_job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDataIngestionJob
    class StartDataIngestionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.StartDataIngestionJob'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['IngestionInputConfiguration'] = Builders::IngestionInputConfiguration.build(input[:ingestion_input_configuration]) unless input[:ingestion_input_configuration].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for IngestionInputConfiguration
    class IngestionInputConfiguration
      def self.build(input)
        data = {}
        data['S3InputConfiguration'] = Builders::IngestionS3InputConfiguration.build(input[:s3_input_configuration]) unless input[:s3_input_configuration].nil?
        data
      end
    end

    # Structure Builder for IngestionS3InputConfiguration
    class IngestionS3InputConfiguration
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['KeyPattern'] = input[:key_pattern] unless input[:key_pattern].nil?
        data
      end
    end

    # Operation Builder for StartInferenceScheduler
    class StartInferenceScheduler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.StartInferenceScheduler'
        data = {}
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopInferenceScheduler
    class StopInferenceScheduler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.StopInferenceScheduler'
        data = {}
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateInferenceScheduler
    class UpdateInferenceScheduler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'AWSLookoutEquipmentFrontendService.UpdateInferenceScheduler'
        data = {}
        data['InferenceSchedulerName'] = input[:inference_scheduler_name] unless input[:inference_scheduler_name].nil?
        data['DataDelayOffsetInMinutes'] = input[:data_delay_offset_in_minutes] unless input[:data_delay_offset_in_minutes].nil?
        data['DataUploadFrequency'] = input[:data_upload_frequency] unless input[:data_upload_frequency].nil?
        data['DataInputConfiguration'] = Builders::InferenceInputConfiguration.build(input[:data_input_configuration]) unless input[:data_input_configuration].nil?
        data['DataOutputConfiguration'] = Builders::InferenceOutputConfiguration.build(input[:data_output_configuration]) unless input[:data_output_configuration].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
