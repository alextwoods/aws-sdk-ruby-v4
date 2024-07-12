# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  # @api private
  module Validators

    class Alternative
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Alternative, context: context)
        Hearth::Validator.validate_types!(input[:transcript], ::String, context: "#{context}[:transcript]")
        ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class AlternativeList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Alternative.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AudioEvent, context: context)
        Hearth::Validator.validate_types!(input[:audio_chunk], ::String, context: "#{context}[:audio_chunk]")
      end
    end

    class AudioStream
      def self.validate!(input, context:)
        case input
        when Types::AudioStream::AudioEvent
          AudioEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AudioStream::ConfigurationEvent
          ConfigurationEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AudioStream, got #{input.class}."
        end
      end

      class AudioEvent
        def self.validate!(input, context:)
          Validators::AudioEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class ConfigurationEvent
        def self.validate!(input, context:)
          Validators::ConfigurationEvent.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CallAnalyticsEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CallAnalyticsEntity, context: context)
        Hearth::Validator.validate_types!(input[:begin_offset_millis], ::Integer, context: "#{context}[:begin_offset_millis]")
        Hearth::Validator.validate_types!(input[:end_offset_millis], ::Integer, context: "#{context}[:end_offset_millis]")
        Hearth::Validator.validate_types!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_types!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class CallAnalyticsEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CallAnalyticsEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CallAnalyticsItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CallAnalyticsItem, context: context)
        Hearth::Validator.validate_types!(input[:begin_offset_millis], ::Integer, context: "#{context}[:begin_offset_millis]")
        Hearth::Validator.validate_types!(input[:end_offset_millis], ::Integer, context: "#{context}[:end_offset_millis]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_types!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_match], ::TrueClass, ::FalseClass, context: "#{context}[:vocabulary_filter_match]")
        Hearth::Validator.validate_types!(input[:stable], ::TrueClass, ::FalseClass, context: "#{context}[:stable]")
      end
    end

    class CallAnalyticsItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CallAnalyticsItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CallAnalyticsTranscriptResultStream
      def self.validate!(input, context:)
        case input
        when Types::CallAnalyticsTranscriptResultStream::UtteranceEvent
          UtteranceEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::CallAnalyticsTranscriptResultStream::CategoryEvent
          CategoryEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::CallAnalyticsTranscriptResultStream::BadRequestException
          BadRequestException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::CallAnalyticsTranscriptResultStream::LimitExceededException
          LimitExceededException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::CallAnalyticsTranscriptResultStream::InternalFailureException
          InternalFailureException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::CallAnalyticsTranscriptResultStream::ConflictException
          ConflictException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::CallAnalyticsTranscriptResultStream::ServiceUnavailableException
          ServiceUnavailableException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::CallAnalyticsTranscriptResultStream, got #{input.class}."
        end
      end

      class UtteranceEvent
        def self.validate!(input, context:)
          Validators::UtteranceEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class CategoryEvent
        def self.validate!(input, context:)
          Validators::CategoryEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class BadRequestException
        def self.validate!(input, context:)
          Validators::BadRequestException.validate!(input, context: context) unless input.nil?
        end
      end

      class LimitExceededException
        def self.validate!(input, context:)
          Validators::LimitExceededException.validate!(input, context: context) unless input.nil?
        end
      end

      class InternalFailureException
        def self.validate!(input, context:)
          Validators::InternalFailureException.validate!(input, context: context) unless input.nil?
        end
      end

      class ConflictException
        def self.validate!(input, context:)
          Validators::ConflictException.validate!(input, context: context) unless input.nil?
        end
      end

      class ServiceUnavailableException
        def self.validate!(input, context:)
          Validators::ServiceUnavailableException.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class CategoryEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CategoryEvent, context: context)
        StringList.validate!(input[:matched_categories], context: "#{context}[:matched_categories]") unless input[:matched_categories].nil?
        MatchedCategoryDetails.validate!(input[:matched_details], context: "#{context}[:matched_details]") unless input[:matched_details].nil?
      end
    end

    class ChannelDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChannelDefinition, context: context)
        Hearth::Validator.validate_required!(input[:channel_id], context: "#{context}[:channel_id]")
        Hearth::Validator.validate_types!(input[:channel_id], ::Integer, context: "#{context}[:channel_id]")
        Hearth::Validator.validate_required!(input[:participant_role], context: "#{context}[:participant_role]")
        Hearth::Validator.validate_types!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
      end
    end

    class ChannelDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CharacterOffsets
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CharacterOffsets, context: context)
        Hearth::Validator.validate_types!(input[:begin], ::Integer, context: "#{context}[:begin]")
        Hearth::Validator.validate_types!(input[:end], ::Integer, context: "#{context}[:end]")
      end
    end

    class ConfigurationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConfigurationEvent, context: context)
        ChannelDefinitions.validate!(input[:channel_definitions], context: "#{context}[:channel_definitions]") unless input[:channel_definitions].nil?
        PostCallAnalyticsSettings.validate!(input[:post_call_analytics_settings], context: "#{context}[:post_call_analytics_settings]") unless input[:post_call_analytics_settings].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Entity
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Entity, context: context)
        Hearth::Validator.validate_types!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_types!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class EntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IssueDetected
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IssueDetected, context: context)
        CharacterOffsets.validate!(input[:character_offsets], context: "#{context}[:character_offsets]") unless input[:character_offsets].nil?
      end
    end

    class IssuesDetected
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IssueDetected.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Item
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Item, context: context)
        Hearth::Validator.validate_types!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_match], ::TrueClass, ::FalseClass, context: "#{context}[:vocabulary_filter_match]")
        Hearth::Validator.validate_types!(input[:speaker], ::String, context: "#{context}[:speaker]")
        Hearth::Validator.validate_types!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate_types!(input[:stable], ::TrueClass, ::FalseClass, context: "#{context}[:stable]")
      end
    end

    class ItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Item.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LanguageIdentification
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LanguageWithScore.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LanguageWithScore
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LanguageWithScore, context: context)
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_types!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MatchedCategoryDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          PointsOfInterest.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MedicalAlternative
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MedicalAlternative, context: context)
        Hearth::Validator.validate_types!(input[:transcript], ::String, context: "#{context}[:transcript]")
        MedicalItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        MedicalEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class MedicalAlternativeList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalAlternative.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MedicalEntity, context: context)
        Hearth::Validator.validate_types!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_types!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class MedicalEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MedicalItem, context: context)
        Hearth::Validator.validate_types!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_types!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate_types!(input[:speaker], ::String, context: "#{context}[:speaker]")
      end
    end

    class MedicalItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalResult
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MedicalResult, context: context)
        Hearth::Validator.validate_types!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Hearth::Validator.validate_types!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input[:is_partial], ::TrueClass, ::FalseClass, context: "#{context}[:is_partial]")
        MedicalAlternativeList.validate!(input[:alternatives], context: "#{context}[:alternatives]") unless input[:alternatives].nil?
        Hearth::Validator.validate_types!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class MedicalResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalTranscript
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MedicalTranscript, context: context)
        MedicalResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class MedicalTranscriptEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MedicalTranscriptEvent, context: context)
        MedicalTranscript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
      end
    end

    class MedicalTranscriptResultStream
      def self.validate!(input, context:)
        case input
        when Types::MedicalTranscriptResultStream::TranscriptEvent
          MedicalTranscriptEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MedicalTranscriptResultStream::BadRequestException
          BadRequestException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MedicalTranscriptResultStream::LimitExceededException
          LimitExceededException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MedicalTranscriptResultStream::InternalFailureException
          InternalFailureException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MedicalTranscriptResultStream::ConflictException
          ConflictException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MedicalTranscriptResultStream::ServiceUnavailableException
          ServiceUnavailableException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::MedicalTranscriptResultStream, got #{input.class}."
        end
      end

      class TranscriptEvent
        def self.validate!(input, context:)
          Validators::MedicalTranscriptEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class BadRequestException
        def self.validate!(input, context:)
          Validators::BadRequestException.validate!(input, context: context) unless input.nil?
        end
      end

      class LimitExceededException
        def self.validate!(input, context:)
          Validators::LimitExceededException.validate!(input, context: context) unless input.nil?
        end
      end

      class InternalFailureException
        def self.validate!(input, context:)
          Validators::InternalFailureException.validate!(input, context: context) unless input.nil?
        end
      end

      class ConflictException
        def self.validate!(input, context:)
          Validators::ConflictException.validate!(input, context: context) unless input.nil?
        end
      end

      class ServiceUnavailableException
        def self.validate!(input, context:)
          Validators::ServiceUnavailableException.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class PointsOfInterest
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PointsOfInterest, context: context)
        TimestampRanges.validate!(input[:timestamp_ranges], context: "#{context}[:timestamp_ranges]") unless input[:timestamp_ranges].nil?
      end
    end

    class PostCallAnalyticsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PostCallAnalyticsSettings, context: context)
        Hearth::Validator.validate_required!(input[:output_location], context: "#{context}[:output_location]")
        Hearth::Validator.validate_types!(input[:output_location], ::String, context: "#{context}[:output_location]")
        Hearth::Validator.validate_required!(input[:data_access_role_arn], context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate_types!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate_types!(input[:content_redaction_output], ::String, context: "#{context}[:content_redaction_output]")
        Hearth::Validator.validate_types!(input[:output_encryption_kms_key_id], ::String, context: "#{context}[:output_encryption_kms_key_id]")
      end
    end

    class Result
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Result, context: context)
        Hearth::Validator.validate_types!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Hearth::Validator.validate_types!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input[:is_partial], ::TrueClass, ::FalseClass, context: "#{context}[:is_partial]")
        AlternativeList.validate!(input[:alternatives], context: "#{context}[:alternatives]") unless input[:alternatives].nil?
        Hearth::Validator.validate_types!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        LanguageIdentification.validate!(input[:language_identification], context: "#{context}[:language_identification]") unless input[:language_identification].nil?
      end
    end

    class ResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Result.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartCallAnalyticsStreamTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartCallAnalyticsStreamTranscriptionInput, context: context)
        Hearth::Validator.validate_required!(input[:language_code], context: "#{context}[:language_code]")
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_required!(input[:media_sample_rate_hertz], context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_types!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_required!(input[:media_encoding], context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_required!(input[:audio_stream], context: "#{context}[:audio_stream]")
        AudioStream.validate!(input[:audio_stream], context: "#{context}[:audio_stream]") unless input[:audio_stream].nil?
        Hearth::Validator.validate_types!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate_types!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate_types!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate_types!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate_types!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate_types!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate_types!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
      end
    end

    class StartCallAnalyticsStreamTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartCallAnalyticsStreamTranscriptionOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_types!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_types!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        CallAnalyticsTranscriptResultStream.validate!(input[:call_analytics_transcript_result_stream], context: "#{context}[:call_analytics_transcript_result_stream]") unless input[:call_analytics_transcript_result_stream].nil?
        Hearth::Validator.validate_types!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate_types!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate_types!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate_types!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate_types!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate_types!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate_types!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
      end
    end

    class StartMedicalStreamTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartMedicalStreamTranscriptionInput, context: context)
        Hearth::Validator.validate_required!(input[:language_code], context: "#{context}[:language_code]")
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_required!(input[:media_sample_rate_hertz], context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_types!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_required!(input[:media_encoding], context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate_required!(input[:specialty], context: "#{context}[:specialty]")
        Hearth::Validator.validate_types!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate_required!(input[:type], context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_required!(input[:audio_stream], context: "#{context}[:audio_stream]")
        AudioStream.validate!(input[:audio_stream], context: "#{context}[:audio_stream]") unless input[:audio_stream].nil?
        Hearth::Validator.validate_types!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate_types!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate_types!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
      end
    end

    class StartMedicalStreamTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartMedicalStreamTranscriptionOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_types!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_types!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate_types!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        MedicalTranscriptResultStream.validate!(input[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless input[:transcript_result_stream].nil?
        Hearth::Validator.validate_types!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate_types!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate_types!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
      end
    end

    class StartStreamTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartStreamTranscriptionInput, context: context)
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_required!(input[:media_sample_rate_hertz], context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_types!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_required!(input[:media_encoding], context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_required!(input[:audio_stream], context: "#{context}[:audio_stream]")
        AudioStream.validate!(input[:audio_stream], context: "#{context}[:audio_stream]") unless input[:audio_stream].nil?
        Hearth::Validator.validate_types!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate_types!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate_types!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate_types!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate_types!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate_types!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate_types!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate_types!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate_types!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
        Hearth::Validator.validate_types!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate_types!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate_types!(input[:language_options], ::String, context: "#{context}[:language_options]")
        Hearth::Validator.validate_types!(input[:preferred_language], ::String, context: "#{context}[:preferred_language]")
        Hearth::Validator.validate_types!(input[:identify_multiple_languages], ::TrueClass, ::FalseClass, context: "#{context}[:identify_multiple_languages]")
        Hearth::Validator.validate_types!(input[:vocabulary_names], ::String, context: "#{context}[:vocabulary_names]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_names], ::String, context: "#{context}[:vocabulary_filter_names]")
      end
    end

    class StartStreamTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartStreamTranscriptionOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate_types!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate_types!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate_types!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate_types!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        TranscriptResultStream.validate!(input[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless input[:transcript_result_stream].nil?
        Hearth::Validator.validate_types!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate_types!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate_types!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate_types!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate_types!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate_types!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate_types!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate_types!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate_types!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
        Hearth::Validator.validate_types!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate_types!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate_types!(input[:language_options], ::String, context: "#{context}[:language_options]")
        Hearth::Validator.validate_types!(input[:preferred_language], ::String, context: "#{context}[:preferred_language]")
        Hearth::Validator.validate_types!(input[:identify_multiple_languages], ::TrueClass, ::FalseClass, context: "#{context}[:identify_multiple_languages]")
        Hearth::Validator.validate_types!(input[:vocabulary_names], ::String, context: "#{context}[:vocabulary_names]")
        Hearth::Validator.validate_types!(input[:vocabulary_filter_names], ::String, context: "#{context}[:vocabulary_filter_names]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TimestampRange
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TimestampRange, context: context)
        Hearth::Validator.validate_types!(input[:begin_offset_millis], ::Integer, context: "#{context}[:begin_offset_millis]")
        Hearth::Validator.validate_types!(input[:end_offset_millis], ::Integer, context: "#{context}[:end_offset_millis]")
      end
    end

    class TimestampRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TimestampRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Transcript
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Transcript, context: context)
        ResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class TranscriptEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TranscriptEvent, context: context)
        Transcript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
      end
    end

    class TranscriptResultStream
      def self.validate!(input, context:)
        case input
        when Types::TranscriptResultStream::TranscriptEvent
          TranscriptEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TranscriptResultStream::BadRequestException
          BadRequestException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TranscriptResultStream::LimitExceededException
          LimitExceededException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TranscriptResultStream::InternalFailureException
          InternalFailureException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TranscriptResultStream::ConflictException
          ConflictException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TranscriptResultStream::ServiceUnavailableException
          ServiceUnavailableException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::TranscriptResultStream, got #{input.class}."
        end
      end

      class TranscriptEvent
        def self.validate!(input, context:)
          Validators::TranscriptEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class BadRequestException
        def self.validate!(input, context:)
          Validators::BadRequestException.validate!(input, context: context) unless input.nil?
        end
      end

      class LimitExceededException
        def self.validate!(input, context:)
          Validators::LimitExceededException.validate!(input, context: context) unless input.nil?
        end
      end

      class InternalFailureException
        def self.validate!(input, context:)
          Validators::InternalFailureException.validate!(input, context: context) unless input.nil?
        end
      end

      class ConflictException
        def self.validate!(input, context:)
          Validators::ConflictException.validate!(input, context: context) unless input.nil?
        end
      end

      class ServiceUnavailableException
        def self.validate!(input, context:)
          Validators::ServiceUnavailableException.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class UtteranceEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UtteranceEvent, context: context)
        Hearth::Validator.validate_types!(input[:utterance_id], ::String, context: "#{context}[:utterance_id]")
        Hearth::Validator.validate_types!(input[:is_partial], ::TrueClass, ::FalseClass, context: "#{context}[:is_partial]")
        Hearth::Validator.validate_types!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
        Hearth::Validator.validate_types!(input[:begin_offset_millis], ::Integer, context: "#{context}[:begin_offset_millis]")
        Hearth::Validator.validate_types!(input[:end_offset_millis], ::Integer, context: "#{context}[:end_offset_millis]")
        Hearth::Validator.validate_types!(input[:transcript], ::String, context: "#{context}[:transcript]")
        CallAnalyticsItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        CallAnalyticsEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate_types!(input[:sentiment], ::String, context: "#{context}[:sentiment]")
        IssuesDetected.validate!(input[:issues_detected], context: "#{context}[:issues_detected]") unless input[:issues_detected].nil?
      end
    end

  end
end
