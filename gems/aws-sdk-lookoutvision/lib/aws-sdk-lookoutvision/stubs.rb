# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutVision
  module Stubs

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_metadata: DatasetMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['DatasetMetadata'] = Stubs::DatasetMetadata.stub(stub[:dataset_metadata]) unless stub[:dataset_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DatasetMetadata
    class DatasetMetadata
      def self.default(visited=[])
        return nil if visited.include?('DatasetMetadata')
        visited = visited + ['DatasetMetadata']
        {
          dataset_type: 'dataset_type',
          creation_timestamp: Time.now,
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetMetadata.new
        data = {}
        data['DatasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Operation Stubber for CreateModel
    class CreateModel
      def self.default(visited=[])
        {
          model_metadata: ModelMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['ModelMetadata'] = Stubs::ModelMetadata.stub(stub[:model_metadata]) unless stub[:model_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ModelMetadata
    class ModelMetadata
      def self.default(visited=[])
        return nil if visited.include?('ModelMetadata')
        visited = visited + ['ModelMetadata']
        {
          creation_timestamp: Time.now,
          model_version: 'model_version',
          model_arn: 'model_arn',
          description: 'description',
          status: 'status',
          status_message: 'status_message',
          performance: ModelPerformance.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelMetadata.new
        data = {}
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['Performance'] = Stubs::ModelPerformance.stub(stub[:performance]) unless stub[:performance].nil?
        data
      end
    end

    # Structure Stubber for ModelPerformance
    class ModelPerformance
      def self.default(visited=[])
        return nil if visited.include?('ModelPerformance')
        visited = visited + ['ModelPerformance']
        {
          f1_score: 1.0,
          recall: 1.0,
          precision: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPerformance.new
        data = {}
        data['F1Score'] = Hearth::NumberHelper.serialize(stub[:f1_score])
        data['Recall'] = Hearth::NumberHelper.serialize(stub[:recall])
        data['Precision'] = Hearth::NumberHelper.serialize(stub[:precision])
        data
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project_metadata: ProjectMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProjectMetadata'] = Stubs::ProjectMetadata.stub(stub[:project_metadata]) unless stub[:project_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProjectMetadata
    class ProjectMetadata
      def self.default(visited=[])
        return nil if visited.include?('ProjectMetadata')
        visited = visited + ['ProjectMetadata']
        {
          project_arn: 'project_arn',
          project_name: 'project_name',
          creation_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectMetadata.new
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteModel
    class DeleteModel
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
          project_arn: 'project_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          dataset_description: DatasetDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DatasetDescription'] = Stubs::DatasetDescription.stub(stub[:dataset_description]) unless stub[:dataset_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DatasetDescription
    class DatasetDescription
      def self.default(visited=[])
        return nil if visited.include?('DatasetDescription')
        visited = visited + ['DatasetDescription']
        {
          project_name: 'project_name',
          dataset_type: 'dataset_type',
          creation_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          status: 'status',
          status_message: 'status_message',
          image_stats: DatasetImageStats.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetDescription.new
        data = {}
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['DatasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ImageStats'] = Stubs::DatasetImageStats.stub(stub[:image_stats]) unless stub[:image_stats].nil?
        data
      end
    end

    # Structure Stubber for DatasetImageStats
    class DatasetImageStats
      def self.default(visited=[])
        return nil if visited.include?('DatasetImageStats')
        visited = visited + ['DatasetImageStats']
        {
          total: 1,
          labeled: 1,
          normal: 1,
          anomaly: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetImageStats.new
        data = {}
        data['Total'] = stub[:total] unless stub[:total].nil?
        data['Labeled'] = stub[:labeled] unless stub[:labeled].nil?
        data['Normal'] = stub[:normal] unless stub[:normal].nil?
        data['Anomaly'] = stub[:anomaly] unless stub[:anomaly].nil?
        data
      end
    end

    # Operation Stubber for DescribeModel
    class DescribeModel
      def self.default(visited=[])
        {
          model_description: ModelDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ModelDescription'] = Stubs::ModelDescription.stub(stub[:model_description]) unless stub[:model_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ModelDescription
    class ModelDescription
      def self.default(visited=[])
        return nil if visited.include?('ModelDescription')
        visited = visited + ['ModelDescription']
        {
          model_version: 'model_version',
          model_arn: 'model_arn',
          creation_timestamp: Time.now,
          description: 'description',
          status: 'status',
          status_message: 'status_message',
          performance: ModelPerformance.default(visited),
          output_config: OutputConfig.default(visited),
          evaluation_manifest: OutputS3Object.default(visited),
          evaluation_result: OutputS3Object.default(visited),
          evaluation_end_timestamp: Time.now,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelDescription.new
        data = {}
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['Performance'] = Stubs::ModelPerformance.stub(stub[:performance]) unless stub[:performance].nil?
        data['OutputConfig'] = Stubs::OutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['EvaluationManifest'] = Stubs::OutputS3Object.stub(stub[:evaluation_manifest]) unless stub[:evaluation_manifest].nil?
        data['EvaluationResult'] = Stubs::OutputS3Object.stub(stub[:evaluation_result]) unless stub[:evaluation_result].nil?
        data['EvaluationEndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:evaluation_end_timestamp]).to_i unless stub[:evaluation_end_timestamp].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for OutputS3Object
    class OutputS3Object
      def self.default(visited=[])
        return nil if visited.include?('OutputS3Object')
        visited = visited + ['OutputS3Object']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputS3Object.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for OutputConfig
    class OutputConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputConfig')
        visited = visited + ['OutputConfig']
        {
          s3_location: S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputConfig.new
        data = {}
        data['S3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for DescribeModelPackagingJob
    class DescribeModelPackagingJob
      def self.default(visited=[])
        {
          model_packaging_description: ModelPackagingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ModelPackagingDescription'] = Stubs::ModelPackagingDescription.stub(stub[:model_packaging_description]) unless stub[:model_packaging_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ModelPackagingDescription
    class ModelPackagingDescription
      def self.default(visited=[])
        return nil if visited.include?('ModelPackagingDescription')
        visited = visited + ['ModelPackagingDescription']
        {
          job_name: 'job_name',
          project_name: 'project_name',
          model_version: 'model_version',
          model_packaging_configuration: ModelPackagingConfiguration.default(visited),
          model_packaging_job_description: 'model_packaging_job_description',
          model_packaging_method: 'model_packaging_method',
          model_packaging_output_details: ModelPackagingOutputDetails.default(visited),
          status: 'status',
          status_message: 'status_message',
          creation_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackagingDescription.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['ModelPackagingConfiguration'] = Stubs::ModelPackagingConfiguration.stub(stub[:model_packaging_configuration]) unless stub[:model_packaging_configuration].nil?
        data['ModelPackagingJobDescription'] = stub[:model_packaging_job_description] unless stub[:model_packaging_job_description].nil?
        data['ModelPackagingMethod'] = stub[:model_packaging_method] unless stub[:model_packaging_method].nil?
        data['ModelPackagingOutputDetails'] = Stubs::ModelPackagingOutputDetails.stub(stub[:model_packaging_output_details]) unless stub[:model_packaging_output_details].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Structure Stubber for ModelPackagingOutputDetails
    class ModelPackagingOutputDetails
      def self.default(visited=[])
        return nil if visited.include?('ModelPackagingOutputDetails')
        visited = visited + ['ModelPackagingOutputDetails']
        {
          greengrass: GreengrassOutputDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackagingOutputDetails.new
        data = {}
        data['Greengrass'] = Stubs::GreengrassOutputDetails.stub(stub[:greengrass]) unless stub[:greengrass].nil?
        data
      end
    end

    # Structure Stubber for GreengrassOutputDetails
    class GreengrassOutputDetails
      def self.default(visited=[])
        return nil if visited.include?('GreengrassOutputDetails')
        visited = visited + ['GreengrassOutputDetails']
        {
          component_version_arn: 'component_version_arn',
          component_name: 'component_name',
          component_version: 'component_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::GreengrassOutputDetails.new
        data = {}
        data['ComponentVersionArn'] = stub[:component_version_arn] unless stub[:component_version_arn].nil?
        data['ComponentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['ComponentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data
      end
    end

    # Structure Stubber for ModelPackagingConfiguration
    class ModelPackagingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ModelPackagingConfiguration')
        visited = visited + ['ModelPackagingConfiguration']
        {
          greengrass: GreengrassConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackagingConfiguration.new
        data = {}
        data['Greengrass'] = Stubs::GreengrassConfiguration.stub(stub[:greengrass]) unless stub[:greengrass].nil?
        data
      end
    end

    # Structure Stubber for GreengrassConfiguration
    class GreengrassConfiguration
      def self.default(visited=[])
        return nil if visited.include?('GreengrassConfiguration')
        visited = visited + ['GreengrassConfiguration']
        {
          compiler_options: 'compiler_options',
          target_device: 'target_device',
          target_platform: TargetPlatform.default(visited),
          s3_output_location: S3Location.default(visited),
          component_name: 'component_name',
          component_version: 'component_version',
          component_description: 'component_description',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GreengrassConfiguration.new
        data = {}
        data['CompilerOptions'] = stub[:compiler_options] unless stub[:compiler_options].nil?
        data['TargetDevice'] = stub[:target_device] unless stub[:target_device].nil?
        data['TargetPlatform'] = Stubs::TargetPlatform.stub(stub[:target_platform]) unless stub[:target_platform].nil?
        data['S3OutputLocation'] = Stubs::S3Location.stub(stub[:s3_output_location]) unless stub[:s3_output_location].nil?
        data['ComponentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['ComponentVersion'] = stub[:component_version] unless stub[:component_version].nil?
        data['ComponentDescription'] = stub[:component_description] unless stub[:component_description].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
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

    # Structure Stubber for TargetPlatform
    class TargetPlatform
      def self.default(visited=[])
        return nil if visited.include?('TargetPlatform')
        visited = visited + ['TargetPlatform']
        {
          os: 'os',
          arch: 'arch',
          accelerator: 'accelerator',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetPlatform.new
        data = {}
        data['Os'] = stub[:os] unless stub[:os].nil?
        data['Arch'] = stub[:arch] unless stub[:arch].nil?
        data['Accelerator'] = stub[:accelerator] unless stub[:accelerator].nil?
        data
      end
    end

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          project_description: ProjectDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProjectDescription'] = Stubs::ProjectDescription.stub(stub[:project_description]) unless stub[:project_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProjectDescription
    class ProjectDescription
      def self.default(visited=[])
        return nil if visited.include?('ProjectDescription')
        visited = visited + ['ProjectDescription']
        {
          project_arn: 'project_arn',
          project_name: 'project_name',
          creation_timestamp: Time.now,
          datasets: DatasetMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectDescription.new
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['Datasets'] = Stubs::DatasetMetadataList.stub(stub[:datasets]) unless stub[:datasets].nil?
        data
      end
    end

    # List Stubber for DatasetMetadataList
    class DatasetMetadataList
      def self.default(visited=[])
        return nil if visited.include?('DatasetMetadataList')
        visited = visited + ['DatasetMetadataList']
        [
          DatasetMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DetectAnomalies
    class DetectAnomalies
      def self.default(visited=[])
        {
          detect_anomaly_result: DetectAnomalyResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DetectAnomalyResult'] = Stubs::DetectAnomalyResult.stub(stub[:detect_anomaly_result]) unless stub[:detect_anomaly_result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DetectAnomalyResult
    class DetectAnomalyResult
      def self.default(visited=[])
        return nil if visited.include?('DetectAnomalyResult')
        visited = visited + ['DetectAnomalyResult']
        {
          source: ImageSource.default(visited),
          is_anomalous: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectAnomalyResult.new
        data = {}
        data['Source'] = Stubs::ImageSource.stub(stub[:source]) unless stub[:source].nil?
        data['IsAnomalous'] = stub[:is_anomalous] unless stub[:is_anomalous].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for ImageSource
    class ImageSource
      def self.default(visited=[])
        return nil if visited.include?('ImageSource')
        visited = visited + ['ImageSource']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageSource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListDatasetEntries
    class ListDatasetEntries
      def self.default(visited=[])
        {
          dataset_entries: DatasetEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DatasetEntries'] = Stubs::DatasetEntryList.stub(stub[:dataset_entries]) unless stub[:dataset_entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatasetEntryList
    class DatasetEntryList
      def self.default(visited=[])
        return nil if visited.include?('DatasetEntryList')
        visited = visited + ['DatasetEntryList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListModelPackagingJobs
    class ListModelPackagingJobs
      def self.default(visited=[])
        {
          model_packaging_jobs: ModelPackagingJobsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ModelPackagingJobs'] = Stubs::ModelPackagingJobsList.stub(stub[:model_packaging_jobs]) unless stub[:model_packaging_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ModelPackagingJobsList
    class ModelPackagingJobsList
      def self.default(visited=[])
        return nil if visited.include?('ModelPackagingJobsList')
        visited = visited + ['ModelPackagingJobsList']
        [
          ModelPackagingJobMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ModelPackagingJobMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelPackagingJobMetadata
    class ModelPackagingJobMetadata
      def self.default(visited=[])
        return nil if visited.include?('ModelPackagingJobMetadata')
        visited = visited + ['ModelPackagingJobMetadata']
        {
          job_name: 'job_name',
          project_name: 'project_name',
          model_version: 'model_version',
          model_packaging_job_description: 'model_packaging_job_description',
          model_packaging_method: 'model_packaging_method',
          status: 'status',
          status_message: 'status_message',
          creation_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackagingJobMetadata.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['ModelPackagingJobDescription'] = stub[:model_packaging_job_description] unless stub[:model_packaging_job_description].nil?
        data['ModelPackagingMethod'] = stub[:model_packaging_method] unless stub[:model_packaging_method].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListModels
    class ListModels
      def self.default(visited=[])
        {
          models: ModelMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Models'] = Stubs::ModelMetadataList.stub(stub[:models]) unless stub[:models].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ModelMetadataList
    class ModelMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ModelMetadataList')
        visited = visited + ['ModelMetadataList']
        [
          ModelMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ModelMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: ProjectMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Projects'] = Stubs::ProjectMetadataList.stub(stub[:projects]) unless stub[:projects].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProjectMetadataList
    class ProjectMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ProjectMetadataList')
        visited = visited + ['ProjectMetadataList']
        [
          ProjectMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProjectMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartModel
    class StartModel
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartModelPackagingJob
    class StartModelPackagingJob
      def self.default(visited=[])
        {
          job_name: 'job_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopModel
    class StopModel
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDatasetEntries
    class UpdateDatasetEntries
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
