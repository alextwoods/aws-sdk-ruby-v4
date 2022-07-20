# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutVision
  module Parsers

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_metadata = (Parsers::DatasetMetadata.parse(map['DatasetMetadata']) unless map['DatasetMetadata'].nil?)
        data
      end
    end

    class DatasetMetadata
      def self.parse(map)
        data = Types::DatasetMetadata.new
        data.dataset_type = map['DatasetType']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateModel
    class CreateModel
      def self.parse(http_resp)
        data = Types::CreateModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_metadata = (Parsers::ModelMetadata.parse(map['ModelMetadata']) unless map['ModelMetadata'].nil?)
        data
      end
    end

    class ModelMetadata
      def self.parse(map)
        data = Types::ModelMetadata.new
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.model_version = map['ModelVersion']
        data.model_arn = map['ModelArn']
        data.description = map['Description']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.performance = (Parsers::ModelPerformance.parse(map['Performance']) unless map['Performance'].nil?)
        return data
      end
    end

    class ModelPerformance
      def self.parse(map)
        data = Types::ModelPerformance.new
        data.f1_score = Hearth::NumberHelper.deserialize(map['F1Score'])
        data.recall = Hearth::NumberHelper.deserialize(map['Recall'])
        data.precision = Hearth::NumberHelper.deserialize(map['Precision'])
        return data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project_metadata = (Parsers::ProjectMetadata.parse(map['ProjectMetadata']) unless map['ProjectMetadata'].nil?)
        data
      end
    end

    class ProjectMetadata
      def self.parse(map)
        data = Types::ProjectMetadata.new
        data.project_arn = map['ProjectArn']
        data.project_name = map['ProjectName']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        return data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteModel
    class DeleteModel
      def self.parse(http_resp)
        data = Types::DeleteModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_arn = map['ModelArn']
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project_arn = map['ProjectArn']
        data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_description = (Parsers::DatasetDescription.parse(map['DatasetDescription']) unless map['DatasetDescription'].nil?)
        data
      end
    end

    class DatasetDescription
      def self.parse(map)
        data = Types::DatasetDescription.new
        data.project_name = map['ProjectName']
        data.dataset_type = map['DatasetType']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.image_stats = (Parsers::DatasetImageStats.parse(map['ImageStats']) unless map['ImageStats'].nil?)
        return data
      end
    end

    class DatasetImageStats
      def self.parse(map)
        data = Types::DatasetImageStats.new
        data.total = map['Total']
        data.labeled = map['Labeled']
        data.normal = map['Normal']
        data.anomaly = map['Anomaly']
        return data
      end
    end

    # Operation Parser for DescribeModel
    class DescribeModel
      def self.parse(http_resp)
        data = Types::DescribeModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_description = (Parsers::ModelDescription.parse(map['ModelDescription']) unless map['ModelDescription'].nil?)
        data
      end
    end

    class ModelDescription
      def self.parse(map)
        data = Types::ModelDescription.new
        data.model_version = map['ModelVersion']
        data.model_arn = map['ModelArn']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.description = map['Description']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.performance = (Parsers::ModelPerformance.parse(map['Performance']) unless map['Performance'].nil?)
        data.output_config = (Parsers::OutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.evaluation_manifest = (Parsers::OutputS3Object.parse(map['EvaluationManifest']) unless map['EvaluationManifest'].nil?)
        data.evaluation_result = (Parsers::OutputS3Object.parse(map['EvaluationResult']) unless map['EvaluationResult'].nil?)
        data.evaluation_end_timestamp = Time.at(map['EvaluationEndTimestamp'].to_i) if map['EvaluationEndTimestamp']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class OutputS3Object
      def self.parse(map)
        data = Types::OutputS3Object.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    class OutputConfig
      def self.parse(map)
        data = Types::OutputConfig.new
        data.s3_location = (Parsers::S3Location.parse(map['S3Location']) unless map['S3Location'].nil?)
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['Bucket']
        data.prefix = map['Prefix']
        return data
      end
    end

    # Operation Parser for DescribeModelPackagingJob
    class DescribeModelPackagingJob
      def self.parse(http_resp)
        data = Types::DescribeModelPackagingJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_packaging_description = (Parsers::ModelPackagingDescription.parse(map['ModelPackagingDescription']) unless map['ModelPackagingDescription'].nil?)
        data
      end
    end

    class ModelPackagingDescription
      def self.parse(map)
        data = Types::ModelPackagingDescription.new
        data.job_name = map['JobName']
        data.project_name = map['ProjectName']
        data.model_version = map['ModelVersion']
        data.model_packaging_configuration = (Parsers::ModelPackagingConfiguration.parse(map['ModelPackagingConfiguration']) unless map['ModelPackagingConfiguration'].nil?)
        data.model_packaging_job_description = map['ModelPackagingJobDescription']
        data.model_packaging_method = map['ModelPackagingMethod']
        data.model_packaging_output_details = (Parsers::ModelPackagingOutputDetails.parse(map['ModelPackagingOutputDetails']) unless map['ModelPackagingOutputDetails'].nil?)
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    class ModelPackagingOutputDetails
      def self.parse(map)
        data = Types::ModelPackagingOutputDetails.new
        data.greengrass = (Parsers::GreengrassOutputDetails.parse(map['Greengrass']) unless map['Greengrass'].nil?)
        return data
      end
    end

    class GreengrassOutputDetails
      def self.parse(map)
        data = Types::GreengrassOutputDetails.new
        data.component_version_arn = map['ComponentVersionArn']
        data.component_name = map['ComponentName']
        data.component_version = map['ComponentVersion']
        return data
      end
    end

    class ModelPackagingConfiguration
      def self.parse(map)
        data = Types::ModelPackagingConfiguration.new
        data.greengrass = (Parsers::GreengrassConfiguration.parse(map['Greengrass']) unless map['Greengrass'].nil?)
        return data
      end
    end

    class GreengrassConfiguration
      def self.parse(map)
        data = Types::GreengrassConfiguration.new
        data.compiler_options = map['CompilerOptions']
        data.target_device = map['TargetDevice']
        data.target_platform = (Parsers::TargetPlatform.parse(map['TargetPlatform']) unless map['TargetPlatform'].nil?)
        data.s3_output_location = (Parsers::S3Location.parse(map['S3OutputLocation']) unless map['S3OutputLocation'].nil?)
        data.component_name = map['ComponentName']
        data.component_version = map['ComponentVersion']
        data.component_description = map['ComponentDescription']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
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

    class TargetPlatform
      def self.parse(map)
        data = Types::TargetPlatform.new
        data.os = map['Os']
        data.arch = map['Arch']
        data.accelerator = map['Accelerator']
        return data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project_description = (Parsers::ProjectDescription.parse(map['ProjectDescription']) unless map['ProjectDescription'].nil?)
        data
      end
    end

    class ProjectDescription
      def self.parse(map)
        data = Types::ProjectDescription.new
        data.project_arn = map['ProjectArn']
        data.project_name = map['ProjectName']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.datasets = (Parsers::DatasetMetadataList.parse(map['Datasets']) unless map['Datasets'].nil?)
        return data
      end
    end

    class DatasetMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DatasetMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DetectAnomalies
    class DetectAnomalies
      def self.parse(http_resp)
        data = Types::DetectAnomaliesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detect_anomaly_result = (Parsers::DetectAnomalyResult.parse(map['DetectAnomalyResult']) unless map['DetectAnomalyResult'].nil?)
        data
      end
    end

    class DetectAnomalyResult
      def self.parse(map)
        data = Types::DetectAnomalyResult.new
        data.source = (Parsers::ImageSource.parse(map['Source']) unless map['Source'].nil?)
        data.is_anomalous = map['IsAnomalous']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class ImageSource
      def self.parse(map)
        data = Types::ImageSource.new
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListDatasetEntries
    class ListDatasetEntries
      def self.parse(http_resp)
        data = Types::ListDatasetEntriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_entries = (Parsers::DatasetEntryList.parse(map['DatasetEntries']) unless map['DatasetEntries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListModelPackagingJobs
    class ListModelPackagingJobs
      def self.parse(http_resp)
        data = Types::ListModelPackagingJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_packaging_jobs = (Parsers::ModelPackagingJobsList.parse(map['ModelPackagingJobs']) unless map['ModelPackagingJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ModelPackagingJobsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ModelPackagingJobMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class ModelPackagingJobMetadata
      def self.parse(map)
        data = Types::ModelPackagingJobMetadata.new
        data.job_name = map['JobName']
        data.project_name = map['ProjectName']
        data.model_version = map['ModelVersion']
        data.model_packaging_job_description = map['ModelPackagingJobDescription']
        data.model_packaging_method = map['ModelPackagingMethod']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for ListModels
    class ListModels
      def self.parse(http_resp)
        data = Types::ListModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.models = (Parsers::ModelMetadataList.parse(map['Models']) unless map['Models'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ModelMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ModelMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.projects = (Parsers::ProjectMetadataList.parse(map['Projects']) unless map['Projects'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProjectMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProjectMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for StartModel
    class StartModel
      def self.parse(http_resp)
        data = Types::StartModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for StartModelPackagingJob
    class StartModelPackagingJob
      def self.parse(http_resp)
        data = Types::StartModelPackagingJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_name = map['JobName']
        data
      end
    end

    # Operation Parser for StopModel
    class StopModel
      def self.parse(http_resp)
        data = Types::StopModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDatasetEntries
    class UpdateDatasetEntries
      def self.parse(http_resp)
        data = Types::UpdateDatasetEntriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data
      end
    end
  end
end
