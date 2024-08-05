# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  # @api private
  module Parsers

    class Alternative
      def self.parse(map)
        data = Types::Alternative.new
        data.transcript = map['Transcript'] unless map['Transcript'].nil?
        data.items = ItemList.parse(map['Items']) unless map['Items'].nil?
        data.entities = EntityList.parse(map['Entities']) unless map['Entities'].nil?
        return data
      end
    end

    class AlternativeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Alternative.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['Message'] unless map['Message'].nil?
        data
      end
    end

    class CallAnalyticsEntity
      def self.parse(map)
        data = Types::CallAnalyticsEntity.new
        data.begin_offset_millis = map['BeginOffsetMillis'] unless map['BeginOffsetMillis'].nil?
        data.end_offset_millis = map['EndOffsetMillis'] unless map['EndOffsetMillis'].nil?
        data.category = map['Category'] unless map['Category'].nil?
        data.type = map['Type'] unless map['Type'].nil?
        data.content = map['Content'] unless map['Content'].nil?
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence']) unless map['Confidence'].nil?
        return data
      end
    end

    class CallAnalyticsEntityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CallAnalyticsEntity.parse(value) unless value.nil?
        end
        data
      end
    end

    class CallAnalyticsItem
      def self.parse(map)
        data = Types::CallAnalyticsItem.new
        data.begin_offset_millis = map['BeginOffsetMillis'] unless map['BeginOffsetMillis'].nil?
        data.end_offset_millis = map['EndOffsetMillis'] unless map['EndOffsetMillis'].nil?
        data.type = map['Type'] unless map['Type'].nil?
        data.content = map['Content'] unless map['Content'].nil?
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence']) unless map['Confidence'].nil?
        data.vocabulary_filter_match = map['VocabularyFilterMatch'] unless map['VocabularyFilterMatch'].nil?
        data.stable = map['Stable'] unless map['Stable'].nil?
        return data
      end
    end

    class CallAnalyticsItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CallAnalyticsItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class CategoryEvent
      def self.parse(map)
        data = Types::CategoryEvent.new
        data.matched_categories = StringList.parse(map['MatchedCategories']) unless map['MatchedCategories'].nil?
        data.matched_details = MatchedCategoryDetails.parse(map['MatchedDetails']) unless map['MatchedDetails'].nil?
        return data
      end
    end

    class CharacterOffsets
      def self.parse(map)
        data = Types::CharacterOffsets.new
        data.begin = map['Begin'] unless map['Begin'].nil?
        data.end = map['End'] unless map['End'].nil?
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['Message'] unless map['Message'].nil?
        data
      end
    end

    class Entity
      def self.parse(map)
        data = Types::Entity.new
        data.start_time = Hearth::NumberHelper.deserialize(map['StartTime']) unless map['StartTime'].nil?
        data.end_time = Hearth::NumberHelper.deserialize(map['EndTime']) unless map['EndTime'].nil?
        data.category = map['Category'] unless map['Category'].nil?
        data.type = map['Type'] unless map['Type'].nil?
        data.content = map['Content'] unless map['Content'].nil?
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence']) unless map['Confidence'].nil?
        return data
      end
    end

    class EntityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Entity.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['Message'] unless map['Message'].nil?
        data
      end
    end

    class IssueDetected
      def self.parse(map)
        data = Types::IssueDetected.new
        data.character_offsets = CharacterOffsets.parse(map['CharacterOffsets']) unless map['CharacterOffsets'].nil?
        return data
      end
    end

    class IssuesDetected
      def self.parse(list)
        data = []
        list.map do |value|
          data << IssueDetected.parse(value) unless value.nil?
        end
        data
      end
    end

    class Item
      def self.parse(map)
        data = Types::Item.new
        data.start_time = Hearth::NumberHelper.deserialize(map['StartTime']) unless map['StartTime'].nil?
        data.end_time = Hearth::NumberHelper.deserialize(map['EndTime']) unless map['EndTime'].nil?
        data.type = map['Type'] unless map['Type'].nil?
        data.content = map['Content'] unless map['Content'].nil?
        data.vocabulary_filter_match = map['VocabularyFilterMatch'] unless map['VocabularyFilterMatch'].nil?
        data.speaker = map['Speaker'] unless map['Speaker'].nil?
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence']) unless map['Confidence'].nil?
        data.stable = map['Stable'] unless map['Stable'].nil?
        return data
      end
    end

    class ItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Item.parse(value) unless value.nil?
        end
        data
      end
    end

    class LanguageIdentification
      def self.parse(list)
        data = []
        list.map do |value|
          data << LanguageWithScore.parse(value) unless value.nil?
        end
        data
      end
    end

    class LanguageWithScore
      def self.parse(map)
        data = Types::LanguageWithScore.new
        data.language_code = map['LanguageCode'] unless map['LanguageCode'].nil?
        data.score = Hearth::NumberHelper.deserialize(map['Score']) unless map['Score'].nil?
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['Message'] unless map['Message'].nil?
        data
      end
    end

    class MatchedCategoryDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = PointsOfInterest.parse(value) unless value.nil?
        end
        data
      end
    end

    class MedicalAlternative
      def self.parse(map)
        data = Types::MedicalAlternative.new
        data.transcript = map['Transcript'] unless map['Transcript'].nil?
        data.items = MedicalItemList.parse(map['Items']) unless map['Items'].nil?
        data.entities = MedicalEntityList.parse(map['Entities']) unless map['Entities'].nil?
        return data
      end
    end

    class MedicalAlternativeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MedicalAlternative.parse(value) unless value.nil?
        end
        data
      end
    end

    class MedicalEntity
      def self.parse(map)
        data = Types::MedicalEntity.new
        data.start_time = Hearth::NumberHelper.deserialize(map['StartTime']) unless map['StartTime'].nil?
        data.end_time = Hearth::NumberHelper.deserialize(map['EndTime']) unless map['EndTime'].nil?
        data.category = map['Category'] unless map['Category'].nil?
        data.content = map['Content'] unless map['Content'].nil?
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence']) unless map['Confidence'].nil?
        return data
      end
    end

    class MedicalEntityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MedicalEntity.parse(value) unless value.nil?
        end
        data
      end
    end

    class MedicalItem
      def self.parse(map)
        data = Types::MedicalItem.new
        data.start_time = Hearth::NumberHelper.deserialize(map['StartTime']) unless map['StartTime'].nil?
        data.end_time = Hearth::NumberHelper.deserialize(map['EndTime']) unless map['EndTime'].nil?
        data.type = map['Type'] unless map['Type'].nil?
        data.content = map['Content'] unless map['Content'].nil?
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence']) unless map['Confidence'].nil?
        data.speaker = map['Speaker'] unless map['Speaker'].nil?
        return data
      end
    end

    class MedicalItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MedicalItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class MedicalResult
      def self.parse(map)
        data = Types::MedicalResult.new
        data.result_id = map['ResultId'] unless map['ResultId'].nil?
        data.start_time = Hearth::NumberHelper.deserialize(map['StartTime']) unless map['StartTime'].nil?
        data.end_time = Hearth::NumberHelper.deserialize(map['EndTime']) unless map['EndTime'].nil?
        data.is_partial = map['IsPartial'] unless map['IsPartial'].nil?
        data.alternatives = MedicalAlternativeList.parse(map['Alternatives']) unless map['Alternatives'].nil?
        data.channel_id = map['ChannelId'] unless map['ChannelId'].nil?
        return data
      end
    end

    class MedicalResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MedicalResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class MedicalTranscript
      def self.parse(map)
        data = Types::MedicalTranscript.new
        data.results = MedicalResultList.parse(map['Results']) unless map['Results'].nil?
        return data
      end
    end

    class MedicalTranscriptEvent
      def self.parse(map)
        data = Types::MedicalTranscriptEvent.new
        data.transcript = MedicalTranscript.parse(map['Transcript']) unless map['Transcript'].nil?
        return data
      end
    end

    class PointsOfInterest
      def self.parse(map)
        data = Types::PointsOfInterest.new
        data.timestamp_ranges = TimestampRanges.parse(map['TimestampRanges']) unless map['TimestampRanges'].nil?
        return data
      end
    end

    class Result
      def self.parse(map)
        data = Types::Result.new
        data.result_id = map['ResultId'] unless map['ResultId'].nil?
        data.start_time = Hearth::NumberHelper.deserialize(map['StartTime']) unless map['StartTime'].nil?
        data.end_time = Hearth::NumberHelper.deserialize(map['EndTime']) unless map['EndTime'].nil?
        data.is_partial = map['IsPartial'] unless map['IsPartial'].nil?
        data.alternatives = AlternativeList.parse(map['Alternatives']) unless map['Alternatives'].nil?
        data.channel_id = map['ChannelId'] unless map['ChannelId'].nil?
        data.language_code = map['LanguageCode'] unless map['LanguageCode'].nil?
        data.language_identification = LanguageIdentification.parse(map['LanguageIdentification']) unless map['LanguageIdentification'].nil?
        return data
      end
    end

    class ResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Result.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['Message'] unless map['Message'].nil?
        data
      end
    end

    class StartCallAnalyticsStreamTranscription
      def self.parse(http_resp)
        data = Types::StartCallAnalyticsStreamTranscriptionOutput.new
        data.request_id = http_resp.headers['x-amzn-request-id']
        data.language_code = http_resp.headers['x-amzn-transcribe-language-code']
        data.media_sample_rate_hertz = http_resp.headers['x-amzn-transcribe-sample-rate'].to_i unless http_resp.headers['x-amzn-transcribe-sample-rate'].nil?
        data.media_encoding = http_resp.headers['x-amzn-transcribe-media-encoding']
        data.vocabulary_name = http_resp.headers['x-amzn-transcribe-vocabulary-name']
        data.session_id = http_resp.headers['x-amzn-transcribe-session-id']
        data.vocabulary_filter_name = http_resp.headers['x-amzn-transcribe-vocabulary-filter-name']
        data.vocabulary_filter_method = http_resp.headers['x-amzn-transcribe-vocabulary-filter-method']
        data.language_model_name = http_resp.headers['x-amzn-transcribe-language-model-name']
        data.enable_partial_results_stabilization = http_resp.headers['x-amzn-transcribe-enable-partial-results-stabilization'] == 'true' unless http_resp.headers['x-amzn-transcribe-enable-partial-results-stabilization'].nil?
        data.partial_results_stability = http_resp.headers['x-amzn-transcribe-partial-results-stability']
        data.content_identification_type = http_resp.headers['x-amzn-transcribe-content-identification-type']
        data.content_redaction_type = http_resp.headers['x-amzn-transcribe-content-redaction-type']
        data.pii_entity_types = http_resp.headers['x-amzn-transcribe-pii-entity-types']
        data.call_analytics_transcript_result_stream = http_resp.body
        data
      end
    end

    class StartMedicalStreamTranscription
      def self.parse(http_resp)
        data = Types::StartMedicalStreamTranscriptionOutput.new
        data.request_id = http_resp.headers['x-amzn-request-id']
        data.language_code = http_resp.headers['x-amzn-transcribe-language-code']
        data.media_sample_rate_hertz = http_resp.headers['x-amzn-transcribe-sample-rate'].to_i unless http_resp.headers['x-amzn-transcribe-sample-rate'].nil?
        data.media_encoding = http_resp.headers['x-amzn-transcribe-media-encoding']
        data.vocabulary_name = http_resp.headers['x-amzn-transcribe-vocabulary-name']
        data.specialty = http_resp.headers['x-amzn-transcribe-specialty']
        data.type = http_resp.headers['x-amzn-transcribe-type']
        data.show_speaker_label = http_resp.headers['x-amzn-transcribe-show-speaker-label'] == 'true' unless http_resp.headers['x-amzn-transcribe-show-speaker-label'].nil?
        data.session_id = http_resp.headers['x-amzn-transcribe-session-id']
        data.enable_channel_identification = http_resp.headers['x-amzn-transcribe-enable-channel-identification'] == 'true' unless http_resp.headers['x-amzn-transcribe-enable-channel-identification'].nil?
        data.number_of_channels = http_resp.headers['x-amzn-transcribe-number-of-channels'].to_i unless http_resp.headers['x-amzn-transcribe-number-of-channels'].nil?
        data.content_identification_type = http_resp.headers['x-amzn-transcribe-content-identification-type']
        data.transcript_result_stream = http_resp.body
        data
      end
    end

    class StartStreamTranscription
      def self.parse(http_resp)
        data = Types::StartStreamTranscriptionOutput.new
        data.request_id = http_resp.headers['x-amzn-request-id']
        data.language_code = http_resp.headers['x-amzn-transcribe-language-code']
        data.media_sample_rate_hertz = http_resp.headers['x-amzn-transcribe-sample-rate'].to_i unless http_resp.headers['x-amzn-transcribe-sample-rate'].nil?
        data.media_encoding = http_resp.headers['x-amzn-transcribe-media-encoding']
        data.vocabulary_name = http_resp.headers['x-amzn-transcribe-vocabulary-name']
        data.session_id = http_resp.headers['x-amzn-transcribe-session-id']
        data.vocabulary_filter_name = http_resp.headers['x-amzn-transcribe-vocabulary-filter-name']
        data.vocabulary_filter_method = http_resp.headers['x-amzn-transcribe-vocabulary-filter-method']
        data.show_speaker_label = http_resp.headers['x-amzn-transcribe-show-speaker-label'] == 'true' unless http_resp.headers['x-amzn-transcribe-show-speaker-label'].nil?
        data.enable_channel_identification = http_resp.headers['x-amzn-transcribe-enable-channel-identification'] == 'true' unless http_resp.headers['x-amzn-transcribe-enable-channel-identification'].nil?
        data.number_of_channels = http_resp.headers['x-amzn-transcribe-number-of-channels'].to_i unless http_resp.headers['x-amzn-transcribe-number-of-channels'].nil?
        data.enable_partial_results_stabilization = http_resp.headers['x-amzn-transcribe-enable-partial-results-stabilization'] == 'true' unless http_resp.headers['x-amzn-transcribe-enable-partial-results-stabilization'].nil?
        data.partial_results_stability = http_resp.headers['x-amzn-transcribe-partial-results-stability']
        data.content_identification_type = http_resp.headers['x-amzn-transcribe-content-identification-type']
        data.content_redaction_type = http_resp.headers['x-amzn-transcribe-content-redaction-type']
        data.pii_entity_types = http_resp.headers['x-amzn-transcribe-pii-entity-types']
        data.language_model_name = http_resp.headers['x-amzn-transcribe-language-model-name']
        data.identify_language = http_resp.headers['x-amzn-transcribe-identify-language'] == 'true' unless http_resp.headers['x-amzn-transcribe-identify-language'].nil?
        data.language_options = http_resp.headers['x-amzn-transcribe-language-options']
        data.preferred_language = http_resp.headers['x-amzn-transcribe-preferred-language']
        data.identify_multiple_languages = http_resp.headers['x-amzn-transcribe-identify-multiple-languages'] == 'true' unless http_resp.headers['x-amzn-transcribe-identify-multiple-languages'].nil?
        data.vocabulary_names = http_resp.headers['x-amzn-transcribe-vocabulary-names']
        data.vocabulary_filter_names = http_resp.headers['x-amzn-transcribe-vocabulary-filter-names']
        data.transcript_result_stream = http_resp.body
        data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TimestampRange
      def self.parse(map)
        data = Types::TimestampRange.new
        data.begin_offset_millis = map['BeginOffsetMillis'] unless map['BeginOffsetMillis'].nil?
        data.end_offset_millis = map['EndOffsetMillis'] unless map['EndOffsetMillis'].nil?
        return data
      end
    end

    class TimestampRanges
      def self.parse(list)
        data = []
        list.map do |value|
          data << TimestampRange.parse(value) unless value.nil?
        end
        data
      end
    end

    class Transcript
      def self.parse(map)
        data = Types::Transcript.new
        data.results = ResultList.parse(map['Results']) unless map['Results'].nil?
        return data
      end
    end

    class TranscriptEvent
      def self.parse(map)
        data = Types::TranscriptEvent.new
        data.transcript = Transcript.parse(map['Transcript']) unless map['Transcript'].nil?
        return data
      end
    end

    class UtteranceEvent
      def self.parse(map)
        data = Types::UtteranceEvent.new
        data.utterance_id = map['UtteranceId'] unless map['UtteranceId'].nil?
        data.is_partial = map['IsPartial'] unless map['IsPartial'].nil?
        data.participant_role = map['ParticipantRole'] unless map['ParticipantRole'].nil?
        data.begin_offset_millis = map['BeginOffsetMillis'] unless map['BeginOffsetMillis'].nil?
        data.end_offset_millis = map['EndOffsetMillis'] unless map['EndOffsetMillis'].nil?
        data.transcript = map['Transcript'] unless map['Transcript'].nil?
        data.items = CallAnalyticsItemList.parse(map['Items']) unless map['Items'].nil?
        data.entities = CallAnalyticsEntityList.parse(map['Entities']) unless map['Entities'].nil?
        data.sentiment = map['Sentiment'] unless map['Sentiment'].nil?
        data.issues_detected = IssuesDetected.parse(map['IssuesDetected']) unless map['IssuesDetected'].nil?
        return data
      end
    end

    module EventStream

      class BadRequestException
        def self.parse(message)
          data = Types::BadRequestException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message'] unless map['Message'].nil?
          data
        end
      end

      class CategoryEvent
        def self.parse(message)
          data = Types::CategoryEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.matched_categories = StringList.parse(map['MatchedCategories']) unless map['MatchedCategories'].nil?
          data.matched_details = MatchedCategoryDetails.parse(map['MatchedDetails']) unless map['MatchedDetails'].nil?
          data
        end
      end

      class ConflictException
        def self.parse(message)
          data = Types::ConflictException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message'] unless map['Message'].nil?
          data
        end
      end

      class InternalFailureException
        def self.parse(message)
          data = Types::InternalFailureException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message'] unless map['Message'].nil?
          data
        end
      end

      class LimitExceededException
        def self.parse(message)
          data = Types::LimitExceededException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message'] unless map['Message'].nil?
          data
        end
      end

      class MedicalTranscriptEvent
        def self.parse(message)
          data = Types::MedicalTranscriptEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript = MedicalTranscript.parse(map['Transcript']) unless map['Transcript'].nil?
          data
        end
      end

      class ServiceUnavailableException
        def self.parse(message)
          data = Types::ServiceUnavailableException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message'] unless map['Message'].nil?
          data
        end
      end

      class StartCallAnalyticsStreamTranscriptionInitialResponse
        def self.parse(message)
          data = Types::StartCallAnalyticsStreamTranscriptionOutput.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.call_analytics_transcript_result_stream = CallAnalyticsTranscriptResultStream.parse(map['CallAnalyticsTranscriptResultStream']) unless map['CallAnalyticsTranscriptResultStream'].nil?
          data
        end
      end

      class StartMedicalStreamTranscriptionInitialResponse
        def self.parse(message)
          data = Types::StartMedicalStreamTranscriptionOutput.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript_result_stream = MedicalTranscriptResultStream.parse(map['TranscriptResultStream']) unless map['TranscriptResultStream'].nil?
          data
        end
      end

      class StartStreamTranscriptionInitialResponse
        def self.parse(message)
          data = Types::StartStreamTranscriptionOutput.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript_result_stream = TranscriptResultStream.parse(map['TranscriptResultStream']) unless map['TranscriptResultStream'].nil?
          data
        end
      end

      class TranscriptEvent
        def self.parse(message)
          data = Types::TranscriptEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript = Transcript.parse(map['Transcript']) unless map['Transcript'].nil?
          data
        end
      end

      class UtteranceEvent
        def self.parse(message)
          data = Types::UtteranceEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.utterance_id = map['UtteranceId'] unless map['UtteranceId'].nil?
          data.is_partial = map['IsPartial'] unless map['IsPartial'].nil?
          data.participant_role = map['ParticipantRole'] unless map['ParticipantRole'].nil?
          data.begin_offset_millis = map['BeginOffsetMillis'] unless map['BeginOffsetMillis'].nil?
          data.end_offset_millis = map['EndOffsetMillis'] unless map['EndOffsetMillis'].nil?
          data.transcript = map['Transcript'] unless map['Transcript'].nil?
          data.items = CallAnalyticsItemList.parse(map['Items']) unless map['Items'].nil?
          data.entities = CallAnalyticsEntityList.parse(map['Entities']) unless map['Entities'].nil?
          data.sentiment = map['Sentiment'] unless map['Sentiment'].nil?
          data.issues_detected = IssuesDetected.parse(map['IssuesDetected']) unless map['IssuesDetected'].nil?
          data
        end
      end
    end
  end
end
