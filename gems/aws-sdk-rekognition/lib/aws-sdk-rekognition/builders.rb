# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rekognition
  module Builders

    # Operation Builder for CompareFaces
    class CompareFaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.CompareFaces'
        data = {}
        data['SourceImage'] = Builders::Image.build(input[:source_image]) unless input[:source_image].nil?
        data['TargetImage'] = Builders::Image.build(input[:target_image]) unless input[:target_image].nil?
        data['SimilarityThreshold'] = Hearth::NumberHelper.serialize(input[:similarity_threshold]) unless input[:similarity_threshold].nil?
        data['QualityFilter'] = input[:quality_filter] unless input[:quality_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Image
    class Image
      def self.build(input)
        data = {}
        data['Bytes'] = Base64::encode64(input[:bytes]).strip unless input[:bytes].nil?
        data['S3Object'] = Builders::S3Object.build(input[:s3_object]) unless input[:s3_object].nil?
        data
      end
    end

    # Structure Builder for S3Object
    class S3Object
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for CreateCollection
    class CreateCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.CreateCollection'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.CreateDataset'
        data = {}
        data['DatasetSource'] = Builders::DatasetSource.build(input[:dataset_source]) unless input[:dataset_source].nil?
        data['DatasetType'] = input[:dataset_type] unless input[:dataset_type].nil?
        data['ProjectArn'] = input[:project_arn] unless input[:project_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatasetSource
    class DatasetSource
      def self.build(input)
        data = {}
        data['GroundTruthManifest'] = Builders::GroundTruthManifest.build(input[:ground_truth_manifest]) unless input[:ground_truth_manifest].nil?
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data
      end
    end

    # Structure Builder for GroundTruthManifest
    class GroundTruthManifest
      def self.build(input)
        data = {}
        data['S3Object'] = Builders::S3Object.build(input[:s3_object]) unless input[:s3_object].nil?
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.CreateProject'
        data = {}
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateProjectVersion
    class CreateProjectVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.CreateProjectVersion'
        data = {}
        data['ProjectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['OutputConfig'] = Builders::OutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['TrainingData'] = Builders::TrainingData.build(input[:training_data]) unless input[:training_data].nil?
        data['TestingData'] = Builders::TestingData.build(input[:testing_data]) unless input[:testing_data].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TestingData
    class TestingData
      def self.build(input)
        data = {}
        data['Assets'] = Builders::Assets.build(input[:assets]) unless input[:assets].nil?
        data['AutoCreate'] = input[:auto_create] unless input[:auto_create].nil?
        data
      end
    end

    # List Builder for Assets
    class Assets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Asset.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Asset
    class Asset
      def self.build(input)
        data = {}
        data['GroundTruthManifest'] = Builders::GroundTruthManifest.build(input[:ground_truth_manifest]) unless input[:ground_truth_manifest].nil?
        data
      end
    end

    # Structure Builder for TrainingData
    class TrainingData
      def self.build(input)
        data = {}
        data['Assets'] = Builders::Assets.build(input[:assets]) unless input[:assets].nil?
        data
      end
    end

    # Structure Builder for OutputConfig
    class OutputConfig
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data
      end
    end

    # Operation Builder for CreateStreamProcessor
    class CreateStreamProcessor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.CreateStreamProcessor'
        data = {}
        data['Input'] = Builders::StreamProcessorInput.build(input[:input]) unless input[:input].nil?
        data['Output'] = Builders::StreamProcessorOutput.build(input[:output]) unless input[:output].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Settings'] = Builders::StreamProcessorSettings.build(input[:settings]) unless input[:settings].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['NotificationChannel'] = Builders::StreamProcessorNotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['RegionsOfInterest'] = Builders::RegionsOfInterest.build(input[:regions_of_interest]) unless input[:regions_of_interest].nil?
        data['DataSharingPreference'] = Builders::StreamProcessorDataSharingPreference.build(input[:data_sharing_preference]) unless input[:data_sharing_preference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StreamProcessorDataSharingPreference
    class StreamProcessorDataSharingPreference
      def self.build(input)
        data = {}
        data['OptIn'] = input[:opt_in] unless input[:opt_in].nil?
        data
      end
    end

    # List Builder for RegionsOfInterest
    class RegionsOfInterest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RegionOfInterest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RegionOfInterest
    class RegionOfInterest
      def self.build(input)
        data = {}
        data['BoundingBox'] = Builders::BoundingBox.build(input[:bounding_box]) unless input[:bounding_box].nil?
        data['Polygon'] = Builders::Polygon.build(input[:polygon]) unless input[:polygon].nil?
        data
      end
    end

    # List Builder for Polygon
    class Polygon
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Point.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Point
    class Point
      def self.build(input)
        data = {}
        data['X'] = Hearth::NumberHelper.serialize(input[:x]) unless input[:x].nil?
        data['Y'] = Hearth::NumberHelper.serialize(input[:y]) unless input[:y].nil?
        data
      end
    end

    # Structure Builder for BoundingBox
    class BoundingBox
      def self.build(input)
        data = {}
        data['Width'] = Hearth::NumberHelper.serialize(input[:width]) unless input[:width].nil?
        data['Height'] = Hearth::NumberHelper.serialize(input[:height]) unless input[:height].nil?
        data['Left'] = Hearth::NumberHelper.serialize(input[:left]) unless input[:left].nil?
        data['Top'] = Hearth::NumberHelper.serialize(input[:top]) unless input[:top].nil?
        data
      end
    end

    # Structure Builder for StreamProcessorNotificationChannel
    class StreamProcessorNotificationChannel
      def self.build(input)
        data = {}
        data['SNSTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data
      end
    end

    # Structure Builder for StreamProcessorSettings
    class StreamProcessorSettings
      def self.build(input)
        data = {}
        data['FaceSearch'] = Builders::FaceSearchSettings.build(input[:face_search]) unless input[:face_search].nil?
        data['ConnectedHome'] = Builders::ConnectedHomeSettings.build(input[:connected_home]) unless input[:connected_home].nil?
        data
      end
    end

    # Structure Builder for ConnectedHomeSettings
    class ConnectedHomeSettings
      def self.build(input)
        data = {}
        data['Labels'] = Builders::ConnectedHomeLabels.build(input[:labels]) unless input[:labels].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data
      end
    end

    # List Builder for ConnectedHomeLabels
    class ConnectedHomeLabels
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FaceSearchSettings
    class FaceSearchSettings
      def self.build(input)
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['FaceMatchThreshold'] = Hearth::NumberHelper.serialize(input[:face_match_threshold]) unless input[:face_match_threshold].nil?
        data
      end
    end

    # Structure Builder for StreamProcessorOutput
    class StreamProcessorOutput
      def self.build(input)
        data = {}
        data['KinesisDataStream'] = Builders::KinesisDataStream.build(input[:kinesis_data_stream]) unless input[:kinesis_data_stream].nil?
        data['S3Destination'] = Builders::S3Destination.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data
      end
    end

    # Structure Builder for S3Destination
    class S3Destination
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['KeyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data
      end
    end

    # Structure Builder for KinesisDataStream
    class KinesisDataStream
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Structure Builder for StreamProcessorInput
    class StreamProcessorInput
      def self.build(input)
        data = {}
        data['KinesisVideoStream'] = Builders::KinesisVideoStream.build(input[:kinesis_video_stream]) unless input[:kinesis_video_stream].nil?
        data
      end
    end

    # Structure Builder for KinesisVideoStream
    class KinesisVideoStream
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Operation Builder for DeleteCollection
    class DeleteCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DeleteCollection'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DeleteDataset'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFaces
    class DeleteFaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DeleteFaces'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['FaceIds'] = Builders::FaceIdList.build(input[:face_ids]) unless input[:face_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FaceIdList
    class FaceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DeleteProject'
        data = {}
        data['ProjectArn'] = input[:project_arn] unless input[:project_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProjectVersion
    class DeleteProjectVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DeleteProjectVersion'
        data = {}
        data['ProjectVersionArn'] = input[:project_version_arn] unless input[:project_version_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStreamProcessor
    class DeleteStreamProcessor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DeleteStreamProcessor'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCollection
    class DescribeCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DescribeCollection'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DescribeDataset'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProjectVersions
    class DescribeProjectVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DescribeProjectVersions'
        data = {}
        data['ProjectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['VersionNames'] = Builders::VersionNames.build(input[:version_names]) unless input[:version_names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VersionNames
    class VersionNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeProjects
    class DescribeProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DescribeProjects'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ProjectNames'] = Builders::ProjectNames.build(input[:project_names]) unless input[:project_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ProjectNames
    class ProjectNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeStreamProcessor
    class DescribeStreamProcessor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DescribeStreamProcessor'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectCustomLabels
    class DetectCustomLabels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DetectCustomLabels'
        data = {}
        data['ProjectVersionArn'] = input[:project_version_arn] unless input[:project_version_arn].nil?
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectFaces
    class DetectFaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DetectFaces'
        data = {}
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Attributes
    class Attributes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DetectLabels
    class DetectLabels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DetectLabels'
        data = {}
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['MaxLabels'] = input[:max_labels] unless input[:max_labels].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectModerationLabels
    class DetectModerationLabels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DetectModerationLabels'
        data = {}
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data['HumanLoopConfig'] = Builders::HumanLoopConfig.build(input[:human_loop_config]) unless input[:human_loop_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HumanLoopConfig
    class HumanLoopConfig
      def self.build(input)
        data = {}
        data['HumanLoopName'] = input[:human_loop_name] unless input[:human_loop_name].nil?
        data['FlowDefinitionArn'] = input[:flow_definition_arn] unless input[:flow_definition_arn].nil?
        data['DataAttributes'] = Builders::HumanLoopDataAttributes.build(input[:data_attributes]) unless input[:data_attributes].nil?
        data
      end
    end

    # Structure Builder for HumanLoopDataAttributes
    class HumanLoopDataAttributes
      def self.build(input)
        data = {}
        data['ContentClassifiers'] = Builders::ContentClassifiers.build(input[:content_classifiers]) unless input[:content_classifiers].nil?
        data
      end
    end

    # List Builder for ContentClassifiers
    class ContentClassifiers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DetectProtectiveEquipment
    class DetectProtectiveEquipment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DetectProtectiveEquipment'
        data = {}
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['SummarizationAttributes'] = Builders::ProtectiveEquipmentSummarizationAttributes.build(input[:summarization_attributes]) unless input[:summarization_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProtectiveEquipmentSummarizationAttributes
    class ProtectiveEquipmentSummarizationAttributes
      def self.build(input)
        data = {}
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data['RequiredEquipmentTypes'] = Builders::ProtectiveEquipmentTypes.build(input[:required_equipment_types]) unless input[:required_equipment_types].nil?
        data
      end
    end

    # List Builder for ProtectiveEquipmentTypes
    class ProtectiveEquipmentTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DetectText
    class DetectText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DetectText'
        data = {}
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['Filters'] = Builders::DetectTextFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DetectTextFilters
    class DetectTextFilters
      def self.build(input)
        data = {}
        data['WordFilter'] = Builders::DetectionFilter.build(input[:word_filter]) unless input[:word_filter].nil?
        data['RegionsOfInterest'] = Builders::RegionsOfInterest.build(input[:regions_of_interest]) unless input[:regions_of_interest].nil?
        data
      end
    end

    # Structure Builder for DetectionFilter
    class DetectionFilter
      def self.build(input)
        data = {}
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data['MinBoundingBoxHeight'] = Hearth::NumberHelper.serialize(input[:min_bounding_box_height]) unless input[:min_bounding_box_height].nil?
        data['MinBoundingBoxWidth'] = Hearth::NumberHelper.serialize(input[:min_bounding_box_width]) unless input[:min_bounding_box_width].nil?
        data
      end
    end

    # Operation Builder for DistributeDatasetEntries
    class DistributeDatasetEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.DistributeDatasetEntries'
        data = {}
        data['Datasets'] = Builders::DistributeDatasetMetadataList.build(input[:datasets]) unless input[:datasets].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DistributeDatasetMetadataList
    class DistributeDatasetMetadataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DistributeDataset.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DistributeDataset
    class DistributeDataset
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Operation Builder for GetCelebrityInfo
    class GetCelebrityInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetCelebrityInfo'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCelebrityRecognition
    class GetCelebrityRecognition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetCelebrityRecognition'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContentModeration
    class GetContentModeration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetContentModeration'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFaceDetection
    class GetFaceDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetFaceDetection'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFaceSearch
    class GetFaceSearch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetFaceSearch'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLabelDetection
    class GetLabelDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetLabelDetection'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPersonTracking
    class GetPersonTracking
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetPersonTracking'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSegmentDetection
    class GetSegmentDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetSegmentDetection'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTextDetection
    class GetTextDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.GetTextDetection'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for IndexFaces
    class IndexFaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.IndexFaces'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['ExternalImageId'] = input[:external_image_id] unless input[:external_image_id].nil?
        data['DetectionAttributes'] = Builders::Attributes.build(input[:detection_attributes]) unless input[:detection_attributes].nil?
        data['MaxFaces'] = input[:max_faces] unless input[:max_faces].nil?
        data['QualityFilter'] = input[:quality_filter] unless input[:quality_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCollections
    class ListCollections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.ListCollections'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasetEntries
    class ListDatasetEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.ListDatasetEntries'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['ContainsLabels'] = Builders::DatasetLabels.build(input[:contains_labels]) unless input[:contains_labels].nil?
        data['Labeled'] = input[:labeled] unless input[:labeled].nil?
        data['SourceRefContains'] = input[:source_ref_contains] unless input[:source_ref_contains].nil?
        data['HasErrors'] = input[:has_errors] unless input[:has_errors].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DatasetLabels
    class DatasetLabels
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDatasetLabels
    class ListDatasetLabels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.ListDatasetLabels'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFaces
    class ListFaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.ListFaces'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStreamProcessors
    class ListStreamProcessors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.ListStreamProcessors'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RecognizeCelebrities
    class RecognizeCelebrities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.RecognizeCelebrities'
        data = {}
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchFaces
    class SearchFaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.SearchFaces'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['FaceId'] = input[:face_id] unless input[:face_id].nil?
        data['MaxFaces'] = input[:max_faces] unless input[:max_faces].nil?
        data['FaceMatchThreshold'] = Hearth::NumberHelper.serialize(input[:face_match_threshold]) unless input[:face_match_threshold].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchFacesByImage
    class SearchFacesByImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.SearchFacesByImage'
        data = {}
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['Image'] = Builders::Image.build(input[:image]) unless input[:image].nil?
        data['MaxFaces'] = input[:max_faces] unless input[:max_faces].nil?
        data['FaceMatchThreshold'] = Hearth::NumberHelper.serialize(input[:face_match_threshold]) unless input[:face_match_threshold].nil?
        data['QualityFilter'] = input[:quality_filter] unless input[:quality_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartCelebrityRecognition
    class StartCelebrityRecognition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartCelebrityRecognition'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NotificationChannel
    class NotificationChannel
      def self.build(input)
        data = {}
        data['SNSTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for Video
    class Video
      def self.build(input)
        data = {}
        data['S3Object'] = Builders::S3Object.build(input[:s3_object]) unless input[:s3_object].nil?
        data
      end
    end

    # Operation Builder for StartContentModeration
    class StartContentModeration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartContentModeration'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFaceDetection
    class StartFaceDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartFaceDetection'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['FaceAttributes'] = input[:face_attributes] unless input[:face_attributes].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFaceSearch
    class StartFaceSearch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartFaceSearch'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['FaceMatchThreshold'] = Hearth::NumberHelper.serialize(input[:face_match_threshold]) unless input[:face_match_threshold].nil?
        data['CollectionId'] = input[:collection_id] unless input[:collection_id].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartLabelDetection
    class StartLabelDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartLabelDetection'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartPersonTracking
    class StartPersonTracking
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartPersonTracking'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartProjectVersion
    class StartProjectVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartProjectVersion'
        data = {}
        data['ProjectVersionArn'] = input[:project_version_arn] unless input[:project_version_arn].nil?
        data['MinInferenceUnits'] = input[:min_inference_units] unless input[:min_inference_units].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartSegmentDetection
    class StartSegmentDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartSegmentDetection'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        data['Filters'] = Builders::StartSegmentDetectionFilters.build(input[:filters]) unless input[:filters].nil?
        data['SegmentTypes'] = Builders::SegmentTypes.build(input[:segment_types]) unless input[:segment_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SegmentTypes
    class SegmentTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StartSegmentDetectionFilters
    class StartSegmentDetectionFilters
      def self.build(input)
        data = {}
        data['TechnicalCueFilter'] = Builders::StartTechnicalCueDetectionFilter.build(input[:technical_cue_filter]) unless input[:technical_cue_filter].nil?
        data['ShotFilter'] = Builders::StartShotDetectionFilter.build(input[:shot_filter]) unless input[:shot_filter].nil?
        data
      end
    end

    # Structure Builder for StartShotDetectionFilter
    class StartShotDetectionFilter
      def self.build(input)
        data = {}
        data['MinSegmentConfidence'] = Hearth::NumberHelper.serialize(input[:min_segment_confidence]) unless input[:min_segment_confidence].nil?
        data
      end
    end

    # Structure Builder for StartTechnicalCueDetectionFilter
    class StartTechnicalCueDetectionFilter
      def self.build(input)
        data = {}
        data['MinSegmentConfidence'] = Hearth::NumberHelper.serialize(input[:min_segment_confidence]) unless input[:min_segment_confidence].nil?
        data['BlackFrame'] = Builders::BlackFrame.build(input[:black_frame]) unless input[:black_frame].nil?
        data
      end
    end

    # Structure Builder for BlackFrame
    class BlackFrame
      def self.build(input)
        data = {}
        data['MaxPixelThreshold'] = Hearth::NumberHelper.serialize(input[:max_pixel_threshold]) unless input[:max_pixel_threshold].nil?
        data['MinCoveragePercentage'] = Hearth::NumberHelper.serialize(input[:min_coverage_percentage]) unless input[:min_coverage_percentage].nil?
        data
      end
    end

    # Operation Builder for StartStreamProcessor
    class StartStreamProcessor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartStreamProcessor'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['StartSelector'] = Builders::StreamProcessingStartSelector.build(input[:start_selector]) unless input[:start_selector].nil?
        data['StopSelector'] = Builders::StreamProcessingStopSelector.build(input[:stop_selector]) unless input[:stop_selector].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StreamProcessingStopSelector
    class StreamProcessingStopSelector
      def self.build(input)
        data = {}
        data['MaxDurationInSeconds'] = input[:max_duration_in_seconds] unless input[:max_duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for StreamProcessingStartSelector
    class StreamProcessingStartSelector
      def self.build(input)
        data = {}
        data['KVSStreamStartSelector'] = Builders::KinesisVideoStreamStartSelector.build(input[:kvs_stream_start_selector]) unless input[:kvs_stream_start_selector].nil?
        data
      end
    end

    # Structure Builder for KinesisVideoStreamStartSelector
    class KinesisVideoStreamStartSelector
      def self.build(input)
        data = {}
        data['ProducerTimestamp'] = input[:producer_timestamp] unless input[:producer_timestamp].nil?
        data['FragmentNumber'] = input[:fragment_number] unless input[:fragment_number].nil?
        data
      end
    end

    # Operation Builder for StartTextDetection
    class StartTextDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StartTextDetection'
        data = {}
        data['Video'] = Builders::Video.build(input[:video]) unless input[:video].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['NotificationChannel'] = Builders::NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        data['Filters'] = Builders::StartTextDetectionFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StartTextDetectionFilters
    class StartTextDetectionFilters
      def self.build(input)
        data = {}
        data['WordFilter'] = Builders::DetectionFilter.build(input[:word_filter]) unless input[:word_filter].nil?
        data['RegionsOfInterest'] = Builders::RegionsOfInterest.build(input[:regions_of_interest]) unless input[:regions_of_interest].nil?
        data
      end
    end

    # Operation Builder for StopProjectVersion
    class StopProjectVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StopProjectVersion'
        data = {}
        data['ProjectVersionArn'] = input[:project_version_arn] unless input[:project_version_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopStreamProcessor
    class StopStreamProcessor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.StopStreamProcessor'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.UntagResource'
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

    # Operation Builder for UpdateDatasetEntries
    class UpdateDatasetEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.UpdateDatasetEntries'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['Changes'] = Builders::DatasetChanges.build(input[:changes]) unless input[:changes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatasetChanges
    class DatasetChanges
      def self.build(input)
        data = {}
        data['GroundTruth'] = Base64::encode64(input[:ground_truth]).strip unless input[:ground_truth].nil?
        data
      end
    end

    # Operation Builder for UpdateStreamProcessor
    class UpdateStreamProcessor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RekognitionService.UpdateStreamProcessor'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SettingsForUpdate'] = Builders::StreamProcessorSettingsForUpdate.build(input[:settings_for_update]) unless input[:settings_for_update].nil?
        data['RegionsOfInterestForUpdate'] = Builders::RegionsOfInterest.build(input[:regions_of_interest_for_update]) unless input[:regions_of_interest_for_update].nil?
        data['DataSharingPreferenceForUpdate'] = Builders::StreamProcessorDataSharingPreference.build(input[:data_sharing_preference_for_update]) unless input[:data_sharing_preference_for_update].nil?
        data['ParametersToDelete'] = Builders::StreamProcessorParametersToDelete.build(input[:parameters_to_delete]) unless input[:parameters_to_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StreamProcessorParametersToDelete
    class StreamProcessorParametersToDelete
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StreamProcessorSettingsForUpdate
    class StreamProcessorSettingsForUpdate
      def self.build(input)
        data = {}
        data['ConnectedHomeForUpdate'] = Builders::ConnectedHomeSettingsForUpdate.build(input[:connected_home_for_update]) unless input[:connected_home_for_update].nil?
        data
      end
    end

    # Structure Builder for ConnectedHomeSettingsForUpdate
    class ConnectedHomeSettingsForUpdate
      def self.build(input)
        data = {}
        data['Labels'] = Builders::ConnectedHomeLabels.build(input[:labels]) unless input[:labels].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(input[:min_confidence]) unless input[:min_confidence].nil?
        data
      end
    end
  end
end
