# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rekognition
  module Parsers

    # Operation Parser for CompareFaces
    class CompareFaces
      def self.parse(http_resp)
        data = Types::CompareFacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.source_image_face = (ComparedSourceImageFace.parse(map['SourceImageFace']) unless map['SourceImageFace'].nil?)
        data.face_matches = (CompareFacesMatchList.parse(map['FaceMatches']) unless map['FaceMatches'].nil?)
        data.unmatched_faces = (CompareFacesUnmatchList.parse(map['UnmatchedFaces']) unless map['UnmatchedFaces'].nil?)
        data.source_image_orientation_correction = map['SourceImageOrientationCorrection']
        data.target_image_orientation_correction = map['TargetImageOrientationCorrection']
        data
      end
    end

    class CompareFacesUnmatchList
      def self.parse(list)
        list.map do |value|
          ComparedFace.parse(value) unless value.nil?
        end
      end
    end

    class ComparedFace
      def self.parse(map)
        data = Types::ComparedFace.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.landmarks = (Landmarks.parse(map['Landmarks']) unless map['Landmarks'].nil?)
        data.pose = (Pose.parse(map['Pose']) unless map['Pose'].nil?)
        data.quality = (ImageQuality.parse(map['Quality']) unless map['Quality'].nil?)
        data.emotions = (Emotions.parse(map['Emotions']) unless map['Emotions'].nil?)
        data.smile = (Smile.parse(map['Smile']) unless map['Smile'].nil?)
        return data
      end
    end

    class Smile
      def self.parse(map)
        data = Types::Smile.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class Emotions
      def self.parse(list)
        list.map do |value|
          Emotion.parse(value) unless value.nil?
        end
      end
    end

    class Emotion
      def self.parse(map)
        data = Types::Emotion.new
        data.type = map['Type']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class ImageQuality
      def self.parse(map)
        data = Types::ImageQuality.new
        data.brightness = Hearth::NumberHelper.deserialize(map['Brightness'])
        data.sharpness = Hearth::NumberHelper.deserialize(map['Sharpness'])
        return data
      end
    end

    class Pose
      def self.parse(map)
        data = Types::Pose.new
        data.roll = Hearth::NumberHelper.deserialize(map['Roll'])
        data.yaw = Hearth::NumberHelper.deserialize(map['Yaw'])
        data.pitch = Hearth::NumberHelper.deserialize(map['Pitch'])
        return data
      end
    end

    class Landmarks
      def self.parse(list)
        list.map do |value|
          Landmark.parse(value) unless value.nil?
        end
      end
    end

    class Landmark
      def self.parse(map)
        data = Types::Landmark.new
        data.type = map['Type']
        data.x = Hearth::NumberHelper.deserialize(map['X'])
        data.y = Hearth::NumberHelper.deserialize(map['Y'])
        return data
      end
    end

    class BoundingBox
      def self.parse(map)
        data = Types::BoundingBox.new
        data.width = Hearth::NumberHelper.deserialize(map['Width'])
        data.height = Hearth::NumberHelper.deserialize(map['Height'])
        data.left = Hearth::NumberHelper.deserialize(map['Left'])
        data.top = Hearth::NumberHelper.deserialize(map['Top'])
        return data
      end
    end

    class CompareFacesMatchList
      def self.parse(list)
        list.map do |value|
          CompareFacesMatch.parse(value) unless value.nil?
        end
      end
    end

    class CompareFacesMatch
      def self.parse(map)
        data = Types::CompareFacesMatch.new
        data.similarity = Hearth::NumberHelper.deserialize(map['Similarity'])
        data.face = (ComparedFace.parse(map['Face']) unless map['Face'].nil?)
        return data
      end
    end

    class ComparedSourceImageFace
      def self.parse(map)
        data = Types::ComparedSourceImageFace.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for InvalidS3ObjectException
    class InvalidS3ObjectException
      def self.parse(http_resp)
        data = Types::InvalidS3ObjectException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
      def self.parse(http_resp)
        data = Types::ProvisionedThroughputExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
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
        data.code = map['Code']
        data.logref = map['Logref']
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
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for ImageTooLargeException
    class ImageTooLargeException
      def self.parse(http_resp)
        data = Types::ImageTooLargeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for InvalidImageFormatException
    class InvalidImageFormatException
      def self.parse(http_resp)
        data = Types::InvalidImageFormatException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for CreateCollection
    class CreateCollection
      def self.parse(http_resp)
        data = Types::CreateCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status_code = map['StatusCode']
        data.collection_arn = map['CollectionArn']
        data.face_model_version = map['FaceModelVersion']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
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
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_arn = map['DatasetArn']
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
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_arn = map['ProjectArn']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for CreateProjectVersion
    class CreateProjectVersion
      def self.parse(http_resp)
        data = Types::CreateProjectVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_version_arn = map['ProjectVersionArn']
        data
      end
    end

    # Operation Parser for CreateStreamProcessor
    class CreateStreamProcessor
      def self.parse(http_resp)
        data = Types::CreateStreamProcessorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_processor_arn = map['StreamProcessorArn']
        data
      end
    end

    # Operation Parser for DeleteCollection
    class DeleteCollection
      def self.parse(http_resp)
        data = Types::DeleteCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status_code = map['StatusCode']
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

    # Operation Parser for DeleteFaces
    class DeleteFaces
      def self.parse(http_resp)
        data = Types::DeleteFacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deleted_faces = (FaceIdList.parse(map['DeletedFaces']) unless map['DeletedFaces'].nil?)
        data
      end
    end

    class FaceIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteProjectVersion
    class DeleteProjectVersion
      def self.parse(http_resp)
        data = Types::DeleteProjectVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteStreamProcessor
    class DeleteStreamProcessor
      def self.parse(http_resp)
        data = Types::DeleteStreamProcessorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeCollection
    class DescribeCollection
      def self.parse(http_resp)
        data = Types::DescribeCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.face_count = map['FaceCount']
        data.face_model_version = map['FaceModelVersion']
        data.collection_arn = map['CollectionARN']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_description = (DatasetDescription.parse(map['DatasetDescription']) unless map['DatasetDescription'].nil?)
        data
      end
    end

    class DatasetDescription
      def self.parse(map)
        data = Types::DatasetDescription.new
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.status_message_code = map['StatusMessageCode']
        data.dataset_stats = (DatasetStats.parse(map['DatasetStats']) unless map['DatasetStats'].nil?)
        return data
      end
    end

    class DatasetStats
      def self.parse(map)
        data = Types::DatasetStats.new
        data.labeled_entries = map['LabeledEntries']
        data.total_entries = map['TotalEntries']
        data.total_labels = map['TotalLabels']
        data.error_entries = map['ErrorEntries']
        return data
      end
    end

    # Operation Parser for DescribeProjectVersions
    class DescribeProjectVersions
      def self.parse(http_resp)
        data = Types::DescribeProjectVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_version_descriptions = (ProjectVersionDescriptions.parse(map['ProjectVersionDescriptions']) unless map['ProjectVersionDescriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProjectVersionDescriptions
      def self.parse(list)
        list.map do |value|
          ProjectVersionDescription.parse(value) unless value.nil?
        end
      end
    end

    class ProjectVersionDescription
      def self.parse(map)
        data = Types::ProjectVersionDescription.new
        data.project_version_arn = map['ProjectVersionArn']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.min_inference_units = map['MinInferenceUnits']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.billable_training_time_in_seconds = map['BillableTrainingTimeInSeconds']
        data.training_end_timestamp = Time.at(map['TrainingEndTimestamp'].to_i) if map['TrainingEndTimestamp']
        data.output_config = (OutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.training_data_result = (TrainingDataResult.parse(map['TrainingDataResult']) unless map['TrainingDataResult'].nil?)
        data.testing_data_result = (TestingDataResult.parse(map['TestingDataResult']) unless map['TestingDataResult'].nil?)
        data.evaluation_result = (EvaluationResult.parse(map['EvaluationResult']) unless map['EvaluationResult'].nil?)
        data.manifest_summary = (GroundTruthManifest.parse(map['ManifestSummary']) unless map['ManifestSummary'].nil?)
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class GroundTruthManifest
      def self.parse(map)
        data = Types::GroundTruthManifest.new
        data.s3_object = (S3Object.parse(map['S3Object']) unless map['S3Object'].nil?)
        return data
      end
    end

    class S3Object
      def self.parse(map)
        data = Types::S3Object.new
        data.bucket = map['Bucket']
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    class EvaluationResult
      def self.parse(map)
        data = Types::EvaluationResult.new
        data.f1_score = Hearth::NumberHelper.deserialize(map['F1Score'])
        data.summary = (Summary.parse(map['Summary']) unless map['Summary'].nil?)
        return data
      end
    end

    class Summary
      def self.parse(map)
        data = Types::Summary.new
        data.s3_object = (S3Object.parse(map['S3Object']) unless map['S3Object'].nil?)
        return data
      end
    end

    class TestingDataResult
      def self.parse(map)
        data = Types::TestingDataResult.new
        data.input = (TestingData.parse(map['Input']) unless map['Input'].nil?)
        data.output = (TestingData.parse(map['Output']) unless map['Output'].nil?)
        data.validation = (ValidationData.parse(map['Validation']) unless map['Validation'].nil?)
        return data
      end
    end

    class ValidationData
      def self.parse(map)
        data = Types::ValidationData.new
        data.assets = (Assets.parse(map['Assets']) unless map['Assets'].nil?)
        return data
      end
    end

    class Assets
      def self.parse(list)
        list.map do |value|
          Asset.parse(value) unless value.nil?
        end
      end
    end

    class Asset
      def self.parse(map)
        data = Types::Asset.new
        data.ground_truth_manifest = (GroundTruthManifest.parse(map['GroundTruthManifest']) unless map['GroundTruthManifest'].nil?)
        return data
      end
    end

    class TestingData
      def self.parse(map)
        data = Types::TestingData.new
        data.assets = (Assets.parse(map['Assets']) unless map['Assets'].nil?)
        data.auto_create = map['AutoCreate']
        return data
      end
    end

    class TrainingDataResult
      def self.parse(map)
        data = Types::TrainingDataResult.new
        data.input = (TrainingData.parse(map['Input']) unless map['Input'].nil?)
        data.output = (TrainingData.parse(map['Output']) unless map['Output'].nil?)
        data.validation = (ValidationData.parse(map['Validation']) unless map['Validation'].nil?)
        return data
      end
    end

    class TrainingData
      def self.parse(map)
        data = Types::TrainingData.new
        data.assets = (Assets.parse(map['Assets']) unless map['Assets'].nil?)
        return data
      end
    end

    class OutputConfig
      def self.parse(map)
        data = Types::OutputConfig.new
        data.s3_bucket = map['S3Bucket']
        data.s3_key_prefix = map['S3KeyPrefix']
        return data
      end
    end

    # Error Parser for InvalidPaginationTokenException
    class InvalidPaginationTokenException
      def self.parse(http_resp)
        data = Types::InvalidPaginationTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for DescribeProjects
    class DescribeProjects
      def self.parse(http_resp)
        data = Types::DescribeProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_descriptions = (ProjectDescriptions.parse(map['ProjectDescriptions']) unless map['ProjectDescriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProjectDescriptions
      def self.parse(list)
        list.map do |value|
          ProjectDescription.parse(value) unless value.nil?
        end
      end
    end

    class ProjectDescription
      def self.parse(map)
        data = Types::ProjectDescription.new
        data.project_arn = map['ProjectArn']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.status = map['Status']
        data.datasets = (DatasetMetadataList.parse(map['Datasets']) unless map['Datasets'].nil?)
        return data
      end
    end

    class DatasetMetadataList
      def self.parse(list)
        list.map do |value|
          DatasetMetadata.parse(value) unless value.nil?
        end
      end
    end

    class DatasetMetadata
      def self.parse(map)
        data = Types::DatasetMetadata.new
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.dataset_type = map['DatasetType']
        data.dataset_arn = map['DatasetArn']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.status_message_code = map['StatusMessageCode']
        return data
      end
    end

    # Operation Parser for DescribeStreamProcessor
    class DescribeStreamProcessor
      def self.parse(http_resp)
        data = Types::DescribeStreamProcessorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.stream_processor_arn = map['StreamProcessorArn']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.creation_timestamp = Time.at(map['CreationTimestamp'].to_i) if map['CreationTimestamp']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        data.input = (StreamProcessorInput.parse(map['Input']) unless map['Input'].nil?)
        data.output = (StreamProcessorOutput.parse(map['Output']) unless map['Output'].nil?)
        data.role_arn = map['RoleArn']
        data.settings = (StreamProcessorSettings.parse(map['Settings']) unless map['Settings'].nil?)
        data.notification_channel = (StreamProcessorNotificationChannel.parse(map['NotificationChannel']) unless map['NotificationChannel'].nil?)
        data.kms_key_id = map['KmsKeyId']
        data.regions_of_interest = (RegionsOfInterest.parse(map['RegionsOfInterest']) unless map['RegionsOfInterest'].nil?)
        data.data_sharing_preference = (StreamProcessorDataSharingPreference.parse(map['DataSharingPreference']) unless map['DataSharingPreference'].nil?)
        data
      end
    end

    class StreamProcessorDataSharingPreference
      def self.parse(map)
        data = Types::StreamProcessorDataSharingPreference.new
        data.opt_in = map['OptIn']
        return data
      end
    end

    class RegionsOfInterest
      def self.parse(list)
        list.map do |value|
          RegionOfInterest.parse(value) unless value.nil?
        end
      end
    end

    class RegionOfInterest
      def self.parse(map)
        data = Types::RegionOfInterest.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.polygon = (Polygon.parse(map['Polygon']) unless map['Polygon'].nil?)
        return data
      end
    end

    class Polygon
      def self.parse(list)
        list.map do |value|
          Point.parse(value) unless value.nil?
        end
      end
    end

    class Point
      def self.parse(map)
        data = Types::Point.new
        data.x = Hearth::NumberHelper.deserialize(map['X'])
        data.y = Hearth::NumberHelper.deserialize(map['Y'])
        return data
      end
    end

    class StreamProcessorNotificationChannel
      def self.parse(map)
        data = Types::StreamProcessorNotificationChannel.new
        data.sns_topic_arn = map['SNSTopicArn']
        return data
      end
    end

    class StreamProcessorSettings
      def self.parse(map)
        data = Types::StreamProcessorSettings.new
        data.face_search = (FaceSearchSettings.parse(map['FaceSearch']) unless map['FaceSearch'].nil?)
        data.connected_home = (ConnectedHomeSettings.parse(map['ConnectedHome']) unless map['ConnectedHome'].nil?)
        return data
      end
    end

    class ConnectedHomeSettings
      def self.parse(map)
        data = Types::ConnectedHomeSettings.new
        data.labels = (ConnectedHomeLabels.parse(map['Labels']) unless map['Labels'].nil?)
        data.min_confidence = Hearth::NumberHelper.deserialize(map['MinConfidence'])
        return data
      end
    end

    class ConnectedHomeLabels
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FaceSearchSettings
      def self.parse(map)
        data = Types::FaceSearchSettings.new
        data.collection_id = map['CollectionId']
        data.face_match_threshold = Hearth::NumberHelper.deserialize(map['FaceMatchThreshold'])
        return data
      end
    end

    class StreamProcessorOutput
      def self.parse(map)
        data = Types::StreamProcessorOutput.new
        data.kinesis_data_stream = (KinesisDataStream.parse(map['KinesisDataStream']) unless map['KinesisDataStream'].nil?)
        data.s3_destination = (S3Destination.parse(map['S3Destination']) unless map['S3Destination'].nil?)
        return data
      end
    end

    class S3Destination
      def self.parse(map)
        data = Types::S3Destination.new
        data.bucket = map['Bucket']
        data.key_prefix = map['KeyPrefix']
        return data
      end
    end

    class KinesisDataStream
      def self.parse(map)
        data = Types::KinesisDataStream.new
        data.arn = map['Arn']
        return data
      end
    end

    class StreamProcessorInput
      def self.parse(map)
        data = Types::StreamProcessorInput.new
        data.kinesis_video_stream = (KinesisVideoStream.parse(map['KinesisVideoStream']) unless map['KinesisVideoStream'].nil?)
        return data
      end
    end

    class KinesisVideoStream
      def self.parse(map)
        data = Types::KinesisVideoStream.new
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for DetectCustomLabels
    class DetectCustomLabels
      def self.parse(http_resp)
        data = Types::DetectCustomLabelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.custom_labels = (CustomLabels.parse(map['CustomLabels']) unless map['CustomLabels'].nil?)
        data
      end
    end

    class CustomLabels
      def self.parse(list)
        list.map do |value|
          CustomLabel.parse(value) unless value.nil?
        end
      end
    end

    class CustomLabel
      def self.parse(map)
        data = Types::CustomLabel.new
        data.name = map['Name']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.geometry = (Geometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        return data
      end
    end

    class Geometry
      def self.parse(map)
        data = Types::Geometry.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.polygon = (Polygon.parse(map['Polygon']) unless map['Polygon'].nil?)
        return data
      end
    end

    # Error Parser for ResourceNotReadyException
    class ResourceNotReadyException
      def self.parse(http_resp)
        data = Types::ResourceNotReadyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for DetectFaces
    class DetectFaces
      def self.parse(http_resp)
        data = Types::DetectFacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.face_details = (FaceDetailList.parse(map['FaceDetails']) unless map['FaceDetails'].nil?)
        data.orientation_correction = map['OrientationCorrection']
        data
      end
    end

    class FaceDetailList
      def self.parse(list)
        list.map do |value|
          FaceDetail.parse(value) unless value.nil?
        end
      end
    end

    class FaceDetail
      def self.parse(map)
        data = Types::FaceDetail.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.age_range = (AgeRange.parse(map['AgeRange']) unless map['AgeRange'].nil?)
        data.smile = (Smile.parse(map['Smile']) unless map['Smile'].nil?)
        data.eyeglasses = (Eyeglasses.parse(map['Eyeglasses']) unless map['Eyeglasses'].nil?)
        data.sunglasses = (Sunglasses.parse(map['Sunglasses']) unless map['Sunglasses'].nil?)
        data.gender = (Gender.parse(map['Gender']) unless map['Gender'].nil?)
        data.beard = (Beard.parse(map['Beard']) unless map['Beard'].nil?)
        data.mustache = (Mustache.parse(map['Mustache']) unless map['Mustache'].nil?)
        data.eyes_open = (EyeOpen.parse(map['EyesOpen']) unless map['EyesOpen'].nil?)
        data.mouth_open = (MouthOpen.parse(map['MouthOpen']) unless map['MouthOpen'].nil?)
        data.emotions = (Emotions.parse(map['Emotions']) unless map['Emotions'].nil?)
        data.landmarks = (Landmarks.parse(map['Landmarks']) unless map['Landmarks'].nil?)
        data.pose = (Pose.parse(map['Pose']) unless map['Pose'].nil?)
        data.quality = (ImageQuality.parse(map['Quality']) unless map['Quality'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class MouthOpen
      def self.parse(map)
        data = Types::MouthOpen.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class EyeOpen
      def self.parse(map)
        data = Types::EyeOpen.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class Mustache
      def self.parse(map)
        data = Types::Mustache.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class Beard
      def self.parse(map)
        data = Types::Beard.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class Gender
      def self.parse(map)
        data = Types::Gender.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class Sunglasses
      def self.parse(map)
        data = Types::Sunglasses.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class Eyeglasses
      def self.parse(map)
        data = Types::Eyeglasses.new
        data.value = map['Value']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class AgeRange
      def self.parse(map)
        data = Types::AgeRange.new
        data.low = map['Low']
        data.high = map['High']
        return data
      end
    end

    # Operation Parser for DetectLabels
    class DetectLabels
      def self.parse(http_resp)
        data = Types::DetectLabelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labels = (Labels.parse(map['Labels']) unless map['Labels'].nil?)
        data.orientation_correction = map['OrientationCorrection']
        data.label_model_version = map['LabelModelVersion']
        data
      end
    end

    class Labels
      def self.parse(list)
        list.map do |value|
          Label.parse(value) unless value.nil?
        end
      end
    end

    class Label
      def self.parse(map)
        data = Types::Label.new
        data.name = map['Name']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.instances = (Instances.parse(map['Instances']) unless map['Instances'].nil?)
        data.parents = (Parents.parse(map['Parents']) unless map['Parents'].nil?)
        return data
      end
    end

    class Parents
      def self.parse(list)
        list.map do |value|
          Parent.parse(value) unless value.nil?
        end
      end
    end

    class Parent
      def self.parse(map)
        data = Types::Parent.new
        data.name = map['Name']
        return data
      end
    end

    class Instances
      def self.parse(list)
        list.map do |value|
          Instance.parse(value) unless value.nil?
        end
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    # Operation Parser for DetectModerationLabels
    class DetectModerationLabels
      def self.parse(http_resp)
        data = Types::DetectModerationLabelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.moderation_labels = (ModerationLabels.parse(map['ModerationLabels']) unless map['ModerationLabels'].nil?)
        data.moderation_model_version = map['ModerationModelVersion']
        data.human_loop_activation_output = (HumanLoopActivationOutput.parse(map['HumanLoopActivationOutput']) unless map['HumanLoopActivationOutput'].nil?)
        data
      end
    end

    class HumanLoopActivationOutput
      def self.parse(map)
        data = Types::HumanLoopActivationOutput.new
        data.human_loop_arn = map['HumanLoopArn']
        data.human_loop_activation_reasons = (HumanLoopActivationReasons.parse(map['HumanLoopActivationReasons']) unless map['HumanLoopActivationReasons'].nil?)
        data.human_loop_activation_conditions_evaluation_results = map['HumanLoopActivationConditionsEvaluationResults']
        return data
      end
    end

    class HumanLoopActivationReasons
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ModerationLabels
      def self.parse(list)
        list.map do |value|
          ModerationLabel.parse(value) unless value.nil?
        end
      end
    end

    class ModerationLabel
      def self.parse(map)
        data = Types::ModerationLabel.new
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.name = map['Name']
        data.parent_name = map['ParentName']
        return data
      end
    end

    # Error Parser for HumanLoopQuotaExceededException
    class HumanLoopQuotaExceededException
      def self.parse(http_resp)
        data = Types::HumanLoopQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for DetectProtectiveEquipment
    class DetectProtectiveEquipment
      def self.parse(http_resp)
        data = Types::DetectProtectiveEquipmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protective_equipment_model_version = map['ProtectiveEquipmentModelVersion']
        data.persons = (ProtectiveEquipmentPersons.parse(map['Persons']) unless map['Persons'].nil?)
        data.summary = (ProtectiveEquipmentSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class ProtectiveEquipmentSummary
      def self.parse(map)
        data = Types::ProtectiveEquipmentSummary.new
        data.persons_with_required_equipment = (ProtectiveEquipmentPersonIds.parse(map['PersonsWithRequiredEquipment']) unless map['PersonsWithRequiredEquipment'].nil?)
        data.persons_without_required_equipment = (ProtectiveEquipmentPersonIds.parse(map['PersonsWithoutRequiredEquipment']) unless map['PersonsWithoutRequiredEquipment'].nil?)
        data.persons_indeterminate = (ProtectiveEquipmentPersonIds.parse(map['PersonsIndeterminate']) unless map['PersonsIndeterminate'].nil?)
        return data
      end
    end

    class ProtectiveEquipmentPersonIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProtectiveEquipmentPersons
      def self.parse(list)
        list.map do |value|
          ProtectiveEquipmentPerson.parse(value) unless value.nil?
        end
      end
    end

    class ProtectiveEquipmentPerson
      def self.parse(map)
        data = Types::ProtectiveEquipmentPerson.new
        data.body_parts = (BodyParts.parse(map['BodyParts']) unless map['BodyParts'].nil?)
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.id = map['Id']
        return data
      end
    end

    class BodyParts
      def self.parse(list)
        list.map do |value|
          ProtectiveEquipmentBodyPart.parse(value) unless value.nil?
        end
      end
    end

    class ProtectiveEquipmentBodyPart
      def self.parse(map)
        data = Types::ProtectiveEquipmentBodyPart.new
        data.name = map['Name']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.equipment_detections = (EquipmentDetections.parse(map['EquipmentDetections']) unless map['EquipmentDetections'].nil?)
        return data
      end
    end

    class EquipmentDetections
      def self.parse(list)
        list.map do |value|
          EquipmentDetection.parse(value) unless value.nil?
        end
      end
    end

    class EquipmentDetection
      def self.parse(map)
        data = Types::EquipmentDetection.new
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.type = map['Type']
        data.covers_body_part = (CoversBodyPart.parse(map['CoversBodyPart']) unless map['CoversBodyPart'].nil?)
        return data
      end
    end

    class CoversBodyPart
      def self.parse(map)
        data = Types::CoversBodyPart.new
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DetectText
    class DetectText
      def self.parse(http_resp)
        data = Types::DetectTextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.text_detections = (TextDetectionList.parse(map['TextDetections']) unless map['TextDetections'].nil?)
        data.text_model_version = map['TextModelVersion']
        data
      end
    end

    class TextDetectionList
      def self.parse(list)
        list.map do |value|
          TextDetection.parse(value) unless value.nil?
        end
      end
    end

    class TextDetection
      def self.parse(map)
        data = Types::TextDetection.new
        data.detected_text = map['DetectedText']
        data.type = map['Type']
        data.id = map['Id']
        data.parent_id = map['ParentId']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.geometry = (Geometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        return data
      end
    end

    # Operation Parser for DistributeDatasetEntries
    class DistributeDatasetEntries
      def self.parse(http_resp)
        data = Types::DistributeDatasetEntriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetCelebrityInfo
    class GetCelebrityInfo
      def self.parse(http_resp)
        data = Types::GetCelebrityInfoOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.urls = (Urls.parse(map['Urls']) unless map['Urls'].nil?)
        data.name = map['Name']
        data.known_gender = (KnownGender.parse(map['KnownGender']) unless map['KnownGender'].nil?)
        data
      end
    end

    class KnownGender
      def self.parse(map)
        data = Types::KnownGender.new
        data.type = map['Type']
        return data
      end
    end

    class Urls
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetCelebrityRecognition
    class GetCelebrityRecognition
      def self.parse(http_resp)
        data = Types::GetCelebrityRecognitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.next_token = map['NextToken']
        data.celebrities = (CelebrityRecognitions.parse(map['Celebrities']) unless map['Celebrities'].nil?)
        data
      end
    end

    class CelebrityRecognitions
      def self.parse(list)
        list.map do |value|
          CelebrityRecognition.parse(value) unless value.nil?
        end
      end
    end

    class CelebrityRecognition
      def self.parse(map)
        data = Types::CelebrityRecognition.new
        data.timestamp = map['Timestamp']
        data.celebrity = (CelebrityDetail.parse(map['Celebrity']) unless map['Celebrity'].nil?)
        return data
      end
    end

    class CelebrityDetail
      def self.parse(map)
        data = Types::CelebrityDetail.new
        data.urls = (Urls.parse(map['Urls']) unless map['Urls'].nil?)
        data.name = map['Name']
        data.id = map['Id']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.face = (FaceDetail.parse(map['Face']) unless map['Face'].nil?)
        data.known_gender = (KnownGender.parse(map['KnownGender']) unless map['KnownGender'].nil?)
        return data
      end
    end

    class VideoMetadata
      def self.parse(map)
        data = Types::VideoMetadata.new
        data.codec = map['Codec']
        data.duration_millis = map['DurationMillis']
        data.format = map['Format']
        data.frame_rate = Hearth::NumberHelper.deserialize(map['FrameRate'])
        data.frame_height = map['FrameHeight']
        data.frame_width = map['FrameWidth']
        data.color_range = map['ColorRange']
        return data
      end
    end

    # Operation Parser for GetContentModeration
    class GetContentModeration
      def self.parse(http_resp)
        data = Types::GetContentModerationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.moderation_labels = (ContentModerationDetections.parse(map['ModerationLabels']) unless map['ModerationLabels'].nil?)
        data.next_token = map['NextToken']
        data.moderation_model_version = map['ModerationModelVersion']
        data
      end
    end

    class ContentModerationDetections
      def self.parse(list)
        list.map do |value|
          ContentModerationDetection.parse(value) unless value.nil?
        end
      end
    end

    class ContentModerationDetection
      def self.parse(map)
        data = Types::ContentModerationDetection.new
        data.timestamp = map['Timestamp']
        data.moderation_label = (ModerationLabel.parse(map['ModerationLabel']) unless map['ModerationLabel'].nil?)
        return data
      end
    end

    # Operation Parser for GetFaceDetection
    class GetFaceDetection
      def self.parse(http_resp)
        data = Types::GetFaceDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.next_token = map['NextToken']
        data.faces = (FaceDetections.parse(map['Faces']) unless map['Faces'].nil?)
        data
      end
    end

    class FaceDetections
      def self.parse(list)
        list.map do |value|
          FaceDetection.parse(value) unless value.nil?
        end
      end
    end

    class FaceDetection
      def self.parse(map)
        data = Types::FaceDetection.new
        data.timestamp = map['Timestamp']
        data.face = (FaceDetail.parse(map['Face']) unless map['Face'].nil?)
        return data
      end
    end

    # Operation Parser for GetFaceSearch
    class GetFaceSearch
      def self.parse(http_resp)
        data = Types::GetFaceSearchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.next_token = map['NextToken']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.persons = (PersonMatches.parse(map['Persons']) unless map['Persons'].nil?)
        data
      end
    end

    class PersonMatches
      def self.parse(list)
        list.map do |value|
          PersonMatch.parse(value) unless value.nil?
        end
      end
    end

    class PersonMatch
      def self.parse(map)
        data = Types::PersonMatch.new
        data.timestamp = map['Timestamp']
        data.person = (PersonDetail.parse(map['Person']) unless map['Person'].nil?)
        data.face_matches = (FaceMatchList.parse(map['FaceMatches']) unless map['FaceMatches'].nil?)
        return data
      end
    end

    class FaceMatchList
      def self.parse(list)
        list.map do |value|
          FaceMatch.parse(value) unless value.nil?
        end
      end
    end

    class FaceMatch
      def self.parse(map)
        data = Types::FaceMatch.new
        data.similarity = Hearth::NumberHelper.deserialize(map['Similarity'])
        data.face = (Face.parse(map['Face']) unless map['Face'].nil?)
        return data
      end
    end

    class Face
      def self.parse(map)
        data = Types::Face.new
        data.face_id = map['FaceId']
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.image_id = map['ImageId']
        data.external_image_id = map['ExternalImageId']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.index_faces_model_version = map['IndexFacesModelVersion']
        return data
      end
    end

    class PersonDetail
      def self.parse(map)
        data = Types::PersonDetail.new
        data.index = map['Index']
        data.bounding_box = (BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.face = (FaceDetail.parse(map['Face']) unless map['Face'].nil?)
        return data
      end
    end

    # Operation Parser for GetLabelDetection
    class GetLabelDetection
      def self.parse(http_resp)
        data = Types::GetLabelDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.next_token = map['NextToken']
        data.labels = (LabelDetections.parse(map['Labels']) unless map['Labels'].nil?)
        data.label_model_version = map['LabelModelVersion']
        data
      end
    end

    class LabelDetections
      def self.parse(list)
        list.map do |value|
          LabelDetection.parse(value) unless value.nil?
        end
      end
    end

    class LabelDetection
      def self.parse(map)
        data = Types::LabelDetection.new
        data.timestamp = map['Timestamp']
        data.label = (Label.parse(map['Label']) unless map['Label'].nil?)
        return data
      end
    end

    # Operation Parser for GetPersonTracking
    class GetPersonTracking
      def self.parse(http_resp)
        data = Types::GetPersonTrackingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.next_token = map['NextToken']
        data.persons = (PersonDetections.parse(map['Persons']) unless map['Persons'].nil?)
        data
      end
    end

    class PersonDetections
      def self.parse(list)
        list.map do |value|
          PersonDetection.parse(value) unless value.nil?
        end
      end
    end

    class PersonDetection
      def self.parse(map)
        data = Types::PersonDetection.new
        data.timestamp = map['Timestamp']
        data.person = (PersonDetail.parse(map['Person']) unless map['Person'].nil?)
        return data
      end
    end

    # Operation Parser for GetSegmentDetection
    class GetSegmentDetection
      def self.parse(http_resp)
        data = Types::GetSegmentDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadataList.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.audio_metadata = (AudioMetadataList.parse(map['AudioMetadata']) unless map['AudioMetadata'].nil?)
        data.next_token = map['NextToken']
        data.segments = (SegmentDetections.parse(map['Segments']) unless map['Segments'].nil?)
        data.selected_segment_types = (SegmentTypesInfo.parse(map['SelectedSegmentTypes']) unless map['SelectedSegmentTypes'].nil?)
        data
      end
    end

    class SegmentTypesInfo
      def self.parse(list)
        list.map do |value|
          SegmentTypeInfo.parse(value) unless value.nil?
        end
      end
    end

    class SegmentTypeInfo
      def self.parse(map)
        data = Types::SegmentTypeInfo.new
        data.type = map['Type']
        data.model_version = map['ModelVersion']
        return data
      end
    end

    class SegmentDetections
      def self.parse(list)
        list.map do |value|
          SegmentDetection.parse(value) unless value.nil?
        end
      end
    end

    class SegmentDetection
      def self.parse(map)
        data = Types::SegmentDetection.new
        data.type = map['Type']
        data.start_timestamp_millis = map['StartTimestampMillis']
        data.end_timestamp_millis = map['EndTimestampMillis']
        data.duration_millis = map['DurationMillis']
        data.start_timecode_smpte = map['StartTimecodeSMPTE']
        data.end_timecode_smpte = map['EndTimecodeSMPTE']
        data.duration_smpte = map['DurationSMPTE']
        data.technical_cue_segment = (TechnicalCueSegment.parse(map['TechnicalCueSegment']) unless map['TechnicalCueSegment'].nil?)
        data.shot_segment = (ShotSegment.parse(map['ShotSegment']) unless map['ShotSegment'].nil?)
        data.start_frame_number = map['StartFrameNumber']
        data.end_frame_number = map['EndFrameNumber']
        data.duration_frames = map['DurationFrames']
        return data
      end
    end

    class ShotSegment
      def self.parse(map)
        data = Types::ShotSegment.new
        data.index = map['Index']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class TechnicalCueSegment
      def self.parse(map)
        data = Types::TechnicalCueSegment.new
        data.type = map['Type']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class AudioMetadataList
      def self.parse(list)
        list.map do |value|
          AudioMetadata.parse(value) unless value.nil?
        end
      end
    end

    class AudioMetadata
      def self.parse(map)
        data = Types::AudioMetadata.new
        data.codec = map['Codec']
        data.duration_millis = map['DurationMillis']
        data.sample_rate = map['SampleRate']
        data.number_of_channels = map['NumberOfChannels']
        return data
      end
    end

    class VideoMetadataList
      def self.parse(list)
        list.map do |value|
          VideoMetadata.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetTextDetection
    class GetTextDetection
      def self.parse(http_resp)
        data = Types::GetTextDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_status = map['JobStatus']
        data.status_message = map['StatusMessage']
        data.video_metadata = (VideoMetadata.parse(map['VideoMetadata']) unless map['VideoMetadata'].nil?)
        data.text_detections = (TextDetectionResults.parse(map['TextDetections']) unless map['TextDetections'].nil?)
        data.next_token = map['NextToken']
        data.text_model_version = map['TextModelVersion']
        data
      end
    end

    class TextDetectionResults
      def self.parse(list)
        list.map do |value|
          TextDetectionResult.parse(value) unless value.nil?
        end
      end
    end

    class TextDetectionResult
      def self.parse(map)
        data = Types::TextDetectionResult.new
        data.timestamp = map['Timestamp']
        data.text_detection = (TextDetection.parse(map['TextDetection']) unless map['TextDetection'].nil?)
        return data
      end
    end

    # Operation Parser for IndexFaces
    class IndexFaces
      def self.parse(http_resp)
        data = Types::IndexFacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.face_records = (FaceRecordList.parse(map['FaceRecords']) unless map['FaceRecords'].nil?)
        data.orientation_correction = map['OrientationCorrection']
        data.face_model_version = map['FaceModelVersion']
        data.unindexed_faces = (UnindexedFaces.parse(map['UnindexedFaces']) unless map['UnindexedFaces'].nil?)
        data
      end
    end

    class UnindexedFaces
      def self.parse(list)
        list.map do |value|
          UnindexedFace.parse(value) unless value.nil?
        end
      end
    end

    class UnindexedFace
      def self.parse(map)
        data = Types::UnindexedFace.new
        data.reasons = (Reasons.parse(map['Reasons']) unless map['Reasons'].nil?)
        data.face_detail = (FaceDetail.parse(map['FaceDetail']) unless map['FaceDetail'].nil?)
        return data
      end
    end

    class Reasons
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FaceRecordList
      def self.parse(list)
        list.map do |value|
          FaceRecord.parse(value) unless value.nil?
        end
      end
    end

    class FaceRecord
      def self.parse(map)
        data = Types::FaceRecord.new
        data.face = (Face.parse(map['Face']) unless map['Face'].nil?)
        data.face_detail = (FaceDetail.parse(map['FaceDetail']) unless map['FaceDetail'].nil?)
        return data
      end
    end

    # Operation Parser for ListCollections
    class ListCollections
      def self.parse(http_resp)
        data = Types::ListCollectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.collection_ids = (CollectionIdList.parse(map['CollectionIds']) unless map['CollectionIds'].nil?)
        data.next_token = map['NextToken']
        data.face_model_versions = (FaceModelVersionList.parse(map['FaceModelVersions']) unless map['FaceModelVersions'].nil?)
        data
      end
    end

    class FaceModelVersionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CollectionIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListDatasetEntries
    class ListDatasetEntries
      def self.parse(http_resp)
        data = Types::ListDatasetEntriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_entries = (DatasetEntries.parse(map['DatasetEntries']) unless map['DatasetEntries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetEntries
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListDatasetLabels
    class ListDatasetLabels
      def self.parse(http_resp)
        data = Types::ListDatasetLabelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_label_descriptions = (DatasetLabelDescriptions.parse(map['DatasetLabelDescriptions']) unless map['DatasetLabelDescriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetLabelDescriptions
      def self.parse(list)
        list.map do |value|
          DatasetLabelDescription.parse(value) unless value.nil?
        end
      end
    end

    class DatasetLabelDescription
      def self.parse(map)
        data = Types::DatasetLabelDescription.new
        data.label_name = map['LabelName']
        data.label_stats = (DatasetLabelStats.parse(map['LabelStats']) unless map['LabelStats'].nil?)
        return data
      end
    end

    class DatasetLabelStats
      def self.parse(map)
        data = Types::DatasetLabelStats.new
        data.entry_count = map['EntryCount']
        data.bounding_box_count = map['BoundingBoxCount']
        return data
      end
    end

    # Operation Parser for ListFaces
    class ListFaces
      def self.parse(http_resp)
        data = Types::ListFacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.faces = (FaceList.parse(map['Faces']) unless map['Faces'].nil?)
        data.next_token = map['NextToken']
        data.face_model_version = map['FaceModelVersion']
        data
      end
    end

    class FaceList
      def self.parse(list)
        list.map do |value|
          Face.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListStreamProcessors
    class ListStreamProcessors
      def self.parse(http_resp)
        data = Types::ListStreamProcessorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.stream_processors = (StreamProcessorList.parse(map['StreamProcessors']) unless map['StreamProcessors'].nil?)
        data
      end
    end

    class StreamProcessorList
      def self.parse(list)
        list.map do |value|
          StreamProcessor.parse(value) unless value.nil?
        end
      end
    end

    class StreamProcessor
      def self.parse(map)
        data = Types::StreamProcessor.new
        data.name = map['Name']
        data.status = map['Status']
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
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for RecognizeCelebrities
    class RecognizeCelebrities
      def self.parse(http_resp)
        data = Types::RecognizeCelebritiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.celebrity_faces = (CelebrityList.parse(map['CelebrityFaces']) unless map['CelebrityFaces'].nil?)
        data.unrecognized_faces = (ComparedFaceList.parse(map['UnrecognizedFaces']) unless map['UnrecognizedFaces'].nil?)
        data.orientation_correction = map['OrientationCorrection']
        data
      end
    end

    class ComparedFaceList
      def self.parse(list)
        list.map do |value|
          ComparedFace.parse(value) unless value.nil?
        end
      end
    end

    class CelebrityList
      def self.parse(list)
        list.map do |value|
          Celebrity.parse(value) unless value.nil?
        end
      end
    end

    class Celebrity
      def self.parse(map)
        data = Types::Celebrity.new
        data.urls = (Urls.parse(map['Urls']) unless map['Urls'].nil?)
        data.name = map['Name']
        data.id = map['Id']
        data.face = (ComparedFace.parse(map['Face']) unless map['Face'].nil?)
        data.match_confidence = Hearth::NumberHelper.deserialize(map['MatchConfidence'])
        data.known_gender = (KnownGender.parse(map['KnownGender']) unless map['KnownGender'].nil?)
        return data
      end
    end

    # Operation Parser for SearchFaces
    class SearchFaces
      def self.parse(http_resp)
        data = Types::SearchFacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.searched_face_id = map['SearchedFaceId']
        data.face_matches = (FaceMatchList.parse(map['FaceMatches']) unless map['FaceMatches'].nil?)
        data.face_model_version = map['FaceModelVersion']
        data
      end
    end

    # Operation Parser for SearchFacesByImage
    class SearchFacesByImage
      def self.parse(http_resp)
        data = Types::SearchFacesByImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.searched_face_bounding_box = (BoundingBox.parse(map['SearchedFaceBoundingBox']) unless map['SearchedFaceBoundingBox'].nil?)
        data.searched_face_confidence = Hearth::NumberHelper.deserialize(map['SearchedFaceConfidence'])
        data.face_matches = (FaceMatchList.parse(map['FaceMatches']) unless map['FaceMatches'].nil?)
        data.face_model_version = map['FaceModelVersion']
        data
      end
    end

    # Operation Parser for StartCelebrityRecognition
    class StartCelebrityRecognition
      def self.parse(http_resp)
        data = Types::StartCelebrityRecognitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Error Parser for VideoTooLargeException
    class VideoTooLargeException
      def self.parse(http_resp)
        data = Types::VideoTooLargeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data.logref = map['Logref']
        data
      end
    end

    # Operation Parser for StartContentModeration
    class StartContentModeration
      def self.parse(http_resp)
        data = Types::StartContentModerationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartFaceDetection
    class StartFaceDetection
      def self.parse(http_resp)
        data = Types::StartFaceDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartFaceSearch
    class StartFaceSearch
      def self.parse(http_resp)
        data = Types::StartFaceSearchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartLabelDetection
    class StartLabelDetection
      def self.parse(http_resp)
        data = Types::StartLabelDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartPersonTracking
    class StartPersonTracking
      def self.parse(http_resp)
        data = Types::StartPersonTrackingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartProjectVersion
    class StartProjectVersion
      def self.parse(http_resp)
        data = Types::StartProjectVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for StartSegmentDetection
    class StartSegmentDetection
      def self.parse(http_resp)
        data = Types::StartSegmentDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartStreamProcessor
    class StartStreamProcessor
      def self.parse(http_resp)
        data = Types::StartStreamProcessorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session_id = map['SessionId']
        data
      end
    end

    # Operation Parser for StartTextDetection
    class StartTextDetection
      def self.parse(http_resp)
        data = Types::StartTextDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StopProjectVersion
    class StopProjectVersion
      def self.parse(http_resp)
        data = Types::StopProjectVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for StopStreamProcessor
    class StopStreamProcessor
      def self.parse(http_resp)
        data = Types::StopStreamProcessorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for UpdateDatasetEntries
    class UpdateDatasetEntries
      def self.parse(http_resp)
        data = Types::UpdateDatasetEntriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateStreamProcessor
    class UpdateStreamProcessor
      def self.parse(http_resp)
        data = Types::UpdateStreamProcessorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
