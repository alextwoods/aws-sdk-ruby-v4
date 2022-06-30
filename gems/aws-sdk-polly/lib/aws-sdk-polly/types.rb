# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Polly
  module Types

    # @!attribute name
    #   <p>The name of the lexicon to delete. Must be an existing lexicon in
    #         the region.</p>
    #
    #   @return [String]
    #
    DeleteLexiconInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLexiconOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         used by Amazon Polly when processing input text for speech synthesis. </p>
    #
    #   Enum, one of: ["standard", "neural"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p> The language identification tag (ISO 639 code for the language
    #         name-ISO 3166 country code) for filtering the list of voices returned. If
    #         you don't specify this optional parameter, all available voices are
    #         returned. </p>
    #
    #   Enum, one of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    #   @return [String]
    #
    # @!attribute include_additional_language_codes
    #   <p>Boolean value indicating whether to return any bilingual voices that
    #         use the specified language as an additional language. For instance, if you
    #         request all languages that use US English (es-US), and there is an Italian
    #         voice that speaks both Italian (it-IT) and US English, that voice will be
    #         included if you specify <code>yes</code> but not if you specify
    #           <code>no</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>An opaque pagination token returned from the previous
    #           <code>DescribeVoices</code> operation. If present, this indicates where
    #         to continue the listing.</p>
    #
    #   @return [String]
    #
    DescribeVoicesInput = ::Struct.new(
      :engine,
      :language_code,
      :include_additional_language_codes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_additional_language_codes ||= false
      end

    end

    # @!attribute voices
    #   <p>A list of voices with their properties.</p>
    #
    #   @return [Array<Voice>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of voices. <code>NextToken</code> is returned only if the response
    #         is truncated.</p>
    #
    #   @return [String]
    #
    DescribeVoicesOutput = ::Struct.new(
      :voices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Engine
    #
    module Engine
      # No documentation available.
      #
      STANDARD = "standard"

      # No documentation available.
      #
      NEURAL = "neural"
    end

    # <p>This engine is not compatible with the voice that you have designated.
    #       Choose a new voice that is compatible with the engine or change the engine
    #       and restart the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EngineNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Gender
    #
    module Gender
      # No documentation available.
      #
      Female = "Female"

      # No documentation available.
      #
      Male = "Male"
    end

    # @!attribute name
    #   <p>Name of the lexicon.</p>
    #
    #   @return [String]
    #
    GetLexiconInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lexicon
    #   <p>Lexicon object that provides name and the string content of the
    #         lexicon. </p>
    #
    #   @return [Lexicon]
    #
    # @!attribute lexicon_attributes
    #   <p>Metadata of the lexicon, including phonetic alphabetic used,
    #         language code, lexicon ARN, number of lexemes defined in the lexicon, and
    #         size of lexicon in bytes.</p>
    #
    #   @return [LexiconAttributes]
    #
    GetLexiconOutput = ::Struct.new(
      :lexicon,
      :lexicon_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
    #
    #   @return [String]
    #
    GetSpeechSynthesisTaskInput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute synthesis_task
    #   <p>SynthesisTask object that provides information from the requested
    #         task, including output format, creation time, task status, and so
    #         on.</p>
    #
    #   @return [SynthesisTask]
    #
    GetSpeechSynthesisTaskOutput = ::Struct.new(
      :synthesis_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's
    #       name is spelled correctly, and then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidLexiconException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The NextToken is invalid. Verify that it's spelled correctly, and
    #       then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided Amazon S3 bucket name is invalid. Please check your input
    #       with S3 bucket naming requirements and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidS3BucketException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided Amazon S3 key prefix is invalid. Please provide a valid
    #       S3 object key name.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidS3KeyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified sample rate is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSampleRateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided SNS topic ARN is invalid. Please provide a valid SNS
    #       topic ARN and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSnsTopicArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SSML you provided is invalid. Verify the SSML syntax, spelling
    #       of tags and values, and then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSsmlException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided Task ID is not valid. Please provide a valid Task ID and
    #       try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTaskIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LanguageCode
    #
    module LanguageCode
      # No documentation available.
      #
      arb = "arb"

      # No documentation available.
      #
      cmn_CN = "cmn-CN"

      # No documentation available.
      #
      cy_GB = "cy-GB"

      # No documentation available.
      #
      da_DK = "da-DK"

      # No documentation available.
      #
      de_DE = "de-DE"

      # No documentation available.
      #
      en_AU = "en-AU"

      # No documentation available.
      #
      en_GB = "en-GB"

      # No documentation available.
      #
      en_GB_WLS = "en-GB-WLS"

      # No documentation available.
      #
      en_IN = "en-IN"

      # No documentation available.
      #
      en_US = "en-US"

      # No documentation available.
      #
      es_ES = "es-ES"

      # No documentation available.
      #
      es_MX = "es-MX"

      # No documentation available.
      #
      es_US = "es-US"

      # No documentation available.
      #
      fr_CA = "fr-CA"

      # No documentation available.
      #
      fr_FR = "fr-FR"

      # No documentation available.
      #
      is_IS = "is-IS"

      # No documentation available.
      #
      it_IT = "it-IT"

      # No documentation available.
      #
      ja_JP = "ja-JP"

      # No documentation available.
      #
      hi_IN = "hi-IN"

      # No documentation available.
      #
      ko_KR = "ko-KR"

      # No documentation available.
      #
      nb_NO = "nb-NO"

      # No documentation available.
      #
      nl_NL = "nl-NL"

      # No documentation available.
      #
      pl_PL = "pl-PL"

      # No documentation available.
      #
      pt_BR = "pt-BR"

      # No documentation available.
      #
      pt_PT = "pt-PT"

      # No documentation available.
      #
      ro_RO = "ro-RO"

      # No documentation available.
      #
      ru_RU = "ru-RU"

      # No documentation available.
      #
      sv_SE = "sv-SE"

      # No documentation available.
      #
      tr_TR = "tr-TR"

      # No documentation available.
      #
      en_NZ = "en-NZ"

      # No documentation available.
      #
      en_ZA = "en-ZA"

      # No documentation available.
      #
      ca_ES = "ca-ES"

      # No documentation available.
      #
      de_AT = "de-AT"
    end

    # <p>The language specified is not currently supported by Amazon Polly in this
    #       capacity.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LanguageNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides lexicon name and lexicon content in string format. For
    #       more information, see <a href="https://www.w3.org/TR/pronunciation-lexicon/">Pronunciation Lexicon
    #         Specification (PLS) Version 1.0</a>.</p>
    #
    # @!attribute content
    #   <p>Lexicon content in string format. The content of a lexicon must be
    #         in PLS format.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the lexicon.</p>
    #
    #   @return [String]
    #
    Lexicon = ::Struct.new(
      :content,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Polly::Types::Lexicon "\
          "content=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}>"
      end
    end

    # <p>Contains metadata describing the lexicon such as the number of
    #       lexemes, language code, and so on. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    #
    # @!attribute alphabet
    #   <p>Phonetic alphabet used in the lexicon. Valid values are
    #           <code>ipa</code> and <code>x-sampa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>Language code that the lexicon applies to. A lexicon with a
    #         language code such as "en" would be applied to all English languages
    #         (en-GB, en-US, en-AUS, en-WLS, and so on.</p>
    #
    #   Enum, one of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Date lexicon was last modified (a timestamp value).</p>
    #
    #   @return [Time]
    #
    # @!attribute lexicon_arn
    #   <p>Amazon Resource Name (ARN) of the lexicon.</p>
    #
    #   @return [String]
    #
    # @!attribute lexemes_count
    #   <p>Number of lexemes in the lexicon.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size
    #   <p>Total size of the lexicon, in characters.</p>
    #
    #   @return [Integer]
    #
    LexiconAttributes = ::Struct.new(
      :alphabet,
      :language_code,
      :last_modified,
      :lexicon_arn,
      :lexemes_count,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.lexemes_count ||= 0
        self.size ||= 0
      end

    end

    # <p>Describes the content of the lexicon.</p>
    #
    # @!attribute name
    #   <p>Name of the lexicon.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>Provides lexicon metadata.</p>
    #
    #   @return [LexiconAttributes]
    #
    LexiconDescription = ::Struct.new(
      :name,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Polly can't find the specified lexicon. This could be caused by a
    #       lexicon that is missing, its name is misspelled or specifying a lexicon
    #       that is in a different region.</p>
    #          <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled
    #       correctly. Then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LexiconNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum size of the specified lexicon would be exceeded by this
    #       operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LexiconSizeExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token returned from previous
    #           <code>ListLexicons</code> operation. If present, indicates where to
    #         continue the list of lexicons.</p>
    #
    #   @return [String]
    #
    ListLexiconsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lexicons
    #   <p>A list of lexicon names and attributes.</p>
    #
    #   @return [Array<LexiconDescription>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of lexicons. <code>NextToken</code> is returned only if the
    #         response is truncated.</p>
    #
    #   @return [String]
    #
    ListLexiconsOutput = ::Struct.new(
      :lexicons,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of speech synthesis tasks returned in a List
    #         operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of speech synthesis tasks. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the speech synthesis tasks returned in a List
    #         operation</p>
    #
    #   Enum, one of: ["scheduled", "inProgress", "completed", "failed"]
    #
    #   @return [String]
    #
    ListSpeechSynthesisTasksInput = ::Struct.new(
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token returned from the previous List operation
    #         in this request. If present, this indicates where to continue the
    #         listing.</p>
    #
    #   @return [String]
    #
    # @!attribute synthesis_tasks
    #   <p>List of SynthesisTask objects that provides information from the
    #         specified task in the list request, including output format, creation
    #         time, task status, and so on.</p>
    #
    #   @return [Array<SynthesisTask>]
    #
    ListSpeechSynthesisTasksOutput = ::Struct.new(
      :next_token,
      :synthesis_tasks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Speech marks are not supported for the <code>OutputFormat</code>
    #       selected. Speech marks are only available for content in <code>json</code>
    #       format.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MarksNotSupportedForFormatException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum size of the lexeme would be exceeded by this
    #       operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MaxLexemeLengthExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of lexicons would be exceeded by this
    #       operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MaxLexiconsNumberExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OutputFormat
    #
    module OutputFormat
      # No documentation available.
      #
      JSON = "json"

      # No documentation available.
      #
      MP3 = "mp3"

      # No documentation available.
      #
      OGG_VORBIS = "ogg_vorbis"

      # No documentation available.
      #
      PCM = "pcm"
    end

    # @!attribute name
    #   <p>Name of the lexicon. The name must follow the regular express
    #         format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive
    #         alphanumeric string up to 20 characters long. </p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>Content of the PLS lexicon as string data.</p>
    #
    #   @return [String]
    #
    PutLexiconInput = ::Struct.new(
      :name,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Polly::Types::PutLexiconInput "\
          "name=#{name || 'nil'}, "\
          "content=\"[SENSITIVE]\">"
      end
    end

    PutLexiconOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unknown condition has caused a service failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SpeechMarkType
    #
    module SpeechMarkType
      # No documentation available.
      #
      SENTENCE = "sentence"

      # No documentation available.
      #
      SSML = "ssml"

      # No documentation available.
      #
      VISEME = "viseme"

      # No documentation available.
      #
      WORD = "word"
    end

    # <p>SSML speech marks are not supported for plain text-type
    #       input.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SsmlMarksNotSupportedForTextTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         for Amazon Polly to use when processing input text for speech synthesis. Using a
    #         voice that is not supported for the engine selected will result in an
    #         error.</p>
    #
    #   Enum, one of: ["standard", "neural"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>Optional language code for the Speech Synthesis request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #
    #   Enum, one of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    #   @return [String]
    #
    # @!attribute lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the service
    #         to apply during synthesis. Lexicons are applied only if the language of
    #         the lexicon is the same as the language of the voice. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_format
    #   <p>The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    #
    #   Enum, one of: ["json", "mp3", "ogg_vorbis", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute output_s3_bucket_name
    #   <p>Amazon S3 bucket name to which the output file will be saved.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The Amazon S3 key prefix for the output speech file.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>ARN for the SNS topic optionally used for providing status
    #         notification for a speech synthesis task.</p>
    #
    #   @return [String]
    #
    # @!attribute speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute text
    #   <p>The input text to synthesize. If you specify ssml as the TextType,
    #         follow the SSML format for the input text. </p>
    #
    #   @return [String]
    #
    # @!attribute text_type
    #   <p>Specifies whether the input text is plain text or SSML. The default
    #         value is plain text. </p>
    #
    #   Enum, one of: ["ssml", "text"]
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   <p>Voice ID to use for the synthesis. </p>
    #
    #   Enum, one of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #
    #   @return [String]
    #
    StartSpeechSynthesisTaskInput = ::Struct.new(
      :engine,
      :language_code,
      :lexicon_names,
      :output_format,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :sample_rate,
      :sns_topic_arn,
      :speech_mark_types,
      :text,
      :text_type,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute synthesis_task
    #   <p>SynthesisTask object that provides information and attributes about a
    #         newly submitted speech synthesis task.</p>
    #
    #   @return [SynthesisTask]
    #
    StartSpeechSynthesisTaskOutput = ::Struct.new(
      :synthesis_task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>SynthesisTask object that provides information about a speech
    #       synthesis task.</p>
    #
    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         for Amazon Polly to use when processing input text for speech synthesis. Using a
    #         voice that is not supported for the engine selected will result in an
    #         error.</p>
    #
    #   Enum, one of: ["standard", "neural"]
    #
    #   @return [String]
    #
    # @!attribute task_id
    #   <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_status
    #   <p>Current status of the individual speech synthesis task.</p>
    #
    #   Enum, one of: ["scheduled", "inProgress", "completed", "failed"]
    #
    #   @return [String]
    #
    # @!attribute task_status_reason
    #   <p>Reason for the current status of a specific speech synthesis task,
    #         including errors if the task has failed.</p>
    #
    #   @return [String]
    #
    # @!attribute output_uri
    #   <p>Pathway for the output speech file.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>Timestamp for the time the synthesis task was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute request_characters
    #   <p>Number of billable characters synthesized.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sns_topic_arn
    #   <p>ARN for the SNS topic optionally used for providing status
    #         notification for a speech synthesis task.</p>
    #
    #   @return [String]
    #
    # @!attribute lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the service
    #         to apply during synthesis. Lexicons are applied only if the language of
    #         the lexicon is the same as the language of the voice. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_format
    #   <p>The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    #
    #   Enum, one of: ["json", "mp3", "ogg_vorbis", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #
    #   @return [String]
    #
    # @!attribute speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute text_type
    #   <p>Specifies whether the input text is plain text or SSML. The default
    #         value is plain text. </p>
    #
    #   Enum, one of: ["ssml", "text"]
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   <p>Voice ID to use for the synthesis. </p>
    #
    #   Enum, one of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>Optional language code for a synthesis task. This is only necessary if
    #         using a bilingual voice, such as Aditi, which can be used for either
    #         Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #
    #   Enum, one of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    #   @return [String]
    #
    SynthesisTask = ::Struct.new(
      :engine,
      :task_id,
      :task_status,
      :task_status_reason,
      :output_uri,
      :creation_time,
      :request_characters,
      :sns_topic_arn,
      :lexicon_names,
      :output_format,
      :sample_rate,
      :speech_mark_types,
      :text_type,
      :voice_id,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.request_characters ||= 0
      end

    end

    # <p>The Speech Synthesis task with requested Task ID cannot be
    #       found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SynthesisTaskNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         for Amazon Polly to use when processing input text for speech synthesis. For
    #         information on Amazon Polly voices and which voices are available in
    #         standard-only, NTTS-only, and both standard and NTTS formats, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Available Voices</a>.</p>
    #            <p>
    #               <b>NTTS-only voices</b>
    #            </p>
    #            <p>When using NTTS-only voices such as Kevin (en-US), this parameter is
    #         required and must be set to <code>neural</code>. If the engine is not
    #         specified, or is set to <code>standard</code>, this will result in an
    #         error. </p>
    #            <p>Type: String</p>
    #            <p>Valid Values: <code>standard</code> | <code>neural</code>
    #            </p>
    #            <p>Required: Yes</p>
    #
    #            <p>
    #               <b>Standard voices</b>
    #            </p>
    #            <p>For standard voices, this is not required; the engine parameter
    #         defaults to <code>standard</code>. If the engine is not specified, or is
    #         set to <code>standard</code> and an NTTS-only voice is selected, this will
    #         result in an error. </p>
    #
    #   Enum, one of: ["standard", "neural"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>Optional language code for the Synthesize Speech request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #
    #   Enum, one of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    #   @return [String]
    #
    # @!attribute lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the
    #         service to apply during synthesis. Lexicons are applied only if the
    #         language of the lexicon is the same as the language of the voice. For
    #         information about storing lexicons, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_format
    #   <p> The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    #            <p>When pcm is used, the content returned is audio/pcm in a signed
    #         16-bit, 1 channel (mono), little-endian format. </p>
    #
    #   Enum, one of: ["json", "mp3", "ogg_vorbis", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #
    #   @return [String]
    #
    # @!attribute speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute text
    #   <p> Input text to synthesize. If you specify <code>ssml</code> as the
    #           <code>TextType</code>, follow the SSML format for the input text.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute text_type
    #   <p> Specifies whether the input text is plain text or SSML. The
    #         default value is plain text. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using
    #           SSML</a>.</p>
    #
    #   Enum, one of: ["ssml", "text"]
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   <p> Voice ID to use for the synthesis. You can get a list of available
    #         voice IDs by calling the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
    #
    #   Enum, one of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #
    #   @return [String]
    #
    SynthesizeSpeechInput = ::Struct.new(
      :engine,
      :language_code,
      :lexicon_names,
      :output_format,
      :sample_rate,
      :speech_mark_types,
      :text,
      :text_type,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute audio_stream
    #   <p> Stream containing the synthesized speech. </p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p> Specifies the type audio stream. This should reflect the
    #           <code>OutputFormat</code> parameter in your request. </p>
    #            <ul>
    #               <li>
    #                  <p> If you request <code>mp3</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/mpeg. </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>ogg_vorbis</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/ogg. </p>
    #               </li>
    #               <li>
    #                  <p> If you request <code>pcm</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>If you request <code>json</code> as the
    #               <code>OutputFormat</code>, the <code>ContentType</code> returned is
    #             application/x-json-stream.</p>
    #               </li>
    #            </ul>
    #            <p> </p>
    #
    #   @return [String]
    #
    # @!attribute request_characters
    #   <p>Number of characters synthesized.</p>
    #
    #   @return [Integer]
    #
    SynthesizeSpeechOutput = ::Struct.new(
      :audio_stream,
      :content_type,
      :request_characters,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.request_characters ||= 0
      end

    end

    # Includes enum constants for TaskStatus
    #
    module TaskStatus
      # No documentation available.
      #
      SCHEDULED = "scheduled"

      # No documentation available.
      #
      IN_PROGRESS = "inProgress"

      # No documentation available.
      #
      COMPLETED = "completed"

      # No documentation available.
      #
      FAILED = "failed"
    end

    # <p>The value of the "Text" parameter is longer than the accepted
    #       limits. For the <code>SynthesizeSpeech</code> API, the limit for input
    #       text is a maximum of 6000 characters total, of which no more than 3000 can
    #       be billed characters. For the <code>StartSpeechSynthesisTask</code> API,
    #       the maximum is 200,000 characters, of which no more than 100,000 can be
    #       billed characters. SSML tags are not counted as billed
    #       characters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TextLengthExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TextType
    #
    module TextType
      # No documentation available.
      #
      SSML = "ssml"

      # No documentation available.
      #
      TEXT = "text"
    end

    # <p>The alphabet specified by the lexicon is not a supported alphabet.
    #       Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedPlsAlphabetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The language specified in the lexicon is unsupported. For a list of
    #       supported languages, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedPlsLanguageException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Description of the voice.</p>
    #
    # @!attribute gender
    #   <p>Gender of the voice.</p>
    #
    #   Enum, one of: ["Female", "Male"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Amazon Polly assigned voice ID. This is the ID that you specify when
    #         calling the <code>SynthesizeSpeech</code> operation.</p>
    #
    #   Enum, one of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>Language code of the voice.</p>
    #
    #   Enum, one of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    #   @return [String]
    #
    # @!attribute language_name
    #   <p>Human readable name of the language in English.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the voice (for example, Salli, Kendra, etc.). This provides
    #         a human readable voice name that you might display in your
    #         application.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_language_codes
    #   <p>Additional codes for languages available for the specified voice in
    #         addition to its default language. </p>
    #            <p>For example, the default language for Aditi is Indian English (en-IN)
    #         because it was first used for that language. Since Aditi is bilingual and
    #         fluent in both Indian English and Hindi, this parameter would show the
    #         code <code>hi-IN</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_engines
    #   <p>Specifies which engines (<code>standard</code> or <code>neural</code>)
    #         that are supported by a given voice.</p>
    #
    #   @return [Array<String>]
    #
    Voice = ::Struct.new(
      :gender,
      :id,
      :language_code,
      :language_name,
      :name,
      :additional_language_codes,
      :supported_engines,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VoiceId
    #
    module VoiceId
      # No documentation available.
      #
      Aditi = "Aditi"

      # No documentation available.
      #
      Amy = "Amy"

      # No documentation available.
      #
      Astrid = "Astrid"

      # No documentation available.
      #
      Bianca = "Bianca"

      # No documentation available.
      #
      Brian = "Brian"

      # No documentation available.
      #
      Camila = "Camila"

      # No documentation available.
      #
      Carla = "Carla"

      # No documentation available.
      #
      Carmen = "Carmen"

      # No documentation available.
      #
      Celine = "Celine"

      # No documentation available.
      #
      Chantal = "Chantal"

      # No documentation available.
      #
      Conchita = "Conchita"

      # No documentation available.
      #
      Cristiano = "Cristiano"

      # No documentation available.
      #
      Dora = "Dora"

      # No documentation available.
      #
      Emma = "Emma"

      # No documentation available.
      #
      Enrique = "Enrique"

      # No documentation available.
      #
      Ewa = "Ewa"

      # No documentation available.
      #
      Filiz = "Filiz"

      # No documentation available.
      #
      Gabrielle = "Gabrielle"

      # No documentation available.
      #
      Geraint = "Geraint"

      # No documentation available.
      #
      Giorgio = "Giorgio"

      # No documentation available.
      #
      Gwyneth = "Gwyneth"

      # No documentation available.
      #
      Hans = "Hans"

      # No documentation available.
      #
      Ines = "Ines"

      # No documentation available.
      #
      Ivy = "Ivy"

      # No documentation available.
      #
      Jacek = "Jacek"

      # No documentation available.
      #
      Jan = "Jan"

      # No documentation available.
      #
      Joanna = "Joanna"

      # No documentation available.
      #
      Joey = "Joey"

      # No documentation available.
      #
      Justin = "Justin"

      # No documentation available.
      #
      Karl = "Karl"

      # No documentation available.
      #
      Kendra = "Kendra"

      # No documentation available.
      #
      Kevin = "Kevin"

      # No documentation available.
      #
      Kimberly = "Kimberly"

      # No documentation available.
      #
      Lea = "Lea"

      # No documentation available.
      #
      Liv = "Liv"

      # No documentation available.
      #
      Lotte = "Lotte"

      # No documentation available.
      #
      Lucia = "Lucia"

      # No documentation available.
      #
      Lupe = "Lupe"

      # No documentation available.
      #
      Mads = "Mads"

      # No documentation available.
      #
      Maja = "Maja"

      # No documentation available.
      #
      Marlene = "Marlene"

      # No documentation available.
      #
      Mathieu = "Mathieu"

      # No documentation available.
      #
      Matthew = "Matthew"

      # No documentation available.
      #
      Maxim = "Maxim"

      # No documentation available.
      #
      Mia = "Mia"

      # No documentation available.
      #
      Miguel = "Miguel"

      # No documentation available.
      #
      Mizuki = "Mizuki"

      # No documentation available.
      #
      Naja = "Naja"

      # No documentation available.
      #
      Nicole = "Nicole"

      # No documentation available.
      #
      Olivia = "Olivia"

      # No documentation available.
      #
      Penelope = "Penelope"

      # No documentation available.
      #
      Raveena = "Raveena"

      # No documentation available.
      #
      Ricardo = "Ricardo"

      # No documentation available.
      #
      Ruben = "Ruben"

      # No documentation available.
      #
      Russell = "Russell"

      # No documentation available.
      #
      Salli = "Salli"

      # No documentation available.
      #
      Seoyeon = "Seoyeon"

      # No documentation available.
      #
      Takumi = "Takumi"

      # No documentation available.
      #
      Tatyana = "Tatyana"

      # No documentation available.
      #
      Vicki = "Vicki"

      # No documentation available.
      #
      Vitoria = "Vitoria"

      # No documentation available.
      #
      Zeina = "Zeina"

      # No documentation available.
      #
      Zhiyu = "Zhiyu"

      # No documentation available.
      #
      Aria = "Aria"

      # No documentation available.
      #
      Ayanda = "Ayanda"

      # No documentation available.
      #
      Arlet = "Arlet"

      # No documentation available.
      #
      Hannah = "Hannah"
    end

  end
end
