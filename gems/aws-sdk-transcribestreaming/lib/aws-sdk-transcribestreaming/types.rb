# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  module Types

    # <p>A list of possible transcriptions for the audio.</p>
    #
    # @!attribute transcript
    #   <p>The text that was transcribed from the audio.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>One or more alternative interpretations of the input audio. </p>
    #
    #   @return [Array<Item>]
    #
    # @!attribute entities
    #   <p>Contains the entities identified as personally identifiable information (PII) in the transcription output.</p>
    #
    #   @return [Array<Entity>]
    #
    Alternative = ::Struct.new(
      :transcript,
      :items,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a wrapper for the audio chunks that you are sending.</p>
    #          <p>For information on audio encoding in Amazon Transcribe, see
    #       <a href="https://docs.aws.amazon.com/transcribe/latest/dg/input.html">Speech input</a>. For information
    #       on audio encoding formats in Amazon Transcribe Medical, see
    #       <a href="https://docs.aws.amazon.com/transcribe/latest/dg/input-med.html">Speech input</a>.</p>
    #
    # @!attribute audio_chunk
    #   <p>An audio blob that contains the next part of the audio that you want to transcribe. The
    #         maximum audio chunk size is 32 KB.</p>
    #
    #   @return [String]
    #
    AudioEvent = ::Struct.new(
      :audio_chunk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the audio stream from your application to Amazon Transcribe.</p>
    #
    class AudioStream < Hearth::Union
      # <p>A blob of audio from your application. You audio stream consists of one or more audio
      #       events.</p>
      #          <p>For information on audio encoding formats in Amazon Transcribe, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/input.html">Speech input</a>. For
      #       information on audio encoding formats in Amazon Transcribe Medical, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/input-med.html">Speech input</a>.</p>
      #          <p>For more information on stream encoding in Amazon Transcribe, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html">Event stream encoding</a>. For
      #       information on stream encoding in Amazon Transcribe Medical, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/event-stream-med.html">Event stream encoding</a>.</p>
      #
      class AudioEvent < AudioStream
        def to_h
          { audio_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::AudioEvent #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AudioStream
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>One or more arguments to the <code>StartStreamTranscription</code> or
    #         <code>StartMedicalStreamTranscription</code> operation was invalid. For example,
    #         <code>MediaEncoding</code> was not set to a valid encoding, or <code>LanguageCode</code> was
    #       not set to a valid code. Check the parameters and try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A new stream started with the same session ID. The current stream has been
    #       terminated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentIdentificationType
    #
    module ContentIdentificationType
      # No documentation available.
      #
      PII = "PII"
    end

    # Includes enum constants for ContentRedactionType
    #
    module ContentRedactionType
      # No documentation available.
      #
      PII = "PII"
    end

    # <p>The entity identified as personally identifiable information (PII).</p>
    #
    # @!attribute start_time
    #   <p>The start time of speech that was identified as PII.</p>
    #
    #   @return [Float]
    #
    # @!attribute end_time
    #   <p>The end time of speech that was identified as PII.</p>
    #
    #   @return [Float]
    #
    # @!attribute category
    #   <p>The category of information identified in this entity; for example, PII.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of PII identified in this entity; for example, name or credit card number.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The words in the transcription output that have been identified as a PII entity.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>A value between zero and one that Amazon Transcribe assigns to PII identified in the source audio. Larger values indicate a higher confidence in PII identification.</p>
    #
    #   @return [Float]
    #
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

      def initialize(*)
        super
        self.start_time ||= 0
        self.end_time ||= 0
      end
    end

    # <p>A problem occurred while processing the audio. Amazon Transcribe or Amazon Transcribe Medical terminated processing. Try
    #       your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A word, phrase, or punctuation mark that is transcribed from the input audio.</p>
    #
    # @!attribute start_time
    #   <p>The offset from the beginning of the audio stream to the beginning of the audio that
    #         resulted in the item.</p>
    #
    #   @return [Float]
    #
    # @!attribute end_time
    #   <p>The offset from the beginning of the audio stream to the end of the audio that resulted in
    #         the item.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The type of the item. <code>PRONUNCIATION</code> indicates that the item is a word
    #         that was recognized in the input audio. <code>PUNCTUATION</code> indicates that the item
    #         was interpreted as a pause in the input audio.</p>
    #
    #   Enum, one of: ["pronunciation", "punctuation"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The word or punctuation that was recognized in the input audio.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_match
    #   <p>Indicates whether a word in the item matches a word in the vocabulary filter you've chosen
    #         for your media stream. If <code>true</code> then a word in the item matches your
    #         vocabulary filter.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute speaker
    #   <p>If speaker identification is enabled, shows the speakers identified in the media
    #         stream.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>A value between zero and one for an item that is a confidence score that Amazon Transcribe assigns to each
    #         word or phrase that it transcribes.</p>
    #
    #   @return [Float]
    #
    # @!attribute stable
    #   <p>If partial result stabilization has been enabled, indicates whether the word or phrase in
    #         the item is stable. If <code>Stable</code> is <code>true</code>, the result is stable.</p>
    #
    #   @return [Boolean]
    #
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

      def initialize(*)
        super
        self.start_time ||= 0
        self.end_time ||= 0
        self.vocabulary_filter_match ||= false
      end
    end

    # Includes enum constants for ItemType
    #
    module ItemType
      # No documentation available.
      #
      PRONUNCIATION = "pronunciation"

      # No documentation available.
      #
      PUNCTUATION = "punctuation"
    end

    # Includes enum constants for LanguageCode
    #
    module LanguageCode
      # No documentation available.
      #
      EN_US = "en-US"

      # No documentation available.
      #
      EN_GB = "en-GB"

      # No documentation available.
      #
      ES_US = "es-US"

      # No documentation available.
      #
      FR_CA = "fr-CA"

      # No documentation available.
      #
      FR_FR = "fr-FR"

      # No documentation available.
      #
      EN_AU = "en-AU"

      # No documentation available.
      #
      IT_IT = "it-IT"

      # No documentation available.
      #
      DE_DE = "de-DE"

      # No documentation available.
      #
      PT_BR = "pt-BR"

      # No documentation available.
      #
      JA_JP = "ja-JP"

      # No documentation available.
      #
      KO_KR = "ko-KR"

      # No documentation available.
      #
      ZH_CN = "zh-CN"
    end

    # <p>The language codes of the identified languages and their associated confidence scores.
    #       The confidence score is a value between zero and one; a larger value indicates a higher
    #       confidence in the identified language.</p>
    #
    # @!attribute language_code
    #   <p>The language code of the language identified by Amazon Transcribe.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The confidence score for the associated language code. Confidence scores are values
    #         between zero and one; larger values indicate a higher confidence in the identified language.
    #        </p>
    #
    #   @return [Float]
    #
    LanguageWithScore = ::Struct.new(
      :language_code,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.score ||= 0
      end
    end

    # <p>You have exceeded the maximum number of concurrent transcription streams, are starting
    #       transcription streams too quickly, or the maximum audio length of 4 hours. Wait until a stream
    #       has finished processing, or break your audio stream into smaller chunks and try your request
    #       again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MediaEncoding
    #
    module MediaEncoding
      # No documentation available.
      #
      PCM = "pcm"

      # No documentation available.
      #
      OGG_OPUS = "ogg-opus"

      # No documentation available.
      #
      FLAC = "flac"
    end

    # <p>A list of possible transcriptions for the audio.</p>
    #
    # @!attribute transcript
    #   <p>The text that was transcribed from the audio.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>A list of objects that contains words and punctuation marks that represents one or
    #               more interpretations of the input audio.</p>
    #
    #   @return [Array<MedicalItem>]
    #
    # @!attribute entities
    #   <p>Contains the medical entities identified as personal health information in the transcription output.</p>
    #
    #   @return [Array<MedicalEntity>]
    #
    MedicalAlternative = ::Struct.new(
      :transcript,
      :items,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MedicalContentIdentificationType
    #
    module MedicalContentIdentificationType
      # No documentation available.
      #
      PHI = "PHI"
    end

    # <p>The medical entity identified as personal health information.</p>
    #
    # @!attribute start_time
    #   <p>The start time of the speech that was identified as a medical entity.</p>
    #
    #   @return [Float]
    #
    # @!attribute end_time
    #   <p>The end time of the speech that was identified as a medical entity.</p>
    #
    #   @return [Float]
    #
    # @!attribute category
    #   <p>The type of personal health information of the medical entity.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The word or words in the transcription output that have been identified as a
    #               medical entity.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>A value between zero and one that Amazon Transcribe Medical assigned to the personal health information
    #               that it identified in the source audio. Larger values indicate that Amazon Transcribe Medical has higher
    #               confidence in the personal health information that it identified.</p>
    #
    #   @return [Float]
    #
    MedicalEntity = ::Struct.new(
      :start_time,
      :end_time,
      :category,
      :content,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.start_time ||= 0
        self.end_time ||= 0
      end
    end

    # <p>A word, phrase, or punctuation mark that is transcribed from the input audio.</p>
    #
    # @!attribute start_time
    #   <p>The number of seconds into an audio stream that indicates the creation time of an
    #               item.</p>
    #
    #   @return [Float]
    #
    # @!attribute end_time
    #   <p>The number of seconds into an audio stream that indicates the creation time of an
    #               item.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The type of the item. <code>PRONUNCIATION</code> indicates that the item is a word
    #               that was recognized in the input audio. <code>PUNCTUATION</code> indicates that the item
    #               was interpreted as a pause in the input audio, such as a period to indicate the end of a
    #               sentence.</p>
    #
    #   Enum, one of: ["pronunciation", "punctuation"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The word or punctuation mark that was recognized in the input audio.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>A value between 0 and 1 for an item that is a confidence score that Amazon Transcribe Medical assigns to
    #               each word that it transcribes.</p>
    #
    #   @return [Float]
    #
    # @!attribute speaker
    #   <p>If speaker identification is enabled, shows the integer values that correspond to the
    #               different speakers identified in the stream. For example, if the value of
    #                   <code>Speaker</code> in the stream is either a <code>0</code> or a <code>1</code>,
    #               that indicates that Amazon Transcribe Medical has identified two speakers in the stream. The value of
    #                   <code>0</code> corresponds to one speaker and the value of <code>1</code>
    #               corresponds to the other speaker.</p>
    #
    #   @return [String]
    #
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

      def initialize(*)
        super
        self.start_time ||= 0
        self.end_time ||= 0
      end
    end

    # <p>The results of transcribing a portion of the input audio stream.</p>
    #
    # @!attribute result_id
    #   <p>A unique identifier for the result.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time, in seconds, from the beginning of the audio stream to the beginning of the
    #               result.</p>
    #
    #   @return [Float]
    #
    # @!attribute end_time
    #   <p>The time, in seconds, from the beginning of the audio stream to the end of the
    #               result.</p>
    #
    #   @return [Float]
    #
    # @!attribute is_partial
    #   <p>Amazon Transcribe Medical divides the incoming audio stream into segments at natural points in the audio.
    #               Transcription results are returned based on these segments.</p>
    #           <p>The <code>IsPartial</code> field is <code>true</code> to indicate that Amazon Transcribe Medical has
    #               additional transcription data to send. The <code>IsPartial</code> field is
    #                   <code>false</code> to indicate that this is the last transcription result for the
    #               segment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute alternatives
    #   <p>A list of possible transcriptions of the audio. Each alternative typically contains
    #               one <code>Item</code> that contains the result of the transcription.</p>
    #
    #   @return [Array<MedicalAlternative>]
    #
    # @!attribute channel_id
    #   <p>When channel identification is enabled, Amazon Transcribe Medical transcribes the speech from each audio
    #               channel separately.</p>
    #           <p>You can use <code>ChannelId</code> to retrieve the transcription results for a single
    #               channel in your audio stream.</p>
    #
    #   @return [String]
    #
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

      def initialize(*)
        super
        self.start_time ||= 0
        self.end_time ||= 0
        self.is_partial ||= false
      end
    end

    # <p>The medical transcript in a <a>MedicalTranscriptEvent</a>.</p>
    #
    # @!attribute results
    #   <p>
    #               <a>MedicalResult</a> objects that contain the results of transcribing a
    #               portion of the input audio stream. The array can be empty.</p>
    #
    #   @return [Array<MedicalResult>]
    #
    MedicalTranscript = ::Struct.new(
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of transcription results from the server to the client. It contains
    #             one or more segments of the transcription.</p>
    #
    # @!attribute transcript
    #   <p>The transcription of the audio stream. The transcription is composed of all of the
    #               items in the results list.</p>
    #
    #   @return [MedicalTranscript]
    #
    MedicalTranscriptEvent = ::Struct.new(
      :transcript,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the transcription result stream from Amazon Transcribe Medical to your application.</p>
    #
    class MedicalTranscriptResultStream < Hearth::Union
      # <p>A portion of the transcription of the audio stream. Events are sent periodically from
      #             Amazon Transcribe Medical to your application. The event can be a partial transcription of a section of the
      #             audio stream, or it can be the entire transcription of that portion of the audio
      #             stream.</p>
      #
      class TranscriptEvent < MedicalTranscriptResultStream
        def to_h
          { transcript_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::TranscriptEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>One or more arguments to the <code>StartStreamTranscription</code> or
      #         <code>StartMedicalStreamTranscription</code> operation was invalid. For example,
      #         <code>MediaEncoding</code> was not set to a valid encoding, or <code>LanguageCode</code> was
      #       not set to a valid code. Check the parameters and try your request again.</p>
      #
      class BadRequestException < MedicalTranscriptResultStream
        def to_h
          { bad_request_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::BadRequestException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>You have exceeded the maximum number of concurrent transcription streams, are starting
      #       transcription streams too quickly, or the maximum audio length of 4 hours. Wait until a stream
      #       has finished processing, or break your audio stream into smaller chunks and try your request
      #       again.</p>
      #
      class LimitExceededException < MedicalTranscriptResultStream
        def to_h
          { limit_exceeded_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::LimitExceededException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A problem occurred while processing the audio. Amazon Transcribe or Amazon Transcribe Medical terminated processing. Try
      #       your request again.</p>
      #
      class InternalFailureException < MedicalTranscriptResultStream
        def to_h
          { internal_failure_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::InternalFailureException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A new stream started with the same session ID. The current stream has been
      #       terminated.</p>
      #
      class ConflictException < MedicalTranscriptResultStream
        def to_h
          { conflict_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ConflictException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Service is currently unavailable. Try your request later.</p>
      #
      class ServiceUnavailableException < MedicalTranscriptResultStream
        def to_h
          { service_unavailable_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ServiceUnavailableException #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < MedicalTranscriptResultStream
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for PartialResultsStability
    #
    module PartialResultsStability
      # No documentation available.
      #
      HIGH = "high"

      # No documentation available.
      #
      MEDIUM = "medium"

      # No documentation available.
      #
      LOW = "low"
    end

    # <p>The result of transcribing a portion of the input audio stream. </p>
    #
    # @!attribute result_id
    #   <p>A unique identifier for the result. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The offset in seconds from the beginning of the audio stream to the beginning of the
    #         result.</p>
    #
    #   @return [Float]
    #
    # @!attribute end_time
    #   <p>The offset in seconds from the beginning of the audio stream to the end of the
    #         result.</p>
    #
    #   @return [Float]
    #
    # @!attribute is_partial
    #   <p>Amazon Transcribe divides the incoming audio stream into segments at natural points in the audio.
    #         Transcription results are returned based on these segments. </p>
    #            <p>The <code>IsPartial</code> field is <code>true</code> to indicate that Amazon Transcribe has
    #         additional transcription data to send, <code>false</code> to indicate that this is the last
    #         transcription result for the segment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute alternatives
    #   <p>A list of possible transcriptions for the audio. Each alternative typically contains one
    #         <code>item</code> that contains the result of the transcription.</p>
    #
    #   @return [Array<Alternative>]
    #
    # @!attribute channel_id
    #   <p>When channel identification is enabled, Amazon Transcribe transcribes the speech from each audio
    #         channel separately.</p>
    #            <p>You can use <code>ChannelId</code> to retrieve the transcription results for a single
    #         channel in your audio stream.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the identified language in your media stream.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute language_identification
    #   <p>The language code of the dominant language identified in your media.</p>
    #
    #   @return [Array<LanguageWithScore>]
    #
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

      def initialize(*)
        super
        self.start_time ||= 0
        self.end_time ||= 0
        self.is_partial ||= false
      end
    end

    # <p>Service is currently unavailable. Try your request later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Specialty
    #
    module Specialty
      # No documentation available.
      #
      PRIMARYCARE = "PRIMARYCARE"

      # No documentation available.
      #
      CARDIOLOGY = "CARDIOLOGY"

      # No documentation available.
      #
      NEUROLOGY = "NEUROLOGY"

      # No documentation available.
      #
      ONCOLOGY = "ONCOLOGY"

      # No documentation available.
      #
      RADIOLOGY = "RADIOLOGY"

      # No documentation available.
      #
      UROLOGY = "UROLOGY"
    end

    # @!attribute language_code
    #   <p> Indicates the source language used in the input audio stream. For Amazon Transcribe Medical, this is US
    #               English (en-US). </p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in Hertz). Amazon Transcribe medical supports a range from
    #               16,000 Hz to 48,000 Hz. Note that the sample rate you specify must match that of your
    #               audio.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_encoding
    #   <p>The encoding used for the input audio.</p>
    #
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the medical custom vocabulary to use when processing the real-time
    #               stream.</p>
    #
    #   @return [String]
    #
    # @!attribute specialty
    #   <p>The medical specialty of the clinician or provider.</p>
    #
    #   Enum, one of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of input audio. Choose <code>DICTATION</code> for a provider dictating
    #               patient notes. Choose <code>CONVERSATION</code> for a dialogue between a patient and one
    #               or more medical professionanls.</p>
    #
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #
    #   @return [String]
    #
    # @!attribute show_speaker_label
    #   <p>When <code>true</code>, enables speaker identification in your real-time
    #               stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute session_id
    #   <p> Optional. An identifier for the transcription session. If you don't provide a session
    #               ID, Amazon Transcribe generates one for you and returns it in the response. </p>
    #
    #   @return [String]
    #
    # @!attribute audio_stream
    #   <p>Represents the audio stream from your application to Amazon Transcribe.</p>
    #
    #   @return [AudioStream]
    #
    # @!attribute enable_channel_identification
    #   <p>When <code>true</code>, instructs Amazon Transcribe Medical to process each audio channel separately and
    #               then merge the transcription output of each channel into a single transcription.</p>
    #           <p>Amazon Transcribe Medical also produces a transcription of each item. An item includes the start time,
    #               end time, and any alternative transcriptions.</p>
    #           <p>You can't set both <code>ShowSpeakerLabel</code> and
    #                   <code>EnableChannelIdentification</code> in the same request. If you set both, your
    #               request returns a <code>BadRequestException</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_channels
    #   <p>The number of channels that are in your audio stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute content_identification_type
    #   <p>Set this field to <code>PHI</code> to identify personal health information in the
    #               transcription output.</p>
    #
    #   Enum, one of: ["PHI"]
    #
    #   @return [String]
    #
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

      def initialize(*)
        super
        self.show_speaker_label ||= false
        self.enable_channel_identification ||= false
      end
    end

    # @!attribute request_id
    #   <p>An identifier for the streaming transcription.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code for the response transcript. For Amazon Transcribe Medical, this is US English
    #               (en-US).</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio, in Hertz (Hz).</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_encoding
    #   <p>The encoding used for the input audio stream.</p>
    #
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the vocabulary used when processing the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute specialty
    #   <p>The specialty in the medical domain.</p>
    #
    #   Enum, one of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of audio that was transcribed. </p>
    #
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #
    #   @return [String]
    #
    # @!attribute show_speaker_label
    #   <p>Shows whether speaker identification was enabled in the stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute session_id
    #   <p>Optional. An identifier for the transcription session. If you don't provide a session
    #               ID, Amazon Transcribe generates one for you and returns it in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute transcript_result_stream
    #   <p>Represents the stream of transcription events from Amazon Transcribe Medical to your application. </p>
    #
    #   @return [MedicalTranscriptResultStream]
    #
    # @!attribute enable_channel_identification
    #   <p>Shows whether channel identification has been enabled in the stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_channels
    #   <p>The number of channels identified in the stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute content_identification_type
    #   <p>If the value is <code>PHI</code>, indicates that you've configured your stream to
    #               identify personal health information.</p>
    #
    #   Enum, one of: ["PHI"]
    #
    #   @return [String]
    #
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

      def initialize(*)
        super
        self.show_speaker_label ||= false
        self.enable_channel_identification ||= false
      end
    end

    # @!attribute language_code
    #   <p>The language code of the input audio stream.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in Hertz). Low-quality audio, such as telephone
    #         audio, is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to
    #         48,000 Hz. Note that the sample rate you specify must match that of your audio.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_encoding
    #   <p>The encoding used for the input audio.</p>
    #
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to use with your transcription.</p>
    #            <p>This operation is not intended for use in conjunction with the
    #         <code>IdentifyLanguage</code> operation. If you're using <code>IdentifyLanguage</code>
    #         in your request and want to use one or more custom vocabularies with your transcription, use the
    #         <code>VocabularyNames</code> operation instead.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>A identifier for the transcription session. Use this parameter when you want to retry a
    #         session. If you don't provide a session ID, Amazon Transcribe will generate one for you and return it in
    #         the response.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_stream
    #   <p>PCM-encoded stream of audio blobs. The audio stream is encoded as an HTTP/2 data
    #         frame.</p>
    #
    #   @return [AudioStream]
    #
    # @!attribute vocabulary_filter_name
    #   <p>The name of the vocabulary filter you want to use with your transcription.</p>
    #            <p>This operation is not intended for use in conjunction with the
    #         <code>IdentifyLanguage</code> operation. If you're using <code>IdentifyLanguage</code>
    #         in your request and want to use one or more vocabulary filters with your transcription, use the
    #         <code>VocabularyFilterNames</code> operation instead.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_method
    #   <p>The manner in which you use your vocabulary filter to filter words in your transcript.
    #         <code>Remove</code> removes filtered words from your transcription results.
    #         <code>Mask</code> masks filtered words with a <code>***</code> in your transcription
    #         results. <code>Tag</code> keeps the filtered words in your transcription results and tags
    #         them. The tag appears as <code>VocabularyFilterMatch</code> equal to
    #         <code>True</code>.</p>
    #
    #   Enum, one of: ["remove", "mask", "tag"]
    #
    #   @return [String]
    #
    # @!attribute show_speaker_label
    #   <p>When <code>true</code>, enables speaker identification in your media stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_channel_identification
    #   <p>When <code>true</code>, instructs Amazon Transcribe to process each audio channel separately,
    #         then merges the transcription output of each channel into a single transcription.</p>
    #            <p>Amazon Transcribe also produces a transcription of each item. An item includes the start time, end
    #         time, and any alternative transcriptions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_channels
    #   <p>The number of channels that are in your audio stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_partial_results_stabilization
    #   <p>When <code>true</code>, instructs Amazon Transcribe to present transcription results that have the
    #         partial results stabilized. Normally, any word or phrase from one partial result can change in
    #         a subsequent partial result. With partial results stabilization enabled, only the last few
    #         words of one partial result can change in another partial result.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute partial_results_stability
    #   <p>You can use this field to set the stability level of the transcription results. A higher
    #         stability level means that the transcription results are less likely to change. Higher
    #         stability levels can come with lower overall transcription accuracy.</p>
    #
    #   Enum, one of: ["high", "medium", "low"]
    #
    #   @return [String]
    #
    # @!attribute content_identification_type
    #   <p>Set this field to PII to identify personally identifiable information (PII) in the transcription
    #         output. Content identification is performed only upon complete transcription of the audio
    #         segments.</p>
    #            <p>You can’t set both <code>ContentIdentificationType</code> and
    #         <code>ContentRedactionType</code> in the same request. If you set both, your request
    #         returns a <code>BadRequestException</code>.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute content_redaction_type
    #   <p>Set this field to PII to redact personally identifiable information (PII) in the transcription
    #         output. Content redaction is performed only upon complete transcription of the audio
    #         segments.</p>
    #            <p>You can’t set both <code>ContentRedactionType</code> and
    #         <code>ContentIdentificationType</code> in the same request. If you set both, your request
    #         returns a <code>BadRequestException</code>.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute pii_entity_types
    #   <p>List the PII entity types you want to identify or redact. In order to specify entity types,
    #         you must have either <code>ContentIdentificationType</code> or
    #         <code>ContentRedactionType</code> enabled.</p>
    #            <p>
    #               <code>PIIEntityTypes</code> must be comma-separated; the available values are:
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>,
    #         <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>,
    #         <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>,
    #         <code>SSN</code>, and <code>ALL</code>.</p>
    #            <p>
    #               <code>PiiEntityTypes</code> is an optional parameter with a default value of
    #         <code>ALL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute language_model_name
    #   <p>The name of the language model you want to use.</p>
    #
    #   @return [String]
    #
    # @!attribute identify_language
    #   <p>Optional. Set this value to <code>true</code> to enable language identification for
    #         your media stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute language_options
    #   <p>An object containing a list of languages that might be present in your audio.</p>
    #            <p>You must provide two or more language codes to help Amazon Transcribe identify the correct
    #         language of your media stream with the highest possible accuracy. You can only select one
    #         variant per language; for example, you can't include both <code>en-US</code> and
    #         <code>en-UK</code> in the same request.</p>
    #            <p>You can only use this parameter if you've set <code>IdentifyLanguage</code> to
    #         <code>true</code>in your request.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_language
    #   <p>Optional. From the subset of languages codes you provided for
    #         <code>LanguageOptions</code>, you can select one preferred language for your
    #         transcription.</p>
    #            <p>You can only use this parameter if you've set <code>IdentifyLanguage</code> to
    #         <code>true</code>in your request.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_names
    #   <p>The names of the custom vocabularies you want to use with your transcription.</p>
    #            <p>Note that if the custom vocabularies you specify are in languages that don't match the
    #         language identified in your media, your job fails.</p>
    #            <p>This operation is only intended for use in conjunction with the
    #         <code>IdentifyLanguage</code> operation. If you're not using <code>IdentifyLanguage</code>
    #         in your request and want to use a custom vocabulary with your transcription, use the
    #         <code>VocabularyName</code> operation instead.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_names
    #   <p>The names of the vocabulary filters you want to use with your transcription.</p>
    #            <p>Note that if the vocabulary filters you specify are in languages that don't match the
    #          language identified in your media, your job fails.</p>
    #            <p>This operation is only intended for use in conjunction with the
    #          <code>IdentifyLanguage</code> operation. If you're not using <code>IdentifyLanguage</code>
    #          in your request and want to use a vocabulary filter with your transcription, use the
    #          <code>VocabularyFilterName</code> operation instead.</p>
    #
    #   @return [String]
    #
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
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.show_speaker_label ||= false
        self.enable_channel_identification ||= false
        self.enable_partial_results_stabilization ||= false
        self.identify_language ||= false
      end
    end

    # @!attribute request_id
    #   <p>An identifier for the transcription.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the input audio stream.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate, in Hertz (Hz), for the input audio stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_encoding
    #   <p>The encoding used for the input audio stream.</p>
    #
    #   Enum, one of: ["pcm", "ogg-opus", "flac"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary used when processing the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>An identifier for a specific transcription session.</p>
    #
    #   @return [String]
    #
    # @!attribute transcript_result_stream
    #   <p>Represents the stream of transcription events from Amazon Transcribe to your application.</p>
    #
    #   @return [TranscriptResultStream]
    #
    # @!attribute vocabulary_filter_name
    #   <p>The name of the vocabulary filter used when processing the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_method
    #   <p>The vocabulary filtering method used when processing the stream.</p>
    #
    #   Enum, one of: ["remove", "mask", "tag"]
    #
    #   @return [String]
    #
    # @!attribute show_speaker_label
    #   <p>Shows whether speaker identification was enabled in the transcription.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_channel_identification
    #   <p>Shows whether channel identification was enabled in the stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_channels
    #   <p>The number of channels identified in the stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_partial_results_stabilization
    #   <p>Shows whether partial results stabilization was enabled in the transcription.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute partial_results_stability
    #   <p>If partial results stabilization has been enabled in the stream, shows the stability
    #         level.</p>
    #
    #   Enum, one of: ["high", "medium", "low"]
    #
    #   @return [String]
    #
    # @!attribute content_identification_type
    #   <p>Shows whether content identification was enabled in this stream.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute content_redaction_type
    #   <p>Shows whether content redaction was enabled in this stream.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you specified in your request.</p>
    #
    #   @return [String]
    #
    # @!attribute language_model_name
    #   <p>The name of the custom language model used in the transcription.</p>
    #
    #   @return [String]
    #
    # @!attribute identify_language
    #   <p>The language code of the language identified in your media stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute language_options
    #   <p>The language codes used in the identification of your media stream's predominant
    #         language.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_language
    #   <p>The preferred language you specified in your request.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_names
    #   <p>The name of the custom vocabulary used when processing the stream.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_names
    #   <p>The name of the vocabulary filter used when processing the stream.</p>
    #
    #   @return [String]
    #
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
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.show_speaker_label ||= false
        self.enable_channel_identification ||= false
        self.enable_partial_results_stabilization ||= false
        self.identify_language ||= false
      end
    end

    # <p>The transcription in a <a>TranscriptEvent</a>.</p>
    #
    # @!attribute results
    #   <p>
    #               <a>Result</a> objects that contain the results of transcribing a portion of the
    #         input audio stream. The array can be empty.</p>
    #
    #   @return [Array<Result>]
    #
    Transcript = ::Struct.new(
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of transcription results from the server to the client. It contains one
    #       or more segments of the transcription.</p>
    #
    # @!attribute transcript
    #   <p>The transcription of the audio stream. The transcription is composed of all of the items
    #         in the results list.</p>
    #
    #   @return [Transcript]
    #
    TranscriptEvent = ::Struct.new(
      :transcript,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the transcription result stream from Amazon Transcribe to your application.</p>
    #
    class TranscriptResultStream < Hearth::Union
      # <p>A portion of the transcription of the audio stream. Events are sent periodically from
      #       Amazon Transcribe to your application. The event can be a partial transcription of a section of the audio
      #       stream, or it can be the entire transcription of that portion of the audio stream. </p>
      #
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
      #
      class BadRequestException < TranscriptResultStream
        def to_h
          { bad_request_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::BadRequestException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Your client has exceeded one of the Amazon Transcribe limits, typically the limit on audio length.
      #       Break your audio stream into smaller chunks and try your request again.</p>
      #
      class LimitExceededException < TranscriptResultStream
        def to_h
          { limit_exceeded_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::LimitExceededException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A problem occurred while processing the audio. Amazon Transcribe terminated processing.</p>
      #
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
      #
      class ConflictException < TranscriptResultStream
        def to_h
          { conflict_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ConflictException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Service is currently unavailable. Try your request later.</p>
      #
      class ServiceUnavailableException < TranscriptResultStream
        def to_h
          { service_unavailable_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::ServiceUnavailableException #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < TranscriptResultStream
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::TranscribeStreaming::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      CONVERSATION = "CONVERSATION"

      # No documentation available.
      #
      DICTATION = "DICTATION"
    end

    # Includes enum constants for VocabularyFilterMethod
    #
    module VocabularyFilterMethod
      # No documentation available.
      #
      REMOVE = "remove"

      # No documentation available.
      #
      MASK = "mask"

      # No documentation available.
      #
      TAG = "tag"
    end

  end
end
