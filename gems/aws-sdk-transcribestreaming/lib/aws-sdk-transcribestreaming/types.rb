# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  module Types

    # <p>A list of possible alternative transcriptions for the input audio. Each alternative may contain
    #       one or more of <code>Items</code>, <code>Entities</code>, or <code>Transcript</code>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :transcript
    #   @option params [Array<Item>] :items
    #   @option params [Array<Entity>] :entities
    # @!attribute transcript
    #   <p>Contains transcribed text.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks in your transcription output.</p>
    #   @return [Array<Item>]
    # @!attribute entities
    #   <p>Contains entities identified as personally identifiable information (PII) in your transcription
    #         output.</p>
    #   @return [Array<Entity>]
    Alternative = ::Struct.new(
      :transcript,
      :items,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper for your audio chunks. Your audio stream consists of one or more audio
    #       events, which consist of one or more audio chunks.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :audio_chunk
    # @!attribute audio_chunk
    #   <p>An audio blob that contains the next part of the audio that you want to transcribe. The
    #         maximum audio chunk size is 32 KB.</p>
    #   @return [String]
    AudioEvent = ::Struct.new(
      :audio_chunk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket
    #       data frames.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    class AudioStream < Hearth::Union
      # <p>A blob of audio from your application. Your audio stream consists of one or more audio
      #       events.</p>
      #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>.</p>
      class AudioEvent < AudioStream
        def to_h
          { audio_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::AudioEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Contains audio channel definitions and post-call analytics settings.</p>
      class ConfigurationEvent < AudioStream
        def to_h
          { configuration_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ConfigurationEvent #{__getobj__ || 'nil'}>"
        end
      end

      class Unknown < AudioStream
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>One or more arguments to the <code>StartStreamTranscription</code>,
    #       <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code>
    #       operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code>
    #       used not valid values. Check the specified parameters and try your request again.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains entities identified as personally identifiable information (PII) in your
    #       transcription output, along with various associated attributes. Examples include category,
    #       confidence score, content, type, and start and end times.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :begin_offset_millis
    #   @option params [Integer] :end_offset_millis
    #   @option params [String] :category
    #   @option params [String] :type
    #   @option params [String] :content
    #   @option params [Float] :confidence
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the identified entity.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the end of the identified entity.</p>
    #   @return [Integer]
    # @!attribute category
    #   <p>The category of information identified. For example, <code>PII</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of PII identified. For example, <code>NAME</code> or
    #         <code>CREDIT_DEBIT_NUMBER</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or words that represent the identified entity.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with the identification of an entity in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified entity correctly matches the entity spoken in your
    #         media.</p>
    #   @return [Float]
    CallAnalyticsEntity = ::Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      :category,
      :type,
      :content,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A word, phrase, or punctuation mark in your Call Analytics transcription output, along with various
    #       associated attributes, such as confidence score, type, and start and end times.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :begin_offset_millis
    #   @option params [Integer] :end_offset_millis
    #   @option params [String] :type
    #   @option params [String] :content
    #   @option params [Float] :confidence
    #   @option params [Boolean] :vocabulary_filter_match (false)
    #   @option params [Boolean] :stable
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the identified item.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the end of the identified item.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken words) and
    #         <code>PUNCTUATION</code>.</p>
    #   Enum, one of: ["pronunciation", "punctuation"]
    #   @return [String]
    # @!attribute content
    #   <p>The word or punctuation that was transcribed.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified item correctly matches the item spoken in your media.</p>
    #   @return [Float]
    # @!attribute vocabulary_filter_match
    #   <p>Indicates whether the specified item matches a word in the vocabulary filter included in
    #         your Call Analytics request. If <code>true</code>, there is a vocabulary filter match.</p>
    #   @return [Boolean]
    # @!attribute stable
    #   <p>If partial result stabilization is enabled, <code>Stable</code> indicates whether the specified
    #         item is stable (<code>true</code>) or if it may change when the segment is complete
    #         (<code>false</code>).</p>
    #   @return [Boolean]
    CallAnalyticsItem = ::Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      :type,
      :content,
      :confidence,
      :vocabulary_filter_match,
      :stable,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          vocabulary_filter_match: false
        }
      end
    end

    # Enum constants for CallAnalyticsLanguageCode
    module CallAnalyticsLanguageCode
      EN_US = "en-US"

      EN_GB = "en-GB"

      ES_US = "es-US"

      FR_CA = "fr-CA"

      FR_FR = "fr-FR"

      EN_AU = "en-AU"

      IT_IT = "it-IT"

      DE_DE = "de-DE"

      PT_BR = "pt-BR"
    end

    # <p>Contains detailed information about your Call Analytics streaming session. These details are
    #       provided in the <code>UtteranceEvent</code> and <code>CategoryEvent</code> objects.</p>
    class CallAnalyticsTranscriptResultStream < Hearth::Union
      # <p>Contains set of transcription results from one or more audio segments, along with additional
      #       information per your request parameters. This can include information relating to channel definitions,
      #       partial result stabilization, sentiment, issue detection, and other transcription-related data.</p>
      class UtteranceEvent < CallAnalyticsTranscriptResultStream
        def to_h
          { utterance_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::UtteranceEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Provides information on matched categories that were used to generate real-time supervisor
      #       alerts.</p>
      class CategoryEvent < CallAnalyticsTranscriptResultStream
        def to_h
          { category_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::CategoryEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>One or more arguments to the <code>StartStreamTranscription</code>,
      #       <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code>
      #       operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code>
      #       used not valid values. Check the specified parameters and try your request again.</p>
      class BadRequestException < CallAnalyticsTranscriptResultStream
        def to_h
          { bad_request_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::BadRequestException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
      #       limit. Break your audio stream into smaller chunks and try your request again.</p>
      class LimitExceededException < CallAnalyticsTranscriptResultStream
        def to_h
          { limit_exceeded_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::LimitExceededException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A problem occurred while processing the audio. Amazon Transcribe terminated
      #       processing.</p>
      class InternalFailureException < CallAnalyticsTranscriptResultStream
        def to_h
          { internal_failure_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::InternalFailureException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A new stream started with the same session ID. The current stream has been terminated.</p>
      class ConflictException < CallAnalyticsTranscriptResultStream
        def to_h
          { conflict_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ConflictException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The service is currently unavailable. Try your request later.</p>
      class ServiceUnavailableException < CallAnalyticsTranscriptResultStream
        def to_h
          { service_unavailable_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ServiceUnavailableException #{__getobj__ || 'nil'}>"
        end
      end

      class Unknown < CallAnalyticsTranscriptResultStream
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Provides information on any <code>TranscriptFilterType</code> categories that matched your
    #       transcription output. Matches are identified for each segment upon completion of that segment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<String>] :matched_categories
    #   @option params [Hash<String, PointsOfInterest>] :matched_details
    # @!attribute matched_categories
    #   <p>Lists the categories that were matched in your audio segment.</p>
    #   @return [Array<String>]
    # @!attribute matched_details
    #   <p>Contains information about the matched categories, including category names and timestamps.</p>
    #   @return [Hash<String, PointsOfInterest>]
    CategoryEvent = ::Struct.new(
      :matched_categories,
      :matched_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Makes it possible to specify which speaker is on which audio channel. For example, if your
    #       agent is the first participant to speak, you would set <code>ChannelId</code> to
    #       <code>0</code> (to indicate the first channel) and <code>ParticipantRole</code> to
    #       <code>AGENT</code> (to indicate that it's the agent speaking).</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :channel_id (0)
    #   @option params [String] :participant_role
    # @!attribute channel_id
    #   <p>Specify the audio channel you want to define.</p>
    #   @return [Integer]
    # @!attribute participant_role
    #   <p>Specify the speaker you want to define. Omitting this parameter is equivalent to
    #         specifying both participants.</p>
    #   Enum, one of: ["AGENT", "CUSTOMER"]
    #   @return [String]
    ChannelDefinition = ::Struct.new(
      :channel_id,
      :participant_role,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          channel_id: 0
        }
      end
    end

    # <p>Provides the location, using character count, in your transcript where a match is identified. For example,
    #       the location of an issue or a category match within a segment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :begin
    #   @option params [Integer] :end
    # @!attribute begin
    #   <p>Provides the character count of the first character where a match is identified. For example, the first
    #         character associated with an issue or a category match in a segment transcript.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>Provides the character count of the last character where a match is identified. For example, the last
    #         character associated with an issue or a category match in a segment transcript.</p>
    #   @return [Integer]
    CharacterOffsets = ::Struct.new(
      :begin,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows you to set audio channel definitions and post-call analytics settings.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ChannelDefinition>] :channel_definitions
    #   @option params [PostCallAnalyticsSettings] :post_call_analytics_settings
    # @!attribute channel_definitions
    #   <p>Indicates which speaker is on which audio channel.</p>
    #   @return [Array<ChannelDefinition>]
    # @!attribute post_call_analytics_settings
    #   <p>Provides additional optional settings for your Call Analytics post-call request, including
    #         encryption and output locations for your redacted and unredacted transcript.</p>
    #   @return [PostCallAnalyticsSettings]
    ConfigurationEvent = ::Struct.new(
      :channel_definitions,
      :post_call_analytics_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A new stream started with the same session ID. The current stream has been terminated.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Enum constants for ContentIdentificationType
    module ContentIdentificationType
      PII = "PII"
    end

    # Enum constants for ContentRedactionOutput
    module ContentRedactionOutput
      REDACTED = "redacted"

      REDACTED_AND_UNREDACTED = "redacted_and_unredacted"
    end

    # Enum constants for ContentRedactionType
    module ContentRedactionType
      PII = "PII"
    end

    # <p>Contains entities identified as personally identifiable information (PII) in your
    #       transcription output, along with various associated attributes. Examples include category,
    #       confidence score, type, stability score, and start and end times.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Float] :start_time (0)
    #   @option params [Float] :end_time (0)
    #   @option params [String] :category
    #   @option params [String] :type
    #   @option params [String] :content
    #   @option params [Float] :confidence
    # @!attribute start_time
    #   <p>The start time, in milliseconds, of the utterance that was identified as PII.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in milliseconds, of the utterance that was identified as PII.</p>
    #   @return [Float]
    # @!attribute category
    #   <p>The category of information identified. The only category is <code>PII</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of PII identified. For example, <code>NAME</code> or
    #         <code>CREDIT_DEBIT_NUMBER</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or words identified as PII.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with the identified PII entity in your audio.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified entity correctly matches the entity spoken in your
    #         media.</p>
    #   @return [Float]
    Entity = ::Struct.new(
      :start_time,
      :end_time,
      :category,
      :type,
      :content,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          start_time: 0.0.to_f,
          end_time: 0.0.to_f
        }
      end
    end

    # <p>A problem occurred while processing the audio. Amazon Transcribe terminated
    #       processing.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists the issues that were identified in your audio segment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CharacterOffsets] :character_offsets
    # @!attribute character_offsets
    #   <p>Provides the timestamps that identify when in an audio segment the specified issue occurs.</p>
    #   @return [CharacterOffsets]
    IssueDetected = ::Struct.new(
      :character_offsets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A word, phrase, or punctuation mark in your transcription output, along with various associated
    #       attributes, such as confidence score, type, and start and end times.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Float] :start_time (0)
    #   @option params [Float] :end_time (0)
    #   @option params [String] :type
    #   @option params [String] :content
    #   @option params [Boolean] :vocabulary_filter_match (false)
    #   @option params [String] :speaker
    #   @option params [Float] :confidence
    #   @option params [Boolean] :stable
    # @!attribute start_time
    #   <p>The start time, in milliseconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in milliseconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken words) and
    #         <code>PUNCTUATION</code>.</p>
    #   Enum, one of: ["pronunciation", "punctuation"]
    #   @return [String]
    # @!attribute content
    #   <p>The word or punctuation that was transcribed.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_match
    #   <p>Indicates whether the specified item matches a word in the vocabulary filter included in
    #         your request. If <code>true</code>, there is a vocabulary filter match.</p>
    #   @return [Boolean]
    # @!attribute speaker
    #   <p>If speaker partitioning is enabled, <code>Speaker</code> labels the speaker of the
    #         specified item.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #         probability that the identified item correctly matches the item spoken in your media.</p>
    #   @return [Float]
    # @!attribute stable
    #   <p>If partial result stabilization is enabled, <code>Stable</code> indicates whether the specified
    #         item is stable (<code>true</code>) or if it may change when the segment is complete
    #         (<code>false</code>).</p>
    #   @return [Boolean]
    Item = ::Struct.new(
      :start_time,
      :end_time,
      :type,
      :content,
      :vocabulary_filter_match,
      :speaker,
      :confidence,
      :stable,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          start_time: 0.0.to_f,
          end_time: 0.0.to_f,
          vocabulary_filter_match: false
        }
      end
    end

    # Enum constants for ItemType
    module ItemType
      PRONUNCIATION = "pronunciation"

      PUNCTUATION = "punctuation"
    end

    # Enum constants for LanguageCode
    module LanguageCode
      EN_US = "en-US"

      EN_GB = "en-GB"

      ES_US = "es-US"

      FR_CA = "fr-CA"

      FR_FR = "fr-FR"

      EN_AU = "en-AU"

      IT_IT = "it-IT"

      DE_DE = "de-DE"

      PT_BR = "pt-BR"

      JA_JP = "ja-JP"

      KO_KR = "ko-KR"

      ZH_CN = "zh-CN"

      HI_IN = "hi-IN"

      TH_TH = "th-TH"
    end

    # <p>The language code that represents the language identified in your audio, including the associated
    #       confidence score. If you enabled channel identification in your request and each channel contained a
    #       different language, you will have more than one <code>LanguageWithScore</code> result.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :language_code
    #   @option params [Float] :score (0)
    # @!attribute language_code
    #   <p>The language code of the identified language.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute score
    #   <p>The confidence score associated with the identified language code. Confidence scores are values
    #         between zero and one; larger values indicate a higher confidence in the identified language.</p>
    #   @return [Float]
    LanguageWithScore = ::Struct.new(
      :language_code,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          score: 0.0.to_f
        }
      end
    end

    # <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #       limit. Break your audio stream into smaller chunks and try your request again.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Enum constants for MediaEncoding
    module MediaEncoding
      PCM = "pcm"

      OGG_OPUS = "ogg-opus"

      FLAC = "flac"
    end

    # <p>A list of possible alternative transcriptions for the input audio. Each alternative may
    #             contain one or more of <code>Items</code>, <code>Entities</code>, or
    #             <code>Transcript</code>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :transcript
    #   @option params [Array<MedicalItem>] :items
    #   @option params [Array<MedicalEntity>] :entities
    # @!attribute transcript
    #   <p>Contains transcribed text.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks in your transcription output.</p>
    #   @return [Array<MedicalItem>]
    # @!attribute entities
    #   <p>Contains entities identified as personal health information (PHI) in your transcription
    #               output.</p>
    #   @return [Array<MedicalEntity>]
    MedicalAlternative = ::Struct.new(
      :transcript,
      :items,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Enum constants for MedicalContentIdentificationType
    module MedicalContentIdentificationType
      PHI = "PHI"
    end

    # <p>Contains entities identified as personal health information (PHI) in your
    #             transcription output, along with various associated attributes. Examples include
    #             category, confidence score, type, stability score, and start and end times.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Float] :start_time (0)
    #   @option params [Float] :end_time (0)
    #   @option params [String] :category
    #   @option params [String] :content
    #   @option params [Float] :confidence
    # @!attribute start_time
    #   <p>The start time, in milliseconds, of the utterance that was identified as PHI.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in milliseconds, of the utterance that was identified as PHI.</p>
    #   @return [Float]
    # @!attribute category
    #   <p>The category of information identified. The only category is <code>PHI</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The word or words identified as PHI.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with the identified PHI entity in your audio.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #               probability that the identified entity correctly matches the entity spoken in your
    #               media.</p>
    #   @return [Float]
    MedicalEntity = ::Struct.new(
      :start_time,
      :end_time,
      :category,
      :content,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          start_time: 0.0.to_f,
          end_time: 0.0.to_f
        }
      end
    end

    # <p>A word, phrase, or punctuation mark in your transcription output, along with various
    #             associated attributes, such as confidence score, type, and start and end times.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Float] :start_time (0)
    #   @option params [Float] :end_time (0)
    #   @option params [String] :type
    #   @option params [String] :content
    #   @option params [Float] :confidence
    #   @option params [String] :speaker
    # @!attribute start_time
    #   <p>The start time, in milliseconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in milliseconds, of the transcribed item.</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The type of item identified. Options are: <code>PRONUNCIATION</code> (spoken
    #               words) and <code>PUNCTUATION</code>.</p>
    #   Enum, one of: ["pronunciation", "punctuation"]
    #   @return [String]
    # @!attribute content
    #   <p>The word or punctuation that was transcribed.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score associated with a word or phrase in your transcript.</p>
    #            <p>Confidence scores are values between 0 and 1. A larger value indicates a higher
    #               probability that the identified item correctly matches the item spoken in your
    #               media.</p>
    #   @return [Float]
    # @!attribute speaker
    #   <p>If speaker partitioning is enabled, <code>Speaker</code> labels the speaker of the
    #               specified item.</p>
    #   @return [String]
    MedicalItem = ::Struct.new(
      :start_time,
      :end_time,
      :type,
      :content,
      :confidence,
      :speaker,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          start_time: 0.0.to_f,
          end_time: 0.0.to_f
        }
      end
    end

    # <p>The <code>Result</code> associated with a
    #             <code></code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with
    #             additional information per your request parameters. This can include information relating to
    #             alternative transcriptions, channel identification, partial result stabilization, language
    #             identification, and other transcription-related data.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :result_id
    #   @option params [Float] :start_time (0)
    #   @option params [Float] :end_time (0)
    #   @option params [Boolean] :is_partial (false)
    #   @option params [Array<MedicalAlternative>] :alternatives
    #   @option params [String] :channel_id
    # @!attribute result_id
    #   <p>Provides a unique identifier for the <code>Result</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time, in milliseconds, of the <code>Result</code>.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in milliseconds, of the <code>Result</code>.</p>
    #   @return [Float]
    # @!attribute is_partial
    #   <p>Indicates if the segment is complete.</p>
    #            <p>If <code>IsPartial</code> is <code>true</code>, the segment is not complete. If
    #                   <code>IsPartial</code> is <code>false</code>, the segment is complete.</p>
    #   @return [Boolean]
    # @!attribute alternatives
    #   <p>A list of possible alternative transcriptions for the input audio. Each alternative may
    #               contain one or more of <code>Items</code>, <code>Entities</code>, or
    #               <code>Transcript</code>.</p>
    #   @return [Array<MedicalAlternative>]
    # @!attribute channel_id
    #   <p>Indicates the channel identified for the <code>Result</code>.</p>
    #   @return [String]
    MedicalResult = ::Struct.new(
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives,
      :channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          start_time: 0.0.to_f,
          end_time: 0.0.to_f,
          is_partial: false
        }
      end
    end

    # <p>The <code>MedicalTranscript</code> associated with a
    #             <code></code>.</p>
    #          <p>
    #             <code>MedicalTranscript</code> contains <code>Results</code>, which contains a set of
    #             transcription results from one or more audio segments, along with additional information per your
    #             request parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<MedicalResult>] :results
    # @!attribute results
    #   <p>Contains a set of transcription results from one or more audio segments, along with
    #               additional information per your request parameters. This can include information relating to
    #               alternative transcriptions, channel identification, partial result stabilization, language
    #               identification, and other transcription-related data.</p>
    #   @return [Array<MedicalResult>]
    MedicalTranscript = ::Struct.new(
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>MedicalTranscriptEvent</code> associated with a
    #             <code>MedicalTranscriptResultStream</code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with additional
    #             information per your request parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [MedicalTranscript] :transcript
    # @!attribute transcript
    #   <p>Contains <code>Results</code>, which contains a set of transcription results from one or
    #               more audio segments, along with additional information per your request parameters. This can
    #               include information relating to alternative transcriptions, channel identification, partial result
    #               stabilization, language identification, and other transcription-related data.</p>
    #   @return [MedicalTranscript]
    MedicalTranscriptEvent = ::Struct.new(
      :transcript,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about your streaming session.</p>
    class MedicalTranscriptResultStream < Hearth::Union
      # <p>The <code>MedicalTranscriptEvent</code> associated with a
      #             <code>MedicalTranscriptResultStream</code>.</p>
      #          <p>Contains a set of transcription results from one or more audio segments, along with
      #             additional information per your request parameters. This can include information relating to
      #             alternative transcriptions, channel identification, partial result stabilization, language
      #             identification, and other transcription-related data.</p>
      class TranscriptEvent < MedicalTranscriptResultStream
        def to_h
          { transcript_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::TranscriptEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>One or more arguments to the <code>StartStreamTranscription</code>,
      #       <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code>
      #       operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code>
      #       used not valid values. Check the specified parameters and try your request again.</p>
      class BadRequestException < MedicalTranscriptResultStream
        def to_h
          { bad_request_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::BadRequestException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
      #       limit. Break your audio stream into smaller chunks and try your request again.</p>
      class LimitExceededException < MedicalTranscriptResultStream
        def to_h
          { limit_exceeded_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::LimitExceededException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A problem occurred while processing the audio. Amazon Transcribe terminated
      #       processing.</p>
      class InternalFailureException < MedicalTranscriptResultStream
        def to_h
          { internal_failure_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::InternalFailureException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A new stream started with the same session ID. The current stream has been terminated.</p>
      class ConflictException < MedicalTranscriptResultStream
        def to_h
          { conflict_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ConflictException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The service is currently unavailable. Try your request later.</p>
      class ServiceUnavailableException < MedicalTranscriptResultStream
        def to_h
          { service_unavailable_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ServiceUnavailableException #{__getobj__ || 'nil'}>"
        end
      end

      class Unknown < MedicalTranscriptResultStream
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Enum constants for PartialResultsStability
    module PartialResultsStability
      HIGH = "high"

      MEDIUM = "medium"

      LOW = "low"
    end

    # Enum constants for ParticipantRole
    module ParticipantRole
      AGENT = "AGENT"

      CUSTOMER = "CUSTOMER"
    end

    # <p>Contains the timestamps of matched categories.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<TimestampRange>] :timestamp_ranges
    # @!attribute timestamp_ranges
    #   <p>Contains the timestamp ranges (start time through end time) of matched categories and rules.</p>
    #   @return [Array<TimestampRange>]
    PointsOfInterest = ::Struct.new(
      :timestamp_ranges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows you to specify additional settings for your streaming Call Analytics
    #       post-call request, including output locations for your redacted and unredacted
    #       transcript, which IAM role to use, and, optionally, which encryption key to
    #       use.</p>
    #          <p>
    #             <code>ContentRedactionOutput</code>, <code>DataAccessRoleArn</code>, and
    #       <code>OutputLocation</code> are required fields.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :output_location
    #   @option params [String] :data_access_role_arn
    #   @option params [String] :content_redaction_output
    #   @option params [String] :output_encryption_kms_key_id
    # @!attribute output_location
    #   <p>The Amazon S3 location where you want your Call Analytics post-call
    #         transcription output stored. You can use any of the following formats to specify the output
    #         location:</p>
    #            <ol>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET</p>
    #               </li>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/</p>
    #               </li>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json</p>
    #               </li>
    #            </ol>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #         access the Amazon S3 bucket that contains your input files. If the role that you
    #         specify doesn’t have the appropriate permissions to access the specified Amazon S3
    #         location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #         <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #         <code>arn:aws:iam::111122223333:role/Admin</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #           ARNs</a>.</p>
    #   @return [String]
    # @!attribute content_redaction_output
    #   <p>Specify whether you want only a redacted transcript or both a redacted and an unredacted
    #         transcript. If you choose redacted and unredacted, two JSON files are generated and stored in the
    #         Amazon S3 output location you specify.</p>
    #            <p>Note that to include <code>ContentRedactionOutput</code> in your request, you must
    #         enable content redaction (<code>ContentRedactionType</code>).</p>
    #   Enum, one of: ["redacted", "redacted_and_unredacted"]
    #   @return [String]
    # @!attribute output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your Call Analytics post-call
    #         output.</p>
    #            <p>If using a key located in the <b>current</b>
    #         Amazon Web Services account, you can specify your KMS key in one of four
    #         ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #             <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #             <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #             example,
    #             <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #             <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If using a key located in a <b>different</b>
    #         Amazon Web Services account than the current Amazon Web Services account, you can specify
    #         your KMS key in one of two ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #             <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #             <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>Note that the user making the  request must
    #         have permission to use the specified KMS key.</p>
    #   @return [String]
    PostCallAnalyticsSettings = ::Struct.new(
      :output_location,
      :data_access_role_arn,
      :content_redaction_output,
      :output_encryption_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Result</code> associated with a
    #       <code></code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with additional
    #       information per your request parameters. This can include information relating to alternative
    #       transcriptions, channel identification, partial result stabilization, language identification, and other
    #       transcription-related data.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :result_id
    #   @option params [Float] :start_time (0)
    #   @option params [Float] :end_time (0)
    #   @option params [Boolean] :is_partial (false)
    #   @option params [Array<Alternative>] :alternatives
    #   @option params [String] :channel_id
    #   @option params [String] :language_code
    #   @option params [Array<LanguageWithScore>] :language_identification
    # @!attribute result_id
    #   <p>Provides a unique identifier for the <code>Result</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time, in milliseconds, of the <code>Result</code>.</p>
    #   @return [Float]
    # @!attribute end_time
    #   <p>The end time, in milliseconds, of the <code>Result</code>.</p>
    #   @return [Float]
    # @!attribute is_partial
    #   <p>Indicates if the segment is complete.</p>
    #            <p>If <code>IsPartial</code> is <code>true</code>, the segment is not complete. If
    #           <code>IsPartial</code> is <code>false</code>, the segment is complete.</p>
    #   @return [Boolean]
    # @!attribute alternatives
    #   <p>A list of possible alternative transcriptions for the input audio. Each alternative may contain
    #         one or more of <code>Items</code>, <code>Entities</code>, or <code>Transcript</code>.</p>
    #   @return [Array<Alternative>]
    # @!attribute channel_id
    #   <p>Indicates which audio channel is associated with the <code>Result</code>.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code that represents the language spoken in your audio stream.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute language_identification
    #   <p>The language code of the dominant language identified in your stream.</p>
    #            <p>If you enabled channel identification and each channel of your audio contains a different language,
    #         you may have more than one result.</p>
    #   @return [Array<LanguageWithScore>]
    Result = ::Struct.new(
      :result_id,
      :start_time,
      :end_time,
      :is_partial,
      :alternatives,
      :channel_id,
      :language_code,
      :language_identification,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          start_time: 0.0.to_f,
          end_time: 0.0.to_f,
          is_partial: false
        }
      end
    end

    # Enum constants for Sentiment
    module Sentiment
      POSITIVE = "POSITIVE"

      NEGATIVE = "NEGATIVE"

      MIXED = "MIXED"

      NEUTRAL = "NEUTRAL"
    end

    # <p>The service is currently unavailable. Try your request later.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Enum constants for Specialty
    module Specialty
      PRIMARYCARE = "PRIMARYCARE"

      CARDIOLOGY = "CARDIOLOGY"

      NEUROLOGY = "NEUROLOGY"

      ONCOLOGY = "ONCOLOGY"

      RADIOLOGY = "RADIOLOGY"

      UROLOGY = "UROLOGY"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :language_code
    #   @option params [Integer] :media_sample_rate_hertz
    #   @option params [String] :media_encoding
    #   @option params [String] :vocabulary_name
    #   @option params [String] :session_id
    #   @option params [AudioStream] :audio_stream
    #   @option params [String] :vocabulary_filter_name
    #   @option params [String] :vocabulary_filter_method
    #   @option params [String] :language_model_name
    #   @option params [Boolean] :enable_partial_results_stabilization (false)
    #   @option params [String] :partial_results_stability
    #   @option params [String] :content_identification_type
    #   @option params [String] :content_redaction_type
    #   @option params [String] :pii_entity_types
    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <p>If you're unsure of the language spoken in your audio, consider using
    #         <code>IdentifyLanguage</code> to enable automatic language identification.</p>
    #            <p>For a list of languages supported with streaming Call Analytics, refer to the
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #           languages</a> table.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"]
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone audio,
    #         is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 48,000 Hz.
    #         Note that the sample rate you specify must match that of your audio.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding of your input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in
    #         your media, the custom vocabulary is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Specify a name for your Call Analytics transcription session. If you don't include this parameter
    #         in your request, Amazon Transcribe generates an ID and returns it in the response.</p>
    #            <p>You can use a session ID to retry a streaming session.</p>
    #   @return [String]
    # @!attribute audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    #   @return [AudioStream]
    # @!attribute vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your
    #         transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in
    #         your media, the vocabulary filter is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted
    #         words</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    #   Enum, one of: ["remove", "mask", "tag"]
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your
    #         transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify
    #         in your transcription request. If the languages don't match, the custom language model isn't applied.
    #         There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    #   @return [String]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce
    #         latency in your output, but may impact accuracy. For more information, see
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result
    #           stabilization</a>.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization
    #         (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly
    #         lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result
    #         stabilization</a>.</p>
    #   Enum, one of: ["high", "medium", "low"]
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in
    #         <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in
    #         <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your
    #         transcript. You can include as many types as you'd like, or you can select
    #         <code>ALL</code>.</p>
    #            <p>To include <code>PiiEntityTypes</code> in your Call Analytics request, you must also include
    #         either <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>Values must be comma-separated and can include:
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>,
    #         <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>,
    #         <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>,
    #         <code>SSN</code>, or <code>ALL</code>.</p>
    #   @return [String]
    StartCallAnalyticsStreamTranscriptionInput = ::Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :audio_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_id
    #   @option params [String] :language_code
    #   @option params [Integer] :media_sample_rate_hertz
    #   @option params [String] :media_encoding
    #   @option params [String] :vocabulary_name
    #   @option params [String] :session_id
    #   @option params [CallAnalyticsTranscriptResultStream] :call_analytics_transcript_result_stream
    #   @option params [String] :vocabulary_filter_name
    #   @option params [String] :vocabulary_filter_method
    #   @option params [String] :language_model_name
    #   @option params [Boolean] :enable_partial_results_stabilization (false)
    #   @option params [String] :partial_results_stability
    #   @option params [String] :content_identification_type
    #   @option params [String] :content_redaction_type
    #   @option params [String] :pii_entity_types
    # @!attribute request_id
    #   <p>Provides the identifier for your Call Analytics streaming request.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Provides the language code that you specified in your Call Analytics request.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"]
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Provides the sample rate that you specified in your Call Analytics request.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Provides the media encoding you specified in your Call Analytics request.</p>
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Provides the name of the custom vocabulary that you specified in your Call Analytics request.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Provides the identifier for your Call Analytics transcription session.</p>
    #   @return [String]
    # @!attribute call_analytics_transcript_result_stream
    #   <p>Provides detailed information about your Call Analytics streaming session.</p>
    #   @return [CallAnalyticsTranscriptResultStream]
    # @!attribute vocabulary_filter_name
    #   <p>Provides the name of the custom vocabulary filter that you specified in your Call Analytics
    #         request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Provides the vocabulary filtering method used in your Call Analytics transcription.</p>
    #   Enum, one of: ["remove", "mask", "tag"]
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Provides the name of the custom language model that you specified in your Call Analytics
    #         request.</p>
    #   @return [String]
    # @!attribute enable_partial_results_stabilization
    #   <p>Shows whether partial results stabilization was enabled for your Call Analytics transcription.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Provides the stabilization level used for your transcription.</p>
    #   Enum, one of: ["high", "medium", "low"]
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled for your Call Analytics transcription.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Shows whether content redaction was enabled for your Call Analytics transcription.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you specified in your Call Analytics request.</p>
    #   @return [String]
    StartCallAnalyticsStreamTranscriptionOutput = ::Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :call_analytics_transcript_result_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          enable_partial_results_stabilization: false
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :language_code
    #   @option params [Integer] :media_sample_rate_hertz
    #   @option params [String] :media_encoding
    #   @option params [String] :vocabulary_name
    #   @option params [String] :specialty
    #   @option params [String] :type
    #   @option params [Boolean] :show_speaker_label (false)
    #   @option params [String] :session_id
    #   @option params [AudioStream] :audio_stream
    #   @option params [Boolean] :enable_channel_identification (false)
    #   @option params [Integer] :number_of_channels
    #   @option params [String] :content_identification_type
    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <important>
    #               <p>Amazon Transcribe Medical only supports US English (<code>en-US</code>).</p>
    #            </important>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Amazon Transcribe Medical supports a
    #               range from 16,000 Hz to 48,000 Hz. Note that the sample rate you specify must match that
    #               of your audio.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding used for the input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include
    #                       WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #               transcription. Note that vocabulary names are case sensitive.</p>
    #   @return [String]
    # @!attribute specialty
    #   <p>Specify the medical specialty contained in your audio.</p>
    #   Enum, one of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #   @return [String]
    # @!attribute type
    #   <p>Specify the type of input audio. For example, choose <code>DICTATION</code> for a
    #               provider dictating patient notes and <code>CONVERSATION</code> for a dialogue between a
    #               patient and a medical professional.</p>
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker
    #               partitioning labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a>.</p>
    #   @return [Boolean]
    # @!attribute session_id
    #   <p>Specify a name for your transcription session. If you don't include this parameter in
    #               your request, Amazon Transcribe Medical generates an ID and returns it in the
    #               response.</p>
    #            <p>You can use a session ID to retry a streaming session.</p>
    #   @return [String]
    # @!attribute audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    #   @return [AudioStream]
    # @!attribute enable_channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #            <p>Channel identification transcribes the audio on each channel independently, then appends
    #               the output for each channel into one transcript.</p>
    #            <p>If you have multi-channel audio and do not enable channel identification, your audio is
    #               transcribed in a continuous manner and your transcript is not separated by channel.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Specify the number of channels in your audio stream. Up to two channels are
    #               supported.</p>
    #   @return [Integer]
    # @!attribute content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PHI is flagged upon complete
    #               transcription of an audio segment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health information (PHI) in a
    #               transcription</a>.</p>
    #   Enum, one of: ["PHI"]
    #   @return [String]
    StartMedicalStreamTranscriptionInput = ::Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :specialty,
      :type,
      :show_speaker_label,
      :session_id,
      :audio_stream,
      :enable_channel_identification,
      :number_of_channels,
      :content_identification_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_id
    #   @option params [String] :language_code
    #   @option params [Integer] :media_sample_rate_hertz
    #   @option params [String] :media_encoding
    #   @option params [String] :vocabulary_name
    #   @option params [String] :specialty
    #   @option params [String] :type
    #   @option params [Boolean] :show_speaker_label (false)
    #   @option params [String] :session_id
    #   @option params [MedicalTranscriptResultStream] :transcript_result_stream
    #   @option params [Boolean] :enable_channel_identification (false)
    #   @option params [Integer] :number_of_channels
    #   @option params [String] :content_identification_type
    # @!attribute request_id
    #   <p>Provides the identifier for your streaming request.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Provides the language code that you specified in your request. This must be
    #                   <code>en-US</code>.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Provides the sample rate that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Provides the media encoding you specified in your request.</p>
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Provides the name of the custom vocabulary that you specified in your request.</p>
    #   @return [String]
    # @!attribute specialty
    #   <p>Provides the medical specialty that you specified in your request.</p>
    #   Enum, one of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #   @return [String]
    # @!attribute type
    #   <p>Provides the type of audio you specified in your request.</p>
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Shows whether speaker partitioning was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute session_id
    #   <p>Provides the identifier for your transcription session.</p>
    #   @return [String]
    # @!attribute transcript_result_stream
    #   <p>Provides detailed information about your streaming session.</p>
    #   @return [MedicalTranscriptResultStream]
    # @!attribute enable_channel_identification
    #   <p>Shows whether channel identification was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Provides the number of channels that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled for your transcription.</p>
    #   Enum, one of: ["PHI"]
    #   @return [String]
    StartMedicalStreamTranscriptionOutput = ::Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :specialty,
      :type,
      :show_speaker_label,
      :session_id,
      :transcript_result_stream,
      :enable_channel_identification,
      :number_of_channels,
      :content_identification_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          show_speaker_label: false,
          enable_channel_identification: false
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :language_code
    #   @option params [Integer] :media_sample_rate_hertz
    #   @option params [String] :media_encoding
    #   @option params [String] :vocabulary_name
    #   @option params [String] :session_id
    #   @option params [AudioStream] :audio_stream
    #   @option params [String] :vocabulary_filter_name
    #   @option params [String] :vocabulary_filter_method
    #   @option params [Boolean] :show_speaker_label (false)
    #   @option params [Boolean] :enable_channel_identification (false)
    #   @option params [Integer] :number_of_channels
    #   @option params [Boolean] :enable_partial_results_stabilization (false)
    #   @option params [String] :partial_results_stability
    #   @option params [String] :content_identification_type
    #   @option params [String] :content_redaction_type
    #   @option params [String] :pii_entity_types
    #   @option params [String] :language_model_name
    #   @option params [Boolean] :identify_language (false)
    #   @option params [String] :language_options
    #   @option params [String] :preferred_language
    #   @option params [Boolean] :identify_multiple_languages (false)
    #   @option params [String] :vocabulary_names
    #   @option params [String] :vocabulary_filter_names
    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <p>If you're unsure of the language spoken in your audio, consider using
    #         <code>IdentifyLanguage</code> to enable automatic language identification.</p>
    #            <p>For a list of languages supported with Amazon Transcribe streaming, refer to the
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #           languages</a> table.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone audio,
    #         is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 48,000 Hz.
    #         Note that the sample rate you specify must match that of your audio.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Specify the encoding of your input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in
    #         your media, the custom vocabulary is not applied to your transcription.</p>
    #            <important>
    #               <p>This parameter is <b>not</b> intended for use with the
    #             <code>IdentifyLanguage</code> parameter. If you're including <code>IdentifyLanguage</code>
    #           in your request and want to use one or more custom vocabularies with your transcription, use
    #           the <code>VocabularyNames</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Specify a name for your transcription session. If you don't include this parameter in your request,
    #         Amazon Transcribe generates an ID and returns it in the response.</p>
    #            <p>You can use a session ID to retry a streaming session.</p>
    #   @return [String]
    # @!attribute audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    #   @return [AudioStream]
    # @!attribute vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your
    #         transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in
    #         your media, the vocabulary filter is not applied to your transcription.</p>
    #            <important>
    #               <p>This parameter is <b>not</b> intended for use with the
    #             <code>IdentifyLanguage</code> parameter. If you're including <code>IdentifyLanguage</code>
    #           in your request and want to use one or more vocabulary filters with your transcription, use
    #           the <code>VocabularyFilterNames</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted
    #         words</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    #   Enum, one of: ["remove", "mask", "tag"]
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker partitioning
    #         labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a>.</p>
    #   @return [Boolean]
    # @!attribute enable_channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #            <p>Channel identification transcribes the audio on each channel independently, then appends the
    #         output for each channel into one transcript.</p>
    #            <p>If you have multi-channel audio and do not enable channel identification, your audio is
    #         transcribed in a continuous manner and your transcript is not separated by channel.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Specify the number of channels in your audio stream. Up to two channels are
    #         supported.</p>
    #   @return [Integer]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce
    #         latency in your output, but may impact accuracy. For more information, see
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result
    #         stabilization</a>.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization
    #         (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly
    #         lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result
    #         stabilization</a>.</p>
    #   Enum, one of: ["high", "medium", "low"]
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in
    #         <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in
    #         <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your
    #         transcript. You can include as many types as you'd like, or you can select
    #         <code>ALL</code>.</p>
    #            <p>To include <code>PiiEntityTypes</code> in your request, you must also include either
    #         <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>Values must be comma-separated and can include:
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>,
    #         <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>,
    #         <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>,
    #         <code>SSN</code>, or <code>ALL</code>.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your
    #         transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify
    #         in your transcription request. If the languages don't match, the custom language model isn't applied.
    #         There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Enables automatic language identification for your transcription.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you can optionally include a list of
    #         language codes, using <code>LanguageOptions</code>, that you think may be present in
    #         your audio stream. Including language options can improve transcription accuracy.</p>
    #            <p>You can also include a preferred language using <code>PreferredLanguage</code>. Adding a
    #         preferred language can help Amazon Transcribe identify the language faster than if you omit this
    #         parameter.</p>
    #            <p>If you have multi-channel audio that contains different languages on each channel, and you've
    #         enabled channel identification, automatic language identification identifies the dominant language on
    #         each audio channel.</p>
    #            <p>Note that you must include either <code>LanguageCode</code> or
    #         <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> in your request. If you include more than one of these parameters, your transcription job
    #         fails.</p>
    #            <p>Streaming language identification can't be combined with custom language models or
    #         redaction.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Specify two or more language codes that represent the languages you think may be present
    #         in your media; including more than five is not recommended. If you're unsure what languages are present, do
    #         not include this parameter.</p>
    #            <p>Including language options can improve the accuracy of language identification.</p>
    #            <p>If you include <code>LanguageOptions</code> in your request, you must also include
    #         <code>IdentifyLanguage</code>.</p>
    #            <p>For a list of languages supported with Amazon Transcribe streaming, refer to the
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #           languages</a> table.</p>
    #            <important>
    #               <p>You can only include one language dialect per language per stream. For example, you
    #           cannot include <code>en-US</code> and <code>en-AU</code> in the same request.</p>
    #            </important>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Specify a preferred language from the subset of languages codes you specified in
    #         <code>LanguageOptions</code>.</p>
    #            <p>You can only use this parameter if you've included <code>IdentifyLanguage</code> and
    #           <code>LanguageOptions</code> in your request.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute identify_multiple_languages
    #   <p>Enables automatic multi-language identification in your transcription job request. Use this parameter if your stream contains more than one language. If your stream contains only one language, use IdentifyLanguage instead.</p>
    #            <p>If you include <code>IdentifyMultipleLanguages</code>, you can optionally include a list of language codes, using <code>LanguageOptions</code>, that you think may be present in your stream. Including <code>LanguageOptions</code> restricts <code>IdentifyMultipleLanguages</code> to only the language options that you specify, which can improve transcription accuracy.</p>
    #            <p>If you want to apply a custom vocabulary or a custom vocabulary filter to your automatic multiple language identification request, include <code>VocabularyNames</code> or <code>VocabularyFilterNames</code>.</p>
    #            <p>Note that you must include one of <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your request. If you include more than one of these parameters, your transcription job fails.</p>
    #   @return [Boolean]
    # @!attribute vocabulary_names
    #   <p>Specify the names of the custom vocabularies that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If none of the languages of the specified custom vocabularies match the language identified in
    #         your media, your job fails.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> the
    #             <code>IdentifyLanguage</code> parameter. If you're <b>not</b>
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary
    #           with your transcription, use the <code>VocabularyName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Specify the names of the custom vocabulary filters that you want to use when processing
    #         your transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If none of the languages of the specified custom vocabulary filters match the language identified
    #         in your media, your job fails.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b>
    #           the <code>IdentifyLanguage</code> parameter. If you're <b>not</b>
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary filter
    #           with your transcription, use the <code>VocabularyFilterName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted
    #         words</a>.</p>
    #   @return [String]
    StartStreamTranscriptionInput = ::Struct.new(
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :audio_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :show_speaker_label,
      :enable_channel_identification,
      :number_of_channels,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :identify_multiple_languages,
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_id
    #   @option params [String] :language_code
    #   @option params [Integer] :media_sample_rate_hertz
    #   @option params [String] :media_encoding
    #   @option params [String] :vocabulary_name
    #   @option params [String] :session_id
    #   @option params [TranscriptResultStream] :transcript_result_stream
    #   @option params [String] :vocabulary_filter_name
    #   @option params [String] :vocabulary_filter_method
    #   @option params [Boolean] :show_speaker_label (false)
    #   @option params [Boolean] :enable_channel_identification (false)
    #   @option params [Integer] :number_of_channels
    #   @option params [Boolean] :enable_partial_results_stabilization (false)
    #   @option params [String] :partial_results_stability
    #   @option params [String] :content_identification_type
    #   @option params [String] :content_redaction_type
    #   @option params [String] :pii_entity_types
    #   @option params [String] :language_model_name
    #   @option params [Boolean] :identify_language (false)
    #   @option params [String] :language_options
    #   @option params [String] :preferred_language
    #   @option params [Boolean] :identify_multiple_languages (false)
    #   @option params [String] :vocabulary_names
    #   @option params [String] :vocabulary_filter_names
    # @!attribute request_id
    #   <p>Provides the identifier for your streaming request.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Provides the language code that you specified in your request.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>Provides the sample rate that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>Provides the media encoding you specified in your request.</p>
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Provides the name of the custom vocabulary that you specified in your request.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>Provides the identifier for your transcription session.</p>
    #   @return [String]
    # @!attribute transcript_result_stream
    #   <p>Provides detailed information about your streaming session.</p>
    #   @return [TranscriptResultStream]
    # @!attribute vocabulary_filter_name
    #   <p>Provides the name of the custom vocabulary filter that you specified in your
    #         request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Provides the vocabulary filtering method used in your transcription.</p>
    #   Enum, one of: ["remove", "mask", "tag"]
    #   @return [String]
    # @!attribute show_speaker_label
    #   <p>Shows whether speaker partitioning was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute enable_channel_identification
    #   <p>Shows whether  channel identification was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute number_of_channels
    #   <p>Provides the number of channels that you specified in your request.</p>
    #   @return [Integer]
    # @!attribute enable_partial_results_stabilization
    #   <p>Shows whether partial results stabilization was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Provides the stabilization level used for your transcription.</p>
    #   Enum, one of: ["high", "medium", "low"]
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled for your transcription.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Shows whether content redaction was enabled for your transcription.</p>
    #   Enum, one of: ["PII"]
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you specified in your request.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Provides the name of the custom language model that you specified in your request.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Shows whether automatic language identification was enabled for your
    #         transcription.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Provides the language codes that you specified in your request.</p>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Provides the preferred language that you specified in your request.</p>
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   @return [String]
    # @!attribute identify_multiple_languages
    #   <p>Shows whether automatic multi-language identification was enabled for your transcription.</p>
    #   @return [Boolean]
    # @!attribute vocabulary_names
    #   <p>Provides the names of the custom vocabularies that you specified in your request.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Provides the names of the custom vocabulary filters that you specified in your
    #         request.</p>
    #   @return [String]
    StartStreamTranscriptionOutput = ::Struct.new(
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :vocabulary_name,
      :session_id,
      :transcript_result_stream,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :show_speaker_label,
      :enable_channel_identification,
      :number_of_channels,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :identify_multiple_languages,
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          show_speaker_label: false,
          enable_channel_identification: false,
          enable_partial_results_stabilization: false,
          identify_language: false,
          identify_multiple_languages: false
        }
      end
    end

    # <p>Contains the timestamp range (start time through end time) of a matched category.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :begin_offset_millis
    #   @option params [Integer] :end_offset_millis
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the category
    #         match.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the end of the category
    #         match.</p>
    #   @return [Integer]
    TimestampRange = ::Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Transcript</code> associated with a
    #       <code></code>.</p>
    #          <p>
    #             <code>Transcript</code> contains <code>Results</code>, which contains a set of transcription
    #       results from one or more audio segments, along with additional information per your request
    #       parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Result>] :results
    # @!attribute results
    #   <p>Contains a set of transcription results from one or more audio segments, along with additional
    #         information per your request parameters. This can include information relating to alternative
    #         transcriptions, channel identification, partial result stabilization, language identification, and other
    #         transcription-related data.</p>
    #   @return [Array<Result>]
    Transcript = ::Struct.new(
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>TranscriptEvent</code> associated with a
    #       <code>TranscriptResultStream</code>.</p>
    #          <p>Contains a set of transcription results from one or more audio segments, along with additional
    #       information per your request parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Transcript] :transcript
    # @!attribute transcript
    #   <p>Contains <code>Results</code>, which contains a set of transcription results from one or
    #         more audio segments, along with additional information per your request parameters. This can
    #         include information relating to alternative transcriptions, channel identification, partial
    #         result stabilization, language identification, and other transcription-related data.</p>
    #   @return [Transcript]
    TranscriptEvent = ::Struct.new(
      :transcript,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about your streaming session.</p>
    class TranscriptResultStream < Hearth::Union
      # <p>Contains <code>Transcript</code>, which contains <code>Results</code>. The
      #       <code></code> object contains a set of transcription
      #       results from one or more audio segments, along with additional information per your request
      #       parameters.</p>
      class TranscriptEvent < TranscriptResultStream
        def to_h
          { transcript_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::TranscriptEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A client error occurred when the stream was created. Check the parameters of the request
      #       and try your request again.</p>
      class BadRequestException < TranscriptResultStream
        def to_h
          { bad_request_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::BadRequestException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
      #       limit. Break your audio stream into smaller chunks and try your request again.</p>
      class LimitExceededException < TranscriptResultStream
        def to_h
          { limit_exceeded_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::LimitExceededException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A problem occurred while processing the audio. Amazon Transcribe terminated
      #       processing.</p>
      class InternalFailureException < TranscriptResultStream
        def to_h
          { internal_failure_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::InternalFailureException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A new stream started with the same session ID. The current stream has been
      #       terminated.</p>
      class ConflictException < TranscriptResultStream
        def to_h
          { conflict_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ConflictException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The service is currently unavailable. Try your request later.</p>
      class ServiceUnavailableException < TranscriptResultStream
        def to_h
          { service_unavailable_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ServiceUnavailableException #{__getobj__ || 'nil'}>"
        end
      end

      class Unknown < TranscriptResultStream
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Enum constants for Type
    module Type
      CONVERSATION = "CONVERSATION"

      DICTATION = "DICTATION"
    end

    # <p>Contains set of transcription results from one or more audio segments, along with additional
    #       information about the parameters included in your request. For example, channel definitions, partial result
    #       stabilization, sentiment, and issue detection.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :utterance_id
    #   @option params [Boolean] :is_partial (false)
    #   @option params [String] :participant_role
    #   @option params [Integer] :begin_offset_millis
    #   @option params [Integer] :end_offset_millis
    #   @option params [String] :transcript
    #   @option params [Array<CallAnalyticsItem>] :items
    #   @option params [Array<CallAnalyticsEntity>] :entities
    #   @option params [String] :sentiment
    #   @option params [Array<IssueDetected>] :issues_detected
    # @!attribute utterance_id
    #   <p>The unique identifier that is associated with the specified <code>UtteranceEvent</code>.</p>
    #   @return [String]
    # @!attribute is_partial
    #   <p>Indicates whether the segment in the <code>UtteranceEvent</code> is complete
    #         (<code>FALSE</code>) or partial (<code>TRUE</code>).</p>
    #   @return [Boolean]
    # @!attribute participant_role
    #   <p>Provides the role of the speaker for each audio channel, either <code>CUSTOMER</code> or
    #         <code>AGENT</code>.</p>
    #   Enum, one of: ["AGENT", "CUSTOMER"]
    #   @return [String]
    # @!attribute begin_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the
    #         <code>UtteranceEvent</code>.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The time, in milliseconds, from the beginning of the audio stream to the start of the
    #         <code>UtteranceEvent</code>.</p>
    #   @return [Integer]
    # @!attribute transcript
    #   <p>Contains transcribed text.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Contains words, phrases, or punctuation marks that are associated with the specified
    #         <code>UtteranceEvent</code>.</p>
    #   @return [Array<CallAnalyticsItem>]
    # @!attribute entities
    #   <p>Contains entities identified as personally identifiable information (PII) in your transcription
    #         output.</p>
    #   @return [Array<CallAnalyticsEntity>]
    # @!attribute sentiment
    #   <p>Provides the sentiment that was detected in the specified segment.</p>
    #   Enum, one of: ["POSITIVE", "NEGATIVE", "MIXED", "NEUTRAL"]
    #   @return [String]
    # @!attribute issues_detected
    #   <p>Provides the issue that was detected in the specified segment.</p>
    #   @return [Array<IssueDetected>]
    UtteranceEvent = ::Struct.new(
      :utterance_id,
      :is_partial,
      :participant_role,
      :begin_offset_millis,
      :end_offset_millis,
      :transcript,
      :items,
      :entities,
      :sentiment,
      :issues_detected,
      keyword_init: true
    ) do
      include Hearth::Structure

      private

      def _defaults
        {
          is_partial: false
        }
      end
    end

    # Enum constants for VocabularyFilterMethod
    module VocabularyFilterMethod
      REMOVE = "remove"

      MASK = "mask"

      TAG = "tag"
    end

  end
end
