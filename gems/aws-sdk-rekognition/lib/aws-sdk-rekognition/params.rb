# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Rekognition
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module AgeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgeRange, context: context)
        type = Types::AgeRange.new
        type.low = params[:low]
        type.high = params[:high]
        type
      end
    end

    module Asset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Asset, context: context)
        type = Types::Asset.new
        type.ground_truth_manifest = GroundTruthManifest.build(params[:ground_truth_manifest], context: "#{context}[:ground_truth_manifest]") unless params[:ground_truth_manifest].nil?
        type
      end
    end

    module Assets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Asset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AudioMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioMetadata, context: context)
        type = Types::AudioMetadata.new
        type.codec = params[:codec]
        type.duration_millis = params[:duration_millis]
        type.sample_rate = params[:sample_rate]
        type.number_of_channels = params[:number_of_channels]
        type
      end
    end

    module AudioMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AudioMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Beard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Beard, context: context)
        type = Types::Beard.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module BlackFrame
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlackFrame, context: context)
        type = Types::BlackFrame.new
        type.max_pixel_threshold = params[:max_pixel_threshold]
        type.min_coverage_percentage = params[:min_coverage_percentage]
        type
      end
    end

    module BodyParts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProtectiveEquipmentBodyPart.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BoundingBox
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BoundingBox, context: context)
        type = Types::BoundingBox.new
        type.width = params[:width]
        type.height = params[:height]
        type.left = params[:left]
        type.top = params[:top]
        type
      end
    end

    module Celebrity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Celebrity, context: context)
        type = Types::Celebrity.new
        type.urls = Urls.build(params[:urls], context: "#{context}[:urls]") unless params[:urls].nil?
        type.name = params[:name]
        type.id = params[:id]
        type.face = ComparedFace.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type.match_confidence = params[:match_confidence]
        type.known_gender = KnownGender.build(params[:known_gender], context: "#{context}[:known_gender]") unless params[:known_gender].nil?
        type
      end
    end

    module CelebrityDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CelebrityDetail, context: context)
        type = Types::CelebrityDetail.new
        type.urls = Urls.build(params[:urls], context: "#{context}[:urls]") unless params[:urls].nil?
        type.name = params[:name]
        type.id = params[:id]
        type.confidence = params[:confidence]
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.face = FaceDetail.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type.known_gender = KnownGender.build(params[:known_gender], context: "#{context}[:known_gender]") unless params[:known_gender].nil?
        type
      end
    end

    module CelebrityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Celebrity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CelebrityRecognition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CelebrityRecognition, context: context)
        type = Types::CelebrityRecognition.new
        type.timestamp = params[:timestamp]
        type.celebrity = CelebrityDetail.build(params[:celebrity], context: "#{context}[:celebrity]") unless params[:celebrity].nil?
        type
      end
    end

    module CelebrityRecognitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CelebrityRecognition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CollectionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CompareFacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompareFacesInput, context: context)
        type = Types::CompareFacesInput.new
        type.source_image = Image.build(params[:source_image], context: "#{context}[:source_image]") unless params[:source_image].nil?
        type.target_image = Image.build(params[:target_image], context: "#{context}[:target_image]") unless params[:target_image].nil?
        type.similarity_threshold = params[:similarity_threshold]
        type.quality_filter = params[:quality_filter]
        type
      end
    end

    module CompareFacesMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompareFacesMatch, context: context)
        type = Types::CompareFacesMatch.new
        type.similarity = params[:similarity]
        type.face = ComparedFace.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type
      end
    end

    module CompareFacesMatchList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompareFacesMatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompareFacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompareFacesOutput, context: context)
        type = Types::CompareFacesOutput.new
        type.source_image_face = ComparedSourceImageFace.build(params[:source_image_face], context: "#{context}[:source_image_face]") unless params[:source_image_face].nil?
        type.face_matches = CompareFacesMatchList.build(params[:face_matches], context: "#{context}[:face_matches]") unless params[:face_matches].nil?
        type.unmatched_faces = CompareFacesUnmatchList.build(params[:unmatched_faces], context: "#{context}[:unmatched_faces]") unless params[:unmatched_faces].nil?
        type.source_image_orientation_correction = params[:source_image_orientation_correction]
        type.target_image_orientation_correction = params[:target_image_orientation_correction]
        type
      end
    end

    module CompareFacesUnmatchList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComparedFace.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComparedFace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComparedFace, context: context)
        type = Types::ComparedFace.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.confidence = params[:confidence]
        type.landmarks = Landmarks.build(params[:landmarks], context: "#{context}[:landmarks]") unless params[:landmarks].nil?
        type.pose = Pose.build(params[:pose], context: "#{context}[:pose]") unless params[:pose].nil?
        type.quality = ImageQuality.build(params[:quality], context: "#{context}[:quality]") unless params[:quality].nil?
        type.emotions = Emotions.build(params[:emotions], context: "#{context}[:emotions]") unless params[:emotions].nil?
        type.smile = Smile.build(params[:smile], context: "#{context}[:smile]") unless params[:smile].nil?
        type
      end
    end

    module ComparedFaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComparedFace.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComparedSourceImageFace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComparedSourceImageFace, context: context)
        type = Types::ComparedSourceImageFace.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.confidence = params[:confidence]
        type
      end
    end

    module ConnectedHomeLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectedHomeSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectedHomeSettings, context: context)
        type = Types::ConnectedHomeSettings.new
        type.labels = ConnectedHomeLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.min_confidence = params[:min_confidence]
        type
      end
    end

    module ConnectedHomeSettingsForUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectedHomeSettingsForUpdate, context: context)
        type = Types::ConnectedHomeSettingsForUpdate.new
        type.labels = ConnectedHomeLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.min_confidence = params[:min_confidence]
        type
      end
    end

    module ContentClassifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContentModerationDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentModerationDetection, context: context)
        type = Types::ContentModerationDetection.new
        type.timestamp = params[:timestamp]
        type.moderation_label = ModerationLabel.build(params[:moderation_label], context: "#{context}[:moderation_label]") unless params[:moderation_label].nil?
        type
      end
    end

    module ContentModerationDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContentModerationDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CoversBodyPart
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoversBodyPart, context: context)
        type = Types::CoversBodyPart.new
        type.confidence = params[:confidence]
        type.value = params[:value]
        type
      end
    end

    module CreateCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCollectionInput, context: context)
        type = Types::CreateCollectionInput.new
        type.collection_id = params[:collection_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCollectionOutput, context: context)
        type = Types::CreateCollectionOutput.new
        type.status_code = params[:status_code]
        type.collection_arn = params[:collection_arn]
        type.face_model_version = params[:face_model_version]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.dataset_source = DatasetSource.build(params[:dataset_source], context: "#{context}[:dataset_source]") unless params[:dataset_source].nil?
        type.dataset_type = params[:dataset_type]
        type.project_arn = params[:project_arn]
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project_arn = params[:project_arn]
        type
      end
    end

    module CreateProjectVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectVersionInput, context: context)
        type = Types::CreateProjectVersionInput.new
        type.project_arn = params[:project_arn]
        type.version_name = params[:version_name]
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.training_data = TrainingData.build(params[:training_data], context: "#{context}[:training_data]") unless params[:training_data].nil?
        type.testing_data = TestingData.build(params[:testing_data], context: "#{context}[:testing_data]") unless params[:testing_data].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module CreateProjectVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectVersionOutput, context: context)
        type = Types::CreateProjectVersionOutput.new
        type.project_version_arn = params[:project_version_arn]
        type
      end
    end

    module CreateStreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamProcessorInput, context: context)
        type = Types::CreateStreamProcessorInput.new
        type.input = StreamProcessorInput.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.output = StreamProcessorOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.name = params[:name]
        type.settings = StreamProcessorSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.notification_channel = StreamProcessorNotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.kms_key_id = params[:kms_key_id]
        type.regions_of_interest = RegionsOfInterest.build(params[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless params[:regions_of_interest].nil?
        type.data_sharing_preference = StreamProcessorDataSharingPreference.build(params[:data_sharing_preference], context: "#{context}[:data_sharing_preference]") unless params[:data_sharing_preference].nil?
        type
      end
    end

    module CreateStreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamProcessorOutput, context: context)
        type = Types::CreateStreamProcessorOutput.new
        type.stream_processor_arn = params[:stream_processor_arn]
        type
      end
    end

    module CustomLabel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomLabel, context: context)
        type = Types::CustomLabel.new
        type.name = params[:name]
        type.confidence = params[:confidence]
        type.geometry = Geometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type
      end
    end

    module CustomLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomLabel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetChanges, context: context)
        type = Types::DatasetChanges.new
        type.ground_truth = params[:ground_truth]
        type
      end
    end

    module DatasetDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetDescription, context: context)
        type = Types::DatasetDescription.new
        type.creation_timestamp = params[:creation_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.status_message_code = params[:status_message_code]
        type.dataset_stats = DatasetStats.build(params[:dataset_stats], context: "#{context}[:dataset_stats]") unless params[:dataset_stats].nil?
        type
      end
    end

    module DatasetEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DatasetLabelDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetLabelDescription, context: context)
        type = Types::DatasetLabelDescription.new
        type.label_name = params[:label_name]
        type.label_stats = DatasetLabelStats.build(params[:label_stats], context: "#{context}[:label_stats]") unless params[:label_stats].nil?
        type
      end
    end

    module DatasetLabelDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetLabelDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetLabelStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetLabelStats, context: context)
        type = Types::DatasetLabelStats.new
        type.entry_count = params[:entry_count]
        type.bounding_box_count = params[:bounding_box_count]
        type
      end
    end

    module DatasetLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DatasetMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetMetadata, context: context)
        type = Types::DatasetMetadata.new
        type.creation_timestamp = params[:creation_timestamp]
        type.dataset_type = params[:dataset_type]
        type.dataset_arn = params[:dataset_arn]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.status_message_code = params[:status_message_code]
        type
      end
    end

    module DatasetMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSource, context: context)
        type = Types::DatasetSource.new
        type.ground_truth_manifest = GroundTruthManifest.build(params[:ground_truth_manifest], context: "#{context}[:ground_truth_manifest]") unless params[:ground_truth_manifest].nil?
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module DatasetStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetStats, context: context)
        type = Types::DatasetStats.new
        type.labeled_entries = params[:labeled_entries]
        type.total_entries = params[:total_entries]
        type.total_labels = params[:total_labels]
        type.error_entries = params[:error_entries]
        type
      end
    end

    module DeleteCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCollectionInput, context: context)
        type = Types::DeleteCollectionInput.new
        type.collection_id = params[:collection_id]
        type
      end
    end

    module DeleteCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCollectionOutput, context: context)
        type = Types::DeleteCollectionOutput.new
        type.status_code = params[:status_code]
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.dataset_arn = params[:dataset_arn]
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

    module DeleteFacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFacesInput, context: context)
        type = Types::DeleteFacesInput.new
        type.collection_id = params[:collection_id]
        type.face_ids = FaceIdList.build(params[:face_ids], context: "#{context}[:face_ids]") unless params[:face_ids].nil?
        type
      end
    end

    module DeleteFacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFacesOutput, context: context)
        type = Types::DeleteFacesOutput.new
        type.deleted_faces = FaceIdList.build(params[:deleted_faces], context: "#{context}[:deleted_faces]") unless params[:deleted_faces].nil?
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project_arn = params[:project_arn]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type.status = params[:status]
        type
      end
    end

    module DeleteProjectVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectVersionInput, context: context)
        type = Types::DeleteProjectVersionInput.new
        type.project_version_arn = params[:project_version_arn]
        type
      end
    end

    module DeleteProjectVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectVersionOutput, context: context)
        type = Types::DeleteProjectVersionOutput.new
        type.status = params[:status]
        type
      end
    end

    module DeleteStreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamProcessorInput, context: context)
        type = Types::DeleteStreamProcessorInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteStreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamProcessorOutput, context: context)
        type = Types::DeleteStreamProcessorOutput.new
        type
      end
    end

    module DescribeCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCollectionInput, context: context)
        type = Types::DescribeCollectionInput.new
        type.collection_id = params[:collection_id]
        type
      end
    end

    module DescribeCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCollectionOutput, context: context)
        type = Types::DescribeCollectionOutput.new
        type.face_count = params[:face_count]
        type.face_model_version = params[:face_model_version]
        type.collection_arn = params[:collection_arn]
        type.creation_timestamp = params[:creation_timestamp]
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset_description = DatasetDescription.build(params[:dataset_description], context: "#{context}[:dataset_description]") unless params[:dataset_description].nil?
        type
      end
    end

    module DescribeProjectVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectVersionsInput, context: context)
        type = Types::DescribeProjectVersionsInput.new
        type.project_arn = params[:project_arn]
        type.version_names = VersionNames.build(params[:version_names], context: "#{context}[:version_names]") unless params[:version_names].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeProjectVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectVersionsOutput, context: context)
        type = Types::DescribeProjectVersionsOutput.new
        type.project_version_descriptions = ProjectVersionDescriptions.build(params[:project_version_descriptions], context: "#{context}[:project_version_descriptions]") unless params[:project_version_descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectsInput, context: context)
        type = Types::DescribeProjectsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.project_names = ProjectNames.build(params[:project_names], context: "#{context}[:project_names]") unless params[:project_names].nil?
        type
      end
    end

    module DescribeProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectsOutput, context: context)
        type = Types::DescribeProjectsOutput.new
        type.project_descriptions = ProjectDescriptions.build(params[:project_descriptions], context: "#{context}[:project_descriptions]") unless params[:project_descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamProcessorInput, context: context)
        type = Types::DescribeStreamProcessorInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeStreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamProcessorOutput, context: context)
        type = Types::DescribeStreamProcessorOutput.new
        type.name = params[:name]
        type.stream_processor_arn = params[:stream_processor_arn]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_timestamp = params[:creation_timestamp]
        type.last_update_timestamp = params[:last_update_timestamp]
        type.input = StreamProcessorInput.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.output = StreamProcessorOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.role_arn = params[:role_arn]
        type.settings = StreamProcessorSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.notification_channel = StreamProcessorNotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.kms_key_id = params[:kms_key_id]
        type.regions_of_interest = RegionsOfInterest.build(params[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless params[:regions_of_interest].nil?
        type.data_sharing_preference = StreamProcessorDataSharingPreference.build(params[:data_sharing_preference], context: "#{context}[:data_sharing_preference]") unless params[:data_sharing_preference].nil?
        type
      end
    end

    module DetectCustomLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectCustomLabelsInput, context: context)
        type = Types::DetectCustomLabelsInput.new
        type.project_version_arn = params[:project_version_arn]
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.max_results = params[:max_results]
        type.min_confidence = params[:min_confidence]
        type
      end
    end

    module DetectCustomLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectCustomLabelsOutput, context: context)
        type = Types::DetectCustomLabelsOutput.new
        type.custom_labels = CustomLabels.build(params[:custom_labels], context: "#{context}[:custom_labels]") unless params[:custom_labels].nil?
        type
      end
    end

    module DetectFacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectFacesInput, context: context)
        type = Types::DetectFacesInput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DetectFacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectFacesOutput, context: context)
        type = Types::DetectFacesOutput.new
        type.face_details = FaceDetailList.build(params[:face_details], context: "#{context}[:face_details]") unless params[:face_details].nil?
        type.orientation_correction = params[:orientation_correction]
        type
      end
    end

    module DetectLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectLabelsInput, context: context)
        type = Types::DetectLabelsInput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.max_labels = params[:max_labels]
        type.min_confidence = params[:min_confidence]
        type
      end
    end

    module DetectLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectLabelsOutput, context: context)
        type = Types::DetectLabelsOutput.new
        type.labels = Labels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.orientation_correction = params[:orientation_correction]
        type.label_model_version = params[:label_model_version]
        type
      end
    end

    module DetectModerationLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectModerationLabelsInput, context: context)
        type = Types::DetectModerationLabelsInput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.min_confidence = params[:min_confidence]
        type.human_loop_config = HumanLoopConfig.build(params[:human_loop_config], context: "#{context}[:human_loop_config]") unless params[:human_loop_config].nil?
        type
      end
    end

    module DetectModerationLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectModerationLabelsOutput, context: context)
        type = Types::DetectModerationLabelsOutput.new
        type.moderation_labels = ModerationLabels.build(params[:moderation_labels], context: "#{context}[:moderation_labels]") unless params[:moderation_labels].nil?
        type.moderation_model_version = params[:moderation_model_version]
        type.human_loop_activation_output = HumanLoopActivationOutput.build(params[:human_loop_activation_output], context: "#{context}[:human_loop_activation_output]") unless params[:human_loop_activation_output].nil?
        type
      end
    end

    module DetectProtectiveEquipmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectProtectiveEquipmentInput, context: context)
        type = Types::DetectProtectiveEquipmentInput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.summarization_attributes = ProtectiveEquipmentSummarizationAttributes.build(params[:summarization_attributes], context: "#{context}[:summarization_attributes]") unless params[:summarization_attributes].nil?
        type
      end
    end

    module DetectProtectiveEquipmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectProtectiveEquipmentOutput, context: context)
        type = Types::DetectProtectiveEquipmentOutput.new
        type.protective_equipment_model_version = params[:protective_equipment_model_version]
        type.persons = ProtectiveEquipmentPersons.build(params[:persons], context: "#{context}[:persons]") unless params[:persons].nil?
        type.summary = ProtectiveEquipmentSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module DetectTextFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectTextFilters, context: context)
        type = Types::DetectTextFilters.new
        type.word_filter = DetectionFilter.build(params[:word_filter], context: "#{context}[:word_filter]") unless params[:word_filter].nil?
        type.regions_of_interest = RegionsOfInterest.build(params[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless params[:regions_of_interest].nil?
        type
      end
    end

    module DetectTextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectTextInput, context: context)
        type = Types::DetectTextInput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.filters = DetectTextFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DetectTextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectTextOutput, context: context)
        type = Types::DetectTextOutput.new
        type.text_detections = TextDetectionList.build(params[:text_detections], context: "#{context}[:text_detections]") unless params[:text_detections].nil?
        type.text_model_version = params[:text_model_version]
        type
      end
    end

    module DetectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectionFilter, context: context)
        type = Types::DetectionFilter.new
        type.min_confidence = params[:min_confidence]
        type.min_bounding_box_height = params[:min_bounding_box_height]
        type.min_bounding_box_width = params[:min_bounding_box_width]
        type
      end
    end

    module DistributeDataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DistributeDataset, context: context)
        type = Types::DistributeDataset.new
        type.arn = params[:arn]
        type
      end
    end

    module DistributeDatasetEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DistributeDatasetEntriesInput, context: context)
        type = Types::DistributeDatasetEntriesInput.new
        type.datasets = DistributeDatasetMetadataList.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type
      end
    end

    module DistributeDatasetEntriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DistributeDatasetEntriesOutput, context: context)
        type = Types::DistributeDatasetEntriesOutput.new
        type
      end
    end

    module DistributeDatasetMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DistributeDataset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Emotion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Emotion, context: context)
        type = Types::Emotion.new
        type.type = params[:type]
        type.confidence = params[:confidence]
        type
      end
    end

    module Emotions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Emotion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EquipmentDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EquipmentDetection, context: context)
        type = Types::EquipmentDetection.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.confidence = params[:confidence]
        type.type = params[:type]
        type.covers_body_part = CoversBodyPart.build(params[:covers_body_part], context: "#{context}[:covers_body_part]") unless params[:covers_body_part].nil?
        type
      end
    end

    module EquipmentDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EquipmentDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResult, context: context)
        type = Types::EvaluationResult.new
        type.f1_score = params[:f1_score]
        type.summary = Summary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module EyeOpen
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EyeOpen, context: context)
        type = Types::EyeOpen.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module Eyeglasses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Eyeglasses, context: context)
        type = Types::Eyeglasses.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module Face
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Face, context: context)
        type = Types::Face.new
        type.face_id = params[:face_id]
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.image_id = params[:image_id]
        type.external_image_id = params[:external_image_id]
        type.confidence = params[:confidence]
        type.index_faces_model_version = params[:index_faces_model_version]
        type
      end
    end

    module FaceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaceDetail, context: context)
        type = Types::FaceDetail.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.age_range = AgeRange.build(params[:age_range], context: "#{context}[:age_range]") unless params[:age_range].nil?
        type.smile = Smile.build(params[:smile], context: "#{context}[:smile]") unless params[:smile].nil?
        type.eyeglasses = Eyeglasses.build(params[:eyeglasses], context: "#{context}[:eyeglasses]") unless params[:eyeglasses].nil?
        type.sunglasses = Sunglasses.build(params[:sunglasses], context: "#{context}[:sunglasses]") unless params[:sunglasses].nil?
        type.gender = Gender.build(params[:gender], context: "#{context}[:gender]") unless params[:gender].nil?
        type.beard = Beard.build(params[:beard], context: "#{context}[:beard]") unless params[:beard].nil?
        type.mustache = Mustache.build(params[:mustache], context: "#{context}[:mustache]") unless params[:mustache].nil?
        type.eyes_open = EyeOpen.build(params[:eyes_open], context: "#{context}[:eyes_open]") unless params[:eyes_open].nil?
        type.mouth_open = MouthOpen.build(params[:mouth_open], context: "#{context}[:mouth_open]") unless params[:mouth_open].nil?
        type.emotions = Emotions.build(params[:emotions], context: "#{context}[:emotions]") unless params[:emotions].nil?
        type.landmarks = Landmarks.build(params[:landmarks], context: "#{context}[:landmarks]") unless params[:landmarks].nil?
        type.pose = Pose.build(params[:pose], context: "#{context}[:pose]") unless params[:pose].nil?
        type.quality = ImageQuality.build(params[:quality], context: "#{context}[:quality]") unless params[:quality].nil?
        type.confidence = params[:confidence]
        type
      end
    end

    module FaceDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaceDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaceDetection, context: context)
        type = Types::FaceDetection.new
        type.timestamp = params[:timestamp]
        type.face = FaceDetail.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type
      end
    end

    module FaceDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaceDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Face.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaceMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaceMatch, context: context)
        type = Types::FaceMatch.new
        type.similarity = params[:similarity]
        type.face = Face.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type
      end
    end

    module FaceMatchList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaceMatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaceModelVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FaceRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaceRecord, context: context)
        type = Types::FaceRecord.new
        type.face = Face.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type.face_detail = FaceDetail.build(params[:face_detail], context: "#{context}[:face_detail]") unless params[:face_detail].nil?
        type
      end
    end

    module FaceRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaceRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaceSearchSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaceSearchSettings, context: context)
        type = Types::FaceSearchSettings.new
        type.collection_id = params[:collection_id]
        type.face_match_threshold = params[:face_match_threshold]
        type
      end
    end

    module Gender
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Gender, context: context)
        type = Types::Gender.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module Geometry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Geometry, context: context)
        type = Types::Geometry.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.polygon = Polygon.build(params[:polygon], context: "#{context}[:polygon]") unless params[:polygon].nil?
        type
      end
    end

    module GetCelebrityInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCelebrityInfoInput, context: context)
        type = Types::GetCelebrityInfoInput.new
        type.id = params[:id]
        type
      end
    end

    module GetCelebrityInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCelebrityInfoOutput, context: context)
        type = Types::GetCelebrityInfoOutput.new
        type.urls = Urls.build(params[:urls], context: "#{context}[:urls]") unless params[:urls].nil?
        type.name = params[:name]
        type.known_gender = KnownGender.build(params[:known_gender], context: "#{context}[:known_gender]") unless params[:known_gender].nil?
        type
      end
    end

    module GetCelebrityRecognitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCelebrityRecognitionInput, context: context)
        type = Types::GetCelebrityRecognitionInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module GetCelebrityRecognitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCelebrityRecognitionOutput, context: context)
        type = Types::GetCelebrityRecognitionOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.next_token = params[:next_token]
        type.celebrities = CelebrityRecognitions.build(params[:celebrities], context: "#{context}[:celebrities]") unless params[:celebrities].nil?
        type
      end
    end

    module GetContentModerationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContentModerationInput, context: context)
        type = Types::GetContentModerationInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module GetContentModerationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContentModerationOutput, context: context)
        type = Types::GetContentModerationOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.moderation_labels = ContentModerationDetections.build(params[:moderation_labels], context: "#{context}[:moderation_labels]") unless params[:moderation_labels].nil?
        type.next_token = params[:next_token]
        type.moderation_model_version = params[:moderation_model_version]
        type
      end
    end

    module GetFaceDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFaceDetectionInput, context: context)
        type = Types::GetFaceDetectionInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetFaceDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFaceDetectionOutput, context: context)
        type = Types::GetFaceDetectionOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.next_token = params[:next_token]
        type.faces = FaceDetections.build(params[:faces], context: "#{context}[:faces]") unless params[:faces].nil?
        type
      end
    end

    module GetFaceSearchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFaceSearchInput, context: context)
        type = Types::GetFaceSearchInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module GetFaceSearchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFaceSearchOutput, context: context)
        type = Types::GetFaceSearchOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.next_token = params[:next_token]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.persons = PersonMatches.build(params[:persons], context: "#{context}[:persons]") unless params[:persons].nil?
        type
      end
    end

    module GetLabelDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLabelDetectionInput, context: context)
        type = Types::GetLabelDetectionInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module GetLabelDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLabelDetectionOutput, context: context)
        type = Types::GetLabelDetectionOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.next_token = params[:next_token]
        type.labels = LabelDetections.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.label_model_version = params[:label_model_version]
        type
      end
    end

    module GetPersonTrackingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPersonTrackingInput, context: context)
        type = Types::GetPersonTrackingInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type
      end
    end

    module GetPersonTrackingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPersonTrackingOutput, context: context)
        type = Types::GetPersonTrackingOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.next_token = params[:next_token]
        type.persons = PersonDetections.build(params[:persons], context: "#{context}[:persons]") unless params[:persons].nil?
        type
      end
    end

    module GetSegmentDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentDetectionInput, context: context)
        type = Types::GetSegmentDetectionInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSegmentDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentDetectionOutput, context: context)
        type = Types::GetSegmentDetectionOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadataList.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.audio_metadata = AudioMetadataList.build(params[:audio_metadata], context: "#{context}[:audio_metadata]") unless params[:audio_metadata].nil?
        type.next_token = params[:next_token]
        type.segments = SegmentDetections.build(params[:segments], context: "#{context}[:segments]") unless params[:segments].nil?
        type.selected_segment_types = SegmentTypesInfo.build(params[:selected_segment_types], context: "#{context}[:selected_segment_types]") unless params[:selected_segment_types].nil?
        type
      end
    end

    module GetTextDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTextDetectionInput, context: context)
        type = Types::GetTextDetectionInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTextDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTextDetectionOutput, context: context)
        type = Types::GetTextDetectionOutput.new
        type.job_status = params[:job_status]
        type.status_message = params[:status_message]
        type.video_metadata = VideoMetadata.build(params[:video_metadata], context: "#{context}[:video_metadata]") unless params[:video_metadata].nil?
        type.text_detections = TextDetectionResults.build(params[:text_detections], context: "#{context}[:text_detections]") unless params[:text_detections].nil?
        type.next_token = params[:next_token]
        type.text_model_version = params[:text_model_version]
        type
      end
    end

    module GroundTruthManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroundTruthManifest, context: context)
        type = Types::GroundTruthManifest.new
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module HumanLoopActivationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopActivationOutput, context: context)
        type = Types::HumanLoopActivationOutput.new
        type.human_loop_arn = params[:human_loop_arn]
        type.human_loop_activation_reasons = HumanLoopActivationReasons.build(params[:human_loop_activation_reasons], context: "#{context}[:human_loop_activation_reasons]") unless params[:human_loop_activation_reasons].nil?
        type.human_loop_activation_conditions_evaluation_results = params[:human_loop_activation_conditions_evaluation_results]
        type
      end
    end

    module HumanLoopActivationReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HumanLoopConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopConfig, context: context)
        type = Types::HumanLoopConfig.new
        type.human_loop_name = params[:human_loop_name]
        type.flow_definition_arn = params[:flow_definition_arn]
        type.data_attributes = HumanLoopDataAttributes.build(params[:data_attributes], context: "#{context}[:data_attributes]") unless params[:data_attributes].nil?
        type
      end
    end

    module HumanLoopDataAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopDataAttributes, context: context)
        type = Types::HumanLoopDataAttributes.new
        type.content_classifiers = ContentClassifiers.build(params[:content_classifiers], context: "#{context}[:content_classifiers]") unless params[:content_classifiers].nil?
        type
      end
    end

    module HumanLoopQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopQuotaExceededException, context: context)
        type = Types::HumanLoopQuotaExceededException.new
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.bytes = params[:bytes]
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module ImageQuality
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageQuality, context: context)
        type = Types::ImageQuality.new
        type.brightness = params[:brightness]
        type.sharpness = params[:sharpness]
        type
      end
    end

    module ImageTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageTooLargeException, context: context)
        type = Types::ImageTooLargeException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module IndexFacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexFacesInput, context: context)
        type = Types::IndexFacesInput.new
        type.collection_id = params[:collection_id]
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.external_image_id = params[:external_image_id]
        type.detection_attributes = Attributes.build(params[:detection_attributes], context: "#{context}[:detection_attributes]") unless params[:detection_attributes].nil?
        type.max_faces = params[:max_faces]
        type.quality_filter = params[:quality_filter]
        type
      end
    end

    module IndexFacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexFacesOutput, context: context)
        type = Types::IndexFacesOutput.new
        type.face_records = FaceRecordList.build(params[:face_records], context: "#{context}[:face_records]") unless params[:face_records].nil?
        type.orientation_correction = params[:orientation_correction]
        type.face_model_version = params[:face_model_version]
        type.unindexed_faces = UnindexedFaces.build(params[:unindexed_faces], context: "#{context}[:unindexed_faces]") unless params[:unindexed_faces].nil?
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.confidence = params[:confidence]
        type
      end
    end

    module Instances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module InvalidImageFormatException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidImageFormatException, context: context)
        type = Types::InvalidImageFormatException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module InvalidPaginationTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationTokenException, context: context)
        type = Types::InvalidPaginationTokenException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module InvalidS3ObjectException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3ObjectException, context: context)
        type = Types::InvalidS3ObjectException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module KinesisDataStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisDataStream, context: context)
        type = Types::KinesisDataStream.new
        type.arn = params[:arn]
        type
      end
    end

    module KinesisVideoStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisVideoStream, context: context)
        type = Types::KinesisVideoStream.new
        type.arn = params[:arn]
        type
      end
    end

    module KinesisVideoStreamStartSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisVideoStreamStartSelector, context: context)
        type = Types::KinesisVideoStreamStartSelector.new
        type.producer_timestamp = params[:producer_timestamp]
        type.fragment_number = params[:fragment_number]
        type
      end
    end

    module KnownGender
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KnownGender, context: context)
        type = Types::KnownGender.new
        type.type = params[:type]
        type
      end
    end

    module Label
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Label, context: context)
        type = Types::Label.new
        type.name = params[:name]
        type.confidence = params[:confidence]
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.parents = Parents.build(params[:parents], context: "#{context}[:parents]") unless params[:parents].nil?
        type
      end
    end

    module LabelDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelDetection, context: context)
        type = Types::LabelDetection.new
        type.timestamp = params[:timestamp]
        type.label = Label.build(params[:label], context: "#{context}[:label]") unless params[:label].nil?
        type
      end
    end

    module LabelDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LabelDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Labels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Label.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Landmark
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Landmark, context: context)
        type = Types::Landmark.new
        type.type = params[:type]
        type.x = params[:x]
        type.y = params[:y]
        type
      end
    end

    module Landmarks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Landmark.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module ListCollectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCollectionsInput, context: context)
        type = Types::ListCollectionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCollectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCollectionsOutput, context: context)
        type = Types::ListCollectionsOutput.new
        type.collection_ids = CollectionIdList.build(params[:collection_ids], context: "#{context}[:collection_ids]") unless params[:collection_ids].nil?
        type.next_token = params[:next_token]
        type.face_model_versions = FaceModelVersionList.build(params[:face_model_versions], context: "#{context}[:face_model_versions]") unless params[:face_model_versions].nil?
        type
      end
    end

    module ListDatasetEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetEntriesInput, context: context)
        type = Types::ListDatasetEntriesInput.new
        type.dataset_arn = params[:dataset_arn]
        type.contains_labels = DatasetLabels.build(params[:contains_labels], context: "#{context}[:contains_labels]") unless params[:contains_labels].nil?
        type.labeled = params[:labeled]
        type.source_ref_contains = params[:source_ref_contains]
        type.has_errors = params[:has_errors]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetEntriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetEntriesOutput, context: context)
        type = Types::ListDatasetEntriesOutput.new
        type.dataset_entries = DatasetEntries.build(params[:dataset_entries], context: "#{context}[:dataset_entries]") unless params[:dataset_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetLabelsInput, context: context)
        type = Types::ListDatasetLabelsInput.new
        type.dataset_arn = params[:dataset_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetLabelsOutput, context: context)
        type = Types::ListDatasetLabelsOutput.new
        type.dataset_label_descriptions = DatasetLabelDescriptions.build(params[:dataset_label_descriptions], context: "#{context}[:dataset_label_descriptions]") unless params[:dataset_label_descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFacesInput, context: context)
        type = Types::ListFacesInput.new
        type.collection_id = params[:collection_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFacesOutput, context: context)
        type = Types::ListFacesOutput.new
        type.faces = FaceList.build(params[:faces], context: "#{context}[:faces]") unless params[:faces].nil?
        type.next_token = params[:next_token]
        type.face_model_version = params[:face_model_version]
        type
      end
    end

    module ListStreamProcessorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamProcessorsInput, context: context)
        type = Types::ListStreamProcessorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListStreamProcessorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamProcessorsOutput, context: context)
        type = Types::ListStreamProcessorsOutput.new
        type.next_token = params[:next_token]
        type.stream_processors = StreamProcessorList.build(params[:stream_processors], context: "#{context}[:stream_processors]") unless params[:stream_processors].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ModerationLabel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModerationLabel, context: context)
        type = Types::ModerationLabel.new
        type.confidence = params[:confidence]
        type.name = params[:name]
        type.parent_name = params[:parent_name]
        type
      end
    end

    module ModerationLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModerationLabel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MouthOpen
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MouthOpen, context: context)
        type = Types::MouthOpen.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module Mustache
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mustache, context: context)
        type = Types::Mustache.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module NotificationChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationChannel, context: context)
        type = Types::NotificationChannel.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module OutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputConfig, context: context)
        type = Types::OutputConfig.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key_prefix = params[:s3_key_prefix]
        type
      end
    end

    module Parent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parent, context: context)
        type = Types::Parent.new
        type.name = params[:name]
        type
      end
    end

    module Parents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PersonDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PersonDetail, context: context)
        type = Types::PersonDetail.new
        type.index = params[:index]
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.face = FaceDetail.build(params[:face], context: "#{context}[:face]") unless params[:face].nil?
        type
      end
    end

    module PersonDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PersonDetection, context: context)
        type = Types::PersonDetection.new
        type.timestamp = params[:timestamp]
        type.person = PersonDetail.build(params[:person], context: "#{context}[:person]") unless params[:person].nil?
        type
      end
    end

    module PersonDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PersonDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PersonMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PersonMatch, context: context)
        type = Types::PersonMatch.new
        type.timestamp = params[:timestamp]
        type.person = PersonDetail.build(params[:person], context: "#{context}[:person]") unless params[:person].nil?
        type.face_matches = FaceMatchList.build(params[:face_matches], context: "#{context}[:face_matches]") unless params[:face_matches].nil?
        type
      end
    end

    module PersonMatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PersonMatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Point
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Point, context: context)
        type = Types::Point.new
        type.x = params[:x]
        type.y = params[:y]
        type
      end
    end

    module Polygon
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Point.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Pose
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Pose, context: context)
        type = Types::Pose.new
        type.roll = params[:roll]
        type.yaw = params[:yaw]
        type.pitch = params[:pitch]
        type
      end
    end

    module ProjectDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectDescription, context: context)
        type = Types::ProjectDescription.new
        type.project_arn = params[:project_arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.status = params[:status]
        type.datasets = DatasetMetadataList.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type
      end
    end

    module ProjectDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectVersionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectVersionDescription, context: context)
        type = Types::ProjectVersionDescription.new
        type.project_version_arn = params[:project_version_arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.min_inference_units = params[:min_inference_units]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.billable_training_time_in_seconds = params[:billable_training_time_in_seconds]
        type.training_end_timestamp = params[:training_end_timestamp]
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.training_data_result = TrainingDataResult.build(params[:training_data_result], context: "#{context}[:training_data_result]") unless params[:training_data_result].nil?
        type.testing_data_result = TestingDataResult.build(params[:testing_data_result], context: "#{context}[:testing_data_result]") unless params[:testing_data_result].nil?
        type.evaluation_result = EvaluationResult.build(params[:evaluation_result], context: "#{context}[:evaluation_result]") unless params[:evaluation_result].nil?
        type.manifest_summary = GroundTruthManifest.build(params[:manifest_summary], context: "#{context}[:manifest_summary]") unless params[:manifest_summary].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ProjectVersionDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectVersionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProtectiveEquipmentBodyPart
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectiveEquipmentBodyPart, context: context)
        type = Types::ProtectiveEquipmentBodyPart.new
        type.name = params[:name]
        type.confidence = params[:confidence]
        type.equipment_detections = EquipmentDetections.build(params[:equipment_detections], context: "#{context}[:equipment_detections]") unless params[:equipment_detections].nil?
        type
      end
    end

    module ProtectiveEquipmentPerson
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectiveEquipmentPerson, context: context)
        type = Types::ProtectiveEquipmentPerson.new
        type.body_parts = BodyParts.build(params[:body_parts], context: "#{context}[:body_parts]") unless params[:body_parts].nil?
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.confidence = params[:confidence]
        type.id = params[:id]
        type
      end
    end

    module ProtectiveEquipmentPersonIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProtectiveEquipmentPersons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProtectiveEquipmentPerson.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProtectiveEquipmentSummarizationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectiveEquipmentSummarizationAttributes, context: context)
        type = Types::ProtectiveEquipmentSummarizationAttributes.new
        type.min_confidence = params[:min_confidence]
        type.required_equipment_types = ProtectiveEquipmentTypes.build(params[:required_equipment_types], context: "#{context}[:required_equipment_types]") unless params[:required_equipment_types].nil?
        type
      end
    end

    module ProtectiveEquipmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectiveEquipmentSummary, context: context)
        type = Types::ProtectiveEquipmentSummary.new
        type.persons_with_required_equipment = ProtectiveEquipmentPersonIds.build(params[:persons_with_required_equipment], context: "#{context}[:persons_with_required_equipment]") unless params[:persons_with_required_equipment].nil?
        type.persons_without_required_equipment = ProtectiveEquipmentPersonIds.build(params[:persons_without_required_equipment], context: "#{context}[:persons_without_required_equipment]") unless params[:persons_without_required_equipment].nil?
        type.persons_indeterminate = ProtectiveEquipmentPersonIds.build(params[:persons_indeterminate], context: "#{context}[:persons_indeterminate]") unless params[:persons_indeterminate].nil?
        type
      end
    end

    module ProtectiveEquipmentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvisionedThroughputExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedThroughputExceededException, context: context)
        type = Types::ProvisionedThroughputExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module Reasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecognizeCelebritiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecognizeCelebritiesInput, context: context)
        type = Types::RecognizeCelebritiesInput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type
      end
    end

    module RecognizeCelebritiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecognizeCelebritiesOutput, context: context)
        type = Types::RecognizeCelebritiesOutput.new
        type.celebrity_faces = CelebrityList.build(params[:celebrity_faces], context: "#{context}[:celebrity_faces]") unless params[:celebrity_faces].nil?
        type.unrecognized_faces = ComparedFaceList.build(params[:unrecognized_faces], context: "#{context}[:unrecognized_faces]") unless params[:unrecognized_faces].nil?
        type.orientation_correction = params[:orientation_correction]
        type
      end
    end

    module RegionOfInterest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionOfInterest, context: context)
        type = Types::RegionOfInterest.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.polygon = Polygon.build(params[:polygon], context: "#{context}[:polygon]") unless params[:polygon].nil?
        type
      end
    end

    module RegionsOfInterest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegionOfInterest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module ResourceNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotReadyException, context: context)
        type = Types::ResourceNotReadyException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type
      end
    end

    module S3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Object, context: context)
        type = Types::S3Object.new
        type.bucket = params[:bucket]
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module SearchFacesByImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFacesByImageInput, context: context)
        type = Types::SearchFacesByImageInput.new
        type.collection_id = params[:collection_id]
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.max_faces = params[:max_faces]
        type.face_match_threshold = params[:face_match_threshold]
        type.quality_filter = params[:quality_filter]
        type
      end
    end

    module SearchFacesByImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFacesByImageOutput, context: context)
        type = Types::SearchFacesByImageOutput.new
        type.searched_face_bounding_box = BoundingBox.build(params[:searched_face_bounding_box], context: "#{context}[:searched_face_bounding_box]") unless params[:searched_face_bounding_box].nil?
        type.searched_face_confidence = params[:searched_face_confidence]
        type.face_matches = FaceMatchList.build(params[:face_matches], context: "#{context}[:face_matches]") unless params[:face_matches].nil?
        type.face_model_version = params[:face_model_version]
        type
      end
    end

    module SearchFacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFacesInput, context: context)
        type = Types::SearchFacesInput.new
        type.collection_id = params[:collection_id]
        type.face_id = params[:face_id]
        type.max_faces = params[:max_faces]
        type.face_match_threshold = params[:face_match_threshold]
        type
      end
    end

    module SearchFacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFacesOutput, context: context)
        type = Types::SearchFacesOutput.new
        type.searched_face_id = params[:searched_face_id]
        type.face_matches = FaceMatchList.build(params[:face_matches], context: "#{context}[:face_matches]") unless params[:face_matches].nil?
        type.face_model_version = params[:face_model_version]
        type
      end
    end

    module SegmentDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentDetection, context: context)
        type = Types::SegmentDetection.new
        type.type = params[:type]
        type.start_timestamp_millis = params[:start_timestamp_millis]
        type.end_timestamp_millis = params[:end_timestamp_millis]
        type.duration_millis = params[:duration_millis]
        type.start_timecode_smpte = params[:start_timecode_smpte]
        type.end_timecode_smpte = params[:end_timecode_smpte]
        type.duration_smpte = params[:duration_smpte]
        type.technical_cue_segment = TechnicalCueSegment.build(params[:technical_cue_segment], context: "#{context}[:technical_cue_segment]") unless params[:technical_cue_segment].nil?
        type.shot_segment = ShotSegment.build(params[:shot_segment], context: "#{context}[:shot_segment]") unless params[:shot_segment].nil?
        type.start_frame_number = params[:start_frame_number]
        type.end_frame_number = params[:end_frame_number]
        type.duration_frames = params[:duration_frames]
        type
      end
    end

    module SegmentDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SegmentTypeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentTypeInfo, context: context)
        type = Types::SegmentTypeInfo.new
        type.type = params[:type]
        type.model_version = params[:model_version]
        type
      end
    end

    module SegmentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SegmentTypesInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentTypeInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module ShotSegment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShotSegment, context: context)
        type = Types::ShotSegment.new
        type.index = params[:index]
        type.confidence = params[:confidence]
        type
      end
    end

    module Smile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Smile, context: context)
        type = Types::Smile.new
        type.value = params[:value]
        type.confidence = params[:confidence]
        type
      end
    end

    module StartCelebrityRecognitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCelebrityRecognitionInput, context: context)
        type = Types::StartCelebrityRecognitionInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type
      end
    end

    module StartCelebrityRecognitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCelebrityRecognitionOutput, context: context)
        type = Types::StartCelebrityRecognitionOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartContentModerationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContentModerationInput, context: context)
        type = Types::StartContentModerationInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.min_confidence = params[:min_confidence]
        type.client_request_token = params[:client_request_token]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type
      end
    end

    module StartContentModerationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContentModerationOutput, context: context)
        type = Types::StartContentModerationOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartFaceDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFaceDetectionInput, context: context)
        type = Types::StartFaceDetectionInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.face_attributes = params[:face_attributes]
        type.job_tag = params[:job_tag]
        type
      end
    end

    module StartFaceDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFaceDetectionOutput, context: context)
        type = Types::StartFaceDetectionOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartFaceSearchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFaceSearchInput, context: context)
        type = Types::StartFaceSearchInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.face_match_threshold = params[:face_match_threshold]
        type.collection_id = params[:collection_id]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type
      end
    end

    module StartFaceSearchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFaceSearchOutput, context: context)
        type = Types::StartFaceSearchOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartLabelDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLabelDetectionInput, context: context)
        type = Types::StartLabelDetectionInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.min_confidence = params[:min_confidence]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type
      end
    end

    module StartLabelDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLabelDetectionOutput, context: context)
        type = Types::StartLabelDetectionOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartPersonTrackingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPersonTrackingInput, context: context)
        type = Types::StartPersonTrackingInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type
      end
    end

    module StartPersonTrackingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPersonTrackingOutput, context: context)
        type = Types::StartPersonTrackingOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartProjectVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartProjectVersionInput, context: context)
        type = Types::StartProjectVersionInput.new
        type.project_version_arn = params[:project_version_arn]
        type.min_inference_units = params[:min_inference_units]
        type
      end
    end

    module StartProjectVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartProjectVersionOutput, context: context)
        type = Types::StartProjectVersionOutput.new
        type.status = params[:status]
        type
      end
    end

    module StartSegmentDetectionFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSegmentDetectionFilters, context: context)
        type = Types::StartSegmentDetectionFilters.new
        type.technical_cue_filter = StartTechnicalCueDetectionFilter.build(params[:technical_cue_filter], context: "#{context}[:technical_cue_filter]") unless params[:technical_cue_filter].nil?
        type.shot_filter = StartShotDetectionFilter.build(params[:shot_filter], context: "#{context}[:shot_filter]") unless params[:shot_filter].nil?
        type
      end
    end

    module StartSegmentDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSegmentDetectionInput, context: context)
        type = Types::StartSegmentDetectionInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type.filters = StartSegmentDetectionFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.segment_types = SegmentTypes.build(params[:segment_types], context: "#{context}[:segment_types]") unless params[:segment_types].nil?
        type
      end
    end

    module StartSegmentDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSegmentDetectionOutput, context: context)
        type = Types::StartSegmentDetectionOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartShotDetectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartShotDetectionFilter, context: context)
        type = Types::StartShotDetectionFilter.new
        type.min_segment_confidence = params[:min_segment_confidence]
        type
      end
    end

    module StartStreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamProcessorInput, context: context)
        type = Types::StartStreamProcessorInput.new
        type.name = params[:name]
        type.start_selector = StreamProcessingStartSelector.build(params[:start_selector], context: "#{context}[:start_selector]") unless params[:start_selector].nil?
        type.stop_selector = StreamProcessingStopSelector.build(params[:stop_selector], context: "#{context}[:stop_selector]") unless params[:stop_selector].nil?
        type
      end
    end

    module StartStreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamProcessorOutput, context: context)
        type = Types::StartStreamProcessorOutput.new
        type.session_id = params[:session_id]
        type
      end
    end

    module StartTechnicalCueDetectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTechnicalCueDetectionFilter, context: context)
        type = Types::StartTechnicalCueDetectionFilter.new
        type.min_segment_confidence = params[:min_segment_confidence]
        type.black_frame = BlackFrame.build(params[:black_frame], context: "#{context}[:black_frame]") unless params[:black_frame].nil?
        type
      end
    end

    module StartTextDetectionFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTextDetectionFilters, context: context)
        type = Types::StartTextDetectionFilters.new
        type.word_filter = DetectionFilter.build(params[:word_filter], context: "#{context}[:word_filter]") unless params[:word_filter].nil?
        type.regions_of_interest = RegionsOfInterest.build(params[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless params[:regions_of_interest].nil?
        type
      end
    end

    module StartTextDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTextDetectionInput, context: context)
        type = Types::StartTextDetectionInput.new
        type.video = Video.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.client_request_token = params[:client_request_token]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.job_tag = params[:job_tag]
        type.filters = StartTextDetectionFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module StartTextDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTextDetectionOutput, context: context)
        type = Types::StartTextDetectionOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopProjectVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopProjectVersionInput, context: context)
        type = Types::StopProjectVersionInput.new
        type.project_version_arn = params[:project_version_arn]
        type
      end
    end

    module StopProjectVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopProjectVersionOutput, context: context)
        type = Types::StopProjectVersionOutput.new
        type.status = params[:status]
        type
      end
    end

    module StopStreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamProcessorInput, context: context)
        type = Types::StopStreamProcessorInput.new
        type.name = params[:name]
        type
      end
    end

    module StopStreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamProcessorOutput, context: context)
        type = Types::StopStreamProcessorOutput.new
        type
      end
    end

    module StreamProcessingStartSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessingStartSelector, context: context)
        type = Types::StreamProcessingStartSelector.new
        type.kvs_stream_start_selector = KinesisVideoStreamStartSelector.build(params[:kvs_stream_start_selector], context: "#{context}[:kvs_stream_start_selector]") unless params[:kvs_stream_start_selector].nil?
        type
      end
    end

    module StreamProcessingStopSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessingStopSelector, context: context)
        type = Types::StreamProcessingStopSelector.new
        type.max_duration_in_seconds = params[:max_duration_in_seconds]
        type
      end
    end

    module StreamProcessor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessor, context: context)
        type = Types::StreamProcessor.new
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module StreamProcessorDataSharingPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessorDataSharingPreference, context: context)
        type = Types::StreamProcessorDataSharingPreference.new
        type.opt_in = params[:opt_in]
        type
      end
    end

    module StreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessorInput, context: context)
        type = Types::StreamProcessorInput.new
        type.kinesis_video_stream = KinesisVideoStream.build(params[:kinesis_video_stream], context: "#{context}[:kinesis_video_stream]") unless params[:kinesis_video_stream].nil?
        type
      end
    end

    module StreamProcessorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamProcessor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamProcessorNotificationChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessorNotificationChannel, context: context)
        type = Types::StreamProcessorNotificationChannel.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type
      end
    end

    module StreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessorOutput, context: context)
        type = Types::StreamProcessorOutput.new
        type.kinesis_data_stream = KinesisDataStream.build(params[:kinesis_data_stream], context: "#{context}[:kinesis_data_stream]") unless params[:kinesis_data_stream].nil?
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module StreamProcessorParametersToDelete
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StreamProcessorSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessorSettings, context: context)
        type = Types::StreamProcessorSettings.new
        type.face_search = FaceSearchSettings.build(params[:face_search], context: "#{context}[:face_search]") unless params[:face_search].nil?
        type.connected_home = ConnectedHomeSettings.build(params[:connected_home], context: "#{context}[:connected_home]") unless params[:connected_home].nil?
        type
      end
    end

    module StreamProcessorSettingsForUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamProcessorSettingsForUpdate, context: context)
        type = Types::StreamProcessorSettingsForUpdate.new
        type.connected_home_for_update = ConnectedHomeSettingsForUpdate.build(params[:connected_home_for_update], context: "#{context}[:connected_home_for_update]") unless params[:connected_home_for_update].nil?
        type
      end
    end

    module Summary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Summary, context: context)
        type = Types::Summary.new
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module Sunglasses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sunglasses, context: context)
        type = Types::Sunglasses.new
        type.value = params[:value]
        type.confidence = params[:confidence]
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TechnicalCueSegment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TechnicalCueSegment, context: context)
        type = Types::TechnicalCueSegment.new
        type.type = params[:type]
        type.confidence = params[:confidence]
        type
      end
    end

    module TestingData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestingData, context: context)
        type = Types::TestingData.new
        type.assets = Assets.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type.auto_create = params[:auto_create]
        type
      end
    end

    module TestingDataResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestingDataResult, context: context)
        type = Types::TestingDataResult.new
        type.input = TestingData.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.output = TestingData.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.validation = ValidationData.build(params[:validation], context: "#{context}[:validation]") unless params[:validation].nil?
        type
      end
    end

    module TextDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextDetection, context: context)
        type = Types::TextDetection.new
        type.detected_text = params[:detected_text]
        type.type = params[:type]
        type.id = params[:id]
        type.parent_id = params[:parent_id]
        type.confidence = params[:confidence]
        type.geometry = Geometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type
      end
    end

    module TextDetectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TextDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TextDetectionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextDetectionResult, context: context)
        type = Types::TextDetectionResult.new
        type.timestamp = params[:timestamp]
        type.text_detection = TextDetection.build(params[:text_detection], context: "#{context}[:text_detection]") unless params[:text_detection].nil?
        type
      end
    end

    module TextDetectionResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TextDetectionResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

    module TrainingData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingData, context: context)
        type = Types::TrainingData.new
        type.assets = Assets.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type
      end
    end

    module TrainingDataResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingDataResult, context: context)
        type = Types::TrainingDataResult.new
        type.input = TrainingData.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.output = TrainingData.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.validation = ValidationData.build(params[:validation], context: "#{context}[:validation]") unless params[:validation].nil?
        type
      end
    end

    module UnindexedFace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnindexedFace, context: context)
        type = Types::UnindexedFace.new
        type.reasons = Reasons.build(params[:reasons], context: "#{context}[:reasons]") unless params[:reasons].nil?
        type.face_detail = FaceDetail.build(params[:face_detail], context: "#{context}[:face_detail]") unless params[:face_detail].nil?
        type
      end
    end

    module UnindexedFaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnindexedFace.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module UpdateDatasetEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetEntriesInput, context: context)
        type = Types::UpdateDatasetEntriesInput.new
        type.dataset_arn = params[:dataset_arn]
        type.changes = DatasetChanges.build(params[:changes], context: "#{context}[:changes]") unless params[:changes].nil?
        type
      end
    end

    module UpdateDatasetEntriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetEntriesOutput, context: context)
        type = Types::UpdateDatasetEntriesOutput.new
        type
      end
    end

    module UpdateStreamProcessorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamProcessorInput, context: context)
        type = Types::UpdateStreamProcessorInput.new
        type.name = params[:name]
        type.settings_for_update = StreamProcessorSettingsForUpdate.build(params[:settings_for_update], context: "#{context}[:settings_for_update]") unless params[:settings_for_update].nil?
        type.regions_of_interest_for_update = RegionsOfInterest.build(params[:regions_of_interest_for_update], context: "#{context}[:regions_of_interest_for_update]") unless params[:regions_of_interest_for_update].nil?
        type.data_sharing_preference_for_update = StreamProcessorDataSharingPreference.build(params[:data_sharing_preference_for_update], context: "#{context}[:data_sharing_preference_for_update]") unless params[:data_sharing_preference_for_update].nil?
        type.parameters_to_delete = StreamProcessorParametersToDelete.build(params[:parameters_to_delete], context: "#{context}[:parameters_to_delete]") unless params[:parameters_to_delete].nil?
        type
      end
    end

    module UpdateStreamProcessorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamProcessorOutput, context: context)
        type = Types::UpdateStreamProcessorOutput.new
        type
      end
    end

    module Urls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ValidationData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationData, context: context)
        type = Types::ValidationData.new
        type.assets = Assets.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type
      end
    end

    module VersionNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Video
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Video, context: context)
        type = Types::Video.new
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module VideoMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoMetadata, context: context)
        type = Types::VideoMetadata.new
        type.codec = params[:codec]
        type.duration_millis = params[:duration_millis]
        type.format = params[:format]
        type.frame_rate = params[:frame_rate]
        type.frame_height = params[:frame_height]
        type.frame_width = params[:frame_width]
        type.color_range = params[:color_range]
        type
      end
    end

    module VideoMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VideoMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VideoTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoTooLargeException, context: context)
        type = Types::VideoTooLargeException.new
        type.message = params[:message]
        type.code = params[:code]
        type.logref = params[:logref]
        type
      end
    end

  end
end
