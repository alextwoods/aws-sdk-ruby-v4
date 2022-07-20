# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Rekognition
  module Stubs

    # Operation Stubber for CompareFaces
    class CompareFaces
      def self.default(visited=[])
        {
          source_image_face: ComparedSourceImageFace.default(visited),
          face_matches: CompareFacesMatchList.default(visited),
          unmatched_faces: CompareFacesUnmatchList.default(visited),
          source_image_orientation_correction: 'source_image_orientation_correction',
          target_image_orientation_correction: 'target_image_orientation_correction',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SourceImageFace'] = ComparedSourceImageFace.stub(stub[:source_image_face]) unless stub[:source_image_face].nil?
        data['FaceMatches'] = CompareFacesMatchList.stub(stub[:face_matches]) unless stub[:face_matches].nil?
        data['UnmatchedFaces'] = CompareFacesUnmatchList.stub(stub[:unmatched_faces]) unless stub[:unmatched_faces].nil?
        data['SourceImageOrientationCorrection'] = stub[:source_image_orientation_correction] unless stub[:source_image_orientation_correction].nil?
        data['TargetImageOrientationCorrection'] = stub[:target_image_orientation_correction] unless stub[:target_image_orientation_correction].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CompareFacesUnmatchList
    class CompareFacesUnmatchList
      def self.default(visited=[])
        return nil if visited.include?('CompareFacesUnmatchList')
        visited = visited + ['CompareFacesUnmatchList']
        [
          ComparedFace.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComparedFace.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComparedFace
    class ComparedFace
      def self.default(visited=[])
        return nil if visited.include?('ComparedFace')
        visited = visited + ['ComparedFace']
        {
          bounding_box: BoundingBox.default(visited),
          confidence: 1.0,
          landmarks: Landmarks.default(visited),
          pose: Pose.default(visited),
          quality: ImageQuality.default(visited),
          emotions: Emotions.default(visited),
          smile: Smile.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComparedFace.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Landmarks'] = Landmarks.stub(stub[:landmarks]) unless stub[:landmarks].nil?
        data['Pose'] = Pose.stub(stub[:pose]) unless stub[:pose].nil?
        data['Quality'] = ImageQuality.stub(stub[:quality]) unless stub[:quality].nil?
        data['Emotions'] = Emotions.stub(stub[:emotions]) unless stub[:emotions].nil?
        data['Smile'] = Smile.stub(stub[:smile]) unless stub[:smile].nil?
        data
      end
    end

    # Structure Stubber for Smile
    class Smile
      def self.default(visited=[])
        return nil if visited.include?('Smile')
        visited = visited + ['Smile']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Smile.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # List Stubber for Emotions
    class Emotions
      def self.default(visited=[])
        return nil if visited.include?('Emotions')
        visited = visited + ['Emotions']
        [
          Emotion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Emotion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Emotion
    class Emotion
      def self.default(visited=[])
        return nil if visited.include?('Emotion')
        visited = visited + ['Emotion']
        {
          type: 'type',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Emotion.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for ImageQuality
    class ImageQuality
      def self.default(visited=[])
        return nil if visited.include?('ImageQuality')
        visited = visited + ['ImageQuality']
        {
          brightness: 1.0,
          sharpness: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageQuality.new
        data = {}
        data['Brightness'] = Hearth::NumberHelper.serialize(stub[:brightness])
        data['Sharpness'] = Hearth::NumberHelper.serialize(stub[:sharpness])
        data
      end
    end

    # Structure Stubber for Pose
    class Pose
      def self.default(visited=[])
        return nil if visited.include?('Pose')
        visited = visited + ['Pose']
        {
          roll: 1.0,
          yaw: 1.0,
          pitch: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Pose.new
        data = {}
        data['Roll'] = Hearth::NumberHelper.serialize(stub[:roll])
        data['Yaw'] = Hearth::NumberHelper.serialize(stub[:yaw])
        data['Pitch'] = Hearth::NumberHelper.serialize(stub[:pitch])
        data
      end
    end

    # List Stubber for Landmarks
    class Landmarks
      def self.default(visited=[])
        return nil if visited.include?('Landmarks')
        visited = visited + ['Landmarks']
        [
          Landmark.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Landmark.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Landmark
    class Landmark
      def self.default(visited=[])
        return nil if visited.include?('Landmark')
        visited = visited + ['Landmark']
        {
          type: 'type',
          x: 1.0,
          y: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Landmark.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['X'] = Hearth::NumberHelper.serialize(stub[:x])
        data['Y'] = Hearth::NumberHelper.serialize(stub[:y])
        data
      end
    end

    # Structure Stubber for BoundingBox
    class BoundingBox
      def self.default(visited=[])
        return nil if visited.include?('BoundingBox')
        visited = visited + ['BoundingBox']
        {
          width: 1.0,
          height: 1.0,
          left: 1.0,
          top: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::BoundingBox.new
        data = {}
        data['Width'] = Hearth::NumberHelper.serialize(stub[:width])
        data['Height'] = Hearth::NumberHelper.serialize(stub[:height])
        data['Left'] = Hearth::NumberHelper.serialize(stub[:left])
        data['Top'] = Hearth::NumberHelper.serialize(stub[:top])
        data
      end
    end

    # List Stubber for CompareFacesMatchList
    class CompareFacesMatchList
      def self.default(visited=[])
        return nil if visited.include?('CompareFacesMatchList')
        visited = visited + ['CompareFacesMatchList']
        [
          CompareFacesMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CompareFacesMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CompareFacesMatch
    class CompareFacesMatch
      def self.default(visited=[])
        return nil if visited.include?('CompareFacesMatch')
        visited = visited + ['CompareFacesMatch']
        {
          similarity: 1.0,
          face: ComparedFace.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompareFacesMatch.new
        data = {}
        data['Similarity'] = Hearth::NumberHelper.serialize(stub[:similarity])
        data['Face'] = ComparedFace.stub(stub[:face]) unless stub[:face].nil?
        data
      end
    end

    # Structure Stubber for ComparedSourceImageFace
    class ComparedSourceImageFace
      def self.default(visited=[])
        return nil if visited.include?('ComparedSourceImageFace')
        visited = visited + ['ComparedSourceImageFace']
        {
          bounding_box: BoundingBox.default(visited),
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComparedSourceImageFace.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Operation Stubber for CreateCollection
    class CreateCollection
      def self.default(visited=[])
        {
          status_code: 1,
          collection_arn: 'collection_arn',
          face_model_version: 'face_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['CollectionArn'] = stub[:collection_arn] unless stub[:collection_arn].nil?
        data['FaceModelVersion'] = stub[:face_model_version] unless stub[:face_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_arn: 'dataset_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project_arn: 'project_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProjectVersion
    class CreateProjectVersion
      def self.default(visited=[])
        {
          project_version_arn: 'project_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectVersionArn'] = stub[:project_version_arn] unless stub[:project_version_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStreamProcessor
    class CreateStreamProcessor
      def self.default(visited=[])
        {
          stream_processor_arn: 'stream_processor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamProcessorArn'] = stub[:stream_processor_arn] unless stub[:stream_processor_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCollection
    class DeleteCollection
      def self.default(visited=[])
        {
          status_code: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFaces
    class DeleteFaces
      def self.default(visited=[])
        {
          deleted_faces: FaceIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeletedFaces'] = FaceIdList.stub(stub[:deleted_faces]) unless stub[:deleted_faces].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FaceIdList
    class FaceIdList
      def self.default(visited=[])
        return nil if visited.include?('FaceIdList')
        visited = visited + ['FaceIdList']
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

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProjectVersion
    class DeleteProjectVersion
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStreamProcessor
    class DeleteStreamProcessor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCollection
    class DescribeCollection
      def self.default(visited=[])
        {
          face_count: 1,
          face_model_version: 'face_model_version',
          collection_arn: 'collection_arn',
          creation_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FaceCount'] = stub[:face_count] unless stub[:face_count].nil?
        data['FaceModelVersion'] = stub[:face_model_version] unless stub[:face_model_version].nil?
        data['CollectionARN'] = stub[:collection_arn] unless stub[:collection_arn].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['DatasetDescription'] = DatasetDescription.stub(stub[:dataset_description]) unless stub[:dataset_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DatasetDescription
    class DatasetDescription
      def self.default(visited=[])
        return nil if visited.include?('DatasetDescription')
        visited = visited + ['DatasetDescription']
        {
          creation_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          status: 'status',
          status_message: 'status_message',
          status_message_code: 'status_message_code',
          dataset_stats: DatasetStats.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetDescription.new
        data = {}
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['StatusMessageCode'] = stub[:status_message_code] unless stub[:status_message_code].nil?
        data['DatasetStats'] = DatasetStats.stub(stub[:dataset_stats]) unless stub[:dataset_stats].nil?
        data
      end
    end

    # Structure Stubber for DatasetStats
    class DatasetStats
      def self.default(visited=[])
        return nil if visited.include?('DatasetStats')
        visited = visited + ['DatasetStats']
        {
          labeled_entries: 1,
          total_entries: 1,
          total_labels: 1,
          error_entries: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetStats.new
        data = {}
        data['LabeledEntries'] = stub[:labeled_entries] unless stub[:labeled_entries].nil?
        data['TotalEntries'] = stub[:total_entries] unless stub[:total_entries].nil?
        data['TotalLabels'] = stub[:total_labels] unless stub[:total_labels].nil?
        data['ErrorEntries'] = stub[:error_entries] unless stub[:error_entries].nil?
        data
      end
    end

    # Operation Stubber for DescribeProjectVersions
    class DescribeProjectVersions
      def self.default(visited=[])
        {
          project_version_descriptions: ProjectVersionDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectVersionDescriptions'] = ProjectVersionDescriptions.stub(stub[:project_version_descriptions]) unless stub[:project_version_descriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProjectVersionDescriptions
    class ProjectVersionDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ProjectVersionDescriptions')
        visited = visited + ['ProjectVersionDescriptions']
        [
          ProjectVersionDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectVersionDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectVersionDescription
    class ProjectVersionDescription
      def self.default(visited=[])
        return nil if visited.include?('ProjectVersionDescription')
        visited = visited + ['ProjectVersionDescription']
        {
          project_version_arn: 'project_version_arn',
          creation_timestamp: Time.now,
          min_inference_units: 1,
          status: 'status',
          status_message: 'status_message',
          billable_training_time_in_seconds: 1,
          training_end_timestamp: Time.now,
          output_config: OutputConfig.default(visited),
          training_data_result: TrainingDataResult.default(visited),
          testing_data_result: TestingDataResult.default(visited),
          evaluation_result: EvaluationResult.default(visited),
          manifest_summary: GroundTruthManifest.default(visited),
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectVersionDescription.new
        data = {}
        data['ProjectVersionArn'] = stub[:project_version_arn] unless stub[:project_version_arn].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['MinInferenceUnits'] = stub[:min_inference_units] unless stub[:min_inference_units].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['BillableTrainingTimeInSeconds'] = stub[:billable_training_time_in_seconds] unless stub[:billable_training_time_in_seconds].nil?
        data['TrainingEndTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_timestamp]).to_i unless stub[:training_end_timestamp].nil?
        data['OutputConfig'] = OutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['TrainingDataResult'] = TrainingDataResult.stub(stub[:training_data_result]) unless stub[:training_data_result].nil?
        data['TestingDataResult'] = TestingDataResult.stub(stub[:testing_data_result]) unless stub[:testing_data_result].nil?
        data['EvaluationResult'] = EvaluationResult.stub(stub[:evaluation_result]) unless stub[:evaluation_result].nil?
        data['ManifestSummary'] = GroundTruthManifest.stub(stub[:manifest_summary]) unless stub[:manifest_summary].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for GroundTruthManifest
    class GroundTruthManifest
      def self.default(visited=[])
        return nil if visited.include?('GroundTruthManifest')
        visited = visited + ['GroundTruthManifest']
        {
          s3_object: S3Object.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GroundTruthManifest.new
        data = {}
        data['S3Object'] = S3Object.stub(stub[:s3_object]) unless stub[:s3_object].nil?
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
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Object.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for EvaluationResult
    class EvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResult')
        visited = visited + ['EvaluationResult']
        {
          f1_score: 1.0,
          summary: Summary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResult.new
        data = {}
        data['F1Score'] = Hearth::NumberHelper.serialize(stub[:f1_score])
        data['Summary'] = Summary.stub(stub[:summary]) unless stub[:summary].nil?
        data
      end
    end

    # Structure Stubber for Summary
    class Summary
      def self.default(visited=[])
        return nil if visited.include?('Summary')
        visited = visited + ['Summary']
        {
          s3_object: S3Object.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Summary.new
        data = {}
        data['S3Object'] = S3Object.stub(stub[:s3_object]) unless stub[:s3_object].nil?
        data
      end
    end

    # Structure Stubber for TestingDataResult
    class TestingDataResult
      def self.default(visited=[])
        return nil if visited.include?('TestingDataResult')
        visited = visited + ['TestingDataResult']
        {
          input: TestingData.default(visited),
          output: TestingData.default(visited),
          validation: ValidationData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TestingDataResult.new
        data = {}
        data['Input'] = TestingData.stub(stub[:input]) unless stub[:input].nil?
        data['Output'] = TestingData.stub(stub[:output]) unless stub[:output].nil?
        data['Validation'] = ValidationData.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for ValidationData
    class ValidationData
      def self.default(visited=[])
        return nil if visited.include?('ValidationData')
        visited = visited + ['ValidationData']
        {
          assets: Assets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationData.new
        data = {}
        data['Assets'] = Assets.stub(stub[:assets]) unless stub[:assets].nil?
        data
      end
    end

    # List Stubber for Assets
    class Assets
      def self.default(visited=[])
        return nil if visited.include?('Assets')
        visited = visited + ['Assets']
        [
          Asset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Asset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Asset
    class Asset
      def self.default(visited=[])
        return nil if visited.include?('Asset')
        visited = visited + ['Asset']
        {
          ground_truth_manifest: GroundTruthManifest.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Asset.new
        data = {}
        data['GroundTruthManifest'] = GroundTruthManifest.stub(stub[:ground_truth_manifest]) unless stub[:ground_truth_manifest].nil?
        data
      end
    end

    # Structure Stubber for TestingData
    class TestingData
      def self.default(visited=[])
        return nil if visited.include?('TestingData')
        visited = visited + ['TestingData']
        {
          assets: Assets.default(visited),
          auto_create: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TestingData.new
        data = {}
        data['Assets'] = Assets.stub(stub[:assets]) unless stub[:assets].nil?
        data['AutoCreate'] = stub[:auto_create] unless stub[:auto_create].nil?
        data
      end
    end

    # Structure Stubber for TrainingDataResult
    class TrainingDataResult
      def self.default(visited=[])
        return nil if visited.include?('TrainingDataResult')
        visited = visited + ['TrainingDataResult']
        {
          input: TrainingData.default(visited),
          output: TrainingData.default(visited),
          validation: ValidationData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingDataResult.new
        data = {}
        data['Input'] = TrainingData.stub(stub[:input]) unless stub[:input].nil?
        data['Output'] = TrainingData.stub(stub[:output]) unless stub[:output].nil?
        data['Validation'] = ValidationData.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for TrainingData
    class TrainingData
      def self.default(visited=[])
        return nil if visited.include?('TrainingData')
        visited = visited + ['TrainingData']
        {
          assets: Assets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingData.new
        data = {}
        data['Assets'] = Assets.stub(stub[:assets]) unless stub[:assets].nil?
        data
      end
    end

    # Structure Stubber for OutputConfig
    class OutputConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputConfig')
        visited = visited + ['OutputConfig']
        {
          s3_bucket: 's3_bucket',
          s3_key_prefix: 's3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputConfig.new
        data = {}
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data
      end
    end

    # Operation Stubber for DescribeProjects
    class DescribeProjects
      def self.default(visited=[])
        {
          project_descriptions: ProjectDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectDescriptions'] = ProjectDescriptions.stub(stub[:project_descriptions]) unless stub[:project_descriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProjectDescriptions
    class ProjectDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ProjectDescriptions')
        visited = visited + ['ProjectDescriptions']
        [
          ProjectDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectDescription
    class ProjectDescription
      def self.default(visited=[])
        return nil if visited.include?('ProjectDescription')
        visited = visited + ['ProjectDescription']
        {
          project_arn: 'project_arn',
          creation_timestamp: Time.now,
          status: 'status',
          datasets: DatasetMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectDescription.new
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Datasets'] = DatasetMetadataList.stub(stub[:datasets]) unless stub[:datasets].nil?
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
          data << DatasetMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetMetadata
    class DatasetMetadata
      def self.default(visited=[])
        return nil if visited.include?('DatasetMetadata')
        visited = visited + ['DatasetMetadata']
        {
          creation_timestamp: Time.now,
          dataset_type: 'dataset_type',
          dataset_arn: 'dataset_arn',
          status: 'status',
          status_message: 'status_message',
          status_message_code: 'status_message_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetMetadata.new
        data = {}
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['DatasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['StatusMessageCode'] = stub[:status_message_code] unless stub[:status_message_code].nil?
        data
      end
    end

    # Operation Stubber for DescribeStreamProcessor
    class DescribeStreamProcessor
      def self.default(visited=[])
        {
          name: 'name',
          stream_processor_arn: 'stream_processor_arn',
          status: 'status',
          status_message: 'status_message',
          creation_timestamp: Time.now,
          last_update_timestamp: Time.now,
          input: StreamProcessorInput.default(visited),
          output: StreamProcessorOutput.default(visited),
          role_arn: 'role_arn',
          settings: StreamProcessorSettings.default(visited),
          notification_channel: StreamProcessorNotificationChannel.default(visited),
          kms_key_id: 'kms_key_id',
          regions_of_interest: RegionsOfInterest.default(visited),
          data_sharing_preference: StreamProcessorDataSharingPreference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['StreamProcessorArn'] = stub[:stream_processor_arn] unless stub[:stream_processor_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data['Input'] = StreamProcessorInput.stub(stub[:input]) unless stub[:input].nil?
        data['Output'] = StreamProcessorOutput.stub(stub[:output]) unless stub[:output].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Settings'] = StreamProcessorSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['NotificationChannel'] = StreamProcessorNotificationChannel.stub(stub[:notification_channel]) unless stub[:notification_channel].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['RegionsOfInterest'] = RegionsOfInterest.stub(stub[:regions_of_interest]) unless stub[:regions_of_interest].nil?
        data['DataSharingPreference'] = StreamProcessorDataSharingPreference.stub(stub[:data_sharing_preference]) unless stub[:data_sharing_preference].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StreamProcessorDataSharingPreference
    class StreamProcessorDataSharingPreference
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessorDataSharingPreference')
        visited = visited + ['StreamProcessorDataSharingPreference']
        {
          opt_in: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamProcessorDataSharingPreference.new
        data = {}
        data['OptIn'] = stub[:opt_in] unless stub[:opt_in].nil?
        data
      end
    end

    # List Stubber for RegionsOfInterest
    class RegionsOfInterest
      def self.default(visited=[])
        return nil if visited.include?('RegionsOfInterest')
        visited = visited + ['RegionsOfInterest']
        [
          RegionOfInterest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegionOfInterest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegionOfInterest
    class RegionOfInterest
      def self.default(visited=[])
        return nil if visited.include?('RegionOfInterest')
        visited = visited + ['RegionOfInterest']
        {
          bounding_box: BoundingBox.default(visited),
          polygon: Polygon.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegionOfInterest.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Polygon'] = Polygon.stub(stub[:polygon]) unless stub[:polygon].nil?
        data
      end
    end

    # List Stubber for Polygon
    class Polygon
      def self.default(visited=[])
        return nil if visited.include?('Polygon')
        visited = visited + ['Polygon']
        [
          Point.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Point.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Point
    class Point
      def self.default(visited=[])
        return nil if visited.include?('Point')
        visited = visited + ['Point']
        {
          x: 1.0,
          y: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Point.new
        data = {}
        data['X'] = Hearth::NumberHelper.serialize(stub[:x])
        data['Y'] = Hearth::NumberHelper.serialize(stub[:y])
        data
      end
    end

    # Structure Stubber for StreamProcessorNotificationChannel
    class StreamProcessorNotificationChannel
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessorNotificationChannel')
        visited = visited + ['StreamProcessorNotificationChannel']
        {
          sns_topic_arn: 'sns_topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamProcessorNotificationChannel.new
        data = {}
        data['SNSTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data
      end
    end

    # Structure Stubber for StreamProcessorSettings
    class StreamProcessorSettings
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessorSettings')
        visited = visited + ['StreamProcessorSettings']
        {
          face_search: FaceSearchSettings.default(visited),
          connected_home: ConnectedHomeSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamProcessorSettings.new
        data = {}
        data['FaceSearch'] = FaceSearchSettings.stub(stub[:face_search]) unless stub[:face_search].nil?
        data['ConnectedHome'] = ConnectedHomeSettings.stub(stub[:connected_home]) unless stub[:connected_home].nil?
        data
      end
    end

    # Structure Stubber for ConnectedHomeSettings
    class ConnectedHomeSettings
      def self.default(visited=[])
        return nil if visited.include?('ConnectedHomeSettings')
        visited = visited + ['ConnectedHomeSettings']
        {
          labels: ConnectedHomeLabels.default(visited),
          min_confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectedHomeSettings.new
        data = {}
        data['Labels'] = ConnectedHomeLabels.stub(stub[:labels]) unless stub[:labels].nil?
        data['MinConfidence'] = Hearth::NumberHelper.serialize(stub[:min_confidence])
        data
      end
    end

    # List Stubber for ConnectedHomeLabels
    class ConnectedHomeLabels
      def self.default(visited=[])
        return nil if visited.include?('ConnectedHomeLabels')
        visited = visited + ['ConnectedHomeLabels']
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

    # Structure Stubber for FaceSearchSettings
    class FaceSearchSettings
      def self.default(visited=[])
        return nil if visited.include?('FaceSearchSettings')
        visited = visited + ['FaceSearchSettings']
        {
          collection_id: 'collection_id',
          face_match_threshold: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaceSearchSettings.new
        data = {}
        data['CollectionId'] = stub[:collection_id] unless stub[:collection_id].nil?
        data['FaceMatchThreshold'] = Hearth::NumberHelper.serialize(stub[:face_match_threshold])
        data
      end
    end

    # Structure Stubber for StreamProcessorOutput
    class StreamProcessorOutput
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessorOutput')
        visited = visited + ['StreamProcessorOutput']
        {
          kinesis_data_stream: KinesisDataStream.default(visited),
          s3_destination: S3Destination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamProcessorOutput.new
        data = {}
        data['KinesisDataStream'] = KinesisDataStream.stub(stub[:kinesis_data_stream]) unless stub[:kinesis_data_stream].nil?
        data['S3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data
      end
    end

    # Structure Stubber for S3Destination
    class S3Destination
      def self.default(visited=[])
        return nil if visited.include?('S3Destination')
        visited = visited + ['S3Destination']
        {
          bucket: 'bucket',
          key_prefix: 'key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Destination.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['KeyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data
      end
    end

    # Structure Stubber for KinesisDataStream
    class KinesisDataStream
      def self.default(visited=[])
        return nil if visited.include?('KinesisDataStream')
        visited = visited + ['KinesisDataStream']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisDataStream.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for StreamProcessorInput
    class StreamProcessorInput
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessorInput')
        visited = visited + ['StreamProcessorInput']
        {
          kinesis_video_stream: KinesisVideoStream.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamProcessorInput.new
        data = {}
        data['KinesisVideoStream'] = KinesisVideoStream.stub(stub[:kinesis_video_stream]) unless stub[:kinesis_video_stream].nil?
        data
      end
    end

    # Structure Stubber for KinesisVideoStream
    class KinesisVideoStream
      def self.default(visited=[])
        return nil if visited.include?('KinesisVideoStream')
        visited = visited + ['KinesisVideoStream']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisVideoStream.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for DetectCustomLabels
    class DetectCustomLabels
      def self.default(visited=[])
        {
          custom_labels: CustomLabels.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomLabels'] = CustomLabels.stub(stub[:custom_labels]) unless stub[:custom_labels].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomLabels
    class CustomLabels
      def self.default(visited=[])
        return nil if visited.include?('CustomLabels')
        visited = visited + ['CustomLabels']
        [
          CustomLabel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomLabel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomLabel
    class CustomLabel
      def self.default(visited=[])
        return nil if visited.include?('CustomLabel')
        visited = visited + ['CustomLabel']
        {
          name: 'name',
          confidence: 1.0,
          geometry: Geometry.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomLabel.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Geometry'] = Geometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data
      end
    end

    # Structure Stubber for Geometry
    class Geometry
      def self.default(visited=[])
        return nil if visited.include?('Geometry')
        visited = visited + ['Geometry']
        {
          bounding_box: BoundingBox.default(visited),
          polygon: Polygon.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Geometry.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Polygon'] = Polygon.stub(stub[:polygon]) unless stub[:polygon].nil?
        data
      end
    end

    # Operation Stubber for DetectFaces
    class DetectFaces
      def self.default(visited=[])
        {
          face_details: FaceDetailList.default(visited),
          orientation_correction: 'orientation_correction',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FaceDetails'] = FaceDetailList.stub(stub[:face_details]) unless stub[:face_details].nil?
        data['OrientationCorrection'] = stub[:orientation_correction] unless stub[:orientation_correction].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FaceDetailList
    class FaceDetailList
      def self.default(visited=[])
        return nil if visited.include?('FaceDetailList')
        visited = visited + ['FaceDetailList']
        [
          FaceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FaceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaceDetail
    class FaceDetail
      def self.default(visited=[])
        return nil if visited.include?('FaceDetail')
        visited = visited + ['FaceDetail']
        {
          bounding_box: BoundingBox.default(visited),
          age_range: AgeRange.default(visited),
          smile: Smile.default(visited),
          eyeglasses: Eyeglasses.default(visited),
          sunglasses: Sunglasses.default(visited),
          gender: Gender.default(visited),
          beard: Beard.default(visited),
          mustache: Mustache.default(visited),
          eyes_open: EyeOpen.default(visited),
          mouth_open: MouthOpen.default(visited),
          emotions: Emotions.default(visited),
          landmarks: Landmarks.default(visited),
          pose: Pose.default(visited),
          quality: ImageQuality.default(visited),
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaceDetail.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['AgeRange'] = AgeRange.stub(stub[:age_range]) unless stub[:age_range].nil?
        data['Smile'] = Smile.stub(stub[:smile]) unless stub[:smile].nil?
        data['Eyeglasses'] = Eyeglasses.stub(stub[:eyeglasses]) unless stub[:eyeglasses].nil?
        data['Sunglasses'] = Sunglasses.stub(stub[:sunglasses]) unless stub[:sunglasses].nil?
        data['Gender'] = Gender.stub(stub[:gender]) unless stub[:gender].nil?
        data['Beard'] = Beard.stub(stub[:beard]) unless stub[:beard].nil?
        data['Mustache'] = Mustache.stub(stub[:mustache]) unless stub[:mustache].nil?
        data['EyesOpen'] = EyeOpen.stub(stub[:eyes_open]) unless stub[:eyes_open].nil?
        data['MouthOpen'] = MouthOpen.stub(stub[:mouth_open]) unless stub[:mouth_open].nil?
        data['Emotions'] = Emotions.stub(stub[:emotions]) unless stub[:emotions].nil?
        data['Landmarks'] = Landmarks.stub(stub[:landmarks]) unless stub[:landmarks].nil?
        data['Pose'] = Pose.stub(stub[:pose]) unless stub[:pose].nil?
        data['Quality'] = ImageQuality.stub(stub[:quality]) unless stub[:quality].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for MouthOpen
    class MouthOpen
      def self.default(visited=[])
        return nil if visited.include?('MouthOpen')
        visited = visited + ['MouthOpen']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::MouthOpen.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for EyeOpen
    class EyeOpen
      def self.default(visited=[])
        return nil if visited.include?('EyeOpen')
        visited = visited + ['EyeOpen']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EyeOpen.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for Mustache
    class Mustache
      def self.default(visited=[])
        return nil if visited.include?('Mustache')
        visited = visited + ['Mustache']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Mustache.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for Beard
    class Beard
      def self.default(visited=[])
        return nil if visited.include?('Beard')
        visited = visited + ['Beard']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Beard.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for Gender
    class Gender
      def self.default(visited=[])
        return nil if visited.include?('Gender')
        visited = visited + ['Gender']
        {
          value: 'value',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Gender.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for Sunglasses
    class Sunglasses
      def self.default(visited=[])
        return nil if visited.include?('Sunglasses')
        visited = visited + ['Sunglasses']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Sunglasses.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for Eyeglasses
    class Eyeglasses
      def self.default(visited=[])
        return nil if visited.include?('Eyeglasses')
        visited = visited + ['Eyeglasses']
        {
          value: false,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Eyeglasses.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for AgeRange
    class AgeRange
      def self.default(visited=[])
        return nil if visited.include?('AgeRange')
        visited = visited + ['AgeRange']
        {
          low: 1,
          high: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AgeRange.new
        data = {}
        data['Low'] = stub[:low] unless stub[:low].nil?
        data['High'] = stub[:high] unless stub[:high].nil?
        data
      end
    end

    # Operation Stubber for DetectLabels
    class DetectLabels
      def self.default(visited=[])
        {
          labels: Labels.default(visited),
          orientation_correction: 'orientation_correction',
          label_model_version: 'label_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Labels'] = Labels.stub(stub[:labels]) unless stub[:labels].nil?
        data['OrientationCorrection'] = stub[:orientation_correction] unless stub[:orientation_correction].nil?
        data['LabelModelVersion'] = stub[:label_model_version] unless stub[:label_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Labels
    class Labels
      def self.default(visited=[])
        return nil if visited.include?('Labels')
        visited = visited + ['Labels']
        [
          Label.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Label.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Label
    class Label
      def self.default(visited=[])
        return nil if visited.include?('Label')
        visited = visited + ['Label']
        {
          name: 'name',
          confidence: 1.0,
          instances: Instances.default(visited),
          parents: Parents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Label.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Instances'] = Instances.stub(stub[:instances]) unless stub[:instances].nil?
        data['Parents'] = Parents.stub(stub[:parents]) unless stub[:parents].nil?
        data
      end
    end

    # List Stubber for Parents
    class Parents
      def self.default(visited=[])
        return nil if visited.include?('Parents')
        visited = visited + ['Parents']
        [
          Parent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Parent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parent
    class Parent
      def self.default(visited=[])
        return nil if visited.include?('Parent')
        visited = visited + ['Parent']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parent.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for Instances
    class Instances
      def self.default(visited=[])
        return nil if visited.include?('Instances')
        visited = visited + ['Instances']
        [
          Instance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Instance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          bounding_box: BoundingBox.default(visited),
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Operation Stubber for DetectModerationLabels
    class DetectModerationLabels
      def self.default(visited=[])
        {
          moderation_labels: ModerationLabels.default(visited),
          moderation_model_version: 'moderation_model_version',
          human_loop_activation_output: HumanLoopActivationOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModerationLabels'] = ModerationLabels.stub(stub[:moderation_labels]) unless stub[:moderation_labels].nil?
        data['ModerationModelVersion'] = stub[:moderation_model_version] unless stub[:moderation_model_version].nil?
        data['HumanLoopActivationOutput'] = HumanLoopActivationOutput.stub(stub[:human_loop_activation_output]) unless stub[:human_loop_activation_output].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for HumanLoopActivationOutput
    class HumanLoopActivationOutput
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopActivationOutput')
        visited = visited + ['HumanLoopActivationOutput']
        {
          human_loop_arn: 'human_loop_arn',
          human_loop_activation_reasons: HumanLoopActivationReasons.default(visited),
          human_loop_activation_conditions_evaluation_results: 'human_loop_activation_conditions_evaluation_results',
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopActivationOutput.new
        data = {}
        data['HumanLoopArn'] = stub[:human_loop_arn] unless stub[:human_loop_arn].nil?
        data['HumanLoopActivationReasons'] = HumanLoopActivationReasons.stub(stub[:human_loop_activation_reasons]) unless stub[:human_loop_activation_reasons].nil?
        data['HumanLoopActivationConditionsEvaluationResults'] = stub[:human_loop_activation_conditions_evaluation_results] unless stub[:human_loop_activation_conditions_evaluation_results].nil?
        data
      end
    end

    # List Stubber for HumanLoopActivationReasons
    class HumanLoopActivationReasons
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopActivationReasons')
        visited = visited + ['HumanLoopActivationReasons']
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

    # List Stubber for ModerationLabels
    class ModerationLabels
      def self.default(visited=[])
        return nil if visited.include?('ModerationLabels')
        visited = visited + ['ModerationLabels']
        [
          ModerationLabel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModerationLabel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModerationLabel
    class ModerationLabel
      def self.default(visited=[])
        return nil if visited.include?('ModerationLabel')
        visited = visited + ['ModerationLabel']
        {
          confidence: 1.0,
          name: 'name',
          parent_name: 'parent_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModerationLabel.new
        data = {}
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ParentName'] = stub[:parent_name] unless stub[:parent_name].nil?
        data
      end
    end

    # Operation Stubber for DetectProtectiveEquipment
    class DetectProtectiveEquipment
      def self.default(visited=[])
        {
          protective_equipment_model_version: 'protective_equipment_model_version',
          persons: ProtectiveEquipmentPersons.default(visited),
          summary: ProtectiveEquipmentSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtectiveEquipmentModelVersion'] = stub[:protective_equipment_model_version] unless stub[:protective_equipment_model_version].nil?
        data['Persons'] = ProtectiveEquipmentPersons.stub(stub[:persons]) unless stub[:persons].nil?
        data['Summary'] = ProtectiveEquipmentSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ProtectiveEquipmentSummary
    class ProtectiveEquipmentSummary
      def self.default(visited=[])
        return nil if visited.include?('ProtectiveEquipmentSummary')
        visited = visited + ['ProtectiveEquipmentSummary']
        {
          persons_with_required_equipment: ProtectiveEquipmentPersonIds.default(visited),
          persons_without_required_equipment: ProtectiveEquipmentPersonIds.default(visited),
          persons_indeterminate: ProtectiveEquipmentPersonIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectiveEquipmentSummary.new
        data = {}
        data['PersonsWithRequiredEquipment'] = ProtectiveEquipmentPersonIds.stub(stub[:persons_with_required_equipment]) unless stub[:persons_with_required_equipment].nil?
        data['PersonsWithoutRequiredEquipment'] = ProtectiveEquipmentPersonIds.stub(stub[:persons_without_required_equipment]) unless stub[:persons_without_required_equipment].nil?
        data['PersonsIndeterminate'] = ProtectiveEquipmentPersonIds.stub(stub[:persons_indeterminate]) unless stub[:persons_indeterminate].nil?
        data
      end
    end

    # List Stubber for ProtectiveEquipmentPersonIds
    class ProtectiveEquipmentPersonIds
      def self.default(visited=[])
        return nil if visited.include?('ProtectiveEquipmentPersonIds')
        visited = visited + ['ProtectiveEquipmentPersonIds']
        [
          1
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

    # List Stubber for ProtectiveEquipmentPersons
    class ProtectiveEquipmentPersons
      def self.default(visited=[])
        return nil if visited.include?('ProtectiveEquipmentPersons')
        visited = visited + ['ProtectiveEquipmentPersons']
        [
          ProtectiveEquipmentPerson.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProtectiveEquipmentPerson.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProtectiveEquipmentPerson
    class ProtectiveEquipmentPerson
      def self.default(visited=[])
        return nil if visited.include?('ProtectiveEquipmentPerson')
        visited = visited + ['ProtectiveEquipmentPerson']
        {
          body_parts: BodyParts.default(visited),
          bounding_box: BoundingBox.default(visited),
          confidence: 1.0,
          id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectiveEquipmentPerson.new
        data = {}
        data['BodyParts'] = BodyParts.stub(stub[:body_parts]) unless stub[:body_parts].nil?
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # List Stubber for BodyParts
    class BodyParts
      def self.default(visited=[])
        return nil if visited.include?('BodyParts')
        visited = visited + ['BodyParts']
        [
          ProtectiveEquipmentBodyPart.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProtectiveEquipmentBodyPart.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProtectiveEquipmentBodyPart
    class ProtectiveEquipmentBodyPart
      def self.default(visited=[])
        return nil if visited.include?('ProtectiveEquipmentBodyPart')
        visited = visited + ['ProtectiveEquipmentBodyPart']
        {
          name: 'name',
          confidence: 1.0,
          equipment_detections: EquipmentDetections.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectiveEquipmentBodyPart.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['EquipmentDetections'] = EquipmentDetections.stub(stub[:equipment_detections]) unless stub[:equipment_detections].nil?
        data
      end
    end

    # List Stubber for EquipmentDetections
    class EquipmentDetections
      def self.default(visited=[])
        return nil if visited.include?('EquipmentDetections')
        visited = visited + ['EquipmentDetections']
        [
          EquipmentDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EquipmentDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EquipmentDetection
    class EquipmentDetection
      def self.default(visited=[])
        return nil if visited.include?('EquipmentDetection')
        visited = visited + ['EquipmentDetection']
        {
          bounding_box: BoundingBox.default(visited),
          confidence: 1.0,
          type: 'type',
          covers_body_part: CoversBodyPart.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EquipmentDetection.new
        data = {}
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CoversBodyPart'] = CoversBodyPart.stub(stub[:covers_body_part]) unless stub[:covers_body_part].nil?
        data
      end
    end

    # Structure Stubber for CoversBodyPart
    class CoversBodyPart
      def self.default(visited=[])
        return nil if visited.include?('CoversBodyPart')
        visited = visited + ['CoversBodyPart']
        {
          confidence: 1.0,
          value: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CoversBodyPart.new
        data = {}
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DetectText
    class DetectText
      def self.default(visited=[])
        {
          text_detections: TextDetectionList.default(visited),
          text_model_version: 'text_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TextDetections'] = TextDetectionList.stub(stub[:text_detections]) unless stub[:text_detections].nil?
        data['TextModelVersion'] = stub[:text_model_version] unless stub[:text_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TextDetectionList
    class TextDetectionList
      def self.default(visited=[])
        return nil if visited.include?('TextDetectionList')
        visited = visited + ['TextDetectionList']
        [
          TextDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TextDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TextDetection
    class TextDetection
      def self.default(visited=[])
        return nil if visited.include?('TextDetection')
        visited = visited + ['TextDetection']
        {
          detected_text: 'detected_text',
          type: 'type',
          id: 1,
          parent_id: 1,
          confidence: 1.0,
          geometry: Geometry.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TextDetection.new
        data = {}
        data['DetectedText'] = stub[:detected_text] unless stub[:detected_text].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ParentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Geometry'] = Geometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data
      end
    end

    # Operation Stubber for DistributeDatasetEntries
    class DistributeDatasetEntries
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCelebrityInfo
    class GetCelebrityInfo
      def self.default(visited=[])
        {
          urls: Urls.default(visited),
          name: 'name',
          known_gender: KnownGender.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Urls'] = Urls.stub(stub[:urls]) unless stub[:urls].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['KnownGender'] = KnownGender.stub(stub[:known_gender]) unless stub[:known_gender].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for KnownGender
    class KnownGender
      def self.default(visited=[])
        return nil if visited.include?('KnownGender')
        visited = visited + ['KnownGender']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::KnownGender.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for Urls
    class Urls
      def self.default(visited=[])
        return nil if visited.include?('Urls')
        visited = visited + ['Urls']
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

    # Operation Stubber for GetCelebrityRecognition
    class GetCelebrityRecognition
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadata.default(visited),
          next_token: 'next_token',
          celebrities: CelebrityRecognitions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Celebrities'] = CelebrityRecognitions.stub(stub[:celebrities]) unless stub[:celebrities].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CelebrityRecognitions
    class CelebrityRecognitions
      def self.default(visited=[])
        return nil if visited.include?('CelebrityRecognitions')
        visited = visited + ['CelebrityRecognitions']
        [
          CelebrityRecognition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CelebrityRecognition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CelebrityRecognition
    class CelebrityRecognition
      def self.default(visited=[])
        return nil if visited.include?('CelebrityRecognition')
        visited = visited + ['CelebrityRecognition']
        {
          timestamp: 1,
          celebrity: CelebrityDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CelebrityRecognition.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Celebrity'] = CelebrityDetail.stub(stub[:celebrity]) unless stub[:celebrity].nil?
        data
      end
    end

    # Structure Stubber for CelebrityDetail
    class CelebrityDetail
      def self.default(visited=[])
        return nil if visited.include?('CelebrityDetail')
        visited = visited + ['CelebrityDetail']
        {
          urls: Urls.default(visited),
          name: 'name',
          id: 'id',
          confidence: 1.0,
          bounding_box: BoundingBox.default(visited),
          face: FaceDetail.default(visited),
          known_gender: KnownGender.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CelebrityDetail.new
        data = {}
        data['Urls'] = Urls.stub(stub[:urls]) unless stub[:urls].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Face'] = FaceDetail.stub(stub[:face]) unless stub[:face].nil?
        data['KnownGender'] = KnownGender.stub(stub[:known_gender]) unless stub[:known_gender].nil?
        data
      end
    end

    # Structure Stubber for VideoMetadata
    class VideoMetadata
      def self.default(visited=[])
        return nil if visited.include?('VideoMetadata')
        visited = visited + ['VideoMetadata']
        {
          codec: 'codec',
          duration_millis: 1,
          format: 'format',
          frame_rate: 1.0,
          frame_height: 1,
          frame_width: 1,
          color_range: 'color_range',
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoMetadata.new
        data = {}
        data['Codec'] = stub[:codec] unless stub[:codec].nil?
        data['DurationMillis'] = stub[:duration_millis] unless stub[:duration_millis].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['FrameRate'] = Hearth::NumberHelper.serialize(stub[:frame_rate])
        data['FrameHeight'] = stub[:frame_height] unless stub[:frame_height].nil?
        data['FrameWidth'] = stub[:frame_width] unless stub[:frame_width].nil?
        data['ColorRange'] = stub[:color_range] unless stub[:color_range].nil?
        data
      end
    end

    # Operation Stubber for GetContentModeration
    class GetContentModeration
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadata.default(visited),
          moderation_labels: ContentModerationDetections.default(visited),
          next_token: 'next_token',
          moderation_model_version: 'moderation_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['ModerationLabels'] = ContentModerationDetections.stub(stub[:moderation_labels]) unless stub[:moderation_labels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ModerationModelVersion'] = stub[:moderation_model_version] unless stub[:moderation_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContentModerationDetections
    class ContentModerationDetections
      def self.default(visited=[])
        return nil if visited.include?('ContentModerationDetections')
        visited = visited + ['ContentModerationDetections']
        [
          ContentModerationDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContentModerationDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContentModerationDetection
    class ContentModerationDetection
      def self.default(visited=[])
        return nil if visited.include?('ContentModerationDetection')
        visited = visited + ['ContentModerationDetection']
        {
          timestamp: 1,
          moderation_label: ModerationLabel.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentModerationDetection.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['ModerationLabel'] = ModerationLabel.stub(stub[:moderation_label]) unless stub[:moderation_label].nil?
        data
      end
    end

    # Operation Stubber for GetFaceDetection
    class GetFaceDetection
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadata.default(visited),
          next_token: 'next_token',
          faces: FaceDetections.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Faces'] = FaceDetections.stub(stub[:faces]) unless stub[:faces].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FaceDetections
    class FaceDetections
      def self.default(visited=[])
        return nil if visited.include?('FaceDetections')
        visited = visited + ['FaceDetections']
        [
          FaceDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FaceDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaceDetection
    class FaceDetection
      def self.default(visited=[])
        return nil if visited.include?('FaceDetection')
        visited = visited + ['FaceDetection']
        {
          timestamp: 1,
          face: FaceDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FaceDetection.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Face'] = FaceDetail.stub(stub[:face]) unless stub[:face].nil?
        data
      end
    end

    # Operation Stubber for GetFaceSearch
    class GetFaceSearch
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          next_token: 'next_token',
          video_metadata: VideoMetadata.default(visited),
          persons: PersonMatches.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['Persons'] = PersonMatches.stub(stub[:persons]) unless stub[:persons].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PersonMatches
    class PersonMatches
      def self.default(visited=[])
        return nil if visited.include?('PersonMatches')
        visited = visited + ['PersonMatches']
        [
          PersonMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PersonMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PersonMatch
    class PersonMatch
      def self.default(visited=[])
        return nil if visited.include?('PersonMatch')
        visited = visited + ['PersonMatch']
        {
          timestamp: 1,
          person: PersonDetail.default(visited),
          face_matches: FaceMatchList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PersonMatch.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Person'] = PersonDetail.stub(stub[:person]) unless stub[:person].nil?
        data['FaceMatches'] = FaceMatchList.stub(stub[:face_matches]) unless stub[:face_matches].nil?
        data
      end
    end

    # List Stubber for FaceMatchList
    class FaceMatchList
      def self.default(visited=[])
        return nil if visited.include?('FaceMatchList')
        visited = visited + ['FaceMatchList']
        [
          FaceMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FaceMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaceMatch
    class FaceMatch
      def self.default(visited=[])
        return nil if visited.include?('FaceMatch')
        visited = visited + ['FaceMatch']
        {
          similarity: 1.0,
          face: Face.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FaceMatch.new
        data = {}
        data['Similarity'] = Hearth::NumberHelper.serialize(stub[:similarity])
        data['Face'] = Face.stub(stub[:face]) unless stub[:face].nil?
        data
      end
    end

    # Structure Stubber for Face
    class Face
      def self.default(visited=[])
        return nil if visited.include?('Face')
        visited = visited + ['Face']
        {
          face_id: 'face_id',
          bounding_box: BoundingBox.default(visited),
          image_id: 'image_id',
          external_image_id: 'external_image_id',
          confidence: 1.0,
          index_faces_model_version: 'index_faces_model_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Face.new
        data = {}
        data['FaceId'] = stub[:face_id] unless stub[:face_id].nil?
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['ExternalImageId'] = stub[:external_image_id] unless stub[:external_image_id].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['IndexFacesModelVersion'] = stub[:index_faces_model_version] unless stub[:index_faces_model_version].nil?
        data
      end
    end

    # Structure Stubber for PersonDetail
    class PersonDetail
      def self.default(visited=[])
        return nil if visited.include?('PersonDetail')
        visited = visited + ['PersonDetail']
        {
          index: 1,
          bounding_box: BoundingBox.default(visited),
          face: FaceDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PersonDetail.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['BoundingBox'] = BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Face'] = FaceDetail.stub(stub[:face]) unless stub[:face].nil?
        data
      end
    end

    # Operation Stubber for GetLabelDetection
    class GetLabelDetection
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadata.default(visited),
          next_token: 'next_token',
          labels: LabelDetections.default(visited),
          label_model_version: 'label_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Labels'] = LabelDetections.stub(stub[:labels]) unless stub[:labels].nil?
        data['LabelModelVersion'] = stub[:label_model_version] unless stub[:label_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LabelDetections
    class LabelDetections
      def self.default(visited=[])
        return nil if visited.include?('LabelDetections')
        visited = visited + ['LabelDetections']
        [
          LabelDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LabelDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LabelDetection
    class LabelDetection
      def self.default(visited=[])
        return nil if visited.include?('LabelDetection')
        visited = visited + ['LabelDetection']
        {
          timestamp: 1,
          label: Label.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelDetection.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Label'] = Label.stub(stub[:label]) unless stub[:label].nil?
        data
      end
    end

    # Operation Stubber for GetPersonTracking
    class GetPersonTracking
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadata.default(visited),
          next_token: 'next_token',
          persons: PersonDetections.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Persons'] = PersonDetections.stub(stub[:persons]) unless stub[:persons].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PersonDetections
    class PersonDetections
      def self.default(visited=[])
        return nil if visited.include?('PersonDetections')
        visited = visited + ['PersonDetections']
        [
          PersonDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PersonDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PersonDetection
    class PersonDetection
      def self.default(visited=[])
        return nil if visited.include?('PersonDetection')
        visited = visited + ['PersonDetection']
        {
          timestamp: 1,
          person: PersonDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PersonDetection.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Person'] = PersonDetail.stub(stub[:person]) unless stub[:person].nil?
        data
      end
    end

    # Operation Stubber for GetSegmentDetection
    class GetSegmentDetection
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadataList.default(visited),
          audio_metadata: AudioMetadataList.default(visited),
          next_token: 'next_token',
          segments: SegmentDetections.default(visited),
          selected_segment_types: SegmentTypesInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadataList.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['AudioMetadata'] = AudioMetadataList.stub(stub[:audio_metadata]) unless stub[:audio_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Segments'] = SegmentDetections.stub(stub[:segments]) unless stub[:segments].nil?
        data['SelectedSegmentTypes'] = SegmentTypesInfo.stub(stub[:selected_segment_types]) unless stub[:selected_segment_types].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SegmentTypesInfo
    class SegmentTypesInfo
      def self.default(visited=[])
        return nil if visited.include?('SegmentTypesInfo')
        visited = visited + ['SegmentTypesInfo']
        [
          SegmentTypeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SegmentTypeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SegmentTypeInfo
    class SegmentTypeInfo
      def self.default(visited=[])
        return nil if visited.include?('SegmentTypeInfo')
        visited = visited + ['SegmentTypeInfo']
        {
          type: 'type',
          model_version: 'model_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentTypeInfo.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data
      end
    end

    # List Stubber for SegmentDetections
    class SegmentDetections
      def self.default(visited=[])
        return nil if visited.include?('SegmentDetections')
        visited = visited + ['SegmentDetections']
        [
          SegmentDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SegmentDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SegmentDetection
    class SegmentDetection
      def self.default(visited=[])
        return nil if visited.include?('SegmentDetection')
        visited = visited + ['SegmentDetection']
        {
          type: 'type',
          start_timestamp_millis: 1,
          end_timestamp_millis: 1,
          duration_millis: 1,
          start_timecode_smpte: 'start_timecode_smpte',
          end_timecode_smpte: 'end_timecode_smpte',
          duration_smpte: 'duration_smpte',
          technical_cue_segment: TechnicalCueSegment.default(visited),
          shot_segment: ShotSegment.default(visited),
          start_frame_number: 1,
          end_frame_number: 1,
          duration_frames: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentDetection.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['StartTimestampMillis'] = stub[:start_timestamp_millis] unless stub[:start_timestamp_millis].nil?
        data['EndTimestampMillis'] = stub[:end_timestamp_millis] unless stub[:end_timestamp_millis].nil?
        data['DurationMillis'] = stub[:duration_millis] unless stub[:duration_millis].nil?
        data['StartTimecodeSMPTE'] = stub[:start_timecode_smpte] unless stub[:start_timecode_smpte].nil?
        data['EndTimecodeSMPTE'] = stub[:end_timecode_smpte] unless stub[:end_timecode_smpte].nil?
        data['DurationSMPTE'] = stub[:duration_smpte] unless stub[:duration_smpte].nil?
        data['TechnicalCueSegment'] = TechnicalCueSegment.stub(stub[:technical_cue_segment]) unless stub[:technical_cue_segment].nil?
        data['ShotSegment'] = ShotSegment.stub(stub[:shot_segment]) unless stub[:shot_segment].nil?
        data['StartFrameNumber'] = stub[:start_frame_number] unless stub[:start_frame_number].nil?
        data['EndFrameNumber'] = stub[:end_frame_number] unless stub[:end_frame_number].nil?
        data['DurationFrames'] = stub[:duration_frames] unless stub[:duration_frames].nil?
        data
      end
    end

    # Structure Stubber for ShotSegment
    class ShotSegment
      def self.default(visited=[])
        return nil if visited.include?('ShotSegment')
        visited = visited + ['ShotSegment']
        {
          index: 1,
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ShotSegment.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for TechnicalCueSegment
    class TechnicalCueSegment
      def self.default(visited=[])
        return nil if visited.include?('TechnicalCueSegment')
        visited = visited + ['TechnicalCueSegment']
        {
          type: 'type',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TechnicalCueSegment.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # List Stubber for AudioMetadataList
    class AudioMetadataList
      def self.default(visited=[])
        return nil if visited.include?('AudioMetadataList')
        visited = visited + ['AudioMetadataList']
        [
          AudioMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AudioMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AudioMetadata
    class AudioMetadata
      def self.default(visited=[])
        return nil if visited.include?('AudioMetadata')
        visited = visited + ['AudioMetadata']
        {
          codec: 'codec',
          duration_millis: 1,
          sample_rate: 1,
          number_of_channels: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioMetadata.new
        data = {}
        data['Codec'] = stub[:codec] unless stub[:codec].nil?
        data['DurationMillis'] = stub[:duration_millis] unless stub[:duration_millis].nil?
        data['SampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['NumberOfChannels'] = stub[:number_of_channels] unless stub[:number_of_channels].nil?
        data
      end
    end

    # List Stubber for VideoMetadataList
    class VideoMetadataList
      def self.default(visited=[])
        return nil if visited.include?('VideoMetadataList')
        visited = visited + ['VideoMetadataList']
        [
          VideoMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VideoMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTextDetection
    class GetTextDetection
      def self.default(visited=[])
        {
          job_status: 'job_status',
          status_message: 'status_message',
          video_metadata: VideoMetadata.default(visited),
          text_detections: TextDetectionResults.default(visited),
          next_token: 'next_token',
          text_model_version: 'text_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['VideoMetadata'] = VideoMetadata.stub(stub[:video_metadata]) unless stub[:video_metadata].nil?
        data['TextDetections'] = TextDetectionResults.stub(stub[:text_detections]) unless stub[:text_detections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TextModelVersion'] = stub[:text_model_version] unless stub[:text_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TextDetectionResults
    class TextDetectionResults
      def self.default(visited=[])
        return nil if visited.include?('TextDetectionResults')
        visited = visited + ['TextDetectionResults']
        [
          TextDetectionResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TextDetectionResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TextDetectionResult
    class TextDetectionResult
      def self.default(visited=[])
        return nil if visited.include?('TextDetectionResult')
        visited = visited + ['TextDetectionResult']
        {
          timestamp: 1,
          text_detection: TextDetection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TextDetectionResult.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['TextDetection'] = TextDetection.stub(stub[:text_detection]) unless stub[:text_detection].nil?
        data
      end
    end

    # Operation Stubber for IndexFaces
    class IndexFaces
      def self.default(visited=[])
        {
          face_records: FaceRecordList.default(visited),
          orientation_correction: 'orientation_correction',
          face_model_version: 'face_model_version',
          unindexed_faces: UnindexedFaces.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FaceRecords'] = FaceRecordList.stub(stub[:face_records]) unless stub[:face_records].nil?
        data['OrientationCorrection'] = stub[:orientation_correction] unless stub[:orientation_correction].nil?
        data['FaceModelVersion'] = stub[:face_model_version] unless stub[:face_model_version].nil?
        data['UnindexedFaces'] = UnindexedFaces.stub(stub[:unindexed_faces]) unless stub[:unindexed_faces].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnindexedFaces
    class UnindexedFaces
      def self.default(visited=[])
        return nil if visited.include?('UnindexedFaces')
        visited = visited + ['UnindexedFaces']
        [
          UnindexedFace.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UnindexedFace.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnindexedFace
    class UnindexedFace
      def self.default(visited=[])
        return nil if visited.include?('UnindexedFace')
        visited = visited + ['UnindexedFace']
        {
          reasons: Reasons.default(visited),
          face_detail: FaceDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UnindexedFace.new
        data = {}
        data['Reasons'] = Reasons.stub(stub[:reasons]) unless stub[:reasons].nil?
        data['FaceDetail'] = FaceDetail.stub(stub[:face_detail]) unless stub[:face_detail].nil?
        data
      end
    end

    # List Stubber for Reasons
    class Reasons
      def self.default(visited=[])
        return nil if visited.include?('Reasons')
        visited = visited + ['Reasons']
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

    # List Stubber for FaceRecordList
    class FaceRecordList
      def self.default(visited=[])
        return nil if visited.include?('FaceRecordList')
        visited = visited + ['FaceRecordList']
        [
          FaceRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FaceRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaceRecord
    class FaceRecord
      def self.default(visited=[])
        return nil if visited.include?('FaceRecord')
        visited = visited + ['FaceRecord']
        {
          face: Face.default(visited),
          face_detail: FaceDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FaceRecord.new
        data = {}
        data['Face'] = Face.stub(stub[:face]) unless stub[:face].nil?
        data['FaceDetail'] = FaceDetail.stub(stub[:face_detail]) unless stub[:face_detail].nil?
        data
      end
    end

    # Operation Stubber for ListCollections
    class ListCollections
      def self.default(visited=[])
        {
          collection_ids: CollectionIdList.default(visited),
          next_token: 'next_token',
          face_model_versions: FaceModelVersionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CollectionIds'] = CollectionIdList.stub(stub[:collection_ids]) unless stub[:collection_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FaceModelVersions'] = FaceModelVersionList.stub(stub[:face_model_versions]) unless stub[:face_model_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FaceModelVersionList
    class FaceModelVersionList
      def self.default(visited=[])
        return nil if visited.include?('FaceModelVersionList')
        visited = visited + ['FaceModelVersionList']
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

    # List Stubber for CollectionIdList
    class CollectionIdList
      def self.default(visited=[])
        return nil if visited.include?('CollectionIdList')
        visited = visited + ['CollectionIdList']
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

    # Operation Stubber for ListDatasetEntries
    class ListDatasetEntries
      def self.default(visited=[])
        {
          dataset_entries: DatasetEntries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetEntries'] = DatasetEntries.stub(stub[:dataset_entries]) unless stub[:dataset_entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetEntries
    class DatasetEntries
      def self.default(visited=[])
        return nil if visited.include?('DatasetEntries')
        visited = visited + ['DatasetEntries']
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

    # Operation Stubber for ListDatasetLabels
    class ListDatasetLabels
      def self.default(visited=[])
        {
          dataset_label_descriptions: DatasetLabelDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetLabelDescriptions'] = DatasetLabelDescriptions.stub(stub[:dataset_label_descriptions]) unless stub[:dataset_label_descriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetLabelDescriptions
    class DatasetLabelDescriptions
      def self.default(visited=[])
        return nil if visited.include?('DatasetLabelDescriptions')
        visited = visited + ['DatasetLabelDescriptions']
        [
          DatasetLabelDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatasetLabelDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetLabelDescription
    class DatasetLabelDescription
      def self.default(visited=[])
        return nil if visited.include?('DatasetLabelDescription')
        visited = visited + ['DatasetLabelDescription']
        {
          label_name: 'label_name',
          label_stats: DatasetLabelStats.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetLabelDescription.new
        data = {}
        data['LabelName'] = stub[:label_name] unless stub[:label_name].nil?
        data['LabelStats'] = DatasetLabelStats.stub(stub[:label_stats]) unless stub[:label_stats].nil?
        data
      end
    end

    # Structure Stubber for DatasetLabelStats
    class DatasetLabelStats
      def self.default(visited=[])
        return nil if visited.include?('DatasetLabelStats')
        visited = visited + ['DatasetLabelStats']
        {
          entry_count: 1,
          bounding_box_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetLabelStats.new
        data = {}
        data['EntryCount'] = stub[:entry_count] unless stub[:entry_count].nil?
        data['BoundingBoxCount'] = stub[:bounding_box_count] unless stub[:bounding_box_count].nil?
        data
      end
    end

    # Operation Stubber for ListFaces
    class ListFaces
      def self.default(visited=[])
        {
          faces: FaceList.default(visited),
          next_token: 'next_token',
          face_model_version: 'face_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Faces'] = FaceList.stub(stub[:faces]) unless stub[:faces].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FaceModelVersion'] = stub[:face_model_version] unless stub[:face_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FaceList
    class FaceList
      def self.default(visited=[])
        return nil if visited.include?('FaceList')
        visited = visited + ['FaceList']
        [
          Face.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Face.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListStreamProcessors
    class ListStreamProcessors
      def self.default(visited=[])
        {
          next_token: 'next_token',
          stream_processors: StreamProcessorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['StreamProcessors'] = StreamProcessorList.stub(stub[:stream_processors]) unless stub[:stream_processors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StreamProcessorList
    class StreamProcessorList
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessorList')
        visited = visited + ['StreamProcessorList']
        [
          StreamProcessor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StreamProcessor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamProcessor
    class StreamProcessor
      def self.default(visited=[])
        return nil if visited.include?('StreamProcessor')
        visited = visited + ['StreamProcessor']
        {
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamProcessor.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for RecognizeCelebrities
    class RecognizeCelebrities
      def self.default(visited=[])
        {
          celebrity_faces: CelebrityList.default(visited),
          unrecognized_faces: ComparedFaceList.default(visited),
          orientation_correction: 'orientation_correction',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CelebrityFaces'] = CelebrityList.stub(stub[:celebrity_faces]) unless stub[:celebrity_faces].nil?
        data['UnrecognizedFaces'] = ComparedFaceList.stub(stub[:unrecognized_faces]) unless stub[:unrecognized_faces].nil?
        data['OrientationCorrection'] = stub[:orientation_correction] unless stub[:orientation_correction].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComparedFaceList
    class ComparedFaceList
      def self.default(visited=[])
        return nil if visited.include?('ComparedFaceList')
        visited = visited + ['ComparedFaceList']
        [
          ComparedFace.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComparedFace.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for CelebrityList
    class CelebrityList
      def self.default(visited=[])
        return nil if visited.include?('CelebrityList')
        visited = visited + ['CelebrityList']
        [
          Celebrity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Celebrity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Celebrity
    class Celebrity
      def self.default(visited=[])
        return nil if visited.include?('Celebrity')
        visited = visited + ['Celebrity']
        {
          urls: Urls.default(visited),
          name: 'name',
          id: 'id',
          face: ComparedFace.default(visited),
          match_confidence: 1.0,
          known_gender: KnownGender.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Celebrity.new
        data = {}
        data['Urls'] = Urls.stub(stub[:urls]) unless stub[:urls].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Face'] = ComparedFace.stub(stub[:face]) unless stub[:face].nil?
        data['MatchConfidence'] = Hearth::NumberHelper.serialize(stub[:match_confidence])
        data['KnownGender'] = KnownGender.stub(stub[:known_gender]) unless stub[:known_gender].nil?
        data
      end
    end

    # Operation Stubber for SearchFaces
    class SearchFaces
      def self.default(visited=[])
        {
          searched_face_id: 'searched_face_id',
          face_matches: FaceMatchList.default(visited),
          face_model_version: 'face_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SearchedFaceId'] = stub[:searched_face_id] unless stub[:searched_face_id].nil?
        data['FaceMatches'] = FaceMatchList.stub(stub[:face_matches]) unless stub[:face_matches].nil?
        data['FaceModelVersion'] = stub[:face_model_version] unless stub[:face_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchFacesByImage
    class SearchFacesByImage
      def self.default(visited=[])
        {
          searched_face_bounding_box: BoundingBox.default(visited),
          searched_face_confidence: 1.0,
          face_matches: FaceMatchList.default(visited),
          face_model_version: 'face_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SearchedFaceBoundingBox'] = BoundingBox.stub(stub[:searched_face_bounding_box]) unless stub[:searched_face_bounding_box].nil?
        data['SearchedFaceConfidence'] = Hearth::NumberHelper.serialize(stub[:searched_face_confidence])
        data['FaceMatches'] = FaceMatchList.stub(stub[:face_matches]) unless stub[:face_matches].nil?
        data['FaceModelVersion'] = stub[:face_model_version] unless stub[:face_model_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartCelebrityRecognition
    class StartCelebrityRecognition
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartContentModeration
    class StartContentModeration
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartFaceDetection
    class StartFaceDetection
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartFaceSearch
    class StartFaceSearch
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartLabelDetection
    class StartLabelDetection
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartPersonTracking
    class StartPersonTracking
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartProjectVersion
    class StartProjectVersion
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSegmentDetection
    class StartSegmentDetection
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartStreamProcessor
    class StartStreamProcessor
      def self.default(visited=[])
        {
          session_id: 'session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartTextDetection
    class StartTextDetection
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopProjectVersion
    class StopProjectVersion
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopStreamProcessor
    class StopStreamProcessor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDatasetEntries
    class UpdateDatasetEntries
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStreamProcessor
    class UpdateStreamProcessor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
