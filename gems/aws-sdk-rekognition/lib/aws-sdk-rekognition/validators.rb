# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Rekognition
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class AgeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgeRange, context: context)
        Hearth::Validator.validate!(input[:low], ::Integer, context: "#{context}[:low]")
        Hearth::Validator.validate!(input[:high], ::Integer, context: "#{context}[:high]")
      end
    end

    class Asset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Asset, context: context)
        GroundTruthManifest.validate!(input[:ground_truth_manifest], context: "#{context}[:ground_truth_manifest]") unless input[:ground_truth_manifest].nil?
      end
    end

    class Assets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Asset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AudioMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioMetadata, context: context)
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:duration_millis], ::Integer, context: "#{context}[:duration_millis]")
        Hearth::Validator.validate!(input[:sample_rate], ::Integer, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
      end
    end

    class AudioMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AudioMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Beard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Beard, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class BlackFrame
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlackFrame, context: context)
        Hearth::Validator.validate!(input[:max_pixel_threshold], ::Float, context: "#{context}[:max_pixel_threshold]")
        Hearth::Validator.validate!(input[:min_coverage_percentage], ::Float, context: "#{context}[:min_coverage_percentage]")
      end
    end

    class BodyParts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProtectiveEquipmentBodyPart.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BoundingBox
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BoundingBox, context: context)
        Hearth::Validator.validate!(input[:width], ::Float, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:height], ::Float, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:left], ::Float, context: "#{context}[:left]")
        Hearth::Validator.validate!(input[:top], ::Float, context: "#{context}[:top]")
      end
    end

    class Celebrity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Celebrity, context: context)
        Urls.validate!(input[:urls], context: "#{context}[:urls]") unless input[:urls].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ComparedFace.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
        Hearth::Validator.validate!(input[:match_confidence], ::Float, context: "#{context}[:match_confidence]")
        KnownGender.validate!(input[:known_gender], context: "#{context}[:known_gender]") unless input[:known_gender].nil?
      end
    end

    class CelebrityDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CelebrityDetail, context: context)
        Urls.validate!(input[:urls], context: "#{context}[:urls]") unless input[:urls].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        FaceDetail.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
        KnownGender.validate!(input[:known_gender], context: "#{context}[:known_gender]") unless input[:known_gender].nil?
      end
    end

    class CelebrityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Celebrity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CelebrityRecognition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CelebrityRecognition, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        CelebrityDetail.validate!(input[:celebrity], context: "#{context}[:celebrity]") unless input[:celebrity].nil?
      end
    end

    class CelebrityRecognitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CelebrityRecognition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CollectionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CompareFacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompareFacesInput, context: context)
        Image.validate!(input[:source_image], context: "#{context}[:source_image]") unless input[:source_image].nil?
        Image.validate!(input[:target_image], context: "#{context}[:target_image]") unless input[:target_image].nil?
        Hearth::Validator.validate!(input[:similarity_threshold], ::Float, context: "#{context}[:similarity_threshold]")
        Hearth::Validator.validate!(input[:quality_filter], ::String, context: "#{context}[:quality_filter]")
      end
    end

    class CompareFacesMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompareFacesMatch, context: context)
        Hearth::Validator.validate!(input[:similarity], ::Float, context: "#{context}[:similarity]")
        ComparedFace.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
      end
    end

    class CompareFacesMatchList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompareFacesMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompareFacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompareFacesOutput, context: context)
        ComparedSourceImageFace.validate!(input[:source_image_face], context: "#{context}[:source_image_face]") unless input[:source_image_face].nil?
        CompareFacesMatchList.validate!(input[:face_matches], context: "#{context}[:face_matches]") unless input[:face_matches].nil?
        CompareFacesUnmatchList.validate!(input[:unmatched_faces], context: "#{context}[:unmatched_faces]") unless input[:unmatched_faces].nil?
        Hearth::Validator.validate!(input[:source_image_orientation_correction], ::String, context: "#{context}[:source_image_orientation_correction]")
        Hearth::Validator.validate!(input[:target_image_orientation_correction], ::String, context: "#{context}[:target_image_orientation_correction]")
      end
    end

    class CompareFacesUnmatchList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComparedFace.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComparedFace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComparedFace, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Landmarks.validate!(input[:landmarks], context: "#{context}[:landmarks]") unless input[:landmarks].nil?
        Pose.validate!(input[:pose], context: "#{context}[:pose]") unless input[:pose].nil?
        ImageQuality.validate!(input[:quality], context: "#{context}[:quality]") unless input[:quality].nil?
        Emotions.validate!(input[:emotions], context: "#{context}[:emotions]") unless input[:emotions].nil?
        Smile.validate!(input[:smile], context: "#{context}[:smile]") unless input[:smile].nil?
      end
    end

    class ComparedFaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComparedFace.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComparedSourceImageFace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComparedSourceImageFace, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class ConnectedHomeLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectedHomeSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectedHomeSettings, context: context)
        ConnectedHomeLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
      end
    end

    class ConnectedHomeSettingsForUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectedHomeSettingsForUpdate, context: context)
        ConnectedHomeLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
      end
    end

    class ContentClassifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContentModerationDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentModerationDetection, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        ModerationLabel.validate!(input[:moderation_label], context: "#{context}[:moderation_label]") unless input[:moderation_label].nil?
      end
    end

    class ContentModerationDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContentModerationDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CoversBodyPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoversBodyPart, context: context)
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
      end
    end

    class CreateCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:collection_arn], ::String, context: "#{context}[:collection_arn]")
        Hearth::Validator.validate!(input[:face_model_version], ::String, context: "#{context}[:face_model_version]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        DatasetSource.validate!(input[:dataset_source], context: "#{context}[:dataset_source]") unless input[:dataset_source].nil?
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class CreateProjectVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectVersionInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        TrainingData.validate!(input[:training_data], context: "#{context}[:training_data]") unless input[:training_data].nil?
        TestingData.validate!(input[:testing_data], context: "#{context}[:testing_data]") unless input[:testing_data].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class CreateProjectVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectVersionOutput, context: context)
        Hearth::Validator.validate!(input[:project_version_arn], ::String, context: "#{context}[:project_version_arn]")
      end
    end

    class CreateStreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamProcessorInput, context: context)
        StreamProcessorInput.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        StreamProcessorOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StreamProcessorSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        StreamProcessorNotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        RegionsOfInterest.validate!(input[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless input[:regions_of_interest].nil?
        StreamProcessorDataSharingPreference.validate!(input[:data_sharing_preference], context: "#{context}[:data_sharing_preference]") unless input[:data_sharing_preference].nil?
      end
    end

    class CreateStreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamProcessorOutput, context: context)
        Hearth::Validator.validate!(input[:stream_processor_arn], ::String, context: "#{context}[:stream_processor_arn]")
      end
    end

    class CustomLabel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomLabel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Geometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
      end
    end

    class CustomLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomLabel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetChanges, context: context)
        Hearth::Validator.validate!(input[:ground_truth], ::String, context: "#{context}[:ground_truth]")
      end
    end

    class DatasetDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetDescription, context: context)
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:status_message_code], ::String, context: "#{context}[:status_message_code]")
        DatasetStats.validate!(input[:dataset_stats], context: "#{context}[:dataset_stats]") unless input[:dataset_stats].nil?
      end
    end

    class DatasetEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DatasetLabelDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetLabelDescription, context: context)
        Hearth::Validator.validate!(input[:label_name], ::String, context: "#{context}[:label_name]")
        DatasetLabelStats.validate!(input[:label_stats], context: "#{context}[:label_stats]") unless input[:label_stats].nil?
      end
    end

    class DatasetLabelDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetLabelDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetLabelStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetLabelStats, context: context)
        Hearth::Validator.validate!(input[:entry_count], ::Integer, context: "#{context}[:entry_count]")
        Hearth::Validator.validate!(input[:bounding_box_count], ::Integer, context: "#{context}[:bounding_box_count]")
      end
    end

    class DatasetLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DatasetMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetMetadata, context: context)
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:status_message_code], ::String, context: "#{context}[:status_message_code]")
      end
    end

    class DatasetMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSource, context: context)
        GroundTruthManifest.validate!(input[:ground_truth_manifest], context: "#{context}[:ground_truth_manifest]") unless input[:ground_truth_manifest].nil?
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DatasetStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetStats, context: context)
        Hearth::Validator.validate!(input[:labeled_entries], ::Integer, context: "#{context}[:labeled_entries]")
        Hearth::Validator.validate!(input[:total_entries], ::Integer, context: "#{context}[:total_entries]")
        Hearth::Validator.validate!(input[:total_labels], ::Integer, context: "#{context}[:total_labels]")
        Hearth::Validator.validate!(input[:error_entries], ::Integer, context: "#{context}[:error_entries]")
      end
    end

    class DeleteCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
      end
    end

    class DeleteCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
      end
    end

    class DeleteFacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFacesInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        FaceIdList.validate!(input[:face_ids], context: "#{context}[:face_ids]") unless input[:face_ids].nil?
      end
    end

    class DeleteFacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFacesOutput, context: context)
        FaceIdList.validate!(input[:deleted_faces], context: "#{context}[:deleted_faces]") unless input[:deleted_faces].nil?
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteProjectVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectVersionInput, context: context)
        Hearth::Validator.validate!(input[:project_version_arn], ::String, context: "#{context}[:project_version_arn]")
      end
    end

    class DeleteProjectVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectVersionOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteStreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamProcessorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteStreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamProcessorOutput, context: context)
      end
    end

    class DescribeCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
      end
    end

    class DescribeCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:face_count], ::Integer, context: "#{context}[:face_count]")
        Hearth::Validator.validate!(input[:face_model_version], ::String, context: "#{context}[:face_model_version]")
        Hearth::Validator.validate!(input[:collection_arn], ::String, context: "#{context}[:collection_arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        DatasetDescription.validate!(input[:dataset_description], context: "#{context}[:dataset_description]") unless input[:dataset_description].nil?
      end
    end

    class DescribeProjectVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectVersionsInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        VersionNames.validate!(input[:version_names], context: "#{context}[:version_names]") unless input[:version_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeProjectVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectVersionsOutput, context: context)
        ProjectVersionDescriptions.validate!(input[:project_version_descriptions], context: "#{context}[:project_version_descriptions]") unless input[:project_version_descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ProjectNames.validate!(input[:project_names], context: "#{context}[:project_names]") unless input[:project_names].nil?
      end
    end

    class DescribeProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectsOutput, context: context)
        ProjectDescriptions.validate!(input[:project_descriptions], context: "#{context}[:project_descriptions]") unless input[:project_descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamProcessorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeStreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamProcessorOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stream_processor_arn], ::String, context: "#{context}[:stream_processor_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
        StreamProcessorInput.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        StreamProcessorOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        StreamProcessorSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        StreamProcessorNotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        RegionsOfInterest.validate!(input[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless input[:regions_of_interest].nil?
        StreamProcessorDataSharingPreference.validate!(input[:data_sharing_preference], context: "#{context}[:data_sharing_preference]") unless input[:data_sharing_preference].nil?
      end
    end

    class DetectCustomLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectCustomLabelsInput, context: context)
        Hearth::Validator.validate!(input[:project_version_arn], ::String, context: "#{context}[:project_version_arn]")
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
      end
    end

    class DetectCustomLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectCustomLabelsOutput, context: context)
        CustomLabels.validate!(input[:custom_labels], context: "#{context}[:custom_labels]") unless input[:custom_labels].nil?
      end
    end

    class DetectFacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectFacesInput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DetectFacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectFacesOutput, context: context)
        FaceDetailList.validate!(input[:face_details], context: "#{context}[:face_details]") unless input[:face_details].nil?
        Hearth::Validator.validate!(input[:orientation_correction], ::String, context: "#{context}[:orientation_correction]")
      end
    end

    class DetectLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectLabelsInput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:max_labels], ::Integer, context: "#{context}[:max_labels]")
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
      end
    end

    class DetectLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectLabelsOutput, context: context)
        Labels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:orientation_correction], ::String, context: "#{context}[:orientation_correction]")
        Hearth::Validator.validate!(input[:label_model_version], ::String, context: "#{context}[:label_model_version]")
      end
    end

    class DetectModerationLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectModerationLabelsInput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
        HumanLoopConfig.validate!(input[:human_loop_config], context: "#{context}[:human_loop_config]") unless input[:human_loop_config].nil?
      end
    end

    class DetectModerationLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectModerationLabelsOutput, context: context)
        ModerationLabels.validate!(input[:moderation_labels], context: "#{context}[:moderation_labels]") unless input[:moderation_labels].nil?
        Hearth::Validator.validate!(input[:moderation_model_version], ::String, context: "#{context}[:moderation_model_version]")
        HumanLoopActivationOutput.validate!(input[:human_loop_activation_output], context: "#{context}[:human_loop_activation_output]") unless input[:human_loop_activation_output].nil?
      end
    end

    class DetectProtectiveEquipmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectProtectiveEquipmentInput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        ProtectiveEquipmentSummarizationAttributes.validate!(input[:summarization_attributes], context: "#{context}[:summarization_attributes]") unless input[:summarization_attributes].nil?
      end
    end

    class DetectProtectiveEquipmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectProtectiveEquipmentOutput, context: context)
        Hearth::Validator.validate!(input[:protective_equipment_model_version], ::String, context: "#{context}[:protective_equipment_model_version]")
        ProtectiveEquipmentPersons.validate!(input[:persons], context: "#{context}[:persons]") unless input[:persons].nil?
        ProtectiveEquipmentSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class DetectTextFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectTextFilters, context: context)
        DetectionFilter.validate!(input[:word_filter], context: "#{context}[:word_filter]") unless input[:word_filter].nil?
        RegionsOfInterest.validate!(input[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless input[:regions_of_interest].nil?
      end
    end

    class DetectTextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectTextInput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        DetectTextFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DetectTextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectTextOutput, context: context)
        TextDetectionList.validate!(input[:text_detections], context: "#{context}[:text_detections]") unless input[:text_detections].nil?
        Hearth::Validator.validate!(input[:text_model_version], ::String, context: "#{context}[:text_model_version]")
      end
    end

    class DetectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectionFilter, context: context)
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
        Hearth::Validator.validate!(input[:min_bounding_box_height], ::Float, context: "#{context}[:min_bounding_box_height]")
        Hearth::Validator.validate!(input[:min_bounding_box_width], ::Float, context: "#{context}[:min_bounding_box_width]")
      end
    end

    class DistributeDataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributeDataset, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DistributeDatasetEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributeDatasetEntriesInput, context: context)
        DistributeDatasetMetadataList.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
      end
    end

    class DistributeDatasetEntriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributeDatasetEntriesOutput, context: context)
      end
    end

    class DistributeDatasetMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DistributeDataset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Emotion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Emotion, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Emotions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Emotion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EquipmentDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EquipmentDetection, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        CoversBodyPart.validate!(input[:covers_body_part], context: "#{context}[:covers_body_part]") unless input[:covers_body_part].nil?
      end
    end

    class EquipmentDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EquipmentDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResult, context: context)
        Hearth::Validator.validate!(input[:f1_score], ::Float, context: "#{context}[:f1_score]")
        Summary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class EyeOpen
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EyeOpen, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Eyeglasses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Eyeglasses, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Face
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Face, context: context)
        Hearth::Validator.validate!(input[:face_id], ::String, context: "#{context}[:face_id]")
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:external_image_id], ::String, context: "#{context}[:external_image_id]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:index_faces_model_version], ::String, context: "#{context}[:index_faces_model_version]")
      end
    end

    class FaceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaceDetail, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        AgeRange.validate!(input[:age_range], context: "#{context}[:age_range]") unless input[:age_range].nil?
        Smile.validate!(input[:smile], context: "#{context}[:smile]") unless input[:smile].nil?
        Eyeglasses.validate!(input[:eyeglasses], context: "#{context}[:eyeglasses]") unless input[:eyeglasses].nil?
        Sunglasses.validate!(input[:sunglasses], context: "#{context}[:sunglasses]") unless input[:sunglasses].nil?
        Gender.validate!(input[:gender], context: "#{context}[:gender]") unless input[:gender].nil?
        Beard.validate!(input[:beard], context: "#{context}[:beard]") unless input[:beard].nil?
        Mustache.validate!(input[:mustache], context: "#{context}[:mustache]") unless input[:mustache].nil?
        EyeOpen.validate!(input[:eyes_open], context: "#{context}[:eyes_open]") unless input[:eyes_open].nil?
        MouthOpen.validate!(input[:mouth_open], context: "#{context}[:mouth_open]") unless input[:mouth_open].nil?
        Emotions.validate!(input[:emotions], context: "#{context}[:emotions]") unless input[:emotions].nil?
        Landmarks.validate!(input[:landmarks], context: "#{context}[:landmarks]") unless input[:landmarks].nil?
        Pose.validate!(input[:pose], context: "#{context}[:pose]") unless input[:pose].nil?
        ImageQuality.validate!(input[:quality], context: "#{context}[:quality]") unless input[:quality].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class FaceDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FaceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaceDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaceDetection, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        FaceDetail.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
      end
    end

    class FaceDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FaceDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Face.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaceMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaceMatch, context: context)
        Hearth::Validator.validate!(input[:similarity], ::Float, context: "#{context}[:similarity]")
        Face.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
      end
    end

    class FaceMatchList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FaceMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaceModelVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FaceRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaceRecord, context: context)
        Face.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
        FaceDetail.validate!(input[:face_detail], context: "#{context}[:face_detail]") unless input[:face_detail].nil?
      end
    end

    class FaceRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FaceRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaceSearchSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaceSearchSettings, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Hearth::Validator.validate!(input[:face_match_threshold], ::Float, context: "#{context}[:face_match_threshold]")
      end
    end

    class Gender
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Gender, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Geometry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Geometry, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Polygon.validate!(input[:polygon], context: "#{context}[:polygon]") unless input[:polygon].nil?
      end
    end

    class GetCelebrityInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCelebrityInfoInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCelebrityInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCelebrityInfoOutput, context: context)
        Urls.validate!(input[:urls], context: "#{context}[:urls]") unless input[:urls].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        KnownGender.validate!(input[:known_gender], context: "#{context}[:known_gender]") unless input[:known_gender].nil?
      end
    end

    class GetCelebrityRecognitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCelebrityRecognitionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class GetCelebrityRecognitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCelebrityRecognitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CelebrityRecognitions.validate!(input[:celebrities], context: "#{context}[:celebrities]") unless input[:celebrities].nil?
      end
    end

    class GetContentModerationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContentModerationInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class GetContentModerationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContentModerationOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        ContentModerationDetections.validate!(input[:moderation_labels], context: "#{context}[:moderation_labels]") unless input[:moderation_labels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:moderation_model_version], ::String, context: "#{context}[:moderation_model_version]")
      end
    end

    class GetFaceDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFaceDetectionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetFaceDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFaceDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FaceDetections.validate!(input[:faces], context: "#{context}[:faces]") unless input[:faces].nil?
      end
    end

    class GetFaceSearchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFaceSearchInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class GetFaceSearchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFaceSearchOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        PersonMatches.validate!(input[:persons], context: "#{context}[:persons]") unless input[:persons].nil?
      end
    end

    class GetLabelDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLabelDetectionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class GetLabelDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLabelDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        LabelDetections.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:label_model_version], ::String, context: "#{context}[:label_model_version]")
      end
    end

    class GetPersonTrackingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPersonTrackingInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
      end
    end

    class GetPersonTrackingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPersonTrackingOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        PersonDetections.validate!(input[:persons], context: "#{context}[:persons]") unless input[:persons].nil?
      end
    end

    class GetSegmentDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentDetectionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSegmentDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadataList.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        AudioMetadataList.validate!(input[:audio_metadata], context: "#{context}[:audio_metadata]") unless input[:audio_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SegmentDetections.validate!(input[:segments], context: "#{context}[:segments]") unless input[:segments].nil?
        SegmentTypesInfo.validate!(input[:selected_segment_types], context: "#{context}[:selected_segment_types]") unless input[:selected_segment_types].nil?
      end
    end

    class GetTextDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTextDetectionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTextDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTextDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        VideoMetadata.validate!(input[:video_metadata], context: "#{context}[:video_metadata]") unless input[:video_metadata].nil?
        TextDetectionResults.validate!(input[:text_detections], context: "#{context}[:text_detections]") unless input[:text_detections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:text_model_version], ::String, context: "#{context}[:text_model_version]")
      end
    end

    class GroundTruthManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroundTruthManifest, context: context)
        S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class HumanLoopActivationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopActivationOutput, context: context)
        Hearth::Validator.validate!(input[:human_loop_arn], ::String, context: "#{context}[:human_loop_arn]")
        HumanLoopActivationReasons.validate!(input[:human_loop_activation_reasons], context: "#{context}[:human_loop_activation_reasons]") unless input[:human_loop_activation_reasons].nil?
        Hearth::Validator.validate!(input[:human_loop_activation_conditions_evaluation_results], ::String, context: "#{context}[:human_loop_activation_conditions_evaluation_results]")
      end
    end

    class HumanLoopActivationReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HumanLoopConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopConfig, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        HumanLoopDataAttributes.validate!(input[:data_attributes], context: "#{context}[:data_attributes]") unless input[:data_attributes].nil?
      end
    end

    class HumanLoopDataAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopDataAttributes, context: context)
        ContentClassifiers.validate!(input[:content_classifiers], context: "#{context}[:content_classifiers]") unless input[:content_classifiers].nil?
      end
    end

    class HumanLoopQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:bytes], ::String, context: "#{context}[:bytes]")
        S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class ImageQuality
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageQuality, context: context)
        Hearth::Validator.validate!(input[:brightness], ::Float, context: "#{context}[:brightness]")
        Hearth::Validator.validate!(input[:sharpness], ::Float, context: "#{context}[:sharpness]")
      end
    end

    class ImageTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class IndexFacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexFacesInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:external_image_id], ::String, context: "#{context}[:external_image_id]")
        Attributes.validate!(input[:detection_attributes], context: "#{context}[:detection_attributes]") unless input[:detection_attributes].nil?
        Hearth::Validator.validate!(input[:max_faces], ::Integer, context: "#{context}[:max_faces]")
        Hearth::Validator.validate!(input[:quality_filter], ::String, context: "#{context}[:quality_filter]")
      end
    end

    class IndexFacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexFacesOutput, context: context)
        FaceRecordList.validate!(input[:face_records], context: "#{context}[:face_records]") unless input[:face_records].nil?
        Hearth::Validator.validate!(input[:orientation_correction], ::String, context: "#{context}[:orientation_correction]")
        Hearth::Validator.validate!(input[:face_model_version], ::String, context: "#{context}[:face_model_version]")
        UnindexedFaces.validate!(input[:unindexed_faces], context: "#{context}[:unindexed_faces]") unless input[:unindexed_faces].nil?
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Instances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class InvalidImageFormatException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidImageFormatException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class InvalidPaginationTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class InvalidS3ObjectException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3ObjectException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class KinesisDataStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisDataStream, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class KinesisVideoStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisVideoStream, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class KinesisVideoStreamStartSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisVideoStreamStartSelector, context: context)
        Hearth::Validator.validate!(input[:producer_timestamp], ::Integer, context: "#{context}[:producer_timestamp]")
        Hearth::Validator.validate!(input[:fragment_number], ::String, context: "#{context}[:fragment_number]")
      end
    end

    class KnownGender
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KnownGender, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Label
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Label, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Parents.validate!(input[:parents], context: "#{context}[:parents]") unless input[:parents].nil?
      end
    end

    class LabelDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelDetection, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        Label.validate!(input[:label], context: "#{context}[:label]") unless input[:label].nil?
      end
    end

    class LabelDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LabelDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Labels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Label.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Landmark
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Landmark, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:x], ::Float, context: "#{context}[:x]")
        Hearth::Validator.validate!(input[:y], ::Float, context: "#{context}[:y]")
      end
    end

    class Landmarks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Landmark.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class ListCollectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCollectionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCollectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCollectionsOutput, context: context)
        CollectionIdList.validate!(input[:collection_ids], context: "#{context}[:collection_ids]") unless input[:collection_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        FaceModelVersionList.validate!(input[:face_model_versions], context: "#{context}[:face_model_versions]") unless input[:face_model_versions].nil?
      end
    end

    class ListDatasetEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetEntriesInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        DatasetLabels.validate!(input[:contains_labels], context: "#{context}[:contains_labels]") unless input[:contains_labels].nil?
        Hearth::Validator.validate!(input[:labeled], ::TrueClass, ::FalseClass, context: "#{context}[:labeled]")
        Hearth::Validator.validate!(input[:source_ref_contains], ::String, context: "#{context}[:source_ref_contains]")
        Hearth::Validator.validate!(input[:has_errors], ::TrueClass, ::FalseClass, context: "#{context}[:has_errors]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetEntriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetEntriesOutput, context: context)
        DatasetEntries.validate!(input[:dataset_entries], context: "#{context}[:dataset_entries]") unless input[:dataset_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetLabelsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetLabelsOutput, context: context)
        DatasetLabelDescriptions.validate!(input[:dataset_label_descriptions], context: "#{context}[:dataset_label_descriptions]") unless input[:dataset_label_descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFacesInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFacesOutput, context: context)
        FaceList.validate!(input[:faces], context: "#{context}[:faces]") unless input[:faces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:face_model_version], ::String, context: "#{context}[:face_model_version]")
      end
    end

    class ListStreamProcessorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamProcessorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListStreamProcessorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamProcessorsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        StreamProcessorList.validate!(input[:stream_processors], context: "#{context}[:stream_processors]") unless input[:stream_processors].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ModerationLabel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModerationLabel, context: context)
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parent_name], ::String, context: "#{context}[:parent_name]")
      end
    end

    class ModerationLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModerationLabel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MouthOpen
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MouthOpen, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Mustache
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mustache, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class NotificationChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationChannel, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class OutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
      end
    end

    class Parent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parent, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class Parents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PersonDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PersonDetail, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        FaceDetail.validate!(input[:face], context: "#{context}[:face]") unless input[:face].nil?
      end
    end

    class PersonDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PersonDetection, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        PersonDetail.validate!(input[:person], context: "#{context}[:person]") unless input[:person].nil?
      end
    end

    class PersonDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PersonDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PersonMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PersonMatch, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        PersonDetail.validate!(input[:person], context: "#{context}[:person]") unless input[:person].nil?
        FaceMatchList.validate!(input[:face_matches], context: "#{context}[:face_matches]") unless input[:face_matches].nil?
      end
    end

    class PersonMatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PersonMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Point
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Point, context: context)
        Hearth::Validator.validate!(input[:x], ::Float, context: "#{context}[:x]")
        Hearth::Validator.validate!(input[:y], ::Float, context: "#{context}[:y]")
      end
    end

    class Polygon
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Point.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Pose
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Pose, context: context)
        Hearth::Validator.validate!(input[:roll], ::Float, context: "#{context}[:roll]")
        Hearth::Validator.validate!(input[:yaw], ::Float, context: "#{context}[:yaw]")
        Hearth::Validator.validate!(input[:pitch], ::Float, context: "#{context}[:pitch]")
      end
    end

    class ProjectDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectDescription, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DatasetMetadataList.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
      end
    end

    class ProjectDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectVersionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectVersionDescription, context: context)
        Hearth::Validator.validate!(input[:project_version_arn], ::String, context: "#{context}[:project_version_arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:min_inference_units], ::Integer, context: "#{context}[:min_inference_units]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:billable_training_time_in_seconds], ::Integer, context: "#{context}[:billable_training_time_in_seconds]")
        Hearth::Validator.validate!(input[:training_end_timestamp], ::Time, context: "#{context}[:training_end_timestamp]")
        OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        TrainingDataResult.validate!(input[:training_data_result], context: "#{context}[:training_data_result]") unless input[:training_data_result].nil?
        TestingDataResult.validate!(input[:testing_data_result], context: "#{context}[:testing_data_result]") unless input[:testing_data_result].nil?
        EvaluationResult.validate!(input[:evaluation_result], context: "#{context}[:evaluation_result]") unless input[:evaluation_result].nil?
        GroundTruthManifest.validate!(input[:manifest_summary], context: "#{context}[:manifest_summary]") unless input[:manifest_summary].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ProjectVersionDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectVersionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProtectiveEquipmentBodyPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectiveEquipmentBodyPart, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        EquipmentDetections.validate!(input[:equipment_detections], context: "#{context}[:equipment_detections]") unless input[:equipment_detections].nil?
      end
    end

    class ProtectiveEquipmentPerson
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectiveEquipmentPerson, context: context)
        BodyParts.validate!(input[:body_parts], context: "#{context}[:body_parts]") unless input[:body_parts].nil?
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
      end
    end

    class ProtectiveEquipmentPersonIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class ProtectiveEquipmentPersons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProtectiveEquipmentPerson.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProtectiveEquipmentSummarizationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectiveEquipmentSummarizationAttributes, context: context)
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
        ProtectiveEquipmentTypes.validate!(input[:required_equipment_types], context: "#{context}[:required_equipment_types]") unless input[:required_equipment_types].nil?
      end
    end

    class ProtectiveEquipmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectiveEquipmentSummary, context: context)
        ProtectiveEquipmentPersonIds.validate!(input[:persons_with_required_equipment], context: "#{context}[:persons_with_required_equipment]") unless input[:persons_with_required_equipment].nil?
        ProtectiveEquipmentPersonIds.validate!(input[:persons_without_required_equipment], context: "#{context}[:persons_without_required_equipment]") unless input[:persons_without_required_equipment].nil?
        ProtectiveEquipmentPersonIds.validate!(input[:persons_indeterminate], context: "#{context}[:persons_indeterminate]") unless input[:persons_indeterminate].nil?
      end
    end

    class ProtectiveEquipmentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisionedThroughputExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughputExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class Reasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecognizeCelebritiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecognizeCelebritiesInput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
      end
    end

    class RecognizeCelebritiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecognizeCelebritiesOutput, context: context)
        CelebrityList.validate!(input[:celebrity_faces], context: "#{context}[:celebrity_faces]") unless input[:celebrity_faces].nil?
        ComparedFaceList.validate!(input[:unrecognized_faces], context: "#{context}[:unrecognized_faces]") unless input[:unrecognized_faces].nil?
        Hearth::Validator.validate!(input[:orientation_correction], ::String, context: "#{context}[:orientation_correction]")
      end
    end

    class RegionOfInterest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionOfInterest, context: context)
        BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Polygon.validate!(input[:polygon], context: "#{context}[:polygon]") unless input[:polygon].nil?
      end
    end

    class RegionsOfInterest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegionOfInterest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class ResourceNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
      end
    end

    class S3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Object, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class SearchFacesByImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFacesByImageInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:max_faces], ::Integer, context: "#{context}[:max_faces]")
        Hearth::Validator.validate!(input[:face_match_threshold], ::Float, context: "#{context}[:face_match_threshold]")
        Hearth::Validator.validate!(input[:quality_filter], ::String, context: "#{context}[:quality_filter]")
      end
    end

    class SearchFacesByImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFacesByImageOutput, context: context)
        BoundingBox.validate!(input[:searched_face_bounding_box], context: "#{context}[:searched_face_bounding_box]") unless input[:searched_face_bounding_box].nil?
        Hearth::Validator.validate!(input[:searched_face_confidence], ::Float, context: "#{context}[:searched_face_confidence]")
        FaceMatchList.validate!(input[:face_matches], context: "#{context}[:face_matches]") unless input[:face_matches].nil?
        Hearth::Validator.validate!(input[:face_model_version], ::String, context: "#{context}[:face_model_version]")
      end
    end

    class SearchFacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFacesInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Hearth::Validator.validate!(input[:face_id], ::String, context: "#{context}[:face_id]")
        Hearth::Validator.validate!(input[:max_faces], ::Integer, context: "#{context}[:max_faces]")
        Hearth::Validator.validate!(input[:face_match_threshold], ::Float, context: "#{context}[:face_match_threshold]")
      end
    end

    class SearchFacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFacesOutput, context: context)
        Hearth::Validator.validate!(input[:searched_face_id], ::String, context: "#{context}[:searched_face_id]")
        FaceMatchList.validate!(input[:face_matches], context: "#{context}[:face_matches]") unless input[:face_matches].nil?
        Hearth::Validator.validate!(input[:face_model_version], ::String, context: "#{context}[:face_model_version]")
      end
    end

    class SegmentDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentDetection, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:start_timestamp_millis], ::Integer, context: "#{context}[:start_timestamp_millis]")
        Hearth::Validator.validate!(input[:end_timestamp_millis], ::Integer, context: "#{context}[:end_timestamp_millis]")
        Hearth::Validator.validate!(input[:duration_millis], ::Integer, context: "#{context}[:duration_millis]")
        Hearth::Validator.validate!(input[:start_timecode_smpte], ::String, context: "#{context}[:start_timecode_smpte]")
        Hearth::Validator.validate!(input[:end_timecode_smpte], ::String, context: "#{context}[:end_timecode_smpte]")
        Hearth::Validator.validate!(input[:duration_smpte], ::String, context: "#{context}[:duration_smpte]")
        TechnicalCueSegment.validate!(input[:technical_cue_segment], context: "#{context}[:technical_cue_segment]") unless input[:technical_cue_segment].nil?
        ShotSegment.validate!(input[:shot_segment], context: "#{context}[:shot_segment]") unless input[:shot_segment].nil?
        Hearth::Validator.validate!(input[:start_frame_number], ::Integer, context: "#{context}[:start_frame_number]")
        Hearth::Validator.validate!(input[:end_frame_number], ::Integer, context: "#{context}[:end_frame_number]")
        Hearth::Validator.validate!(input[:duration_frames], ::Integer, context: "#{context}[:duration_frames]")
      end
    end

    class SegmentDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SegmentDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SegmentTypeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentTypeInfo, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class SegmentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SegmentTypesInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SegmentTypeInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class ShotSegment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShotSegment, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class Smile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Smile, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class StartCelebrityRecognitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCelebrityRecognitionInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
      end
    end

    class StartCelebrityRecognitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCelebrityRecognitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartContentModerationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContentModerationInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
      end
    end

    class StartContentModerationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContentModerationOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartFaceDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFaceDetectionInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:face_attributes], ::String, context: "#{context}[:face_attributes]")
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
      end
    end

    class StartFaceDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFaceDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartFaceSearchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFaceSearchInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:face_match_threshold], ::Float, context: "#{context}[:face_match_threshold]")
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
      end
    end

    class StartFaceSearchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFaceSearchOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartLabelDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLabelDetectionInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:min_confidence], ::Float, context: "#{context}[:min_confidence]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
      end
    end

    class StartLabelDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLabelDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartPersonTrackingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPersonTrackingInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
      end
    end

    class StartPersonTrackingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPersonTrackingOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartProjectVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartProjectVersionInput, context: context)
        Hearth::Validator.validate!(input[:project_version_arn], ::String, context: "#{context}[:project_version_arn]")
        Hearth::Validator.validate!(input[:min_inference_units], ::Integer, context: "#{context}[:min_inference_units]")
      end
    end

    class StartProjectVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartProjectVersionOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StartSegmentDetectionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSegmentDetectionFilters, context: context)
        StartTechnicalCueDetectionFilter.validate!(input[:technical_cue_filter], context: "#{context}[:technical_cue_filter]") unless input[:technical_cue_filter].nil?
        StartShotDetectionFilter.validate!(input[:shot_filter], context: "#{context}[:shot_filter]") unless input[:shot_filter].nil?
      end
    end

    class StartSegmentDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSegmentDetectionInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
        StartSegmentDetectionFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SegmentTypes.validate!(input[:segment_types], context: "#{context}[:segment_types]") unless input[:segment_types].nil?
      end
    end

    class StartSegmentDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSegmentDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartShotDetectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartShotDetectionFilter, context: context)
        Hearth::Validator.validate!(input[:min_segment_confidence], ::Float, context: "#{context}[:min_segment_confidence]")
      end
    end

    class StartStreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamProcessorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StreamProcessingStartSelector.validate!(input[:start_selector], context: "#{context}[:start_selector]") unless input[:start_selector].nil?
        StreamProcessingStopSelector.validate!(input[:stop_selector], context: "#{context}[:stop_selector]") unless input[:stop_selector].nil?
      end
    end

    class StartStreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamProcessorOutput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class StartTechnicalCueDetectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTechnicalCueDetectionFilter, context: context)
        Hearth::Validator.validate!(input[:min_segment_confidence], ::Float, context: "#{context}[:min_segment_confidence]")
        BlackFrame.validate!(input[:black_frame], context: "#{context}[:black_frame]") unless input[:black_frame].nil?
      end
    end

    class StartTextDetectionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTextDetectionFilters, context: context)
        DetectionFilter.validate!(input[:word_filter], context: "#{context}[:word_filter]") unless input[:word_filter].nil?
        RegionsOfInterest.validate!(input[:regions_of_interest], context: "#{context}[:regions_of_interest]") unless input[:regions_of_interest].nil?
      end
    end

    class StartTextDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTextDetectionInput, context: context)
        Video.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
        StartTextDetectionFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class StartTextDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTextDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopProjectVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopProjectVersionInput, context: context)
        Hearth::Validator.validate!(input[:project_version_arn], ::String, context: "#{context}[:project_version_arn]")
      end
    end

    class StopProjectVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopProjectVersionOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StopStreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamProcessorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopStreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamProcessorOutput, context: context)
      end
    end

    class StreamProcessingStartSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessingStartSelector, context: context)
        KinesisVideoStreamStartSelector.validate!(input[:kvs_stream_start_selector], context: "#{context}[:kvs_stream_start_selector]") unless input[:kvs_stream_start_selector].nil?
      end
    end

    class StreamProcessingStopSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessingStopSelector, context: context)
        Hearth::Validator.validate!(input[:max_duration_in_seconds], ::Integer, context: "#{context}[:max_duration_in_seconds]")
      end
    end

    class StreamProcessor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessor, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class StreamProcessorDataSharingPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessorDataSharingPreference, context: context)
        Hearth::Validator.validate!(input[:opt_in], ::TrueClass, ::FalseClass, context: "#{context}[:opt_in]")
      end
    end

    class StreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessorInput, context: context)
        KinesisVideoStream.validate!(input[:kinesis_video_stream], context: "#{context}[:kinesis_video_stream]") unless input[:kinesis_video_stream].nil?
      end
    end

    class StreamProcessorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StreamProcessor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamProcessorNotificationChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessorNotificationChannel, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
      end
    end

    class StreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessorOutput, context: context)
        KinesisDataStream.validate!(input[:kinesis_data_stream], context: "#{context}[:kinesis_data_stream]") unless input[:kinesis_data_stream].nil?
        S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class StreamProcessorParametersToDelete
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StreamProcessorSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessorSettings, context: context)
        FaceSearchSettings.validate!(input[:face_search], context: "#{context}[:face_search]") unless input[:face_search].nil?
        ConnectedHomeSettings.validate!(input[:connected_home], context: "#{context}[:connected_home]") unless input[:connected_home].nil?
      end
    end

    class StreamProcessorSettingsForUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamProcessorSettingsForUpdate, context: context)
        ConnectedHomeSettingsForUpdate.validate!(input[:connected_home_for_update], context: "#{context}[:connected_home_for_update]") unless input[:connected_home_for_update].nil?
      end
    end

    class Summary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Summary, context: context)
        S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class Sunglasses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sunglasses, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TechnicalCueSegment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TechnicalCueSegment, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class TestingData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestingData, context: context)
        Assets.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
        Hearth::Validator.validate!(input[:auto_create], ::TrueClass, ::FalseClass, context: "#{context}[:auto_create]")
      end
    end

    class TestingDataResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestingDataResult, context: context)
        TestingData.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        TestingData.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        ValidationData.validate!(input[:validation], context: "#{context}[:validation]") unless input[:validation].nil?
      end
    end

    class TextDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextDetection, context: context)
        Hearth::Validator.validate!(input[:detected_text], ::String, context: "#{context}[:detected_text]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:parent_id], ::Integer, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Geometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
      end
    end

    class TextDetectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TextDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TextDetectionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextDetectionResult, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
        TextDetection.validate!(input[:text_detection], context: "#{context}[:text_detection]") unless input[:text_detection].nil?
      end
    end

    class TextDetectionResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TextDetectionResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

    class TrainingData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingData, context: context)
        Assets.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
      end
    end

    class TrainingDataResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingDataResult, context: context)
        TrainingData.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        TrainingData.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        ValidationData.validate!(input[:validation], context: "#{context}[:validation]") unless input[:validation].nil?
      end
    end

    class UnindexedFace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnindexedFace, context: context)
        Reasons.validate!(input[:reasons], context: "#{context}[:reasons]") unless input[:reasons].nil?
        FaceDetail.validate!(input[:face_detail], context: "#{context}[:face_detail]") unless input[:face_detail].nil?
      end
    end

    class UnindexedFaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnindexedFace.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDatasetEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetEntriesInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        DatasetChanges.validate!(input[:changes], context: "#{context}[:changes]") unless input[:changes].nil?
      end
    end

    class UpdateDatasetEntriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetEntriesOutput, context: context)
      end
    end

    class UpdateStreamProcessorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamProcessorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StreamProcessorSettingsForUpdate.validate!(input[:settings_for_update], context: "#{context}[:settings_for_update]") unless input[:settings_for_update].nil?
        RegionsOfInterest.validate!(input[:regions_of_interest_for_update], context: "#{context}[:regions_of_interest_for_update]") unless input[:regions_of_interest_for_update].nil?
        StreamProcessorDataSharingPreference.validate!(input[:data_sharing_preference_for_update], context: "#{context}[:data_sharing_preference_for_update]") unless input[:data_sharing_preference_for_update].nil?
        StreamProcessorParametersToDelete.validate!(input[:parameters_to_delete], context: "#{context}[:parameters_to_delete]") unless input[:parameters_to_delete].nil?
      end
    end

    class UpdateStreamProcessorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamProcessorOutput, context: context)
      end
    end

    class Urls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ValidationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationData, context: context)
        Assets.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
      end
    end

    class VersionNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Video
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Video, context: context)
        S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class VideoMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoMetadata, context: context)
        Hearth::Validator.validate!(input[:codec], ::String, context: "#{context}[:codec]")
        Hearth::Validator.validate!(input[:duration_millis], ::Integer, context: "#{context}[:duration_millis]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:frame_rate], ::Float, context: "#{context}[:frame_rate]")
        Hearth::Validator.validate!(input[:frame_height], ::Integer, context: "#{context}[:frame_height]")
        Hearth::Validator.validate!(input[:frame_width], ::Integer, context: "#{context}[:frame_width]")
        Hearth::Validator.validate!(input[:color_range], ::String, context: "#{context}[:color_range]")
      end
    end

    class VideoMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VideoMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VideoTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:logref], ::String, context: "#{context}[:logref]")
      end
    end

  end
end
