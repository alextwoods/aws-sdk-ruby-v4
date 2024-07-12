# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  # @api private
  module Params

    class Alternative
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Alternative, context: context)
        type = Types::Alternative.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transcript = params[:transcript] unless params[:transcript].nil?
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    class AlternativeList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alternative.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AudioEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AudioEvent, context: context)
        type = Types::AudioEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.audio_chunk = params[:audio_chunk] unless params[:audio_chunk].nil?
        type
      end
    end

    class AudioStream
      def self.build(params, context:)
        return params if params.is_a?(Types::AudioStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AudioStream, context: context)
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
        when :configuration_event
          Types::AudioStream::ConfigurationEvent.new(
            (ConfigurationEvent.build(params[:configuration_event], context: "#{context}[:configuration_event]") unless params[:configuration_event].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :audio_event, :configuration_event set"
        end
      end
    end

    class BadRequestException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CallAnalyticsEntity
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CallAnalyticsEntity, context: context)
        type = Types::CallAnalyticsEntity.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.begin_offset_millis = params[:begin_offset_millis] unless params[:begin_offset_millis].nil?
        type.end_offset_millis = params[:end_offset_millis] unless params[:end_offset_millis].nil?
        type.category = params[:category] unless params[:category].nil?
        type.type = params[:type] unless params[:type].nil?
        type.content = params[:content] unless params[:content].nil?
        type.confidence = params[:confidence]&.to_f unless params[:confidence].nil?
        type
      end
    end

    class CallAnalyticsEntityList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CallAnalyticsEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CallAnalyticsItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CallAnalyticsItem, context: context)
        type = Types::CallAnalyticsItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.begin_offset_millis = params[:begin_offset_millis] unless params[:begin_offset_millis].nil?
        type.end_offset_millis = params[:end_offset_millis] unless params[:end_offset_millis].nil?
        type.type = params[:type] unless params[:type].nil?
        type.content = params[:content] unless params[:content].nil?
        type.confidence = params[:confidence]&.to_f unless params[:confidence].nil?
        type.vocabulary_filter_match = params[:vocabulary_filter_match] unless params[:vocabulary_filter_match].nil?
        type.stable = params[:stable] unless params[:stable].nil?
        type
      end
    end

    class CallAnalyticsItemList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CallAnalyticsItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CallAnalyticsTranscriptResultStream
      def self.build(params, context:)
        return params if params.is_a?(Types::CallAnalyticsTranscriptResultStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CallAnalyticsTranscriptResultStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :utterance_event
          Types::CallAnalyticsTranscriptResultStream::UtteranceEvent.new(
            (UtteranceEvent.build(params[:utterance_event], context: "#{context}[:utterance_event]") unless params[:utterance_event].nil?)
          )
        when :category_event
          Types::CallAnalyticsTranscriptResultStream::CategoryEvent.new(
            (CategoryEvent.build(params[:category_event], context: "#{context}[:category_event]") unless params[:category_event].nil?)
          )
        when :bad_request_exception
          Types::CallAnalyticsTranscriptResultStream::BadRequestException.new(
            (BadRequestException.build(params[:bad_request_exception], context: "#{context}[:bad_request_exception]") unless params[:bad_request_exception].nil?)
          )
        when :limit_exceeded_exception
          Types::CallAnalyticsTranscriptResultStream::LimitExceededException.new(
            (LimitExceededException.build(params[:limit_exceeded_exception], context: "#{context}[:limit_exceeded_exception]") unless params[:limit_exceeded_exception].nil?)
          )
        when :internal_failure_exception
          Types::CallAnalyticsTranscriptResultStream::InternalFailureException.new(
            (InternalFailureException.build(params[:internal_failure_exception], context: "#{context}[:internal_failure_exception]") unless params[:internal_failure_exception].nil?)
          )
        when :conflict_exception
          Types::CallAnalyticsTranscriptResultStream::ConflictException.new(
            (ConflictException.build(params[:conflict_exception], context: "#{context}[:conflict_exception]") unless params[:conflict_exception].nil?)
          )
        when :service_unavailable_exception
          Types::CallAnalyticsTranscriptResultStream::ServiceUnavailableException.new(
            (ServiceUnavailableException.build(params[:service_unavailable_exception], context: "#{context}[:service_unavailable_exception]") unless params[:service_unavailable_exception].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :utterance_event, :category_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception set"
        end
      end
    end

    class CategoryEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CategoryEvent, context: context)
        type = Types::CategoryEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.matched_categories = StringList.build(params[:matched_categories], context: "#{context}[:matched_categories]") unless params[:matched_categories].nil?
        type.matched_details = MatchedCategoryDetails.build(params[:matched_details], context: "#{context}[:matched_details]") unless params[:matched_details].nil?
        type
      end
    end

    class ChannelDefinition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChannelDefinition, context: context)
        type = Types::ChannelDefinition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.channel_id = params[:channel_id] unless params[:channel_id].nil?
        type.participant_role = params[:participant_role] unless params[:participant_role].nil?
        type
      end
    end

    class ChannelDefinitions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CharacterOffsets
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CharacterOffsets, context: context)
        type = Types::CharacterOffsets.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.begin = params[:begin] unless params[:begin].nil?
        type.end = params[:end] unless params[:end].nil?
        type
      end
    end

    class ConfigurationEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConfigurationEvent, context: context)
        type = Types::ConfigurationEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.channel_definitions = ChannelDefinitions.build(params[:channel_definitions], context: "#{context}[:channel_definitions]") unless params[:channel_definitions].nil?
        type.post_call_analytics_settings = PostCallAnalyticsSettings.build(params[:post_call_analytics_settings], context: "#{context}[:post_call_analytics_settings]") unless params[:post_call_analytics_settings].nil?
        type
      end
    end

    class ConflictException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class Entity
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Entity, context: context)
        type = Types::Entity.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start_time = params[:start_time]&.to_f unless params[:start_time].nil?
        type.end_time = params[:end_time]&.to_f unless params[:end_time].nil?
        type.category = params[:category] unless params[:category].nil?
        type.type = params[:type] unless params[:type].nil?
        type.content = params[:content] unless params[:content].nil?
        type.confidence = params[:confidence]&.to_f unless params[:confidence].nil?
        type
      end
    end

    class EntityList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class InternalFailureException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class IssueDetected
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IssueDetected, context: context)
        type = Types::IssueDetected.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.character_offsets = CharacterOffsets.build(params[:character_offsets], context: "#{context}[:character_offsets]") unless params[:character_offsets].nil?
        type
      end
    end

    class IssuesDetected
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IssueDetected.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Item
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Item, context: context)
        type = Types::Item.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start_time = params[:start_time]&.to_f unless params[:start_time].nil?
        type.end_time = params[:end_time]&.to_f unless params[:end_time].nil?
        type.type = params[:type] unless params[:type].nil?
        type.content = params[:content] unless params[:content].nil?
        type.vocabulary_filter_match = params[:vocabulary_filter_match] unless params[:vocabulary_filter_match].nil?
        type.speaker = params[:speaker] unless params[:speaker].nil?
        type.confidence = params[:confidence]&.to_f unless params[:confidence].nil?
        type.stable = params[:stable] unless params[:stable].nil?
        type
      end
    end

    class ItemList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Item.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class LanguageIdentification
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LanguageWithScore.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class LanguageWithScore
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LanguageWithScore, context: context)
        type = Types::LanguageWithScore.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.score = params[:score]&.to_f unless params[:score].nil?
        type
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class MatchedCategoryDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PointsOfInterest.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class MedicalAlternative
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalAlternative, context: context)
        type = Types::MedicalAlternative.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transcript = params[:transcript] unless params[:transcript].nil?
        type.items = MedicalItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.entities = MedicalEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    class MedicalAlternativeList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalAlternative.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MedicalEntity
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalEntity, context: context)
        type = Types::MedicalEntity.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start_time = params[:start_time]&.to_f unless params[:start_time].nil?
        type.end_time = params[:end_time]&.to_f unless params[:end_time].nil?
        type.category = params[:category] unless params[:category].nil?
        type.content = params[:content] unless params[:content].nil?
        type.confidence = params[:confidence]&.to_f unless params[:confidence].nil?
        type
      end
    end

    class MedicalEntityList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MedicalItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalItem, context: context)
        type = Types::MedicalItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start_time = params[:start_time]&.to_f unless params[:start_time].nil?
        type.end_time = params[:end_time]&.to_f unless params[:end_time].nil?
        type.type = params[:type] unless params[:type].nil?
        type.content = params[:content] unless params[:content].nil?
        type.confidence = params[:confidence]&.to_f unless params[:confidence].nil?
        type.speaker = params[:speaker] unless params[:speaker].nil?
        type
      end
    end

    class MedicalItemList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MedicalResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalResult, context: context)
        type = Types::MedicalResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.result_id = params[:result_id] unless params[:result_id].nil?
        type.start_time = params[:start_time]&.to_f unless params[:start_time].nil?
        type.end_time = params[:end_time]&.to_f unless params[:end_time].nil?
        type.is_partial = params[:is_partial] unless params[:is_partial].nil?
        type.alternatives = MedicalAlternativeList.build(params[:alternatives], context: "#{context}[:alternatives]") unless params[:alternatives].nil?
        type.channel_id = params[:channel_id] unless params[:channel_id].nil?
        type
      end
    end

    class MedicalResultList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MedicalResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MedicalTranscript
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalTranscript, context: context)
        type = Types::MedicalTranscript.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.results = MedicalResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    class MedicalTranscriptEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalTranscriptEvent, context: context)
        type = Types::MedicalTranscriptEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transcript = MedicalTranscript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type
      end
    end

    class MedicalTranscriptResultStream
      def self.build(params, context:)
        return params if params.is_a?(Types::MedicalTranscriptResultStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MedicalTranscriptResultStream, context: context)
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

    class PointsOfInterest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PointsOfInterest, context: context)
        type = Types::PointsOfInterest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.timestamp_ranges = TimestampRanges.build(params[:timestamp_ranges], context: "#{context}[:timestamp_ranges]") unless params[:timestamp_ranges].nil?
        type
      end
    end

    class PostCallAnalyticsSettings
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PostCallAnalyticsSettings, context: context)
        type = Types::PostCallAnalyticsSettings.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.output_location = params[:output_location] unless params[:output_location].nil?
        type.data_access_role_arn = params[:data_access_role_arn] unless params[:data_access_role_arn].nil?
        type.content_redaction_output = params[:content_redaction_output] unless params[:content_redaction_output].nil?
        type.output_encryption_kms_key_id = params[:output_encryption_kms_key_id] unless params[:output_encryption_kms_key_id].nil?
        type
      end
    end

    class Result
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Result, context: context)
        type = Types::Result.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.result_id = params[:result_id] unless params[:result_id].nil?
        type.start_time = params[:start_time]&.to_f unless params[:start_time].nil?
        type.end_time = params[:end_time]&.to_f unless params[:end_time].nil?
        type.is_partial = params[:is_partial] unless params[:is_partial].nil?
        type.alternatives = AlternativeList.build(params[:alternatives], context: "#{context}[:alternatives]") unless params[:alternatives].nil?
        type.channel_id = params[:channel_id] unless params[:channel_id].nil?
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.language_identification = LanguageIdentification.build(params[:language_identification], context: "#{context}[:language_identification]") unless params[:language_identification].nil?
        type
      end
    end

    class ResultList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Result.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ServiceUnavailableException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class StartCallAnalyticsStreamTranscriptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartCallAnalyticsStreamTranscriptionInput, context: context)
        type = Types::StartCallAnalyticsStreamTranscriptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz] unless params[:media_sample_rate_hertz].nil?
        type.media_encoding = params[:media_encoding] unless params[:media_encoding].nil?
        type.vocabulary_name = params[:vocabulary_name] unless params[:vocabulary_name].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.audio_stream = AudioStream.build(params[:audio_stream], context: "#{context}[:audio_stream]") unless params[:audio_stream].nil?
        type.vocabulary_filter_name = params[:vocabulary_filter_name] unless params[:vocabulary_filter_name].nil?
        type.vocabulary_filter_method = params[:vocabulary_filter_method] unless params[:vocabulary_filter_method].nil?
        type.language_model_name = params[:language_model_name] unless params[:language_model_name].nil?
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization] unless params[:enable_partial_results_stabilization].nil?
        type.partial_results_stability = params[:partial_results_stability] unless params[:partial_results_stability].nil?
        type.content_identification_type = params[:content_identification_type] unless params[:content_identification_type].nil?
        type.content_redaction_type = params[:content_redaction_type] unless params[:content_redaction_type].nil?
        type.pii_entity_types = params[:pii_entity_types] unless params[:pii_entity_types].nil?
        type
      end
    end

    class StartCallAnalyticsStreamTranscriptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartCallAnalyticsStreamTranscriptionOutput, context: context)
        type = Types::StartCallAnalyticsStreamTranscriptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_id = params[:request_id] unless params[:request_id].nil?
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz] unless params[:media_sample_rate_hertz].nil?
        type.media_encoding = params[:media_encoding] unless params[:media_encoding].nil?
        type.vocabulary_name = params[:vocabulary_name] unless params[:vocabulary_name].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.call_analytics_transcript_result_stream = CallAnalyticsTranscriptResultStream.build(params[:call_analytics_transcript_result_stream], context: "#{context}[:call_analytics_transcript_result_stream]") unless params[:call_analytics_transcript_result_stream].nil?
        type.vocabulary_filter_name = params[:vocabulary_filter_name] unless params[:vocabulary_filter_name].nil?
        type.vocabulary_filter_method = params[:vocabulary_filter_method] unless params[:vocabulary_filter_method].nil?
        type.language_model_name = params[:language_model_name] unless params[:language_model_name].nil?
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization] unless params[:enable_partial_results_stabilization].nil?
        type.partial_results_stability = params[:partial_results_stability] unless params[:partial_results_stability].nil?
        type.content_identification_type = params[:content_identification_type] unless params[:content_identification_type].nil?
        type.content_redaction_type = params[:content_redaction_type] unless params[:content_redaction_type].nil?
        type.pii_entity_types = params[:pii_entity_types] unless params[:pii_entity_types].nil?
        type
      end
    end

    class StartMedicalStreamTranscriptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartMedicalStreamTranscriptionInput, context: context)
        type = Types::StartMedicalStreamTranscriptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz] unless params[:media_sample_rate_hertz].nil?
        type.media_encoding = params[:media_encoding] unless params[:media_encoding].nil?
        type.vocabulary_name = params[:vocabulary_name] unless params[:vocabulary_name].nil?
        type.specialty = params[:specialty] unless params[:specialty].nil?
        type.type = params[:type] unless params[:type].nil?
        type.show_speaker_label = params[:show_speaker_label] unless params[:show_speaker_label].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.audio_stream = AudioStream.build(params[:audio_stream], context: "#{context}[:audio_stream]") unless params[:audio_stream].nil?
        type.enable_channel_identification = params[:enable_channel_identification] unless params[:enable_channel_identification].nil?
        type.number_of_channels = params[:number_of_channels] unless params[:number_of_channels].nil?
        type.content_identification_type = params[:content_identification_type] unless params[:content_identification_type].nil?
        type
      end
    end

    class StartMedicalStreamTranscriptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartMedicalStreamTranscriptionOutput, context: context)
        type = Types::StartMedicalStreamTranscriptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_id = params[:request_id] unless params[:request_id].nil?
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz] unless params[:media_sample_rate_hertz].nil?
        type.media_encoding = params[:media_encoding] unless params[:media_encoding].nil?
        type.vocabulary_name = params[:vocabulary_name] unless params[:vocabulary_name].nil?
        type.specialty = params[:specialty] unless params[:specialty].nil?
        type.type = params[:type] unless params[:type].nil?
        type.show_speaker_label = params[:show_speaker_label] unless params[:show_speaker_label].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.transcript_result_stream = MedicalTranscriptResultStream.build(params[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless params[:transcript_result_stream].nil?
        type.enable_channel_identification = params[:enable_channel_identification] unless params[:enable_channel_identification].nil?
        type.number_of_channels = params[:number_of_channels] unless params[:number_of_channels].nil?
        type.content_identification_type = params[:content_identification_type] unless params[:content_identification_type].nil?
        type
      end
    end

    class StartStreamTranscriptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartStreamTranscriptionInput, context: context)
        type = Types::StartStreamTranscriptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz] unless params[:media_sample_rate_hertz].nil?
        type.media_encoding = params[:media_encoding] unless params[:media_encoding].nil?
        type.vocabulary_name = params[:vocabulary_name] unless params[:vocabulary_name].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.audio_stream = AudioStream.build(params[:audio_stream], context: "#{context}[:audio_stream]") unless params[:audio_stream].nil?
        type.vocabulary_filter_name = params[:vocabulary_filter_name] unless params[:vocabulary_filter_name].nil?
        type.vocabulary_filter_method = params[:vocabulary_filter_method] unless params[:vocabulary_filter_method].nil?
        type.show_speaker_label = params[:show_speaker_label] unless params[:show_speaker_label].nil?
        type.enable_channel_identification = params[:enable_channel_identification] unless params[:enable_channel_identification].nil?
        type.number_of_channels = params[:number_of_channels] unless params[:number_of_channels].nil?
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization] unless params[:enable_partial_results_stabilization].nil?
        type.partial_results_stability = params[:partial_results_stability] unless params[:partial_results_stability].nil?
        type.content_identification_type = params[:content_identification_type] unless params[:content_identification_type].nil?
        type.content_redaction_type = params[:content_redaction_type] unless params[:content_redaction_type].nil?
        type.pii_entity_types = params[:pii_entity_types] unless params[:pii_entity_types].nil?
        type.language_model_name = params[:language_model_name] unless params[:language_model_name].nil?
        type.identify_language = params[:identify_language] unless params[:identify_language].nil?
        type.language_options = params[:language_options] unless params[:language_options].nil?
        type.preferred_language = params[:preferred_language] unless params[:preferred_language].nil?
        type.identify_multiple_languages = params[:identify_multiple_languages] unless params[:identify_multiple_languages].nil?
        type.vocabulary_names = params[:vocabulary_names] unless params[:vocabulary_names].nil?
        type.vocabulary_filter_names = params[:vocabulary_filter_names] unless params[:vocabulary_filter_names].nil?
        type
      end
    end

    class StartStreamTranscriptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartStreamTranscriptionOutput, context: context)
        type = Types::StartStreamTranscriptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_id = params[:request_id] unless params[:request_id].nil?
        type.language_code = params[:language_code] unless params[:language_code].nil?
        type.media_sample_rate_hertz = params[:media_sample_rate_hertz] unless params[:media_sample_rate_hertz].nil?
        type.media_encoding = params[:media_encoding] unless params[:media_encoding].nil?
        type.vocabulary_name = params[:vocabulary_name] unless params[:vocabulary_name].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.transcript_result_stream = TranscriptResultStream.build(params[:transcript_result_stream], context: "#{context}[:transcript_result_stream]") unless params[:transcript_result_stream].nil?
        type.vocabulary_filter_name = params[:vocabulary_filter_name] unless params[:vocabulary_filter_name].nil?
        type.vocabulary_filter_method = params[:vocabulary_filter_method] unless params[:vocabulary_filter_method].nil?
        type.show_speaker_label = params[:show_speaker_label] unless params[:show_speaker_label].nil?
        type.enable_channel_identification = params[:enable_channel_identification] unless params[:enable_channel_identification].nil?
        type.number_of_channels = params[:number_of_channels] unless params[:number_of_channels].nil?
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization] unless params[:enable_partial_results_stabilization].nil?
        type.partial_results_stability = params[:partial_results_stability] unless params[:partial_results_stability].nil?
        type.content_identification_type = params[:content_identification_type] unless params[:content_identification_type].nil?
        type.content_redaction_type = params[:content_redaction_type] unless params[:content_redaction_type].nil?
        type.pii_entity_types = params[:pii_entity_types] unless params[:pii_entity_types].nil?
        type.language_model_name = params[:language_model_name] unless params[:language_model_name].nil?
        type.identify_language = params[:identify_language] unless params[:identify_language].nil?
        type.language_options = params[:language_options] unless params[:language_options].nil?
        type.preferred_language = params[:preferred_language] unless params[:preferred_language].nil?
        type.identify_multiple_languages = params[:identify_multiple_languages] unless params[:identify_multiple_languages].nil?
        type.vocabulary_names = params[:vocabulary_names] unless params[:vocabulary_names].nil?
        type.vocabulary_filter_names = params[:vocabulary_filter_names] unless params[:vocabulary_filter_names].nil?
        type
      end
    end

    class StringList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TimestampRange
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TimestampRange, context: context)
        type = Types::TimestampRange.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.begin_offset_millis = params[:begin_offset_millis] unless params[:begin_offset_millis].nil?
        type.end_offset_millis = params[:end_offset_millis] unless params[:end_offset_millis].nil?
        type
      end
    end

    class TimestampRanges
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimestampRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Transcript
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Transcript, context: context)
        type = Types::Transcript.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.results = ResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    class TranscriptEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TranscriptEvent, context: context)
        type = Types::TranscriptEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transcript = Transcript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type
      end
    end

    class TranscriptResultStream
      def self.build(params, context:)
        return params if params.is_a?(Types::TranscriptResultStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TranscriptResultStream, context: context)
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

    class UtteranceEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UtteranceEvent, context: context)
        type = Types::UtteranceEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.utterance_id = params[:utterance_id] unless params[:utterance_id].nil?
        type.is_partial = params[:is_partial] unless params[:is_partial].nil?
        type.participant_role = params[:participant_role] unless params[:participant_role].nil?
        type.begin_offset_millis = params[:begin_offset_millis] unless params[:begin_offset_millis].nil?
        type.end_offset_millis = params[:end_offset_millis] unless params[:end_offset_millis].nil?
        type.transcript = params[:transcript] unless params[:transcript].nil?
        type.items = CallAnalyticsItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.entities = CallAnalyticsEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.sentiment = params[:sentiment] unless params[:sentiment].nil?
        type.issues_detected = IssuesDetected.build(params[:issues_detected], context: "#{context}[:issues_detected]") unless params[:issues_detected].nil?
        type
      end
    end

  end
end
