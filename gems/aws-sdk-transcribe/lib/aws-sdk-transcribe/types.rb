# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transcribe
  module Types

    # <p>A time range, in milliseconds, between two points in your media file.</p>
    #         <p>You can use <code>StartTime</code> and <code>EndTime</code> to search a custom
    #             segment. For example, setting <code>StartTime</code> to 10000 and <code>EndTime</code>
    #             to 50000 only searches for your specified criteria in the audio contained between the 10,000
    #             millisecond mark and the 50,000 millisecond mark of your media file. You must use
    #             <code>StartTime</code> and <code>EndTime</code> as a set; that is, if you include one,
    #             you must include both.</p>
    #         <p>You can use also <code>First</code> to search from the start of the audio until the time
    #             you specify, or <code>Last</code> to search from the time you specify until the end of the
    #             audio. For example, setting <code>First</code> to 50000 only searches for your specified
    #             criteria in the audio contained between the start of the media file to the 50,000 millisecond
    #             mark. You can use <code>First</code> and <code>Last</code> independently of each
    #             other.</p>
    #         <p>If you prefer to use percentage instead of milliseconds, see
    #             .</p>
    #
    # @!attribute start_time
    #   <p>The time, in milliseconds, when Amazon Transcribe starts searching for the specified
    #               criteria in your audio. If you include <code>StartTime</code> in your request, you must also
    #               include <code>EndTime</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_time
    #   <p>The time, in milliseconds, when Amazon Transcribe stops searching for the specified criteria
    #               in your audio. If you include <code>EndTime</code> in your request, you must also include
    #               <code>StartTime</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute first
    #   <p>The time, in milliseconds, from the start of your media file until the value you specify in
    #               which Amazon Transcribe searches for your specified criteria.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last
    #   <p>The time, in milliseconds, from the value you specify until the end of your media file in
    #               which Amazon Transcribe searches for your specified criteria.</p>
    #
    #   @return [Integer]
    #
    AbsoluteTimeRange = ::Struct.new(
      :start_time,
      :end_time,
      :first,
      :last,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request didn't pass one or more validation tests. This can occur when the entity you're
    #             trying to delete doesn't exist or if it's in a non-terminal state (such as
    #             <code>IN PROGRESS</code>). See the exception message field for more information.</p>
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

    # Includes enum constants for BaseModelName
    #
    module BaseModelName
      # No documentation available.
      #
      NARROW_BAND = "NarrowBand"

      # No documentation available.
      #
      WIDE_BAND = "WideBand"
    end

    # Includes enum constants for CLMLanguageCode
    #
    module CLMLanguageCode
      # No documentation available.
      #
      EN_US = "en-US"

      # No documentation available.
      #
      HI_IN = "hi-IN"

      # No documentation available.
      #
      ES_US = "es-US"

      # No documentation available.
      #
      EN_GB = "en-GB"

      # No documentation available.
      #
      EN_AU = "en-AU"
    end

    # <p>Provides detailed information about a Call Analytics job.</p>
    #         <p>To view the job's status, refer to <code>CallAnalyticsJobStatus</code>. If the status is
    #             <code>COMPLETED</code>, the job is finished. You can find your completed transcript at
    #             the URI specified in <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #             <code>FailureReason</code> provides details on why your transcription job failed.</p>
    #         <p>If you enabled personally identifiable information (PII) redaction, the redacted transcript
    #             appears at the location specified in <code>RedactedTranscriptFileUri</code>.</p>
    #         <p>If you chose to redact the audio in your media file, you can find your redacted media file
    #             at the location specified in the <code>RedactedMediaFileUri</code> field of your
    #             response.</p>
    #
    # @!attribute call_analytics_job_name
    #   <p>The name of the Call Analytics job. Job names are case sensitive and must be unique
    #               within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute call_analytics_job_status
    #   <p>Provides the status of the specified Call Analytics job.</p>
    #           <p>If the status is <code>COMPLETED</code>, the job is finished and you can find the results
    #               at the location specified in <code>TranscriptFileUri</code> (or
    #               <code>RedactedTranscriptFileUri</code>, if you requested transcript redaction). If the status is
    #               <code>FAILED</code>, <code>FailureReason</code> provides details on why your transcription
    #               job failed.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code used to create your Call Analytics job. For a list of supported languages
    #               and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #           <p>If you don't know the language spoken in your media file, you can omit this field and let
    #               Amazon Transcribe automatically identify the language of your media. To improve the accuracy
    #               of language identification, you can include several language codes and Amazon Transcribe
    #               chooses the closest match for your transcription.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_format
    #   <p>The format of the input media file.</p>
    #
    #   Enum, one of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #
    #   @return [String]
    #
    # @!attribute media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    #   @return [Media]
    #
    # @!attribute transcript
    #   <p>Provides you with the Amazon S3 URI you can use to access your transcript.</p>
    #
    #   @return [Transcript]
    #
    # @!attribute start_time
    #   <p>The date and time the specified Call Analytics job began processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.789000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The date and time the specified Call Analytics job request was made.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time the specified Call Analytics job finished processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:33:13.922000-07:00</code> represents a transcription job
    #               that started processing at 12:33 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>CallAnalyticsJobStatus</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the Call Analytics job request
    #               failed.</p>
    #           <p>The <code>FailureReason</code> field contains one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Unsupported media format</code>.</p>
    #                   <p>The media format specified in <code>MediaFormat</code> isn't valid. Refer to
    #                       <b>MediaFormat</b> for a list of supported formats.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>The media format provided does not match the detected media
    #                       format</code>.</p>
    #                   <p>The media format specified in <code>MediaFormat</code> doesn't match the
    #                       format of the input file. Check the media format of your media file and correct the
    #                       specified value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid sample rate for audio file</code>.</p>
    #                   <p>The sample rate specified in <code>MediaSampleRateHertz</code> isn't valid.
    #                       The sample rate must be between 8,000 and 48,000 Hertz.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>The sample rate provided does not match the detected sample
    #                       rate</code>.</p>
    #                   <p>The sample rate specified in <code>MediaSampleRateHertz</code> doesn't
    #                       match the sample rate detected in your input media file. Check the sample rate of
    #                       your media file and correct the specified value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid file size: file size too large</code>.</p>
    #                   <p>The size of your media file is larger than what Amazon Transcribe can process.
    #                       For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html limits">Guidelines and
    #                           quotas</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid number of channels: number of channels too large</code>.</p>
    #                   <p>Your audio contains more channels than Amazon Transcribe is able to process.
    #                       For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html limits">Guidelines and
    #                           quotas</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files. If the role you specify doesn’t
    #               have the appropriate permissions to access the specified Amazon S3 location, your request
    #               fails.</p>
    #           <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html identifiers-arns">IAM ARNs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute identified_language_score
    #   <p>The confidence score associated with the language identified in your media file.</p>
    #           <p>Confidence scores are values between 0 and 1; a larger value indicates a higher
    #               probability that the identified language correctly matches the language spoken in your
    #               media.</p>
    #
    #   @return [Float]
    #
    # @!attribute settings
    #   <p>Allows additional optional settings in your
    #               request, including content redaction; allows you to apply custom language models, vocabulary
    #               filters, and custom vocabularies to your Call Analytics job.</p>
    #
    #   @return [CallAnalyticsJobSettings]
    #
    # @!attribute channel_definitions
    #   <p>Allows you to specify which speaker is on which channel in your Call Analytics job request.
    #               For example, if your agent is the first participant to speak, you would set
    #               <code>ChannelId</code> to <code>0</code> (to indicate the first channel) and
    #               <code>ParticipantRole</code> to <code>AGENT</code> (to indicate that it's the agent
    #               speaking).</p>
    #
    #   @return [Array<ChannelDefinition>]
    #
    CallAnalyticsJob = ::Struct.new(
      :call_analytics_job_name,
      :call_analytics_job_status,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :transcript,
      :start_time,
      :creation_time,
      :completion_time,
      :failure_reason,
      :data_access_role_arn,
      :identified_language_score,
      :settings,
      :channel_definitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides additional optional settings for your
    #             request, including content redaction, automatic language identification; allows you to apply
    #             custom language models, vocabulary filters, and custom vocabularies.</p>
    #
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to include in your Call Analytics
    #               transcription request. Vocabulary names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to include in your Call Analytics
    #               transcription request. Vocabulary filter names are case sensitive.</p>
    #           <p>Note that if you include <code>VocabularyFilterName</code> in your request, you must
    #               also include <code>VocabularyFilterMethod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #           <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #           <p>To delete words, choose <code>remove</code>.</p>
    #           <p>To flag words without changing them, choose <code>tag</code>.</p>
    #
    #   Enum, one of: ["remove", "mask", "tag"]
    #
    #   @return [String]
    #
    # @!attribute language_model_name
    #   <p>The name of the custom language model you want to use when processing your
    #               Call Analytics job. Note that language model names are case sensitive.</p>
    #           <p>The language of the specified language model must match the language code you specify
    #               in your transcription request. If the languages don't match, the language model isn't applied.
    #               There are no errors or warnings associated with a language mismatch.</p>
    #
    #   @return [String]
    #
    # @!attribute content_redaction
    #   <p>Allows you to redact or flag specified personally identifiable information (PII) in your transcript. If
    #               you use <code>ContentRedaction</code>, you must also include the sub-parameters:
    #               <code>PiiEntityTypes</code>, <code>RedactionOutput</code>, and
    #               <code>RedactionType</code>.</p>
    #
    #   @return [ContentRedaction]
    #
    # @!attribute language_options
    #   <p>You can specify two or more language codes that represent the languages you think may
    #               be present in your media; including more than five is not recommended. If you're unsure what
    #               languages are present, do not include this parameter.</p>
    #           <p>Including language options can improve the accuracy of language identification.</p>
    #           <p>For a list of languages supported with Call Analytics, refer to the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute language_id_settings
    #   <p>If using automatic language identification (<code>IdentifyLanguage</code>) in your request
    #               and you want to apply a custom language model, a custom vocabulary, or a custom vocabulary
    #               filter, include <code>LanguageIdSettings</code> with the relevant sub-parameters
    #               (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>You can specify two or more language codes that represent the languages you think may
    #               be present in your media; including more than five is not recommended. Each language code you
    #               include can have an associated custom language model, custom vocabulary, and custom
    #               vocabulary filter. The languages you specify must match the languages of the specified custom
    #               language models, custom vocabularies, and custom vocabulary filters.</p>
    #           <p>To include language options using <code>IdentifyLanguage</code>
    #               <b>without</b> including a custom language model, a custom
    #               vocabulary, or a custom vocabulary filter, use <code>LanguageOptions</code> instead of
    #               <code>LanguageIdSettings</code>. Including language options can improve the accuracy of
    #               automatic language identification.</p>
    #           <p>If you want to include a custom language model with your request but
    #               <b>do not</b> want to use automatic language identification,
    #               use instead the <code></code> parameter with the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use instead the <code></code>
    #               parameter with the <code>VocabularyName</code> or
    #               <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #
    #   @return [Hash<String, LanguageIdSettings>]
    #
    CallAnalyticsJobSettings = ::Struct.new(
      :vocabulary_name,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :content_redaction,
      :language_options,
      :language_id_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CallAnalyticsJobStatus
    #
    module CallAnalyticsJobStatus
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>Provides detailed information about a specific Call Analytics job.</p>
    #
    # @!attribute call_analytics_job_name
    #   <p>The name of the Call Analytics job. Job names are case sensitive and must be unique
    #               within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time the specified Call Analytics job request was made.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The date and time your Call Analytics job began processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.789000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time the specified Call Analytics job finished processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:33:13.922000-07:00</code> represents a transcription job
    #               that started processing at 12:33 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute language_code
    #   <p>The language code used to create your Call Analytics transcription.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute call_analytics_job_status
    #   <p>Provides the status of your Call Analytics job.</p>
    #           <p>If the status is <code>COMPLETED</code>, the job is finished and you can find the results
    #               at the location specified in <code>TranscriptFileUri</code> (or
    #               <code>RedactedTranscriptFileUri</code>, if you requested transcript redaction). If the status is
    #               <code>FAILED</code>, <code>FailureReason</code> provides details on why your transcription
    #               job failed.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>CallAnalyticsJobStatus</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the Call Analytics job
    #               failed. See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    CallAnalyticsJobSummary = ::Struct.new(
      :call_analytics_job_name,
      :creation_time,
      :start_time,
      :completion_time,
      :language_code,
      :call_analytics_job_status,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides you with the properties of the Call Analytics category you specified in your
    #             request. This includes the list of rules that define the specified category.</p>
    #
    # @!attribute category_name
    #   <p>The name of the Call Analytics category. Category names are case sensitive and must be
    #               unique within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The rules used to define a Call Analytics category. Each category can have between 1 and 20
    #               rules.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute create_time
    #   <p>The date and time the specified Call Analytics category was created.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The date and time the specified Call Analytics category was last updated.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-05T12:45:32.691000-07:00</code> represents 12:45 PM UTC-7
    #               on May 5, 2022.</p>
    #
    #   @return [Time]
    #
    CategoryProperties = ::Struct.new(
      :category_name,
      :rules,
      :create_time,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows you to specify which speaker is on which channel. For example, if your agent is the
    #             first participant to speak, you would set <code>ChannelId</code> to <code>0</code> (to
    #             indicate the first channel) and <code>ParticipantRole</code> to <code>AGENT</code> (to
    #             indicate that it's the agent speaking).</p>
    #
    # @!attribute channel_id
    #   <p>Specify the audio channel you want to define.</p>
    #
    #   @return [Integer]
    #
    # @!attribute participant_role
    #   <p>Specify the speaker you want to define. Omitting this parameter is equivalent to specifying
    #               both participants.</p>
    #
    #   Enum, one of: ["AGENT", "CUSTOMER"]
    #
    #   @return [String]
    #
    ChannelDefinition = ::Struct.new(
      :channel_id,
      :participant_role,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.channel_id ||= 0
      end
    end

    # <p>A resource already exists with this name. Resource names must be unique within an
    #             Amazon Web Services account.</p>
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

    # <p>Allows you to redact or flag specified personally identifiable information (PII) in your transcript. If
    #             you use <code>ContentRedaction</code>, you must also include the sub-parameters:
    #             <code>PiiEntityTypes</code>, <code>RedactionOutput</code>, and
    #             <code>RedactionType</code>.</p>
    #
    # @!attribute redaction_type
    #   <p>Specify the category of information you want to redact; <code>PII</code> (personally
    #               identifiable information) is the only valid value. You can use <code>PiiEntityTypes</code> to
    #               choose which types of PII you want to redact.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute redaction_output
    #   <p>Specify if you want only a redacted transcript, or if you want a redacted and an unredacted
    #               transcript.</p>
    #           <p>When you choose <code>redacted</code> Amazon Transcribe creates only a redacted
    #               transcript.</p>
    #           <p>When you choose <code>redacted_and_unredacted</code> Amazon Transcribe creates
    #               a redacted and an unredacted transcript (as two separate files).</p>
    #
    #   Enum, one of: ["redacted", "redacted_and_unredacted"]
    #
    #   @return [String]
    #
    # @!attribute pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your
    #               transcript. You can include as many types as you'd like, or you can select
    #               <code>ALL</code>.</p>
    #
    #   @return [Array<String>]
    #
    ContentRedaction = ::Struct.new(
      :redaction_type,
      :redaction_output,
      :pii_entity_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_name
    #   <p>A unique name, chosen by you, for your Call Analytics category. It's helpful to use a detailed
    #               naming system that will make sense to you in the future. For example, it's better to use
    #               <code>sentiment-positive-last30seconds</code> for a category over a generic name like
    #               <code>test-category</code>.</p>
    #           <p>Category names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>Rules define a Call Analytics category. When creating a new Call Analytics category, you must
    #               create between 1 and 20 rules for that category. For each rule, you specify a filter you want
    #               applied to the attributes of a call. For example, you can choose a sentiment filter that detects if a
    #               customer's sentiment was positive during the last 30 seconds of the call.</p>
    #
    #   @return [Array<Rule>]
    #
    CreateCallAnalyticsCategoryInput = ::Struct.new(
      :category_name,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_properties
    #   <p>Provides you with the properties of your new category, including its associated rules.</p>
    #
    #   @return [CategoryProperties]
    #
    CreateCallAnalyticsCategoryOutput = ::Struct.new(
      :category_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute language_code
    #   <p>The language code that represents the language of your model. Each language model must
    #               contain terms in only one language, and the language you select for your model must match the
    #               language of your training and tuning data.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table. Note that U.S. English (<code>en-US</code>) is the only language
    #               supported with Amazon Transcribe Medical.</p>
    #           <p>A custom language model can only be used to transcribe files in the same language as the
    #               model. For example, if you create a language model using US English (<code>en-US</code>), you
    #               can only apply this model to files that contain English audio.</p>
    #
    #   Enum, one of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #
    #   @return [String]
    #
    # @!attribute base_model_name
    #   <p>The Amazon Transcribe standard language model, or base model, used to create your custom
    #               language model. Amazon Transcribe offers two options for base models: Wideband and
    #               Narrowband.</p>
    #           <p>If the audio you want to transcribe has a sample rate of 16,000 Hz or greater, choose
    #               <code>WideBand</code>. To transcribe audio with a sample rate less than 16,000 Hz, choose
    #               <code>NarrowBand</code>.</p>
    #
    #   Enum, one of: ["NarrowBand", "WideBand"]
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>A unique name, chosen by you, for your custom language model.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new language model with the same name
    #               as an existing language model, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>Contains the Amazon S3 location of the training data you want to use to create a new
    #               custom language model, and permissions to access this location.</p>
    #           <p>When using <code>InputDataConfig</code>, you must include these sub-parameters:
    #               <code>S3Uri</code>, which is the Amazon S3 location of your training data, and
    #               <code>DataAccessRoleArn</code>, which is the Amazon Resource Name (ARN) of the role that
    #               has permission to access your specified Amazon S3 location. You can optionally include
    #               <code>TuningDataS3Uri</code>, which is the Amazon S3 location of your tuning data. If
    #               you specify different Amazon S3 locations for training and tuning data, the ARN you use
    #               must have permissions to access both locations.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom language
    #               model at the time you create this new model.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateLanguageModelInput = ::Struct.new(
      :language_code,
      :base_model_name,
      :model_name,
      :input_data_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute language_code
    #   <p>The language code you selected for your custom language model.</p>
    #
    #   Enum, one of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #
    #   @return [String]
    #
    # @!attribute base_model_name
    #   <p>The Amazon Transcribe standard language model, or base model, you specified when creating
    #               your custom language model.</p>
    #
    #   Enum, one of: ["NarrowBand", "WideBand"]
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>The name of your custom language model.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>Lists your data access role ARN (Amazon Resource Name) and the Amazon S3
    #               locations you provided for your training (<code>S3Uri</code>) and tuning
    #               (<code>TuningDataS3Uri</code>) data.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute model_status
    #   <p>The status of your custom language model. When the status displays as
    #               <code>COMPLETED</code>, your model is ready to use.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    CreateLanguageModelOutput = ::Struct.new(
      :language_code,
      :base_model_name,
      :model_name,
      :input_data_config,
      :model_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>A unique name, chosen by you, for your new custom medical vocabulary.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new medical vocabulary with the same name
    #               as an existing medical vocabulary, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language of the entries in your custom
    #               vocabulary. US English (<code>en-US</code>) is the only language supported with
    #               Amazon Transcribe Medical.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_file_uri
    #   <p>The Amazon S3 location (URI) of the text file that contains your custom medical
    #               vocabulary. The URI must be in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new medical
    #               vocabulary at the time you create this new vocabulary.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateMedicalVocabularyInput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_file_uri,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name you chose for your custom medical vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your medical vocabulary. US English
    #               (<code>en-US</code>) is the only language supported with Amazon Transcribe Medical.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom medical vocabulary. If the state is
    #               <code>READY</code>, you can use the vocabulary in a
    #               <code>StartMedicalTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time you created your custom medical vocabulary.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>VocabularyState</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the medical transcription job
    #               request failed. See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    CreateMedicalVocabularyOutput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>A unique name, chosen by you, for your new custom vocabulary filter.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new vocabulary filter with the same name
    #               as an existing vocabulary filter, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language of the entries in your vocabulary
    #               filter. Each vocabulary filter must contain terms in only one language.</p>
    #           <p>A vocabulary filter can only be used to transcribe files in the same language as the
    #               filter. For example, if you create a vocabulary filter using US English (<code>en-US</code>), you
    #               can only apply this filter to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute words
    #   <p>Use this parameter if you want to create your vocabulary filter by including all desired terms,
    #               as comma-separated values, within your request. The other option for creating your vocabulary
    #               filter is to save your entries in a text file and upload them to an Amazon S3 bucket, then
    #               specify the location of your file using the <code>VocabularyFilterFileUri</code>
    #               parameter.</p>
    #           <p>Note that if you include <code>Words</code> in your request, you cannot use
    #               <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vocabulary_filter_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary filter
    #               terms. The URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you
    #               cannot use <code>Words</code>; you must choose one or the other.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               vocabulary filter at the time you create this new filter.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateVocabularyFilterInput = ::Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :words,
      :vocabulary_filter_file_uri,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>The name you chose for your custom vocabulary filter.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your vocabulary filter.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time you created your vocabulary filter.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    CreateVocabularyFilterOutput = ::Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>A unique name, chosen by you, for your new custom vocabulary.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new vocabulary with the same name as an
    #               existing vocabulary, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language of the entries in your custom
    #               vocabulary. Each vocabulary must contain terms in only one language.</p>
    #           <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               vocabulary. For example, if you create a vocabulary using US English (<code>en-US</code>),
    #               you can only apply this vocabulary to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute phrases
    #   <p>Use this parameter if you want to create your vocabulary by including all desired terms, as
    #               comma-separated values, within your request. The other option for creating your vocabulary is to
    #               save your entries in a text file and upload them to an Amazon S3 bucket, then specify
    #               the location of your file using the <code>VocabularyFileUri</code> parameter.</p>
    #           <p>Note that if you include <code>Phrases</code> in your request, you cannot use
    #               <code>VocabularyFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary. The
    #               URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFileUri</code> in your request, you
    #               cannot use the <code>Phrases</code> flag; you must choose one or the other.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               vocabulary at the time you create this new vocabulary.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateVocabularyInput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name you chose for your custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your custom vocabulary.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom vocabulary. If the state is <code>READY</code>, you
    #               can use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time you created your custom vocabulary.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>VocabularyState</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the vocabulary request
    #               failed. See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    CreateVocabularyOutput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_name
    #   <p>The name of the Call Analytics category you want to delete. Category names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteCallAnalyticsCategoryInput = ::Struct.new(
      :category_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCallAnalyticsCategoryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute call_analytics_job_name
    #   <p>The name of the Call Analytics job you want to delete. Job names are case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteCallAnalyticsJobInput = ::Struct.new(
      :call_analytics_job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCallAnalyticsJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name of the custom language model you want to delete. Model names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteLanguageModelInput = ::Struct.new(
      :model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLanguageModelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute medical_transcription_job_name
    #   <p>The name of the medical transcription job you want to delete. Job names are case
    #               sensitive.</p>
    #
    #   @return [String]
    #
    DeleteMedicalTranscriptionJobInput = ::Struct.new(
      :medical_transcription_job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMedicalTranscriptionJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom medical vocabulary you want to delete. Vocabulary names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteMedicalVocabularyInput = ::Struct.new(
      :vocabulary_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMedicalVocabularyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transcription_job_name
    #   <p>The name of the transcription job you want to delete. Job names are case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteTranscriptionJobInput = ::Struct.new(
      :transcription_job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTranscriptionJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to delete. Vocabulary filter names
    #               are case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteVocabularyFilterInput = ::Struct.new(
      :vocabulary_filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVocabularyFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to delete. Vocabulary names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    DeleteVocabularyInput = ::Struct.new(
      :vocabulary_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVocabularyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name of the custom language model you want information about. Model names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    DescribeLanguageModelInput = ::Struct.new(
      :model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute language_model
    #   <p>Provides information about the specified custom language model.</p>
    #           <p>This parameter also shows if the base language model you used to create your custom
    #               language model has been updated. If Amazon Transcribe has updated the base model, you can
    #               create a new custom language model using the updated base model.</p>
    #           <p>If you tried to create a new custom language model and the request wasn't successful,
    #               you can use this <code>DescribeLanguageModel</code> to help identify the reason for this
    #               failure.</p>
    #
    #   @return [LanguageModel]
    #
    DescribeLanguageModelOutput = ::Struct.new(
      :language_model,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_name
    #   <p>The name of the Call Analytics category you want information about. Category names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    GetCallAnalyticsCategoryInput = ::Struct.new(
      :category_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_properties
    #   <p>Provides you with the properties of the Call Analytics category you specified in your
    #               <code>GetCallAnalyticsCategory</code> request.</p>
    #
    #   @return [CategoryProperties]
    #
    GetCallAnalyticsCategoryOutput = ::Struct.new(
      :category_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute call_analytics_job_name
    #   <p>The name of the Call Analytics job you want information about. Job names are case
    #               sensitive.</p>
    #
    #   @return [String]
    #
    GetCallAnalyticsJobInput = ::Struct.new(
      :call_analytics_job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute call_analytics_job
    #   <p>Provides detailed information about the specified Call Analytics job, including job status
    #               and, if applicable, failure reason.</p>
    #
    #   @return [CallAnalyticsJob]
    #
    GetCallAnalyticsJobOutput = ::Struct.new(
      :call_analytics_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute medical_transcription_job_name
    #   <p>The name of the medical transcription job you want information about. Job names are case
    #               sensitive.</p>
    #
    #   @return [String]
    #
    GetMedicalTranscriptionJobInput = ::Struct.new(
      :medical_transcription_job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute medical_transcription_job
    #   <p>Provides detailed information about the specified medical transcription job, including job
    #               status and, if applicable, failure reason.</p>
    #
    #   @return [MedicalTranscriptionJob]
    #
    GetMedicalTranscriptionJobOutput = ::Struct.new(
      :medical_transcription_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom medical vocabulary you want information about. Vocabulary names
    #               are case sensitive.</p>
    #
    #   @return [String]
    #
    GetMedicalVocabularyInput = ::Struct.new(
      :vocabulary_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom medical vocabulary you requested information about.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your medical vocabulary. US English
    #               (<code>en-US</code>) is the only language supported with Amazon Transcribe Medical.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom medical vocabulary. If the state is
    #               <code>READY</code>, you can use the vocabulary in a
    #               <code>StartMedicalTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified custom medical vocabulary was last modified.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>VocabularyState</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the medical vocabulary
    #               request failed. See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute download_uri
    #   <p>The S3 location where the specified medical vocabulary is stored; use this URI to view or
    #               download the vocabulary.</p>
    #
    #   @return [String]
    #
    GetMedicalVocabularyOutput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason,
      :download_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transcription_job_name
    #   <p>The name of the transcription job you want information about. Job names are case
    #               sensitive.</p>
    #
    #   @return [String]
    #
    GetTranscriptionJobInput = ::Struct.new(
      :transcription_job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transcription_job
    #   <p>Provides detailed information about the specified transcription job, including job status
    #               and, if applicable, failure reason.</p>
    #
    #   @return [TranscriptionJob]
    #
    GetTranscriptionJobOutput = ::Struct.new(
      :transcription_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want information about. Vocabulary filter
    #               names are case sensitive.</p>
    #
    #   @return [String]
    #
    GetVocabularyFilterInput = ::Struct.new(
      :vocabulary_filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you requested information about.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your vocabulary filter.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified vocabulary filter was last modified.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute download_uri
    #   <p>The Amazon S3 location where the vocabulary filter is stored; use this URI to view or
    #               download the vocabulary filter.</p>
    #
    #   @return [String]
    #
    GetVocabularyFilterOutput = ::Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time,
      :download_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want information about. Vocabulary names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    GetVocabularyInput = ::Struct.new(
      :vocabulary_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you requested information about.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your custom vocabulary.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom vocabulary. If the state is <code>READY</code>, you
    #               can use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified vocabulary was last modified.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>VocabularyState</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the vocabulary request failed.
    #               See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute download_uri
    #   <p>The S3 location where the vocabulary is stored; use this URI to view or download the
    #               vocabulary.</p>
    #
    #   @return [String]
    #
    GetVocabularyOutput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason,
      :download_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the Amazon S3 location of the training data you want to use to create a new
    #             custom language model, and permissions to access this location.</p>
    #         <p>When using <code>InputDataConfig</code>, you must include these sub-parameters:
    #             <code>S3Uri</code> and <code>DataAccessRoleArn</code>. You can optionally include
    #             <code>TuningDataS3Uri</code>.</p>
    #
    # @!attribute s3_uri
    #   <p>The Amazon S3 location (URI) of the text files you want to use to train your custom
    #               language model.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-model-training-data/</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tuning_data_s3_uri
    #   <p>The Amazon S3 location (URI) of the text files you want to use to tune your custom
    #               language model.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-model-tuning-data/</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files. If the role you specify doesn’t
    #               have the appropriate permissions to access the specified Amazon S3 location, your request
    #               fails.</p>
    #           <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html identifiers-arns">IAM ARNs</a>.</p>
    #
    #   @return [String]
    #
    InputDataConfig = ::Struct.new(
      :s3_uri,
      :tuning_data_s3_uri,
      :data_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an internal error. Check the error message, correct the issue, and try your
    #             request again.</p>
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

    # <p>Flag the presence or absence of interruptions in your Call Analytics transcription output.</p>
    #         <p>Rules using <code>InterruptionFilter</code> are designed to match:</p>
    #         <ul>
    #             <li>
    #                 <p>Instances where an agent interrupts a customer</p>
    #             </li>
    #             <li>
    #                 <p>Instances where a customer interrupts an agent</p>
    #             </li>
    #             <li>
    #                 <p>Either participant interrupting the other</p>
    #             </li>
    #             <li>
    #                 <p>A lack of interruptions</p>
    #             </li>
    #          </ul>
    #                 <p>See <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules">Rule
    #             criteria</a> for usage examples.</p>
    #
    # @!attribute threshold
    #   <p>Specify the duration of the interruptions in milliseconds. For example, you can flag speech that
    #               contains more than 10000 milliseconds of interruptions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute participant_role
    #   <p>Specify the interrupter you want to flag. Omitting this parameter is equivalent to specifying
    #               both participants.</p>
    #
    #   Enum, one of: ["AGENT", "CUSTOMER"]
    #
    #   @return [String]
    #
    # @!attribute absolute_time_range
    #   <p>Allows you to specify a time range (in milliseconds) in your audio, during which you want
    #               to search for an interruption. See  for more
    #               detail.</p>
    #
    #   @return [AbsoluteTimeRange]
    #
    # @!attribute relative_time_range
    #   <p>Allows you to specify a time range (in percentage) in your media file, during which you
    #               want to search for an interruption. See  for more
    #               detail.</p>
    #
    #   @return [RelativeTimeRange]
    #
    # @!attribute negate
    #   <p>Set to <code>TRUE</code> to flag speech that does not contain interruptions. Set to
    #               <code>FALSE</code> to flag speech that contains interruptions.</p>
    #
    #   @return [Boolean]
    #
    InterruptionFilter = ::Struct.new(
      :threshold,
      :participant_role,
      :absolute_time_range,
      :relative_time_range,
      :negate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows you to control how your transcription job is processed. Currently, the only
    #             <code>JobExecutionSettings</code> modification you can choose is enabling job queueing using
    #             the <code>AllowDeferredExecution</code> sub-parameter.</p>
    #         <p>If you include <code>JobExecutionSettings</code> in your request, you must also include
    #             the sub-parameters: <code>AllowDeferredExecution</code> and
    #             <code>DataAccessRoleArn</code>.</p>
    #
    # @!attribute allow_deferred_execution
    #   <p>Allows you to enable job queuing when your concurrent request limit is exceeded. When
    #               <code>AllowDeferredExecution</code> is set to <code>true</code>, transcription job requests are
    #               placed in a queue until the number of jobs falls below the concurrent request limit. If
    #               <code>AllowDeferredExecution</code> is set to <code>false</code> and the number of transcription
    #               job requests exceed the concurrent request limit, you get a <code>LimitExceededException</code>
    #               error.</p>
    #           <p>Note that job queuing is enabled by default for Call Analytics jobs.</p>
    #           <p>If you include <code>AllowDeferredExecution</code> in your request, you must also include
    #               <code>DataAccessRoleArn</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files. If the role you specify doesn’t
    #               have the appropriate permissions to access the specified Amazon S3 location, your request
    #               fails.</p>
    #           <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html identifiers-arns">IAM ARNs</a>.</p>
    #           <p>Note that if you include <code>DataAccessRoleArn</code> in your request, you must also include
    #               <code>AllowDeferredExecution</code>.</p>
    #
    #   @return [String]
    #
    JobExecutionSettings = ::Struct.new(
      :allow_deferred_execution,
      :data_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LanguageCode
    #
    module LanguageCode
      # No documentation available.
      #
      AF_ZA = "af-ZA"

      # No documentation available.
      #
      AR_AE = "ar-AE"

      # No documentation available.
      #
      AR_SA = "ar-SA"

      # No documentation available.
      #
      CY_GB = "cy-GB"

      # No documentation available.
      #
      DA_DK = "da-DK"

      # No documentation available.
      #
      DE_CH = "de-CH"

      # No documentation available.
      #
      DE_DE = "de-DE"

      # No documentation available.
      #
      EN_AB = "en-AB"

      # No documentation available.
      #
      EN_AU = "en-AU"

      # No documentation available.
      #
      EN_GB = "en-GB"

      # No documentation available.
      #
      EN_IE = "en-IE"

      # No documentation available.
      #
      EN_IN = "en-IN"

      # No documentation available.
      #
      EN_US = "en-US"

      # No documentation available.
      #
      EN_WL = "en-WL"

      # No documentation available.
      #
      ES_ES = "es-ES"

      # No documentation available.
      #
      ES_US = "es-US"

      # No documentation available.
      #
      FA_IR = "fa-IR"

      # No documentation available.
      #
      FR_CA = "fr-CA"

      # No documentation available.
      #
      FR_FR = "fr-FR"

      # No documentation available.
      #
      GA_IE = "ga-IE"

      # No documentation available.
      #
      GD_GB = "gd-GB"

      # No documentation available.
      #
      HE_IL = "he-IL"

      # No documentation available.
      #
      HI_IN = "hi-IN"

      # No documentation available.
      #
      ID_ID = "id-ID"

      # No documentation available.
      #
      IT_IT = "it-IT"

      # No documentation available.
      #
      JA_JP = "ja-JP"

      # No documentation available.
      #
      KO_KR = "ko-KR"

      # No documentation available.
      #
      MS_MY = "ms-MY"

      # No documentation available.
      #
      NL_NL = "nl-NL"

      # No documentation available.
      #
      PT_BR = "pt-BR"

      # No documentation available.
      #
      PT_PT = "pt-PT"

      # No documentation available.
      #
      RU_RU = "ru-RU"

      # No documentation available.
      #
      TA_IN = "ta-IN"

      # No documentation available.
      #
      TE_IN = "te-IN"

      # No documentation available.
      #
      TR_TR = "tr-TR"

      # No documentation available.
      #
      ZH_CN = "zh-CN"

      # No documentation available.
      #
      ZH_TW = "zh-TW"

      # No documentation available.
      #
      TH_TH = "th-TH"

      # No documentation available.
      #
      EN_ZA = "en-ZA"

      # No documentation available.
      #
      EN_NZ = "en-NZ"
    end

    # <p>Provides information on the speech contained in a discreet utterance when
    #             multi-language identification is enabled in your request. This utterance represents a block
    #             of speech consisting of one language, preceded or followed by a block of speech in a different
    #             language.</p>
    #
    # @!attribute language_code
    #   <p>Provides the language code for each language identified in your media.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute duration_in_seconds
    #   <p>Provides the total time, in seconds, each identified language is spoken in your media.</p>
    #
    #   @return [Float]
    #
    LanguageCodeItem = ::Struct.new(
      :language_code,
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If using automatic language identification (<code>IdentifyLanguage</code>) in your request
    #             and you want to apply a custom language model, a custom vocabulary, or a custom vocabulary
    #             filter, include <code>LanguageIdSettings</code> with the relevant sub-parameters
    #             (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #             <code>VocabularyFilterName</code>).</p>
    #         <p>You can specify two or more language codes that represent the languages you think may be
    #             present in your media; including more than five is not recommended. Each language code you
    #             include can have an associated custom language model, custom vocabulary, and custom
    #             vocabulary filter. The languages you specify must match the languages of the specified custom
    #             language models, custom vocabularies, and custom vocabulary filters.</p>
    #         <p>To include language options using <code>IdentifyLanguage</code>
    #             <b>without</b> including a custom language model, a custom
    #             vocabulary, or a custom vocabulary filter, use <code>LanguageOptions</code> instead of
    #             <code>LanguageIdSettings</code>. Including language options can improve the accuracy of
    #             automatic language identification.</p>
    #         <p>If you want to include a custom language model with your request but
    #             <b>do not</b> want to use automatic language identification,
    #             use instead the <code></code> parameter with the
    #             <code>LanguageModelName</code> sub-parameter.</p>
    #         <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #             your request but <b>do not</b> want to use automatic
    #             language identification, use instead the <code></code>
    #             parameter with the <code>VocabularyName</code> or
    #             <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to use when processing your transcription job.
    #               Vocabulary names are case sensitive.</p>
    #           <p>The language of the specified vocabulary must match the language code you specify in
    #               your transcription request. If the languages don't match, the vocabulary isn't applied. There
    #               are no errors or warnings associated with a language mismatch.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to use when processing your
    #               transcription job. Vocabulary filter names are case sensitive.</p>
    #           <p>The language of the specified vocabulary filter must match the language code you specify
    #               in your transcription request. If the languages don't match, the vocabulary filter isn't applied.
    #               There are no errors or warnings associated with a language mismatch.</p>
    #           <p>Note that if you include <code>VocabularyFilterName</code> in your request, you must
    #               also include <code>VocabularyFilterMethod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute language_model_name
    #   <p>The name of the custom language model you want to use when processing your
    #               transcription job. Note that language model names are case sensitive.</p>
    #           <p>The language of the specified language model must match the language code you specify
    #               in your transcription request. If the languages don't match, the language model isn't applied.
    #               There are no errors or warnings associated with a language mismatch.</p>
    #
    #   @return [String]
    #
    LanguageIdSettings = ::Struct.new(
      :vocabulary_name,
      :vocabulary_filter_name,
      :language_model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a custom language model, including the base model name, when
    #             the model was created, the location of the files used to train the model, when the model was last
    #             modified, the name you chose for the model, its language, its processing state, and if there is an
    #             upgrade available for the base model.</p>
    #
    # @!attribute model_name
    #   <p>A unique name, chosen by you, for your custom language model.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The date and time the specified custom language model was created.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified language model was last modified.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute language_code
    #   <p>The language code used to create your custom language model. Each language model must
    #               contain terms in only one language, and the language you select for your model must match
    #               the language of your training and tuning data.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table. Note that U.S. English (<code>en-US</code>) is the only language
    #               supported with Amazon Transcribe Medical.</p>
    #
    #   Enum, one of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #
    #   @return [String]
    #
    # @!attribute base_model_name
    #   <p>The Amazon Transcribe standard language model, or base model, used to create your custom
    #               language model.</p>
    #
    #   Enum, one of: ["NarrowBand", "WideBand"]
    #
    #   @return [String]
    #
    # @!attribute model_status
    #   <p>The status of the specified custom language model. When the status displays as
    #               <code>COMPLETED</code> the model is ready for use.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute upgrade_availability
    #   <p>Shows if a more current base model is available for use with the specified custom language
    #               model.</p>
    #           <p>If <code>false</code>, your language model is using the most up-to-date base model.</p>
    #           <p>If <code>true</code>, there is a newer base model available than the one your language
    #               model is using.</p>
    #           <p>Note that to update a base model, you must recreate the custom language model using the
    #               new base model. Base model upgrades for existing custom language models are not
    #               supported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute failure_reason
    #   <p>If <code>ModelStatus</code> is <code>FAILED</code>, <code>FailureReason</code>
    #               contains information about why the custom language model request failed. See also:
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>The Amazon S3 location of the input files used to train and tune your custom language
    #               model, in addition to the data access role ARN (Amazon Resource Name) that has permissions to
    #               access these data.</p>
    #
    #   @return [InputDataConfig]
    #
    LanguageModel = ::Struct.new(
      :model_name,
      :create_time,
      :last_modified_time,
      :language_code,
      :base_model_name,
      :model_status,
      :upgrade_availability,
      :failure_reason,
      :input_data_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've either sent too many requests or your input file is too long. Wait before retrying
    #             your request, or use a smaller file and try your request again.</p>
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

    # @!attribute next_token
    #   <p>If your <code>ListCallAnalyticsCategories</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated string.
    #               To get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of Call Analytics categories to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    ListCallAnalyticsCategoriesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute categories
    #   <p>Provides detailed information about your Call Analytics categories, including all the rules
    #               associated with each category.</p>
    #
    #   @return [Array<CategoryProperties>]
    #
    ListCallAnalyticsCategoriesOutput = ::Struct.new(
      :next_token,
      :categories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Returns only Call Analytics jobs with the specified status. Jobs are ordered by creation
    #               date, with the newest job first. If you don't include <code>Status</code>, all Call Analytics
    #               jobs are returned.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute job_name_contains
    #   <p>Returns only the Call Analytics jobs that contain the specified string. The search is not
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If your <code>ListCallAnalyticsJobs</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of Call Analytics jobs to return in each page of results. If there are
    #               fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    ListCallAnalyticsJobsInput = ::Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Lists all Call Analytics jobs that have the status specified in your request. Jobs are
    #               ordered by creation date, with the newest job first.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute call_analytics_job_summaries
    #   <p>Provides a summary of information about each result.</p>
    #
    #   @return [Array<CallAnalyticsJobSummary>]
    #
    ListCallAnalyticsJobsOutput = ::Struct.new(
      :status,
      :next_token,
      :call_analytics_job_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status_equals
    #   <p>Returns only custom language models with the specified status. Language
    #               models are ordered by creation date, with the newest model first. If you don't include
    #               <code>StatusEquals</code>, all custom language models are returned.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute name_contains
    #   <p>Returns only the custom language models that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If your <code>ListLanguageModels</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of custom language models to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    ListLanguageModelsInput = ::Struct.new(
      :status_equals,
      :name_contains,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string.  Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute models
    #   <p>Provides information about the custom language models that match the criteria specified
    #               in your request.</p>
    #
    #   @return [Array<LanguageModel>]
    #
    ListLanguageModelsOutput = ::Struct.new(
      :next_token,
      :models,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Returns only medical transcription jobs with the specified status. Jobs are ordered by
    #               creation date, with the newest job first. If you don't include <code>Status</code>, all
    #               medical transcription jobs are returned.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute job_name_contains
    #   <p>Returns only the medical transcription jobs that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If your <code>ListMedicalTranscriptionJobs</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated string.
    #               To get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of medical transcription jobs to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    ListMedicalTranscriptionJobsInput = ::Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Lists all medical transcription jobs that have the status specified in your request. Jobs are
    #               ordered by creation date, with the newest job first.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute medical_transcription_job_summaries
    #   <p>Provides a summary of information about each result.</p>
    #
    #   @return [Array<MedicalTranscriptionJobSummary>]
    #
    ListMedicalTranscriptionJobsOutput = ::Struct.new(
      :status,
      :next_token,
      :medical_transcription_job_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If your <code>ListMedicalVocabularies</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of custom medical vocabularies to return in each page of results. If
    #               there are fewer results than the value you specify, only the actual results are returned. If you
    #               don't specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state_equals
    #   <p>Returns only custom medical vocabularies with the specified state. Vocabularies are
    #               ordered by creation date, with the newest vocabulary first. If you don't include
    #               <code>StateEquals</code>, all custom medical vocabularies are returned.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute name_contains
    #   <p>Returns only the custom medical vocabularies that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    #   @return [String]
    #
    ListMedicalVocabulariesInput = ::Struct.new(
      :next_token,
      :max_results,
      :state_equals,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Lists all custom medical vocabularies that have the status specified in your request.
    #               Vocabularies are ordered by creation date, with the newest vocabulary first.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabularies
    #   <p>Provides information about the custom medical vocabularies that match the criteria specified
    #               in your request.</p>
    #
    #   @return [Array<VocabularyInfo>]
    #
    ListMedicalVocabulariesOutput = ::Struct.new(
      :status,
      :next_token,
      :vocabularies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Returns a list of all tags associated with the specified Amazon Resource Name (ARN). ARNs
    #               have the format <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #           <p>For example,
    #               <code>arn:aws:transcribe:us-west-2:account-id:transcription-job/transcription-job-name</code>.</p>
    #           <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #               <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #               <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #               <code>language-model</code>.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) specified in your request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Lists all tags associated with the given transcription job, vocabulary, model, or
    #               resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Returns only transcription jobs with the specified status. Jobs are ordered by creation
    #               date, with the newest job first. If you don't include <code>Status</code>, all transcription
    #               jobs are returned.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute job_name_contains
    #   <p>Returns only the transcription jobs that contain the specified string. The search is not
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If your <code>ListTranscriptionJobs</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of transcription jobs to return in each page of results. If there are
    #               fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    ListTranscriptionJobsInput = ::Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Lists all transcription jobs that have the status specified in your request. Jobs are
    #               ordered by creation date, with the newest job first.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute transcription_job_summaries
    #   <p>Provides a summary of information about each result.</p>
    #
    #   @return [Array<TranscriptionJobSummary>]
    #
    ListTranscriptionJobsOutput = ::Struct.new(
      :status,
      :next_token,
      :transcription_job_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If your <code>ListVocabularies</code> request returns more results than can be displayed,
    #               <code>NextToken</code> is displayed in the response with an associated string. To get the
    #               next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of custom vocabularies to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you
    #               don't specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state_equals
    #   <p>Returns only custom vocabularies with the specified state. Vocabularies are ordered by
    #               creation date, with the newest vocabulary first. If you don't include
    #               <code>StateEquals</code>, all custom medical vocabularies are returned.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute name_contains
    #   <p>Returns only the custom vocabularies that contain the specified string. The search is not
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    ListVocabulariesInput = ::Struct.new(
      :next_token,
      :max_results,
      :state_equals,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>Lists all custom vocabularies that have the status specified in your request. Vocabularies
    #               are ordered by creation date, with the newest vocabulary first.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabularies
    #   <p>Provides information about the custom vocabularies that match the criteria specified in your
    #               request.</p>
    #
    #   @return [Array<VocabularyInfo>]
    #
    ListVocabulariesOutput = ::Struct.new(
      :status,
      :next_token,
      :vocabularies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If your <code>ListVocabularyFilters</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated string.
    #               To get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of custom vocabulary filters to return in each page of results. If
    #               there are fewer results than the value you specify, only the actual results are returned. If you
    #               don't specify a value, a default of 5 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name_contains
    #   <p>Returns only the custom vocabulary filters that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    #   @return [String]
    #
    ListVocabularyFiltersInput = ::Struct.new(
      :next_token,
      :max_results,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If <code>NextToken</code> is present in your response, it indicates that not all results
    #               are displayed. To view the next set of results, copy the string associated with the
    #               <code>NextToken</code> parameter in your results output, then run your request again
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed to
    #               view all your results.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filters
    #   <p>Provides information about the custom vocabulary filters that match the criteria specified
    #               in your request.</p>
    #
    #   @return [Array<VocabularyFilterInfo>]
    #
    ListVocabularyFiltersOutput = ::Struct.new(
      :next_token,
      :vocabulary_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon S3 location of the media file you want to use in your
    #             request.</p>
    #
    # @!attribute media_file_uri
    #   <p>The Amazon S3 location of the media file you want to transcribe. For
    #               example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>s3://DOC-EXAMPLE-BUCKET/my-media-file.flac</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>s3://DOC-EXAMPLE-BUCKET/media-files/my-media-file.flac</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Note that the Amazon S3 bucket that contains your input media must be located
    #               in the same Amazon Web Services Region where you're making your transcription
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute redacted_media_file_uri
    #   <p>The Amazon S3 location of the media file you want to redact. For
    #               example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>s3://DOC-EXAMPLE-BUCKET/my-media-file.flac</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>s3://DOC-EXAMPLE-BUCKET/media-files/my-media-file.flac</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Note that the Amazon S3 bucket that contains your input media must be located
    #               in the same Amazon Web Services Region where you're making your transcription
    #               request.</p>
    #           <important>
    #               <p>
    #                  <code>RedactedMediaFileUri</code> is only supported for Call Analytics
    #                   (<code>StartCallAnalyticsJob</code>) transcription requests.</p>
    #           </important>
    #
    #   @return [String]
    #
    Media = ::Struct.new(
      :media_file_uri,
      :redacted_media_file_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MediaFormat
    #
    module MediaFormat
      # No documentation available.
      #
      MP3 = "mp3"

      # No documentation available.
      #
      MP4 = "mp4"

      # No documentation available.
      #
      WAV = "wav"

      # No documentation available.
      #
      FLAC = "flac"

      # No documentation available.
      #
      OGG = "ogg"

      # No documentation available.
      #
      AMR = "amr"

      # No documentation available.
      #
      WEBM = "webm"
    end

    # Includes enum constants for MedicalContentIdentificationType
    #
    module MedicalContentIdentificationType
      # No documentation available.
      #
      PHI = "PHI"
    end

    # <p>Provides you with the Amazon S3 URI you can use to access your transcript.</p>
    #
    # @!attribute transcript_file_uri
    #   <p>The Amazon S3 location of your transcript. You can use this URI to access or
    #               download your transcript.</p>
    #           <p>If you included <code>OutputBucketName</code> in your transcription job request, this is
    #               the URI of that bucket. If you also included <code>OutputKey</code> in your request, your
    #               output is located in the path you specified in your request.</p>
    #           <p>If you didn't include <code>OutputBucketName</code> in your transcription job request,
    #               your transcript is stored in a service-managed bucket, and <code>TranscriptFileUri</code>
    #               provides you with a temporary URI you can use for secure access to your transcript.</p>
    #           <note>
    #               <p>Temporary URIs for service-managed Amazon S3 buckets are only valid for 15
    #                   minutes. If you get an <code>AccesDenied</code> error, you can get a new temporary
    #                   URI by running a <code>GetTranscriptionJob</code> or
    #                   <code>ListTranscriptionJob</code> request.</p>
    #           </note>
    #
    #   @return [String]
    #
    MedicalTranscript = ::Struct.new(
      :transcript_file_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides detailed information about a medical transcription job.</p>
    #         <p>To view the status of the specified medical transcription job, check the
    #             <code>TranscriptionJobStatus</code> field. If the status is <code>COMPLETED</code>, the
    #             job is finished and you can find the results at the location specified in
    #             <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #             <code>FailureReason</code> provides details on why your transcription job failed.</p>
    #
    # @!attribute medical_transcription_job_name
    #   <p>The name of the medical transcription job. Job names are case sensitive and must be unique
    #               within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute transcription_job_status
    #   <p>Provides the status of the specified medical transcription job.</p>
    #           <p>If the status is <code>COMPLETED</code>, the job is finished and you can find the results
    #               at the location specified in <code>TranscriptFileUri</code>. If the status is
    #               <code>FAILED</code>, <code>FailureReason</code> provides details on why your transcription
    #               job failed.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code used to create your medical transcription job. US English
    #               (<code>en-US</code>) is the only supported language for medical transcriptions.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_format
    #   <p>The format of the input media file.</p>
    #
    #   Enum, one of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #
    #   @return [String]
    #
    # @!attribute media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    #   @return [Media]
    #
    # @!attribute transcript
    #   <p>Provides you with the Amazon S3 URI you can use to access your transcript.</p>
    #
    #   @return [MedicalTranscript]
    #
    # @!attribute start_time
    #   <p>The date and time the specified medical transcription job began processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.789000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The date and time the specified medical transcription job request was made.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time the specified medical transcription job finished processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:33:13.922000-07:00</code> represents a transcription job
    #               that started processing at 12:33 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>TranscriptionJobStatus</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the transcription job request
    #               failed.</p>
    #           <p>The <code>FailureReason</code> field contains one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Unsupported media format</code>.</p>
    #                   <p>The media format specified in <code>MediaFormat</code> isn't valid. Refer to
    #                       <b>MediaFormat</b> for a list of supported formats.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>The media format provided does not match the detected media
    #                       format</code>.</p>
    #                   <p>The media format specified in <code>MediaFormat</code> doesn't match the
    #                       format of the input file. Check the media format of your media file and correct the
    #                       specified value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid sample rate for audio file</code>.</p>
    #                   <p>The sample rate specified in <code>MediaSampleRateHertz</code> isn't valid.
    #                       The sample rate must be between 16,000 and 48,000 Hertz.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>The sample rate provided does not match the detected sample
    #                       rate</code>.</p>
    #                   <p>The sample rate specified in <code>MediaSampleRateHertz</code> doesn't
    #                       match the sample rate detected in your input media file. Check the sample rate of
    #                       your media file and correct the specified value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid file size: file size too large</code>.</p>
    #                   <p>The size of your media file is larger than what Amazon Transcribe can process.
    #                       For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html limits">Guidelines and
    #                           quotas</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid number of channels: number of channels too large</code>.</p>
    #                   <p>Your audio contains more channels than Amazon Transcribe is able to process.
    #                       For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html limits">Guidelines and
    #                           quotas</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Specify additional optional settings in your
    #               request, including channel identification, alternative transcriptions, and speaker labeling; allows
    #               you to apply custom vocabularies to your medical transcription job.</p>
    #
    #   @return [MedicalTranscriptionSetting]
    #
    # @!attribute content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript. For more information,
    #               see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health
    #                   information (PHI) in a transcription</a>.</p>
    #
    #   Enum, one of: ["PHI"]
    #
    #   @return [String]
    #
    # @!attribute specialty
    #   <p>Describes the medical specialty represented in your media.</p>
    #
    #   Enum, one of: ["PRIMARYCARE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the input media is a dictation or a conversation, as specified in the
    #               <code>StartMedicalTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags, each in the form of a key:value pair, assigned to the specified medical
    #               transcription job.</p>
    #
    #   @return [Array<Tag>]
    #
    MedicalTranscriptionJob = ::Struct.new(
      :medical_transcription_job_name,
      :transcription_job_status,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :transcript,
      :start_time,
      :creation_time,
      :completion_time,
      :failure_reason,
      :settings,
      :content_identification_type,
      :specialty,
      :type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides detailed information about a specific medical transcription job.</p>
    #
    # @!attribute medical_transcription_job_name
    #   <p>The name of the medical transcription job. Job names are case sensitive and must be unique
    #               within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time the specified medical transcription job request was made.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The date and time your medical transcription job began processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.789000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time the specified medical transcription job finished processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:33:13.922000-07:00</code> represents a transcription job
    #               that started processing at 12:33 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute language_code
    #   <p>The language code used to create your medical transcription. US English
    #               (<code>en-US</code>) is the only supported language for medical transcriptions.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute transcription_job_status
    #   <p>Provides the status of your medical transcription job.</p>
    #           <p>If the status is <code>COMPLETED</code>, the job is finished and you can find the results
    #               at the location specified in <code>TranscriptFileUri</code>. If the status is
    #               <code>FAILED</code>, <code>FailureReason</code> provides details on why your transcription
    #               job failed.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>TranscriptionJobStatus</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the transcription job
    #               failed. See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location_type
    #   <p>Indicates where the specified medical transcription output is stored.</p>
    #           <p>If the value is <code>CUSTOMER_BUCKET</code>, the location is the Amazon S3
    #               bucket you specified using the <code>OutputBucketName</code> parameter in your
    #                request. If you also included
    #               <code>OutputKey</code> in your request, your output is located in the path you specified in your
    #               request.</p>
    #           <p>If the value is <code>SERVICE_BUCKET</code>, the location is a service-managed
    #               Amazon S3 bucket. To access a transcript stored in a service-managed bucket, use
    #               the URI shown in the <code>TranscriptFileUri</code> field.</p>
    #
    #   Enum, one of: ["CUSTOMER_BUCKET", "SERVICE_BUCKET"]
    #
    #   @return [String]
    #
    # @!attribute specialty
    #   <p>Provides the medical specialty represented in your media.</p>
    #
    #   Enum, one of: ["PRIMARYCARE"]
    #
    #   @return [String]
    #
    # @!attribute content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript. For more information,
    #               see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health
    #                   information (PHI) in a transcription</a>.</p>
    #
    #   Enum, one of: ["PHI"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the input media is a dictation or a conversation, as specified in the
    #               <code>StartMedicalTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #
    #   @return [String]
    #
    MedicalTranscriptionJobSummary = ::Struct.new(
      :medical_transcription_job_name,
      :creation_time,
      :start_time,
      :completion_time,
      :language_code,
      :transcription_job_status,
      :failure_reason,
      :output_location_type,
      :specialty,
      :content_identification_type,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows additional optional settings in your
    #             request, including channel identification, alternative transcriptions, and speaker labeling; allows
    #             you to apply custom vocabularies to your medical transcription job.</p>
    #
    # @!attribute show_speaker_labels
    #   <p>Enables speaker identification (diarization) in your transcription output. Speaker identification
    #               labels the speech from individual speakers in your media file.</p>
    #           <p>If you enable <code>ShowSpeakerLabels</code> in your request, you must also include
    #               <code>MaxSpeakerLabels</code>.</p>
    #           <p>You can't include both <code>ShowSpeakerLabels</code> and
    #               <code>ChannelIdentification</code> in the same request. Including both parameters
    #               returns a <code>BadRequestException</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Identifying speakers (diarization)</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_speaker_labels
    #   <p>Specify the maximum number of speakers you want to identify in your media.</p>
    #           <p>Note that if your media contains more speakers than the specified number, multiple speakers
    #               will be identified as a single speaker.</p>
    #           <p>If you specify the <code>MaxSpeakerLabels</code> field, you must set the
    #               <code>ShowSpeakerLabels</code> field to true.</p>
    #
    #   @return [Integer]
    #
    # @!attribute channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #           <p>Channel identification transcribes the audio on each channel independently, then appends the
    #               output for each channel into one transcript.</p>
    #           <p>If you have multi-channel audio and do not enable channel identification, your audio is
    #               transcribed in a continuous manner and your transcript does not separate the speech by channel.</p>
    #           <p>You can't include both <code>ShowSpeakerLabels</code> and
    #               <code>ChannelIdentification</code> in the same request. Including both parameters
    #               returns a <code>BadRequestException</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute show_alternatives
    #   <p>To include alternative transcriptions within your transcription output, include
    #               <code>ShowAlternatives</code> in your transcription request.</p>
    #           <p>If you include <code>ShowAlternatives</code>, you must also include
    #               <code>MaxAlternatives</code>, which is the maximum number of alternative transcriptions
    #               you want Amazon Transcribe Medical to generate.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html">Alternative transcriptions</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_alternatives
    #   <p>Indicate the maximum number of alternative transcriptions you want Amazon Transcribe
    #               Medical to include in your transcript.</p>
    #           <p>If you select a number greater than the number of alternative transcriptions generated by
    #               Amazon Transcribe Medical, only the actual number of alternative transcriptions are
    #               included.</p>
    #           <p>If you include <code>MaxAlternatives</code> in your request, you must also include
    #               <code>ShowAlternatives</code> with a value of <code>true</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html">Alternative transcriptions</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to use when processing your medical
    #               transcription job. Vocabulary names are case sensitive.</p>
    #           <p>The language of the specified vocabulary must match the language code you specify in
    #               your transcription request. If the languages don't match, the vocabulary isn't applied. There
    #               are no errors or warnings associated with a language mismatch. US English
    #               (<code>en-US</code>) is the only valid language for Amazon Transcribe Medical.</p>
    #
    #   @return [String]
    #
    MedicalTranscriptionSetting = ::Struct.new(
      :show_speaker_labels,
      :max_speaker_labels,
      :channel_identification,
      :show_alternatives,
      :max_alternatives,
      :vocabulary_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the name of the custom language model that was included in the specified
    #             transcription job.</p>
    #         <p>Only use <code>ModelSettings</code> with the <code>LanguageModelName</code>
    #             sub-parameter if you're <b>not</b> using automatic language
    #             identification (<code></code>).
    #             If using <code>LanguageIdSettings</code> in your request, this parameter contains a
    #             <code>LanguageModelName</code> sub-parameter.</p>
    #
    # @!attribute language_model_name
    #   <p>The name of the custom language model you want to use when processing your
    #               transcription job. Note that language model names are case sensitive.</p>
    #           <p>The language of the specified language model must match the language code you specify
    #               in your transcription request. If the languages don't match, the language model isn't applied.
    #               There are no errors or warnings associated with a language mismatch.</p>
    #
    #   @return [String]
    #
    ModelSettings = ::Struct.new(
      :language_model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelStatus
    #
    module ModelStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>Flag the presence or absence of periods of silence in your Call Analytics transcription
    #             output.</p>
    #         <p>Rules using <code>NonTalkTimeFilter</code> are designed to match:</p>
    #         <ul>
    #             <li>
    #                 <p>The presence of silence at specified periods throughout the call</p>
    #             </li>
    #             <li>
    #                 <p>The presence of speech at specified periods throughout the call</p>
    #             </li>
    #          </ul>
    #         <p>See <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules">Rule
    #             criteria</a> for usage examples.</p>
    #
    # @!attribute threshold
    #   <p>Specify the duration, in milliseconds, of the period of silence you want to flag. For
    #               example, you can flag a silent period that lasts 30000 milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute absolute_time_range
    #   <p>Allows you to specify a time range (in milliseconds) in your audio, during which you want
    #               to search for a period of silence. See  for more
    #               detail.</p>
    #
    #   @return [AbsoluteTimeRange]
    #
    # @!attribute relative_time_range
    #   <p>Allows you to specify a time range (in percentage) in your media file, during which you
    #               want to search for a period of silence. See  for more
    #               detail.</p>
    #
    #   @return [RelativeTimeRange]
    #
    # @!attribute negate
    #   <p>Set to <code>TRUE</code> to flag periods of speech. Set to <code>FALSE</code> to flag
    #               periods of silence</p>
    #
    #   @return [Boolean]
    #
    NonTalkTimeFilter = ::Struct.new(
      :threshold,
      :absolute_time_range,
      :relative_time_range,
      :negate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find the requested resource. Check that the specified name is correct and try your
    #             request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OutputLocationType
    #
    module OutputLocationType
      # No documentation available.
      #
      CUSTOMER_BUCKET = "CUSTOMER_BUCKET"

      # No documentation available.
      #
      SERVICE_BUCKET = "SERVICE_BUCKET"
    end

    # Includes enum constants for ParticipantRole
    #
    module ParticipantRole
      # No documentation available.
      #
      AGENT = "AGENT"

      # No documentation available.
      #
      CUSTOMER = "CUSTOMER"
    end

    # Includes enum constants for PiiEntityType
    #
    module PiiEntityType
      # No documentation available.
      #
      BANK_ACCOUNT_NUMBER = "BANK_ACCOUNT_NUMBER"

      # No documentation available.
      #
      BANK_ROUTING = "BANK_ROUTING"

      # No documentation available.
      #
      CREDIT_DEBIT_NUMBER = "CREDIT_DEBIT_NUMBER"

      # No documentation available.
      #
      CREDIT_DEBIT_CVV = "CREDIT_DEBIT_CVV"

      # No documentation available.
      #
      CREDIT_DEBIT_EXPIRY = "CREDIT_DEBIT_EXPIRY"

      # No documentation available.
      #
      PIN = "PIN"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      ADDRESS = "ADDRESS"

      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      PHONE = "PHONE"

      # No documentation available.
      #
      SSN = "SSN"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # Includes enum constants for RedactionOutput
    #
    module RedactionOutput
      # No documentation available.
      #
      REDACTED = "redacted"

      # No documentation available.
      #
      REDACTED_AND_UNREDACTED = "redacted_and_unredacted"
    end

    # Includes enum constants for RedactionType
    #
    module RedactionType
      # No documentation available.
      #
      PII = "PII"
    end

    # <p>A time range, in percentage, between two points in your media file.</p>
    #         <p>You can use <code>StartPercentage</code> and <code>EndPercentage</code> to
    #             search a custom segment. For example, setting <code>StartPercentage</code> to 10 and
    #             <code>EndPercentage</code> to 50 only searches for your specified criteria in the audio
    #             contained between the 10 percent mark and the 50 percent mark of your media file.</p>
    #         <p>You can use also <code>First</code> to search from the start of the media file until the
    #             time you specify, or <code>Last</code> to search from the time you specify until the end of
    #             the media file. For example, setting <code>First</code> to 10 only searches for your specified
    #             criteria in the audio contained in the first 10 percent of the media file.</p>
    #         <p>If you prefer to use milliseconds instead of percentage, see
    #             .</p>
    #
    # @!attribute start_percentage
    #   <p>The time, in percentage, when Amazon Transcribe starts searching for the specified
    #               criteria in your media file. If you include <code>StartPercentage</code> in your request, you
    #               must also include <code>EndPercentage</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_percentage
    #   <p>The time, in percentage, when Amazon Transcribe stops searching for the specified criteria
    #               in your media file. If you include <code>EndPercentage</code> in your request, you must also
    #               include <code>StartPercentage</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute first
    #   <p>The time, in percentage, from the start of your media file until the value you specify in
    #               which Amazon Transcribe searches for your specified criteria.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last
    #   <p>The time, in percentage, from the value you specify until the end of your media file in
    #               which Amazon Transcribe searches for your specified criteria.</p>
    #
    #   @return [Integer]
    #
    RelativeTimeRange = ::Struct.new(
      :start_percentage,
      :end_percentage,
      :first,
      :last,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule is a set of criteria you can specify to flag an attribute in your Call Analytics output.
    #             Rules define a Call Analytics category.</p>
    #         <p>Rules can include these parameters: ,
    #             , , and
    #             . To learn more about these parameters, refer to
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules">Rule
    #                 criteria</a>.</p>
    #         <p>To learn more about Call Analytics categories, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html">Creating categories</a>.</p>
    #         <p>To learn more about Call Analytics, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html">Analyzing call center audio with Call
    #             Analytics</a>.</p>
    #
    class Rule < Hearth::Union
      # <p>Flag the presence or absence of periods of silence in your Call Analytics transcription
      #             output. Refer to  for more detail.</p>
      #
      class NonTalkTimeFilter < Rule
        def to_h
          { non_talk_time_filter: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Transcribe::Types::NonTalkTimeFilter #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Flag the presence or absence of interruptions in your Call Analytics transcription output. Refer to
      #              for more detail.</p>
      #
      class InterruptionFilter < Rule
        def to_h
          { interruption_filter: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Transcribe::Types::InterruptionFilter #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Flag the presence or absence of specific words or phrases in your Call Analytics transcription
      #             output. Refer to  for more detail.</p>
      #
      class TranscriptFilter < Rule
        def to_h
          { transcript_filter: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Transcribe::Types::TranscriptFilter #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Flag the presence or absence of specific sentiments in your Call Analytics transcription output.
      #             Refer to  for more detail.</p>
      #
      class SentimentFilter < Rule
        def to_h
          { sentiment_filter: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Transcribe::Types::SentimentFilter #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Rule
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Transcribe::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Flag the presence or absence of specific sentiments detected in your Call Analytics
    #             transcription output.</p>
    #         <p>Rules using <code>SentimentFilter</code> are designed to match:</p>
    #         <ul>
    #             <li>
    #                 <p>The presence or absence of a positive sentiment felt by the customer, agent,
    #                     or both at specified points in the call</p>
    #             </li>
    #             <li>
    #                 <p>The presence or absence of a negative sentiment felt by the customer, agent,
    #                     or both at specified points in the call</p>
    #             </li>
    #             <li>
    #                 <p>The presence or absence of a neutral sentiment felt by the customer, agent, or
    #                     both at specified points in the call</p>
    #             </li>
    #             <li>
    #                 <p>The presence or absence of a mixed sentiment felt by the customer, the agent,
    #                     or both at specified points in the call</p>
    #             </li>
    #          </ul>
    #         <p>See <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules">Rule
    #             criteria</a> for examples.</p>
    #
    # @!attribute sentiments
    #   <p>Specify the sentiments you want to flag.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute absolute_time_range
    #   <p>Allows you to specify a time range (in milliseconds) in your audio, during which you want
    #               to search for the specified sentiments. See  for more
    #               detail.</p>
    #
    #   @return [AbsoluteTimeRange]
    #
    # @!attribute relative_time_range
    #   <p>Allows you to specify a time range (in percentage) in your media file, during which you
    #               want to search for the specified sentiments. See
    #               for more detail.</p>
    #
    #   @return [RelativeTimeRange]
    #
    # @!attribute participant_role
    #   <p>Specify the participant you want to flag. Omitting this parameter is equivalent to specifying
    #               both participants.</p>
    #
    #   Enum, one of: ["AGENT", "CUSTOMER"]
    #
    #   @return [String]
    #
    # @!attribute negate
    #   <p>Set to <code>TRUE</code> to flag the sentiments you didn't include in your request. Set to
    #               <code>FALSE</code> to flag the sentiments you specified in your request.</p>
    #
    #   @return [Boolean]
    #
    SentimentFilter = ::Struct.new(
      :sentiments,
      :absolute_time_range,
      :relative_time_range,
      :participant_role,
      :negate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SentimentValue
    #
    module SentimentValue
      # No documentation available.
      #
      POSITIVE = "POSITIVE"

      # No documentation available.
      #
      NEGATIVE = "NEGATIVE"

      # No documentation available.
      #
      NEUTRAL = "NEUTRAL"

      # No documentation available.
      #
      MIXED = "MIXED"
    end

    # <p>Allows additional optional settings in your
    #             request, including channel identification, alternative transcriptions, and speaker labeling; allows
    #             you to apply custom vocabularies to your transcription job.</p>
    #
    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to use in your transcription job request. This
    #               name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute show_speaker_labels
    #   <p>Enables speaker identification (diarization) in your transcription output. Speaker identification
    #               labels the speech from individual speakers in your media file.</p>
    #           <p>If you enable <code>ShowSpeakerLabels</code> in your request, you must also include
    #               <code>MaxSpeakerLabels</code>.</p>
    #           <p>You can't include both <code>ShowSpeakerLabels</code> and
    #               <code>ChannelIdentification</code> in the same request. Including both parameters
    #               returns a <code>BadRequestException</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Identifying speakers (diarization)</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_speaker_labels
    #   <p>Specify the maximum number of speakers you want to identify in your media.</p>
    #           <p>Note that if your media contains more speakers than the specified number, multiple speakers
    #               will be identified as a single speaker.</p>
    #           <p>If you specify the <code>MaxSpeakerLabels</code> field, you must set the
    #               <code>ShowSpeakerLabels</code> field to true.</p>
    #
    #   @return [Integer]
    #
    # @!attribute channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #           <p>Channel identification transcribes the audio on each channel independently, then appends the
    #               output for each channel into one transcript.</p>
    #           <p>You can't include both <code>ShowSpeakerLabels</code> and
    #               <code>ChannelIdentification</code> in the same request. Including both parameters
    #               returns a <code>BadRequestException</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute show_alternatives
    #   <p>To include alternative transcriptions within your transcription output, include
    #               <code>ShowAlternatives</code> in your transcription request.</p>
    #           <p>If you have multi-channel audio and do not enable channel identification, your audio is
    #               transcribed in a continuous manner and your transcript does not separate the speech by channel.</p>
    #           <p>If you include <code>ShowAlternatives</code>, you must also include
    #               <code>MaxAlternatives</code>, which is the maximum number of alternative transcriptions
    #               you want Amazon Transcribe to generate.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html">Alternative transcriptions</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_alternatives
    #   <p>Indicate the maximum number of alternative transcriptions you want Amazon Transcribe
    #               to include in your transcript.</p>
    #           <p>If you select a number greater than the number of alternative transcriptions generated by
    #               Amazon Transcribe, only the actual number of alternative transcriptions are included.</p>
    #           <p>If you include <code>MaxAlternatives</code> in your request, you must also include
    #               <code>ShowAlternatives</code> with a value of <code>true</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html">Alternative transcriptions</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to use in your transcription job request.
    #               This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account.</p>
    #           <p>Note that if you include <code>VocabularyFilterName</code> in your request, you must
    #               also include <code>VocabularyFilterMethod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #           <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #           <p>To delete words, choose <code>remove</code>.</p>
    #           <p>To flag words without changing them, choose <code>tag</code>.</p>
    #
    #   Enum, one of: ["remove", "mask", "tag"]
    #
    #   @return [String]
    #
    Settings = ::Struct.new(
      :vocabulary_name,
      :show_speaker_labels,
      :max_speaker_labels,
      :channel_identification,
      :show_alternatives,
      :max_alternatives,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
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
    end

    # @!attribute call_analytics_job_name
    #   <p>A unique name, chosen by you, for your Call Analytics job.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    #   @return [Media]
    #
    # @!attribute output_location
    #   <p>The Amazon S3 location where you want your Call Analytics transcription output
    #               stored. You can use any of the following formats to specify the output location:</p>
    #           <ol>
    #               <li>
    #                   <p>s3://DOC-EXAMPLE-BUCKET</p>
    #               </li>
    #               <li>
    #                   <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/</p>
    #               </li>
    #               <li>
    #                   <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json</p>
    #               </li>
    #            </ol>
    #           <p>Unless you specify a file name (option 3), the name of your output file has a default
    #               value that matches the name you specified for your transcription job using the
    #               <code>CallAnalyticsJobName</code> parameter.</p>
    #           <p>You can specify a KMS key to encrypt your output using the
    #               <code>OutputEncryptionKMSKeyId</code> parameter. If you don't specify a
    #               KMS key, Amazon Transcribe uses the default Amazon S3 key for
    #               server-side encryption.</p>
    #           <p>If you don't specify <code>OutputLocation</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    #
    #   @return [String]
    #
    # @!attribute output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your Call Analytics output.</p>
    #           <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of
    #               four ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the KMS key ID itself. For example,
    #                       <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use an alias for the KMS key ID. For example,
    #                       <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,
    #                       <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can
    #               specify your KMS key in one of two ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the ARN for the KMS key ID. For example,
    #                       <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If you don't specify an encryption key, your output is encrypted with the default
    #               Amazon S3 key (SSE-S3).</p>
    #           <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #           <p>Note that the user making the
    #               request must have permission to use the specified KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files. If the role you specify doesn’t
    #               have the appropriate permissions to access the specified Amazon S3 location, your request
    #               fails.</p>
    #           <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html identifiers-arns">IAM ARNs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Specify additional optional settings in your
    #               request, including content redaction; allows you to apply custom language models, vocabulary
    #               filters, and custom vocabularies to your Call Analytics job.</p>
    #
    #   @return [CallAnalyticsJobSettings]
    #
    # @!attribute channel_definitions
    #   <p>Allows you to specify which speaker is on which channel. For example, if your agent is the
    #               first participant to speak, you would set <code>ChannelId</code> to <code>0</code> (to
    #               indicate the first channel) and <code>ParticipantRole</code> to <code>AGENT</code> (to
    #               indicate that it's the agent speaking).</p>
    #
    #   @return [Array<ChannelDefinition>]
    #
    StartCallAnalyticsJobInput = ::Struct.new(
      :call_analytics_job_name,
      :media,
      :output_location,
      :output_encryption_kms_key_id,
      :data_access_role_arn,
      :settings,
      :channel_definitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute call_analytics_job
    #   <p>Provides detailed information about the current Call Analytics job, including job status
    #               and, if applicable, failure reason.</p>
    #
    #   @return [CallAnalyticsJob]
    #
    StartCallAnalyticsJobOutput = ::Struct.new(
      :call_analytics_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute medical_transcription_job_name
    #   <p>A unique name, chosen by you, for your medical transcription job. The name you specify is
    #               also used as the default name of your transcription output file. If you want to specify a different
    #               name for your transcription output, use the <code>OutputKey</code> parameter.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language spoken in the input media file. US English
    #               (<code>en-US</code>) is the only valid value for medical transcription jobs. Any other value
    #               you enter for language code results in a <code>BadRequestException</code> error.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #           <p>If you don't specify the media sample rate, Amazon Transcribe Medical determines it for
    #               you. If you specify the sample rate, it must match the rate detected by Amazon Transcribe
    #               Medical; if there's a mismatch between the value you specify and the value detected, your job
    #               fails. Therefore, in most cases, it's advised to omit <code>MediaSampleRateHertz</code> and let
    #               Amazon Transcribe Medical determine the sample rate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_format
    #   <p>Specify the format of your input media file.</p>
    #
    #   Enum, one of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #
    #   @return [String]
    #
    # @!attribute media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    #   @return [Media]
    #
    # @!attribute output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your medical transcription
    #               output stored. Do not include the <code>S3://</code> prefix of the specified bucket.</p>
    #           <p>If you want your output to go to a sub-folder of this bucket, specify it using the
    #               <code>OutputKey</code> parameter; <code>OutputBucketName</code> only accepts the
    #               name of a bucket.</p>
    #           <p>For example, if you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET</code>,
    #               set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>. However, if
    #               you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET/test-files/</code>, set
    #               <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
    #               <code>OutputKey</code> to <code>test-files/</code>.</p>
    #           <p>Note that Amazon Transcribe must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html auth-role-iam-user">Permissions
    #                   Required for IAM User Roles</a>.</p>
    #           <p>If you don't specify <code>OutputBucketName</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    #
    #   @return [String]
    #
    # @!attribute output_key
    #   <p>Use in combination with <code>OutputBucketName</code> to specify the output location of
    #               your transcript and, optionally, a unique name for your output file. The default name for your
    #               transcription output is the same as the name you specified for your medical transcription job
    #               (<code>MedicalTranscriptionJobName</code>).</p>
    #           <p>Here are some examples of how you can use <code>OutputKey</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>MedicalTranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'my-transcript' as the <code>OutputKey</code>, your transcription output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'test-files/my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>MedicalTranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'test-files/my-transcript' as the <code>OutputKey</code>, your transcription output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #            </ul>
    #           <p>If you specify the name of an Amazon S3 bucket sub-folder that doesn't exist, one is
    #               created for you.</p>
    #
    #   @return [String]
    #
    # @!attribute output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your medical transcription
    #               output.</p>
    #           <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of
    #               four ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the KMS key ID itself. For example,
    #                       <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use an alias for the KMS key ID. For example,
    #                       <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,                    <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can
    #               specify your KMS key in one of two ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the ARN for the KMS key ID. For example,                     <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If you don't specify an encryption key, your output is encrypted with the default
    #               Amazon S3 key (SSE-S3).</p>
    #           <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #           <p>Note that the user making the
    #               request must have permission to use the specified KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that
    #               provide an added layer of security for your data. For more information, see
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html kms-context">KMS
    #                   encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in
    #                       KMS</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute settings
    #   <p>Specify additional optional settings in your
    #               request, including channel identification, alternative transcriptions, and speaker labeling; allows
    #               you to apply custom vocabularies to your transcription job.</p>
    #
    #   @return [MedicalTranscriptionSetting]
    #
    # @!attribute content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript. For more information,
    #               see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health
    #                   information (PHI) in a transcription</a>.</p>
    #
    #   Enum, one of: ["PHI"]
    #
    #   @return [String]
    #
    # @!attribute specialty
    #   <p>Specify the predominant medical specialty represented in your media. For batch
    #               transcriptions, <code>PRIMARYCARE</code> is the only valid value. If you require additional
    #               specialties, refer to .</p>
    #
    #   Enum, one of: ["PRIMARYCARE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specify whether your input media contains only one person (<code>DICTATION</code>) or
    #               contains a conversation between two people (<code>CONVERSATION</code>).</p>
    #           <p>For example, <code>DICTATION</code> could be used for a medical professional wanting to
    #               transcribe voice memos; <code>CONVERSATION</code> could be used for transcribing the
    #               doctor-patient dialogue during the patient's office visit.</p>
    #
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new medical
    #               transcription job at the time you start this new job.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    StartMedicalTranscriptionJobInput = ::Struct.new(
      :medical_transcription_job_name,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :output_bucket_name,
      :output_key,
      :output_encryption_kms_key_id,
      :kms_encryption_context,
      :settings,
      :content_identification_type,
      :specialty,
      :type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute medical_transcription_job
    #   <p>Provides detailed information about the current medical transcription job, including job
    #               status and, if applicable, failure reason.</p>
    #
    #   @return [MedicalTranscriptionJob]
    #
    StartMedicalTranscriptionJobOutput = ::Struct.new(
      :medical_transcription_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transcription_job_name
    #   <p>A unique name, chosen by you, for your transcription job. The name you specify is
    #               also used as the default name of your transcription output file. If you want to specify a different
    #               name for your transcription output, use the <code>OutputKey</code> parameter.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language spoken in the input media file.</p>
    #           <p>If you're unsure of the language spoken in your media file, consider using
    #               <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> to enable
    #               automatic language identification.</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #           <note>
    #               <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>), your media file
    #               must be encoded at a sample rate of 16,000 Hz or higher.</p>
    #           </note>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #           <p>If you don't specify the media sample rate, Amazon Transcribe determines it for you. If you
    #               specify the sample rate, it must match the rate detected by Amazon Transcribe; if there's a
    #               mismatch between the value you specify and the value detected, your job fails. Therefore, in most
    #               cases, it's advised to omit <code>MediaSampleRateHertz</code> and let Amazon Transcribe
    #               determine the sample rate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_format
    #   <p>Specify the format of your input media file.</p>
    #
    #   Enum, one of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #
    #   @return [String]
    #
    # @!attribute media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    #   @return [Media]
    #
    # @!attribute output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your transcription output
    #               stored. Do not include the <code>S3://</code> prefix of the specified bucket.</p>
    #           <p>If you want your output to go to a sub-folder of this bucket, specify it using the
    #               <code>OutputKey</code> parameter; <code>OutputBucketName</code> only accepts the
    #               name of a bucket.</p>
    #           <p>For example, if you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET</code>,
    #               set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>. However, if
    #               you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET/test-files/</code>, set
    #               <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
    #               <code>OutputKey</code> to <code>test-files/</code>.</p>
    #           <p>Note that Amazon Transcribe must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html auth-role-iam-user">Permissions
    #                       Required for IAM User Roles</a>.</p>
    #           <p>If you don't specify <code>OutputBucketName</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    #
    #   @return [String]
    #
    # @!attribute output_key
    #   <p>Use in combination with <code>OutputBucketName</code> to specify the output location of
    #               your transcript and, optionally, a unique name for your output file. The default name for your
    #               transcription output is the same as the name you specified for your transcription job
    #               (<code>TranscriptionJobName</code>).</p>
    #           <p>Here are some examples of how you can use <code>OutputKey</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>TranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'my-transcript' as the <code>OutputKey</code>, your transcription output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'test-files/my-transcript.json' as the <code>OutputKey</code>, your transcription
    #                       output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>TranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'test-files/my-transcript' as the <code>OutputKey</code>, your transcription output
    #                       path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #            </ul>
    #           <p>If you specify the name of an Amazon S3 bucket sub-folder that doesn't exist, one is
    #               created for you.</p>
    #
    #   @return [String]
    #
    # @!attribute output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your transcription output.</p>
    #           <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of
    #               four ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the KMS key ID itself. For example,
    #                       <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use an alias for the KMS key ID. For example,
    #                       <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,                    <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can
    #               specify your KMS key in one of two ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the ARN for the KMS key ID. For example,                     <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If you don't specify an encryption key, your output is encrypted with the default
    #               Amazon S3 key (SSE-S3).</p>
    #           <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #           <p>Note that the user making the
    #               request must have permission to use the specified KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that
    #               provide an added layer of security for your data. For more information, see
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html kms-context">KMS
    #                   encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in
    #                       KMS</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute settings
    #   <p>Specify additional optional settings in your
    #               request, including channel identification, alternative transcriptions, speaker labeling; allows
    #               you to apply custom vocabularies and vocabulary filters.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use <code>Settings</code> with the <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #           <p>If you're using automatic language identification with your request and want to include a
    #               custom language model, a custom vocabulary, or a custom vocabulary filter, use instead the
    #               <code></code> parameter with the
    #               <code>LanguageModelName</code>, <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> sub-parameters.</p>
    #
    #   @return [Settings]
    #
    # @!attribute model_settings
    #   <p>Specify the custom language model you want to include with your transcription job. If you
    #               include <code>ModelSettings</code> in your request, you must include the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language
    #               models</a>.</p>
    #
    #   @return [ModelSettings]
    #
    # @!attribute job_execution_settings
    #   <p>Allows you to control how your transcription job is processed. Currently, the only
    #               <code>JobExecutionSettings</code> modification you can choose is enabling job queueing using
    #               the <code>AllowDeferredExecution</code> sub-parameter.</p>
    #           <p>If you include <code>JobExecutionSettings</code> in your request, you must also include
    #               the sub-parameters: <code>AllowDeferredExecution</code> and
    #               <code>DataAccessRoleArn</code>.</p>
    #
    #   @return [JobExecutionSettings]
    #
    # @!attribute content_redaction
    #   <p>Allows you to redact or flag specified personally identifiable information (PII) in your transcript. If
    #               you use <code>ContentRedaction</code>, you must also include the sub-parameters:
    #               <code>PiiEntityTypes</code>, <code>RedactionOutput</code>, and
    #               <code>RedactionType</code>.</p>
    #
    #   @return [ContentRedaction]
    #
    # @!attribute identify_language
    #   <p>Enables automatic language identification in your transcription job request.</p>
    #           <p>If you include <code>IdentifyLanguage</code>, you can optionally include a list of
    #               language codes, using <code>LanguageOptions</code>, that you think may be present in
    #               your media file. Including language options can improve transcription accuracy.</p>
    #           <p>If you want to apply a custom language model, a custom vocabulary, or a custom
    #               vocabulary filter to your automatic language identification request, include
    #               <code>LanguageIdSettings</code> with the relevant sub-parameters
    #               (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute identify_multiple_languages
    #   <p>Enables automatic multi-language identification in your transcription job request. Use this
    #               parameter if your media file contains more than one language.</p>
    #           <p>If you include <code>IdentifyMultipleLanguages</code>, you can optionally include a list
    #               of language codes, using <code>LanguageOptions</code>, that you think may be present in
    #               your media file. Including language options can improve transcription accuracy.</p>
    #           <p>If you want to apply a custom vocabulary or a custom vocabulary filter to your automatic
    #               language identification request, include <code>LanguageIdSettings</code> with the relevant
    #               sub-parameters (<code>VocabularyName</code> and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job fails.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute language_options
    #   <p>You can specify two or more language codes that represent the languages you think may
    #               be present in your media; including more than five is not recommended. If you're unsure what
    #               languages are present, do not include this parameter.</p>
    #           <p>If you include <code>LanguageOptions</code> in your request, you must also include
    #               <code>IdentifyLanguage</code>.</p>
    #           <p>For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a>.</p>
    #           <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>), your media file
    #               must be encoded at a sample rate of 16,000 Hz or higher.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subtitles
    #   <p>Produces subtitle files for your input media. You can specify WebVTT (*.vtt) and SubRip
    #               (*.srt) formats.</p>
    #
    #   @return [Subtitles]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new transcription
    #               job at the time you start this new job.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute language_id_settings
    #   <p>If using automatic language identification (<code>IdentifyLanguage</code>) in your request
    #               and you want to apply a custom language model, a custom vocabulary, or a custom vocabulary
    #               filter, include <code>LanguageIdSettings</code> with the relevant sub-parameters
    #               (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>You can specify two or more language codes that represent the languages you think may be
    #               present in your media; including more than five is not recommended. Each language code you
    #               include can have an associated custom language model, custom vocabulary, and custom
    #               vocabulary filter. The languages you specify must match the languages of the specified custom
    #               language models, custom vocabularies, and custom vocabulary filters.</p>
    #           <p>To include language options using <code>IdentifyLanguage</code>
    #               <b>without</b> including a custom language model, a custom
    #               vocabulary, or a custom vocabulary filter, use <code>LanguageOptions</code> instead of
    #               <code>LanguageIdSettings</code>. Including language options can improve the accuracy of
    #               automatic language identification.</p>
    #           <p>If you want to include a custom language model with your request but
    #               <b>do not</b> want to use automatic language identification,
    #               use instead the <code></code> parameter with the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use instead the <code></code>
    #               parameter with the <code>VocabularyName</code> or
    #               <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #
    #   @return [Hash<String, LanguageIdSettings>]
    #
    StartTranscriptionJobInput = ::Struct.new(
      :transcription_job_name,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :output_bucket_name,
      :output_key,
      :output_encryption_kms_key_id,
      :kms_encryption_context,
      :settings,
      :model_settings,
      :job_execution_settings,
      :content_redaction,
      :identify_language,
      :identify_multiple_languages,
      :language_options,
      :subtitles,
      :tags,
      :language_id_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transcription_job
    #   <p>Provides detailed information about the current transcription job, including job status
    #               and, if applicable, failure reason.</p>
    #
    #   @return [TranscriptionJob]
    #
    StartTranscriptionJobOutput = ::Struct.new(
      :transcription_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubtitleFormat
    #
    module SubtitleFormat
      # No documentation available.
      #
      VTT = "vtt"

      # No documentation available.
      #
      SRT = "srt"
    end

    # <p>Generate subtitles for your media file with your transcription request.</p>
    #         <p>You can choose a start index of 0 or 1, and you can specify either WebVTT or SubRip (or
    #             both) as your output format.</p>
    #         <p>Note that your subtitle files are placed in the same location as your transcription
    #             output.</p>
    #
    # @!attribute formats
    #   <p>Specify the output format for your subtitle file; if you select both WebVTT
    #               (<code>vtt</code>) and SubRip (<code>srt</code>) formats, two output files are
    #               generated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_start_index
    #   <p>Specify the starting value that is assigned to the first subtitle segment.</p>
    #           <p>The default start index for Amazon Transcribe is <code>0</code>, which differs from
    #               the more widely used standard of <code>1</code>. If you're uncertain which value to use,
    #               we recommend choosing <code>1</code>, as this may improve compatibility with other
    #               services.</p>
    #
    #   @return [Integer]
    #
    Subtitles = ::Struct.new(
      :formats,
      :output_start_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about your subtitle file, including format, start index, and
    #             Amazon S3 location.</p>
    #
    # @!attribute formats
    #   <p>Provides the format of your subtitle files. If your request included both WebVTT
    #               (<code>vtt</code>) and SubRip (<code>srt</code>) formats, both formats are
    #               shown.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subtitle_file_uris
    #   <p>The Amazon S3 location of your transcript. You can use this URI to access or
    #               download your subtitle file. Your subtitle file is stored in the same location as your
    #               transcript. If you specified both WebVTT and SubRip subtitle formats, two URIs are
    #               provided.</p>
    #           <p>If you included <code>OutputBucketName</code> in your transcription job request, this is
    #               the URI of that bucket. If you also included <code>OutputKey</code> in your request, your
    #               output is located in the path you specified in your request.</p>
    #           <p>If you didn't include <code>OutputBucketName</code> in your transcription job request,
    #               your subtitle file is stored in a service-managed bucket, and <code>TranscriptFileUri</code>
    #               provides you with a temporary URI you can use for secure access to your subtitle file.</p>
    #           <note>
    #               <p>Temporary URIs for service-managed Amazon S3 buckets are only valid for 15
    #                   minutes. If you get an <code>AccesDenied</code> error, you can get a new temporary
    #                   URI by running a <code>GetTranscriptionJob</code> or
    #                   <code>ListTranscriptionJob</code> request.</p>
    #           </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_start_index
    #   <p>Provides the start index value for your subtitle files. If you did not specify a value
    #               in your request, the default value of <code>0</code> is used.</p>
    #
    #   @return [Integer]
    #
    SubtitlesOutput = ::Struct.new(
      :formats,
      :subtitle_file_uris,
      :output_start_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Adds metadata, in the form of a key:value pair, to the specified resource.</p>
    #         <p>For example, you could add the tag <code>Department:Sales</code> to a
    #             resource to indicate that it pertains to your organization's sales department. You can also use
    #             tags for tag-based access control.</p>
    #         <p>To learn more about tagging, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @!attribute key
    #   <p>The first part of a key:value pair that forms a tag associated with a given resource. For
    #               example, in the tag <code>Department:Sales</code>, the key is 'Department'.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The second part of a key:value pair that forms a tag associated with a given resource.
    #               For example, in the tag <code>Department:Sales</code>, the value is 'Sales'.</p>
    #           <p>Note that you can set the value of a tag to an empty string, but you can't set the value of a
    #               tag to null. Omitting the tag value is the same as using an empty string.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag. ARNs have the format
    #               <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #           <p>For example,
    #               <code>arn:aws:transcribe:us-west-2:account-id:transcription-job/transcription-job-name</code>.</p>
    #           <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #               <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #               <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #               <code>language-model</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to the specified
    #               resource.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides you with the Amazon S3 URI you can use to access your transcript.</p>
    #
    # @!attribute transcript_file_uri
    #   <p>The Amazon S3 location of your transcript. You can use this URI to access or
    #               download your transcript.</p>
    #           <p>If you included <code>OutputBucketName</code> in your transcription job request, this is
    #               the URI of that bucket. If you also included <code>OutputKey</code> in your request, your
    #               output is located in the path you specified in your request.</p>
    #           <p>If you didn't include <code>OutputBucketName</code> in your transcription job request,
    #               your transcript is stored in a service-managed bucket, and <code>TranscriptFileUri</code>
    #               provides you with a temporary URI you can use for secure access to your transcript.</p>
    #           <note>
    #               <p>Temporary URIs for service-managed Amazon S3 buckets are only valid for 15
    #                   minutes. If you get an <code>AccesDenied</code> error, you can get a new temporary
    #                   URI by running a <code>GetTranscriptionJob</code> or
    #                   <code>ListTranscriptionJob</code> request.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute redacted_transcript_file_uri
    #   <p>The Amazon S3 location of your redacted transcript. You can use this URI to access
    #               or download your transcript.</p>
    #           <p>If you included <code>OutputBucketName</code> in your transcription job request, this is
    #               the URI of that bucket. If you also included <code>OutputKey</code> in your request, your
    #               output is located in the path you specified in your request.</p>
    #           <p>If you didn't include <code>OutputBucketName</code> in your transcription job request,
    #               your transcript is stored in a service-managed bucket, and
    #               <code>RedactedTranscriptFileUri</code> provides you with a temporary URI you can use for
    #               secure access to your transcript.</p>
    #           <note>
    #               <p>Temporary URIs for service-managed Amazon S3 buckets are only valid for 15
    #                   minutes. If you get an <code>AccesDenied</code> error, you can get a new temporary
    #                   URI by running a <code>GetTranscriptionJob</code> or
    #                   <code>ListTranscriptionJob</code> request.</p>
    #           </note>
    #
    #   @return [String]
    #
    Transcript = ::Struct.new(
      :transcript_file_uri,
      :redacted_transcript_file_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Flag the presence or absence of specific words or phrases detected in your Call Analytics
    #             transcription output.</p>
    #         <p>Rules using <code>TranscriptFilter</code> are designed to match:</p>
    #         <ul>
    #             <li>
    #                 <p>Custom words or phrases spoken by the agent, the customer, or both</p>
    #             </li>
    #             <li>
    #                 <p>Custom words or phrases <b>not</b> spoken by the
    #                     agent, the customer, or either</p>
    #             </li>
    #             <li>
    #                 <p>Custom words or phrases that occur at a specific time frame</p>
    #             </li>
    #          </ul>
    #         <p>See <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules">Rule
    #             criteria</a> for examples.</p>
    #
    # @!attribute transcript_filter_type
    #   <p>Flag the presence or absence of an exact match to the phrases you specify. For example, if you
    #               specify the phrase "speak to a manager" as your <code>Targets</code> value, only that exact
    #               phrase is flagged.</p>
    #           <p>Note that semantic matching is not supported. For example, if your customer says "speak to
    #               <i>the</i> manager", instead of "speak to <i>a</i>
    #               manager", your content is not flagged.</p>
    #
    #   Enum, one of: ["EXACT"]
    #
    #   @return [String]
    #
    # @!attribute absolute_time_range
    #   <p>Allows you to specify a time range (in milliseconds) in your audio, during which you want to
    #               search for the specified key words or phrases. See
    #               for more detail.</p>
    #
    #   @return [AbsoluteTimeRange]
    #
    # @!attribute relative_time_range
    #   <p>Allows you to specify a time range (in percentage) in your media file, during which you
    #               want to search for the specified key words or phrases. See
    #                for more detail.</p>
    #
    #   @return [RelativeTimeRange]
    #
    # @!attribute participant_role
    #   <p>Specify the participant you want to flag. Omitting this parameter is equivalent to specifying
    #               both participants.</p>
    #
    #   Enum, one of: ["AGENT", "CUSTOMER"]
    #
    #   @return [String]
    #
    # @!attribute negate
    #   <p>Set to <code>TRUE</code> to flag the absence of the phrase you specified in your request.
    #               Set to <code>FALSE</code> to flag the presence of the phrase you specified in your request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute targets
    #   <p>Specify the phrases you want to flag.</p>
    #
    #   @return [Array<String>]
    #
    TranscriptFilter = ::Struct.new(
      :transcript_filter_type,
      :absolute_time_range,
      :relative_time_range,
      :participant_role,
      :negate,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TranscriptFilterType
    #
    module TranscriptFilterType
      # No documentation available.
      #
      EXACT = "EXACT"
    end

    # <p>Provides detailed information about a transcription job.</p>
    #         <p>To view the status of the specified transcription job, check the
    #             <code>TranscriptionJobStatus</code> field. If the status is <code>COMPLETED</code>, the
    #             job is finished and you can find the results at the location specified in
    #             <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #             <code>FailureReason</code> provides details on why your transcription job failed.</p>
    #         <p>If you enabled content redaction, the redacted transcript
    #             can be found at the location specified in <code>RedactedTranscriptFileUri</code>.</p>
    #
    # @!attribute transcription_job_name
    #   <p>The name of the transcription job. Job names are case sensitive and must be unique
    #               within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute transcription_job_status
    #   <p>Provides the status of the specified transcription job.</p>
    #           <p>If the status is <code>COMPLETED</code>, the job is finished and you can find the results
    #               at the location specified in <code>TranscriptFileUri</code> (or
    #               <code>RedactedTranscriptFileUri</code>, if you requested transcript redaction). If the status is
    #               <code>FAILED</code>, <code>FailureReason</code> provides details on why your transcription
    #               job failed.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code used to create your transcription job. For a list of supported languages
    #               and their associated language codes, refer to the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a>
    #               table.</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_format
    #   <p>The format of the input media file.</p>
    #
    #   Enum, one of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #
    #   @return [String]
    #
    # @!attribute media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    #   @return [Media]
    #
    # @!attribute transcript
    #   <p>Provides you with the Amazon S3 URI you can use to access your transcript.</p>
    #
    #   @return [Transcript]
    #
    # @!attribute start_time
    #   <p>The date and time the specified transcription job began processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.789000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The date and time the specified transcription job request was made.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time the specified transcription job finished processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:33:13.922000-07:00</code> represents a transcription job
    #               that started processing at 12:33 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>If <code>TranscriptionJobStatus</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the transcription job request
    #               failed.</p>
    #           <p>The <code>FailureReason</code> field contains one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Unsupported media format</code>.</p>
    #                   <p>The media format specified in <code>MediaFormat</code> isn't valid. Refer to
    #                       <b>MediaFormat</b> for a list of supported formats.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>The media format provided does not match the detected media
    #                       format</code>.</p>
    #                   <p>The media format specified in <code>MediaFormat</code> doesn't match the
    #                       format of the input file. Check the media format of your media file and correct the
    #                       specified value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid sample rate for audio file</code>.</p>
    #                   <p>The sample rate specified in <code>MediaSampleRateHertz</code> isn't valid.
    #                       The sample rate must be between 8,000 and 48,000 Hertz.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>The sample rate provided does not match the detected sample
    #                       rate</code>.</p>
    #                   <p>The sample rate specified in <code>MediaSampleRateHertz</code> doesn't
    #                       match the sample rate detected in your input media file. Check the sample rate of
    #                       your media file and correct the specified value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid file size: file size too large</code>.</p>
    #                   <p>The size of your media file is larger than what Amazon Transcribe can process.
    #                       For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html limits">Guidelines and
    #                           quotas</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invalid number of channels: number of channels too large</code>.</p>
    #                   <p>Your audio contains more channels than Amazon Transcribe is able to process.
    #                       For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html limits">Guidelines and
    #                           quotas</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Specify additional optional settings in your
    #               request, including channel identification, alternative transcriptions, speaker labeling; allows you
    #               to apply custom vocabularies and vocabulary filters.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use <code>Settings</code> with the <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #           <p>If you're using automatic language identification with your request and want to include a
    #               custom language model, a custom vocabulary, or a custom vocabulary filter, do not use the
    #               <code>Settings</code> parameter; use instead the
    #               <code></code>
    #               parameter with the <code>LanguageModelName</code>, <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> sub-parameters.</p>
    #
    #   @return [Settings]
    #
    # @!attribute model_settings
    #   <p>The custom language model you want to include with your transcription job. If you include
    #               <code>ModelSettings</code> in your request, you must include the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #
    #   @return [ModelSettings]
    #
    # @!attribute job_execution_settings
    #   <p>Provides information about how your transcription job is being processed. This parameter shows
    #               if your request is queued and what data access role is being used.</p>
    #
    #   @return [JobExecutionSettings]
    #
    # @!attribute content_redaction
    #   <p>Redacts or flags specified personally identifiable information (PII) in your transcript.</p>
    #
    #   @return [ContentRedaction]
    #
    # @!attribute identify_language
    #   <p>Indicates whether automatic language identification was enabled (<code>TRUE</code>)
    #               for the specified transcription job.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute identify_multiple_languages
    #   <p>Indicates whether automatic multi-language identification was enabled
    #               (<code>TRUE</code>) for the specified transcription job.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute language_options
    #   <p>You can specify two or more language codes that represent the languages you think may
    #               be present in your media; including more than five is not recommended. If you're unsure what
    #               languages are present, do not include this parameter.</p>
    #           <p>If you include <code>LanguageOptions</code> in your request, you must also include
    #               <code>IdentifyLanguage</code>.</p>
    #           <p>For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a>.</p>
    #           <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>), your media file
    #               must be encoded at a sample rate of 16,000 Hz or higher.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute identified_language_score
    #   <p>The confidence score associated with the language identified in your media file.</p>
    #           <p>Confidence scores are values between 0 and 1; a larger value indicates a higher
    #               probability that the identified language correctly matches the language spoken in your
    #               media.</p>
    #
    #   @return [Float]
    #
    # @!attribute language_codes
    #   <p>The language codes used to create your transcription job. This parameter is used with
    #               multi-language identification. For single-language identification requests, refer to the singular
    #               version of this parameter, <code>LanguageCode</code>.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a>
    #               table.</p>
    #
    #   @return [Array<LanguageCodeItem>]
    #
    # @!attribute tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new transcription
    #               job at the time you start this new job.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute subtitles
    #   <p>Generate subtitles for your media file with your transcription request.</p>
    #
    #   @return [SubtitlesOutput]
    #
    # @!attribute language_id_settings
    #   <p>If using automatic language identification (<code>IdentifyLanguage</code>) in your request
    #               and you want to apply a custom language model, a custom vocabulary, or a custom vocabulary
    #               filter, include <code>LanguageIdSettings</code> with the relevant sub-parameters
    #               (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>You can specify two or more language codes that represent the languages you think may be
    #               present in your media; including more than five is not recommended. Each language code you
    #               include can have an associated custom language model, custom vocabulary, and custom
    #               vocabulary filter. The languages you specify must match the languages of the specified custom
    #               language models, custom vocabularies, and custom vocabulary filters.</p>
    #           <p>To include language options using <code>IdentifyLanguage</code>
    #               <b>without</b> including a custom language model, a custom
    #               vocabulary, or a custom vocabulary filter, use <code>LanguageOptions</code> instead of
    #               <code>LanguageIdSettings</code>. Including language options can improve the accuracy of
    #               automatic language identification.</p>
    #           <p>If you want to include a custom language model with your request but
    #               <b>do not</b> want to use automatic language identification,
    #               use instead the <code></code> parameter with the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use instead the <code></code>
    #               parameter with the <code>VocabularyName</code> or
    #               <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #
    #   @return [Hash<String, LanguageIdSettings>]
    #
    TranscriptionJob = ::Struct.new(
      :transcription_job_name,
      :transcription_job_status,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :transcript,
      :start_time,
      :creation_time,
      :completion_time,
      :failure_reason,
      :settings,
      :model_settings,
      :job_execution_settings,
      :content_redaction,
      :identify_language,
      :identify_multiple_languages,
      :language_options,
      :identified_language_score,
      :language_codes,
      :tags,
      :subtitles,
      :language_id_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TranscriptionJobStatus
    #
    module TranscriptionJobStatus
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>Provides detailed information about a specific transcription job.</p>
    #
    # @!attribute transcription_job_name
    #   <p>The name of the transcription job. Job names are case sensitive and must be unique
    #               within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time the specified transcription job request was made.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The date and time your transcription job began processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.789000-07:00</code> represents a transcription job
    #               that started processing at 12:32 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time the specified transcription job finished processing.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:33:13.922000-07:00</code> represents a transcription job
    #               that started processing at 12:33 PM UTC-7 on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute language_code
    #   <p>The language code used to create your transcription.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute transcription_job_status
    #   <p>Provides the status of your transcription job.</p>
    #           <p>If the status is <code>COMPLETED</code>, the job is finished and you can find the results
    #               at the location specified in <code>TranscriptFileUri</code> (or
    #               <code>RedactedTranscriptFileUri</code>, if you requested transcript redaction). If the status is
    #               <code>FAILED</code>, <code>FailureReason</code> provides details on why your transcription
    #               job failed.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>TranscriptionJobStatus</code> is <code>FAILED</code>,
    #               <code>FailureReason</code> contains information about why the transcription job
    #               failed. See also: <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html">Common Errors</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location_type
    #   <p>Indicates where the specified transcription output is stored.</p>
    #           <p>If the value is <code>CUSTOMER_BUCKET</code>, the location is the Amazon S3
    #               bucket you specified using the <code>OutputBucketName</code> parameter in your
    #                request. If you also included
    #               <code>OutputKey</code> in your request, your output is located in the path you specified in your
    #               request.</p>
    #           <p>If the value is <code>SERVICE_BUCKET</code>, the location is a service-managed
    #               Amazon S3 bucket. To access a transcript stored in a service-managed bucket, use
    #               the URI shown in the <code>TranscriptFileUri</code> or <code>RedactedTranscriptFileUri</code>
    #               field.</p>
    #
    #   Enum, one of: ["CUSTOMER_BUCKET", "SERVICE_BUCKET"]
    #
    #   @return [String]
    #
    # @!attribute content_redaction
    #   <p>The content redaction settings of the transcription job.</p>
    #
    #   @return [ContentRedaction]
    #
    # @!attribute model_settings
    #   <p>Provides the name of the custom language model that was included in the specified
    #               transcription job.</p>
    #           <p>Only use <code>ModelSettings</code> with the <code>LanguageModelName</code>
    #               sub-parameter if you're <b>not</b> using automatic language
    #               identification (<code></code>).
    #               If using <code>LanguageIdSettings</code> in your request, this parameter contains a
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #
    #   @return [ModelSettings]
    #
    # @!attribute identify_language
    #   <p>Indicates whether automatic language identification was enabled (<code>TRUE</code>)
    #               for the specified transcription job.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute identify_multiple_languages
    #   <p>Indicates whether automatic multi-language identification was enabled
    #               (<code>TRUE</code>) for the specified transcription job.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute identified_language_score
    #   <p>The confidence score associated with the language identified in your media file.</p>
    #           <p>Confidence scores are values between 0 and 1; a larger value indicates a higher
    #               probability that the identified language correctly matches the language spoken in your
    #               media.</p>
    #
    #   @return [Float]
    #
    # @!attribute language_codes
    #   <p>The language codes used to create your transcription job. This parameter is used with
    #               multi-language identification. For single-language identification, the singular version of this
    #               parameter, <code>LanguageCode</code>, is present.</p>
    #
    #   @return [Array<LanguageCodeItem>]
    #
    TranscriptionJobSummary = ::Struct.new(
      :transcription_job_name,
      :creation_time,
      :start_time,
      :completion_time,
      :language_code,
      :transcription_job_status,
      :failure_reason,
      :output_location_type,
      :content_redaction,
      :model_settings,
      :identify_language,
      :identify_multiple_languages,
      :identified_language_score,
      :language_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Transcribe resource you want to remove
    #               tags from. ARNs have the format
    #               <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #           <p>For example,
    #               <code>arn:aws:transcribe:us-west-2:account-id:transcription-job/transcription-job-name</code>.</p>
    #           <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #               <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #               <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #               <code>language-model</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Removes the specified tag keys from the specified Amazon Transcribe resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_name
    #   <p>The name of the Call Analytics category you want to update. Category names are case
    #               sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The rules used for the updated Call Analytics category. The rules you provide in this field
    #               replace the ones that are currently being used in the specified category.</p>
    #
    #   @return [Array<Rule>]
    #
    UpdateCallAnalyticsCategoryInput = ::Struct.new(
      :category_name,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_properties
    #   <p>Provides you with the properties of the Call Analytics category you specified in your
    #               <code>UpdateCallAnalyticsCategory</code> request.</p>
    #
    #   @return [CategoryProperties]
    #
    UpdateCallAnalyticsCategoryOutput = ::Struct.new(
      :category_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom medical vocabulary you want to update. Vocabulary names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language of the entries in the custom vocabulary
    #               you want to update. US English (<code>en-US</code>) is the only language supported with
    #               Amazon Transcribe Medical.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom medical
    #               vocabulary. The URI must be located in the same Amazon Web Services Region as the resource
    #               you're calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #
    #   @return [String]
    #
    UpdateMedicalVocabularyInput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_file_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the updated custom medical vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your medical vocabulary. US English
    #               (<code>en-US</code>) is the only language supported with Amazon Transcribe Medical.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified custom medical vocabulary was last updated.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom medical vocabulary. If the state is
    #               <code>READY</code>, you can use the vocabulary in a
    #               <code>StartMedicalTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    UpdateMedicalVocabularyOutput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :last_modified_time,
      :vocabulary_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to update. Vocabulary filter names
    #               are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute words
    #   <p>Use this parameter if you want to update your vocabulary filter by including all desired terms,
    #               as comma-separated values, within your request. The other option for updating your vocabulary
    #               filter is to save your entries in a text file and upload them to an Amazon S3 bucket, then
    #               specify the location of your file using the <code>VocabularyFilterFileUri</code>
    #               parameter.</p>
    #           <p>Note that if you include <code>Words</code> in your request, you cannot use
    #               <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vocabulary_filter_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary filter
    #               terms. The URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you
    #               cannot use <code>Words</code>; you must choose one or the other.</p>
    #
    #   @return [String]
    #
    UpdateVocabularyFilterInput = ::Struct.new(
      :vocabulary_filter_name,
      :words,
      :vocabulary_filter_file_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_filter_name
    #   <p>The name of the updated custom vocabulary filter.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your vocabulary filter.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified vocabulary filter was last updated.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    UpdateVocabularyFilterOutput = ::Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the custom vocabulary you want to update. Vocabulary names are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language of the entries in the custom vocabulary
    #               you want to update. Each vocabulary must contain terms in only one language.</p>
    #           <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               vocabulary. For example, if you create a vocabulary using US English (<code>en-US</code>),
    #               you can only apply this vocabulary to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute phrases
    #   <p>Use this parameter if you want to update your vocabulary by including all desired terms, as
    #               comma-separated values, within your request. The other option for updating your vocabulary is to
    #               save your entries in a text file and upload them to an Amazon S3 bucket, then specify
    #               the location of your file using the <code>VocabularyFileUri</code> parameter.</p>
    #           <p>Note that if you include <code>Phrases</code> in your request, you cannot use
    #               <code>VocabularyFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary. The
    #               URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFileUri</code> in your request, you
    #               cannot use the <code>Phrases</code> flag; you must choose one or the other.</p>
    #
    #   @return [String]
    #
    UpdateVocabularyInput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_name
    #   <p>The name of the updated custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code you selected for your custom vocabulary.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified vocabulary was last updated.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom vocabulary. If the state is <code>READY</code>, you
    #               can use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    UpdateVocabularyOutput = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :last_modified_time,
      :vocabulary_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a vocabulary filter, including the language of the filter, when it
    #             was last modified, and its name.</p>
    #
    # @!attribute vocabulary_filter_name
    #   <p>A unique name, chosen by you, for your custom vocabulary filter. This name is case
    #               sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code that represents the language of the entries in your vocabulary
    #               filter. Each vocabulary filter must contain terms in only one language.</p>
    #           <p>A vocabulary filter can only be used to transcribe files in the same language as the
    #               filter. For example, if you create a vocabulary filter using US English (<code>en-US</code>), you
    #               can only apply this filter to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified vocabulary filter was last modified.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    VocabularyFilterInfo = ::Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # <p>Provides information about a custom vocabulary, including the language of the vocabulary,
    #             when it was last modified, its name, and the processing state.</p>
    #
    # @!attribute vocabulary_name
    #   <p>A unique name, chosen by you, for your custom vocabulary. This name is case sensitive,
    #               cannot contain spaces, and must be unique within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code used to create your custom vocabulary. Each vocabulary must contain
    #               terms in only one language.</p>
    #           <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               vocabulary. For example, if you create a vocabulary using US English (<code>en-US</code>),
    #               you can only apply this vocabulary to files that contain English audio.</p>
    #
    #   Enum, one of: ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the specified vocabulary was last modified.</p>
    #           <p>Timestamps are in the format <code>YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC</code>. For
    #               example, <code>2022-05-04T12:32:58.761000-07:00</code> represents 12:32 PM UTC-7
    #               on May 4, 2022.</p>
    #
    #   @return [Time]
    #
    # @!attribute vocabulary_state
    #   <p>The processing state of your custom vocabulary. If the state is <code>READY</code>, you
    #               can use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>
    #
    #   Enum, one of: ["PENDING", "READY", "FAILED"]
    #
    #   @return [String]
    #
    VocabularyInfo = ::Struct.new(
      :vocabulary_name,
      :language_code,
      :last_modified_time,
      :vocabulary_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VocabularyState
    #
    module VocabularyState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

  end
end
