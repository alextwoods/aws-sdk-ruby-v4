# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::TranscribeStreaming
  module Params

    module Alternative
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alternative, context: context)
        type = Types::Alternative.new
        type.transcript = params[:transcript]
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module AlternativeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alternative.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AudioEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioEvent, context: context)
        type = Types::AudioEvent.new
        type.audio_chunk = params[:audio_chunk]
        type
      end
    end

    module AudioStream
      def self.build(params, context: '')
        return params if params.is_a?(Types::AudioStream)
        Hearth::Validator.validate!(params, ::Hash, Types::AudioStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :audio_event
          Types::AudioStream::AudioEvent.new(
            (AudioEvent.build(params[:audio_event], context: "#{context}[:audio_event]") unless params[:audio_event].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :audio_event set"
        end
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module Entity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entity, context: context)
        type = Types::Entity.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.category = params[:category]
        type.type = params[:type]
        type.content = params[:content]
        type.confidence = params[:confidence]
        type
      end
    end

    module EntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module Item
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Item, context: context)
        type = Types::Item.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.type = params[:type]
        type.content = params[:content]
        type.vocabulary_filter_match = params[:vocabulary_filter_match]
        type.speaker = params[:speaker]
        type.confidence = params[:confidence]
        type.stable = params[:stable]
        type
      end
    end

    module ItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Item.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LanguageIdentification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LanguageWithScore.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LanguageWithScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LanguageWithScore, context: context)
        type = Types::LanguageWithScore.new
        type.language_code = params[:language_code]
        type.score = params[:score]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MedicalAlternative
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalAlternative, context: context)
        type = Types::MedicalAlternative.new
        type.transcript = params[:transcript]
        type.items = MedicalItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.entities = MedicalEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module MedicalAlternativeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalAlternative.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MedicalEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalEntity, context: context)
        type = Types::MedicalEntity.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.category = params[:category]
        type.content = params[:content]
        type.confidence = params[:confidence]
        type
      end
    end

    module MedicalEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MedicalItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalItem, context: context)
        type = Types::MedicalItem.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.type = params[:type]
        type.content = params[:content]
        type.confidence = params[:confidence]
        type.speaker = params[:speaker]
        type
      end
    end

    module MedicalItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MedicalResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalResult, context: context)
        type = Types::MedicalResult.new
        type.result_id = params[:result_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.is_partial = params[:is_partial]
        type.alternatives = MedicalAlternativeList.build(params[:alternatives], context: "#{context}[:alternatives]") unless params[:alternatives].nil?
        type.channel_id = params[:channel_id]
        type
      end
    end

    module MedicalResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MedicalTranscript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscript, context: context)
        type = Types::MedicalTranscript.new
        type.results = MedicalResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module MedicalTranscriptEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscriptEvent, context: context)
        type = Types::MedicalTranscriptEvent.new
        type.transcript = MedicalTranscript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type
      end
    end

    module MedicalTranscriptResultStream
      def self.build(params, context: '')
        return params if params.is_a?(Types::MedicalTranscriptResultStream)
        Hearth::Validator.validate!(params, ::Hash, Types::MedicalTranscriptResultStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :transcript_event
          Types::MedicalTranscriptResultStream::TranscriptEvent.new(
            (MedicalTranscriptEvent.build(params[:transcript_event], context: "#{context}[:transcript_event]") unless params[:transcript_event].nil?)
          )
        when :bad_request_exception
          Types::MedicalTranscriptResultStream::BadRequestException.new(
            (BadRequestException.build(params[:bad_request_exception], context: "#{context}[:bad_request_exception]") unless params[:bad_request_exception].nil?)
          )
        when :limit_exceeded_exception
          Types::MedicalTranscriptResultStream::LimitExceededException.new(
            (LimitExceededException.build(params[:limit_exceeded_exception], context: "#{context}[:limit_exceeded_exception]") unless params[:limit_exceeded_exception].nil?)
          )
        when :internal_failure_exception
          Types::MedicalTranscriptResultStream::InternalFailureException.new(
            (InternalFailureException.build(params[:internal_failure_exception], context: "#{context}[:internal_failure_exception]") unless params[:internal_failure_exception].nil?)
          )
        when :conflict_exception
          Types::MedicalTranscriptResultStream::ConflictException.new(
            (ConflictException.build(params[:conflict_exception], context: "#{context}[:conflict_exception]") unless params[:conflict_exception].nil?)
          )
        when :service_unavailable_exception
          Types::MedicalTranscriptResultStream::ServiceUnavailableException.new(
            (ServiceUnavailableException.build(params[:service_unavailable_exception], context: "#{context}[:service_unavailable_exception]") unless params[:service_unavailable_exception].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :transcript_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception set"
        end
      end
    end

    module Result
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Result, context: context)
        type = Types::Result.new
        type.result_id = params[:result_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.is_partial = params[:is_partial]
        type.alternatives = AlternativeList.build(params[:alternatives], context: "#{context}[:alternatives]") unless params[:alternatives].nil?
        type.channel_id = params[:channel_id]
        type.language_code = params[:language_code]
        type.language_identification = LanguageIdentification.build(params[:language_identification], context: "#{context}[:language_identification]") unless params[:language_identification].nil?
        type
      end
    end

    module ResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Result.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StartMedicalStreamTranscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMedicalStreamTranscriptionInput, context: context)
        type = Types::StartMedicalStreamTranscriptionInput.new
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_encoding = params[:media_encoding]
        type.vocabulary_name = params[:vocabulary_name]
        type.specialty = params[:specialty]
        type.type = params[:type]
        type.show_speaker_label = params[:show_speaker_label]
        type.session_id = params[:session_id]
        type.audio_stream = AudioStream.build(params[:audio_stream], context: "#{context}[:audio_stream]") unless params[:audio_stream].nil?
        type.enable_channel_identification = params[:enable_channel_identification]
        type.number_of_channels = params[:number_of_channels]
        type.content_identification_type = params[:content_identification_type]
        type
      end
    end

    module StartMedicalStreamTranscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMedicalStreamTranscriptionOutput, context: context)
        type = Types::StartMedicalStreamTranscriptionOutput.new
        type.request_id = params[:request_id]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_encoding = params[:media_encoding]
        type.vocabulary_name = params[:vocabulary_name]
        type.specialty = params[:specialty]
        type.type = params[:type]
        type.show_speaker_label = params[:show_speaker_label]
        type.session_id = params[:session_id]
        type.transcript_result_stream = MedicalTranscriptResultStream.build(params[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless params[:transcript_result_stream].nil?
        type.enable_channel_identification = params[:enable_channel_identification]
        type.number_of_channels = params[:number_of_channels]
        type.content_identification_type = params[:content_identification_type]
        type
      end
    end

    module StartStreamTranscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamTranscriptionInput, context: context)
        type = Types::StartStreamTranscriptionInput.new
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_encoding = params[:media_encoding]
        type.vocabulary_name = params[:vocabulary_name]
        type.session_id = params[:session_id]
        type.audio_stream = AudioStream.build(params[:audio_stream], context: "#{context}[:audio_stream]") unless params[:audio_stream].nil?
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.vocabulary_filter_method = params[:vocabulary_filter_method]
        type.show_speaker_label = params[:show_speaker_label]
        type.enable_channel_identification = params[:enable_channel_identification]
        type.number_of_channels = params[:number_of_channels]
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization]
        type.partial_results_stability = params[:partial_results_stability]
        type.content_identification_type = params[:content_identification_type]
        type.content_redaction_type = params[:content_redaction_type]
        type.pii_entity_types = params[:pii_entity_types]
        type.language_model_name = params[:language_model_name]
        type.identify_language = params[:identify_language]
        type.language_options = params[:language_options]
        type.preferred_language = params[:preferred_language]
        type.vocabulary_names = params[:vocabulary_names]
        type.vocabulary_filter_names = params[:vocabulary_filter_names]
        type
      end
    end

    module StartStreamTranscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamTranscriptionOutput, context: context)
        type = Types::StartStreamTranscriptionOutput.new
        type.request_id = params[:request_id]
        type.language_code = params[:language_code]
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz]
        type.media_encoding = params[:media_encoding]
        type.vocabulary_name = params[:vocabulary_name]
        type.session_id = params[:session_id]
        type.transcript_result_stream = TranscriptResultStream.build(params[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless params[:transcript_result_stream].nil?
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.vocabulary_filter_method = params[:vocabulary_filter_method]
        type.show_speaker_label = params[:show_speaker_label]
        type.enable_channel_identification = params[:enable_channel_identification]
        type.number_of_channels = params[:number_of_channels]
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization]
        type.partial_results_stability = params[:partial_results_stability]
        type.content_identification_type = params[:content_identification_type]
        type.content_redaction_type = params[:content_redaction_type]
        type.pii_entity_types = params[:pii_entity_types]
        type.language_model_name = params[:language_model_name]
        type.identify_language = params[:identify_language]
        type.language_options = params[:language_options]
        type.preferred_language = params[:preferred_language]
        type.vocabulary_names = params[:vocabulary_names]
        type.vocabulary_filter_names = params[:vocabulary_filter_names]
        type
      end
    end

    module Transcript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transcript, context: context)
        type = Types::Transcript.new
        type.results = ResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module TranscriptEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptEvent, context: context)
        type = Types::TranscriptEvent.new
        type.transcript = Transcript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type
      end
    end

    module TranscriptResultStream
      def self.build(params, context: '')
        return params if params.is_a?(Types::TranscriptResultStream)
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptResultStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :transcript_event
          Types::TranscriptResultStream::TranscriptEvent.new(
            (TranscriptEvent.build(params[:transcript_event], context: "#{context}[:transcript_event]") unless params[:transcript_event].nil?)
          )
        when :bad_request_exception
          Types::TranscriptResultStream::BadRequestException.new(
            (BadRequestException.build(params[:bad_request_exception], context: "#{context}[:bad_request_exception]") unless params[:bad_request_exception].nil?)
          )
        when :limit_exceeded_exception
          Types::TranscriptResultStream::LimitExceededException.new(
            (LimitExceededException.build(params[:limit_exceeded_exception], context: "#{context}[:limit_exceeded_exception]") unless params[:limit_exceeded_exception].nil?)
          )
        when :internal_failure_exception
          Types::TranscriptResultStream::InternalFailureException.new(
            (InternalFailureException.build(params[:internal_failure_exception], context: "#{context}[:internal_failure_exception]") unless params[:internal_failure_exception].nil?)
          )
        when :conflict_exception
          Types::TranscriptResultStream::ConflictException.new(
            (ConflictException.build(params[:conflict_exception], context: "#{context}[:conflict_exception]") unless params[:conflict_exception].nil?)
          )
        when :service_unavailable_exception
          Types::TranscriptResultStream::ServiceUnavailableException.new(
            (ServiceUnavailableException.build(params[:service_unavailable_exception], context: "#{context}[:service_unavailable_exception]") unless params[:service_unavailable_exception].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :transcript_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception set"
        end
      end
    end

  end
end
