# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  module Validators

    class Alternative
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alternative, context: context)
        Hearth::Validator.validate!(input[:transcript], ::String, context: "#{context}[:transcript]")
        ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class AlternativeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Alternative.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioEvent, context: context)
        Hearth::Validator.validate!(input[:audio_chunk], ::String, context: "#{context}[:audio_chunk]")
      end
    end

    class AudioStream
      def self.validate!(input, context:)
        case input
        when Types::AudioStream::AudioEvent
          AudioEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
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
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Entity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entity, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class EntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Item
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Item, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:vocabulary_filter_match], ::TrueClass, ::FalseClass, context: "#{context}[:vocabulary_filter_match]")
        Hearth::Validator.validate!(input[:speaker], ::String, context: "#{context}[:speaker]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:stable], ::TrueClass, ::FalseClass, context: "#{context}[:stable]")
      end
    end

    class ItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Item.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LanguageIdentification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LanguageWithScore.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LanguageWithScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LanguageWithScore, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MedicalAlternative
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalAlternative, context: context)
        Hearth::Validator.validate!(input[:transcript], ::String, context: "#{context}[:transcript]")
        MedicalItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        MedicalEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class MedicalAlternativeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalAlternative.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalEntity, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class MedicalEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalItem, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:speaker], ::String, context: "#{context}[:speaker]")
      end
    end

    class MedicalItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalResult, context: context)
        Hearth::Validator.validate!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Hearth::Validator.validate!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:is_partial], ::TrueClass, ::FalseClass, context: "#{context}[:is_partial]")
        MedicalAlternativeList.validate!(input[:alternatives], context: "#{context}[:alternatives]") unless input[:alternatives].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class MedicalResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MedicalResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MedicalTranscript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalTranscript, context: context)
        MedicalResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class MedicalTranscriptEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MedicalTranscriptEvent, context: context)
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

    class Result
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Result, context: context)
        Hearth::Validator.validate!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Hearth::Validator.validate!(input[:start_time], ::Float, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Float, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:is_partial], ::TrueClass, ::FalseClass, context: "#{context}[:is_partial]")
        AlternativeList.validate!(input[:alternatives], context: "#{context}[:alternatives]") unless input[:alternatives].nil?
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        LanguageIdentification.validate!(input[:language_identification], context: "#{context}[:language_identification]") unless input[:language_identification].nil?
      end
    end

    class ResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Result.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartMedicalStreamTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMedicalStreamTranscriptionInput, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        AudioStream.validate!(input[:audio_stream], context: "#{context}[:audio_stream]") unless input[:audio_stream].nil?
        Hearth::Validator.validate!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
      end
    end

    class StartMedicalStreamTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMedicalStreamTranscriptionOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        MedicalTranscriptResultStream.validate!(input[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless input[:transcript_result_stream].nil?
        Hearth::Validator.validate!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
      end
    end

    class StartStreamTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamTranscriptionInput, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        AudioStream.validate!(input[:audio_stream], context: "#{context}[:audio_stream]") unless input[:audio_stream].nil?
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate!(input[:language_options], ::String, context: "#{context}[:language_options]")
        Hearth::Validator.validate!(input[:preferred_language], ::String, context: "#{context}[:preferred_language]")
        Hearth::Validator.validate!(input[:vocabulary_names], ::String, context: "#{context}[:vocabulary_names]")
        Hearth::Validator.validate!(input[:vocabulary_filter_names], ::String, context: "#{context}[:vocabulary_filter_names]")
      end
    end

    class StartStreamTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamTranscriptionOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:media_sample_rate_hertz], ::Integer, context: "#{context}[:media_sample_rate_hertz]")
        Hearth::Validator.validate!(input[:media_encoding], ::String, context: "#{context}[:media_encoding]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        TranscriptResultStream.validate!(input[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless input[:transcript_result_stream].nil?
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate!(input[:show_speaker_label], ::TrueClass, ::FalseClass, context: "#{context}[:show_speaker_label]")
        Hearth::Validator.validate!(input[:enable_channel_identification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_channel_identification]")
        Hearth::Validator.validate!(input[:number_of_channels], ::Integer, context: "#{context}[:number_of_channels]")
        Hearth::Validator.validate!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate!(input[:language_options], ::String, context: "#{context}[:language_options]")
        Hearth::Validator.validate!(input[:preferred_language], ::String, context: "#{context}[:preferred_language]")
        Hearth::Validator.validate!(input[:vocabulary_names], ::String, context: "#{context}[:vocabulary_names]")
        Hearth::Validator.validate!(input[:vocabulary_filter_names], ::String, context: "#{context}[:vocabulary_filter_names]")
      end
    end

    class Transcript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transcript, context: context)
        ResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class TranscriptEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptEvent, context: context)
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

  end
end
