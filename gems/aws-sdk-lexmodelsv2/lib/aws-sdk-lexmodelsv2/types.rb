# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelsV2
  module Types

    # <p>Provides settings that enable advanced recognition settings for slot values.</p>
    #
    # @!attribute audio_recognition_strategy
    #   <p>Enables using the slot values as a custom vocabulary for recognizing user utterances.</p>
    #
    #   Enum, one of: ["UseSlotValuesAsCustomVocabulary"]
    #
    #   @return [String]
    #
    AdvancedRecognitionSetting = ::Struct.new(
      :audio_recognition_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters responses returned by the
    #             <code>ListAggregatedUtterances</code> operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to filter the utterance list.</p>
    #
    #   Enum, one of: ["Utterance"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value to use for filtering the list of bots.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListAggregatedUtterances</code> operation should return only
    #            utterances that equal the specified value. Specify <code>CO</code> when
    #            the <code>ListAggregatedUtterances</code> operation should return
    #            utterances that contain the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    AggregatedUtterancesFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregatedUtterancesFilterName
    #
    module AggregatedUtterancesFilterName
      # No documentation available.
      #
      Utterance = "Utterance"
    end

    # Includes enum constants for AggregatedUtterancesFilterOperator
    #
    module AggregatedUtterancesFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # Includes enum constants for AggregatedUtterancesSortAttribute
    #
    module AggregatedUtterancesSortAttribute
      # No documentation available.
      #
      HitCount = "HitCount"

      # No documentation available.
      #
      MissedCount = "MissedCount"
    end

    # <p>Specifies attributes for sorting a list of utterances.</p>
    #
    # @!attribute attribute
    #   <p>The utterance attribute to sort by.</p>
    #
    #   Enum, one of: ["HitCount", "MissedCount"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>Specifies whether to sort the aggregated utterances in ascending or
    #            descending order.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    AggregatedUtterancesSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides summary information for aggregated utterances. The
    #             <code>ListAggregatedUtterances</code> operations combines all
    #          instances of the same utterance into a single aggregated
    #          summary.</p>
    #
    # @!attribute utterance
    #   <p>The text of the utterance. If the utterance was used with the
    #               <code>RecognizeUtterance</code> operation, the text is the
    #            transcription of the audio utterance.</p>
    #
    #   @return [String]
    #
    # @!attribute hit_count
    #   <p>The number of times that the utterance was detected by Amazon Lex during
    #            the time period. When an utterance is detected, it activates an intent
    #            or a slot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute missed_count
    #   <p>The number of times that the utterance was missed by Amazon Lex An
    #            utterance is missed when it doesn't activate an intent or slot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute utterance_first_recorded_in_aggregation_duration
    #   <p>The date and time that the utterance was first recorded in the time
    #            window for aggregation. An utterance may have been sent to Amazon Lex before
    #            that time, but only utterances within the time window are
    #            counted.</p>
    #
    #   @return [Time]
    #
    # @!attribute utterance_last_recorded_in_aggregation_duration
    #   <p>The last date and time that an utterance was recorded in the time
    #            window for aggregation. An utterance may be sent to Amazon Lex after that
    #            time, but only utterances within the time window are counted.</p>
    #
    #   @return [Time]
    #
    # @!attribute contains_data_from_deleted_resources
    #   <p>Aggregated utterance data may contain utterances from versions of
    #            your bot that have since been deleted. When the aggregated contains
    #            this kind of data, this field is set to true.</p>
    #
    #   @return [Boolean]
    #
    AggregatedUtterancesSummary = ::Struct.new(
      :utterance,
      :hit_count,
      :missed_count,
      :utterance_first_recorded_in_aggregation_duration,
      :utterance_last_recorded_in_aggregation_duration,
      :contains_data_from_deleted_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object containing information that associates the recommended
    #          intent/slot type with a conversation.</p>
    #
    # @!attribute transcript
    #   <p>The content of the transcript that meets the search filter criteria.
    #            For the JSON format of the transcript, see <a href="https://docs.aws.amazon.com/lex/latest/dg/designing-output-format.html">Output transcript
    #               format</a>.</p>
    #
    #   @return [String]
    #
    AssociatedTranscript = ::Struct.new(
      :transcript,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters to search for the associated transcript.</p>
    #
    # @!attribute name
    #   <p>The name of the field to use for filtering. The allowed names are
    #            IntentId and SlotTypeId.</p>
    #
    #   Enum, one of: ["IntentId", "SlotTypeId"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values to use to filter the transcript.</p>
    #
    #   @return [Array<String>]
    #
    AssociatedTranscriptFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociatedTranscriptFilterName
    #
    module AssociatedTranscriptFilterName
      # No documentation available.
      #
      IntentId = "IntentId"

      # No documentation available.
      #
      SlotTypeId = "SlotTypeId"
    end

    # <p>The location of audio log files collected when conversation logging
    #          is enabled for a bot.</p>
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket where the audio log files are stored. The IAM
    #            role specified in the <code>roleArn</code> parameter of the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html">CreateBot</a> operation must have permission to write to this
    #            bucket.</p>
    #
    #   @return [S3BucketLogDestination]
    #
    AudioLogDestination = ::Struct.new(
      :s3_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for logging audio of conversations between Amazon Lex and a
    #          user. You specify whether to log audio and the Amazon S3 bucket where
    #          the audio file is stored.</p>
    #
    # @!attribute enabled
    #   <p>Determines whether audio logging in enabled for the bot.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute destination
    #   <p>The location of audio log files collected when conversation logging
    #            is enabled for a bot.</p>
    #
    #   @return [AudioLogDestination]
    #
    AudioLogSetting = ::Struct.new(
      :enabled,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # Includes enum constants for AudioRecognitionStrategy
    #
    module AudioRecognitionStrategy
      # No documentation available.
      #
      UseSlotValuesAsCustomVocabulary = "UseSlotValuesAsCustomVocabulary"
    end

    # <p>Provides a record of an event that affects a bot alias. For example,
    #          when the version of a bot that the alias points to changes.</p>
    #
    # @!attribute bot_version
    #   <p>The version of the bot that was used in the event. </p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date and time that the event started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The date and time that the event ended.</p>
    #
    #   @return [Time]
    #
    BotAliasHistoryEvent = ::Struct.new(
      :bot_version,
      :start_date,
      :end_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies settings that are unique to a locale. For example, you can
    #          use different Lambda function depending on the bot's locale.</p>
    #
    # @!attribute enabled
    #   <p>Determines whether the locale is enabled for the bot. If the value
    #            is <code>false</code>, the locale isn't available for use.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute code_hook_specification
    #   <p>Specifies the Lambda function that should be used in the
    #            locale.</p>
    #
    #   @return [CodeHookSpecification]
    #
    BotAliasLocaleSettings = ::Struct.new(
      :enabled,
      :code_hook_specification,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # Includes enum constants for BotAliasStatus
    #
    module BotAliasStatus
      # No documentation available.
      #
      Creating = "Creating"

      # No documentation available.
      #
      Available = "Available"

      # No documentation available.
      #
      Deleting = "Deleting"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>Summary information about bot aliases returned from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotAliases.html">ListBotAliases</a> operation.</p>
    #
    # @!attribute bot_alias_id
    #   <p>The unique identifier assigned to the bot alias. You can use this ID
    #            to get detailed information about the alias using the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeBotAlias.html">DescribeBotAlias</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_name
    #   <p>The name of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that the bot alias references.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_status
    #   <p>The current state of the bot alias. If the status is
    #               <code>Available</code>, the alias is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot alias was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot alias was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    BotAliasSummary = ::Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the identity of a the bot that was exported.</p>
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot assigned by Amazon Lex.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that was exported. This will be either
    #               <code>DRAFT</code> or the version number.</p>
    #
    #   @return [String]
    #
    BotExportSpecification = ::Struct.new(
      :bot_id,
      :bot_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the responses returned by the <code>ListBots</code>
    #          operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to filter the list of bots.</p>
    #
    #   Enum, one of: ["BotName"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value to use for filtering the list of bots.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListBots</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #               <code>ListBots</code> operation should return aliases that contain
    #            the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    BotFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotFilterName
    #
    module BotFilterName
      # No documentation available.
      #
      BotName = "BotName"
    end

    # Includes enum constants for BotFilterOperator
    #
    module BotFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # <p>Provides the bot parameters required for importing a bot.</p>
    #
    # @!attribute bot_name
    #   <p>The name that Amazon Lex should use for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to build and run
    #            the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>By default, data stored by Amazon Lex is encrypted. The
    #               <code>DataPrivacy</code> structure provides settings that determine
    #            how Amazon Lex handles special cases of securing the data for your bot.
    #         </p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot. </p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #            import a bot. You can't use the <code>UpdateBot</code> operation to
    #            update tags. To update tags, use the <code>TagResource</code>
    #            operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute test_bot_alias_tags
    #   <p>A list of tags to add to the test alias for a bot. You can only add
    #            tags when you import a bot. You can't use the <code>UpdateAlias</code>
    #            operation to update tags. To update tags on the test alias, use the
    #               <code>TagResource</code> operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    BotImportSpecification = ::Struct.new(
      :bot_name,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_tags,
      :test_bot_alias_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the bot locale parameters required for exporting a bot
    #          locale.</p>
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot to create the locale for.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to export.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale to export. The string must
    #            match one of the locales in the bot.</p>
    #
    #   @return [String]
    #
    BotLocaleExportSpecification = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters responses returned by the <code>ListBotLocales</code>
    #          operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to filter the list of bots.</p>
    #
    #   Enum, one of: ["BotLocaleName"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value to use for filtering the list of bots.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListBotLocales</code> operation should return only aliases
    #            that equal the specified value. Specify <code>CO</code> when the
    #               <code>ListBotLocales</code> operation should return aliases that
    #            contain the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    BotLocaleFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotLocaleFilterName
    #
    module BotLocaleFilterName
      # No documentation available.
      #
      BotLocaleName = "BotLocaleName"
    end

    # Includes enum constants for BotLocaleFilterOperator
    #
    module BotLocaleFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # <p>Provides information about an event that occurred affecting the bot
    #          locale.</p>
    #
    # @!attribute event
    #   <p>A description of the event that occurred.</p>
    #
    #   @return [String]
    #
    # @!attribute event_date
    #   <p>A timestamp of the date and time that the event occurred.</p>
    #
    #   @return [Time]
    #
    BotLocaleHistoryEvent = ::Struct.new(
      :event,
      :event_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the bot locale parameters required for importing a bot
    #          locale.</p>
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot to import the locale to.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to import the locale to. This can only be the
    #               <code>DRAFT</code> version of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #               <code>AMAZON.FallbackIntent</code>,
    #               <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #            alternative intents. <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #            configured for the bot. </p>
    #            <p>For example, suppose a bot is configured with the confidence
    #            threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon
    #            Lex returns three alternative intents with the following confidence
    #            scores: IntentA (0.70), IntentB (0.60), IntentC (0.50). The response
    #            from the <code>PostText</code> operation would be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AMAZON.FallbackIntent</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentB</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IntentC</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute voice_settings
    #   <p>Defines settings for using an Amazon Polly voice to communicate with a
    #            user.</p>
    #
    #   @return [VoiceSettings]
    #
    BotLocaleImportSpecification = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotLocaleSortAttribute
    #
    module BotLocaleSortAttribute
      # No documentation available.
      #
      BotLocaleName = "BotLocaleName"
    end

    # <p>Specifies attributes for sorting a list of bot locales.</p>
    #
    # @!attribute attribute
    #   <p>The bot locale attribute to sort by.</p>
    #
    #   Enum, one of: ["BotLocaleName"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>Specifies whether to sort the bot locales in ascending or descending
    #            order.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    BotLocaleSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotLocaleStatus
    #
    module BotLocaleStatus
      # No documentation available.
      #
      Creating = "Creating"

      # No documentation available.
      #
      Building = "Building"

      # No documentation available.
      #
      Built = "Built"

      # No documentation available.
      #
      ReadyExpressTesting = "ReadyExpressTesting"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Deleting = "Deleting"

      # No documentation available.
      #
      NotBuilt = "NotBuilt"

      # No documentation available.
      #
      Importing = "Importing"

      # No documentation available.
      #
      Processing = "Processing"
    end

    # <p>Summary information about bot locales returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotLocales.html">ListBotLocales</a> operation.</p>
    #
    # @!attribute locale_id
    #   <p>The language and locale of the bot locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_name
    #   <p>The name of the bot locale.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bot locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_locale_status
    #   <p>The current status of the bot locale. When the status is
    #               <code>Built</code> the locale is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot locale was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_build_submitted_date_time
    #   <p>A timestamp of the date and time that the bot locale was last
    #            built.</p>
    #
    #   @return [Time]
    #
    BotLocaleSummary = ::Struct.new(
      :locale_id,
      :locale_name,
      :description,
      :bot_locale_status,
      :last_updated_date_time,
      :last_build_submitted_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A statistical summary of the bot recommendation results.</p>
    #
    # @!attribute intents
    #   <p>Statistical information about about the intents associated with the
    #            bot recommendation results.</p>
    #
    #   @return [IntentStatistics]
    #
    # @!attribute slot_types
    #   <p>Statistical information about the slot types associated with the bot
    #            recommendation results.</p>
    #
    #   @return [SlotTypeStatistics]
    #
    BotRecommendationResultStatistics = ::Struct.new(
      :intents,
      :slot_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object representing the URL of the bot definition, the URL of
    #          the associated transcript and a statistical summary of the bot
    #          recommendation results.</p>
    #
    # @!attribute bot_locale_export_url
    #   <p>The presigned URL link of the recommended bot definition.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_transcripts_url
    #   <p>The presigned url link of the associated transcript.</p>
    #
    #   @return [String]
    #
    # @!attribute statistics
    #   <p>The statistical summary of the bot recommendation results.</p>
    #
    #   @return [BotRecommendationResultStatistics]
    #
    BotRecommendationResults = ::Struct.new(
      :bot_locale_export_url,
      :associated_transcripts_url,
      :statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotRecommendationStatus
    #
    module BotRecommendationStatus
      # No documentation available.
      #
      Processing = "Processing"

      # No documentation available.
      #
      Deleting = "Deleting"

      # No documentation available.
      #
      Deleted = "Deleted"

      # No documentation available.
      #
      Downloading = "Downloading"

      # No documentation available.
      #
      Updating = "Updating"

      # No documentation available.
      #
      Available = "Available"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>A summary of the bot recommendation.</p>
    #
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation.</p>
    #            <p>If the status is Failed, then the reasons for the failure are listed
    #            in the failureReasons field. </p>
    #
    #   Enum, one of: ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            last updated.</p>
    #
    #   @return [Time]
    #
    BotRecommendationSummary = ::Struct.new(
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotSortAttribute
    #
    module BotSortAttribute
      # No documentation available.
      #
      BotName = "BotName"
    end

    # <p>Specifies attributes for sorting a list of bots.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of bots.</p>
    #
    #   Enum, one of: ["BotName"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    BotSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotStatus
    #
    module BotStatus
      # No documentation available.
      #
      Creating = "Creating"

      # No documentation available.
      #
      Available = "Available"

      # No documentation available.
      #
      Inactive = "Inactive"

      # No documentation available.
      #
      Deleting = "Deleting"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Versioning = "Versioning"

      # No documentation available.
      #
      Importing = "Importing"
    end

    # <p>Summary information about a bot returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBots.html">ListBots</a> operation.</p>
    #
    # @!attribute bot_id
    #   <p>The unique identifier assigned to the bot. Use this ID to get
    #            detailed information about the bot with the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeBot.html">DescribeBot</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_status
    #   <p>The current status of the bot. When the status is
    #               <code>Available</code> the bot is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute latest_bot_version
    #   <p>The latest numerical version in use for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the bot was last updated.</p>
    #
    #   @return [Time]
    #
    BotSummary = ::Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :bot_status,
      :latest_bot_version,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The version of a bot used for a bot locale.</p>
    #
    # @!attribute source_bot_version
    #   <p>The version of a bot used for a bot locale.</p>
    #
    #   @return [String]
    #
    BotVersionLocaleDetails = ::Struct.new(
      :source_bot_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BotVersionSortAttribute
    #
    module BotVersionSortAttribute
      # No documentation available.
      #
      BotVersion = "BotVersion"
    end

    # <p>Specifies attributes for sorting a list of bot versions.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of versions.</p>
    #
    #   Enum, one of: ["BotVersion"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can specify ascending or descending
    #            order.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    BotVersionSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a bot version returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotVersions.html">ListBotVersions</a> operation.</p>
    #
    # @!attribute bot_name
    #   <p>The name of the bot associated with the version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The numeric version of the bot, or <code>DRAFT</code> to indicate
    #            that this is the version of the bot that can be updated..</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_status
    #   <p>The status of the bot. When the status is available, the version of
    #            the bot is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the version was
    #            created.</p>
    #
    #   @return [Time]
    #
    BotVersionSummary = ::Struct.new(
      :bot_name,
      :bot_version,
      :description,
      :bot_status,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to build. The identifier is returned in
    #            the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html">CreateBot</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to build. This can only be the draft version
    #            of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    BuildBotLocaleInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the specified bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that was built. This is only the draft
    #            version of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale specified of where the bot can be
    #            used.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_locale_status
    #   <p>The bot's build status. When the status is
    #               <code>ReadyExpressTesting</code> you can test the bot using the
    #            utterances defined for the intents and slot types. When the status is
    #               <code>Built</code>, the bot is ready for use and can be tested using
    #            any utterance.</p>
    #
    #   Enum, one of: ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    #   @return [String]
    #
    # @!attribute last_build_submitted_date_time
    #   <p>A timestamp indicating the date and time that the bot was last built
    #            for this locale.</p>
    #
    #   @return [Time]
    #
    BuildBotLocaleOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_locale_status,
      :last_build_submitted_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BuiltInIntentSortAttribute
    #
    module BuiltInIntentSortAttribute
      # No documentation available.
      #
      IntentSignature = "IntentSignature"
    end

    # <p>Specifies attributes for sorting a list of built-in intents.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of built-in intents.</p>
    #
    #   Enum, one of: ["IntentSignature"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can specify ascending or descending
    #            order.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    BuiltInIntentSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides summary information about a built-in intent for the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBuiltInIntents.html"> ListBuiltInIntents </a> operation.</p>
    #
    # @!attribute intent_signature
    #   <p>The signature of the built-in intent. Use this to specify the parent
    #            intent of a derived intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the intent.</p>
    #
    #   @return [String]
    #
    BuiltInIntentSummary = ::Struct.new(
      :intent_signature,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BuiltInSlotTypeSortAttribute
    #
    module BuiltInSlotTypeSortAttribute
      # No documentation available.
      #
      SlotTypeSignature = "SlotTypeSignature"
    end

    # <p>Specifies attributes for sorting a list of built-in slot
    #          types.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of built-in intents.</p>
    #
    #   Enum, one of: ["SlotTypeSignature"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    BuiltInSlotTypeSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides summary information about a built-in slot type for the
    #             <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBuiltInSlotTypes.html"> ListBuiltInSlotTypes </a>
    #          operation.</p>
    #
    # @!attribute slot_type_signature
    #   <p>The signature of the built-in slot type. Use this to specify the
    #            parent slot type of a derived slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the built-in slot type.</p>
    #
    #   @return [String]
    #
    BuiltInSlotTypeSummary = ::Struct.new(
      :slot_type_signature,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a button to use on a response card used to gather slot
    #          values from a user.</p>
    #
    # @!attribute text
    #   <p>The text that appears on the button. Use this to tell the user what
    #            value is returned when they choose this button.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value returned to Amazon Lex when the user chooses this button. This
    #            must be one of the slot values configured for the slot.</p>
    #
    #   @return [String]
    #
    Button = ::Struct.new(
      :text,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon CloudWatch Logs log group where the text and metadata logs are
    #          delivered. The log group must exist before you enable logging.</p>
    #
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the log group where text and
    #            metadata logs are delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute log_prefix
    #   <p>The prefix of the log stream name within the log group that you
    #            specified </p>
    #
    #   @return [String]
    #
    CloudWatchLogGroupLogDestination = ::Struct.new(
      :cloud_watch_log_group_arn,
      :log_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about code hooks that Amazon Lex calls during a
    #          conversation.</p>
    #
    # @!attribute lambda_code_hook
    #   <p>Specifies a Lambda function that verifies requests to a bot or
    #            fulfills the user's request to a bot.</p>
    #
    #   @return [LambdaCodeHook]
    #
    CodeHookSpecification = ::Struct.new(
      :lambda_code_hook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action that you tried to perform couldn't be completed because
    #          the resource is in a conflicting state. For example, deleting a bot
    #          that is in the CREATING state. Try your request again. </p>
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

    # <p>Configures conversation logging that saves audio, text, and metadata
    #          for the conversations with your users.</p>
    #
    # @!attribute text_log_settings
    #   <p>The Amazon CloudWatch Logs settings for logging text and metadata.</p>
    #
    #   @return [Array<TextLogSetting>]
    #
    # @!attribute audio_log_settings
    #   <p>The Amazon S3 settings for logging audio to an S3 bucket.</p>
    #
    #   @return [Array<AudioLogSetting>]
    #
    ConversationLogSettings = ::Struct.new(
      :text_log_settings,
      :audio_log_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_name
    #   <p>The alias to create. The name must be unique for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias. Use this description to help identify
    #            the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that this alias points to. You can use the
    #               <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_UpdateBotAlias.html">UpdateBotAlias</a> operation to change the
    #            bot version associated with the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_locale_settings
    #   <p>Maps configuration information to a specific locale. You can use
    #            this parameter to specify a specific Lambda function to run different
    #            functions in different locales.</p>
    #
    #   @return [Hash<String, BotAliasLocaleSettings>]
    #
    # @!attribute conversation_log_settings
    #   <p>Specifies whether Amazon Lex logs text and audio for a conversation with
    #            the bot. When you enable conversation logs, text logs store text input,
    #            transcripts of audio input, and associated metadata in Amazon CloudWatch Logs. Audio
    #            logs store audio input in Amazon S3.</p>
    #
    #   @return [ConversationLogSettings]
    #
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    #   @return [SentimentAnalysisSettings]
    #
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that the alias applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to add to the bot alias. You can only add tags when
    #            you create an alias, you can't use the <code>UpdateBotAlias</code>
    #            operation to update the tags on a bot alias. To update tags, use the
    #               <code>TagResource</code> operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateBotAliasInput = ::Struct.new(
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_name
    #   <p>The name specified for the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with this alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_locale_settings
    #   <p>Configuration information for a specific locale.</p>
    #
    #   @return [Hash<String, BotAliasLocaleSettings>]
    #
    # @!attribute conversation_log_settings
    #   <p>The conversation log settings specified for the alias.</p>
    #
    #   @return [ConversationLogSettings]
    #
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    #   @return [SentimentAnalysisSettings]
    #
    # @!attribute bot_alias_status
    #   <p>The current status of the alias. The alias is first put into the
    #               <code>Creating</code> state. When the alias is ready to be used, it
    #            is put into the <code>Available</code> state. You can use the
    #               <code>DescribeBotAlias</code> operation to get the current state of
    #            an alias.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that this alias applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A Unix timestamp indicating the date and time that the bot alias was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the bot alias.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateBotAliasOutput = ::Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot. The bot name must be unique in the account that
    #            creates the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot. It appears in lists to help you identify a
    #            particular bot.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>Provides information on additional privacy protections Amazon Lex should
    #            use with the bot's data.</p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot. </p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #            create a bot. You can't use the <code>UpdateBot</code> operation to
    #            update tags. To update tags, use the <code>TagResource</code>
    #            operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute test_bot_alias_tags
    #   <p>A list of tags to add to the test alias for a bot. You can only add
    #            tags when you create a bot. You can't use the <code>UpdateAlias</code>
    #            operation to update tags. To update tags on the test alias, use the
    #               <code>TagResource</code> operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateBotInput = ::Struct.new(
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_tags,
      :test_bot_alias_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to create the locale for.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to create the locale for. This can only be
    #            the draft version of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot locale. Use this to help identify the bot
    #            locale in lists.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #               <code>AMAZON.FallbackIntent</code>,
    #               <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #            alternative intents. <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #            configured for the bot.</p>
    #            <p>For example, suppose a bot is configured with the confidence
    #            threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex
    #            returns three alternative intents with the following confidence scores:
    #            IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the
    #               <code>RecognizeText</code> operation would be:</p>
    #            <ul>
    #               <li>
    #                  <p>AMAZON.FallbackIntent</p>
    #               </li>
    #               <li>
    #                  <p>IntentA</p>
    #               </li>
    #               <li>
    #                  <p>IntentB</p>
    #               </li>
    #               <li>
    #                  <p>IntentC</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute voice_settings
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
    #            user.</p>
    #
    #   @return [VoiceSettings]
    #
    CreateBotLocaleInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The specified bot identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The specified bot version.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_name
    #   <p>The specified locale name.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The specified locale identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The specified description of the bot locale.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The specified confidence threshold for inserting the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents.</p>
    #
    #   @return [Float]
    #
    # @!attribute voice_settings
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
    #            user.</p>
    #
    #   @return [VoiceSettings]
    #
    # @!attribute bot_locale_status
    #   <p>The status of the bot.</p>
    #            <p>When the status is <code>Creating</code> the bot locale is being
    #            configured. When the status is <code>Building</code> Amazon Lex is building
    #            the bot for testing and use.</p>
    #            <p>If the status of the bot is <code>ReadyExpressTesting</code>, you
    #            can test the bot using the exact utterances specified in the bots'
    #            intents. When the bot is ready for full testing or to run, the status
    #            is <code>Built</code>.</p>
    #            <p>If there was a problem with building the bot, the status is
    #               <code>Failed</code>. If the bot was saved but not built, the status
    #            is <code>NotBuilt</code>.</p>
    #
    #   Enum, one of: ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp specifying the date and time that the bot locale was
    #            created.</p>
    #
    #   @return [Time]
    #
    CreateBotLocaleOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_name,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :bot_locale_status,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>A unique identifier for a particular bot. You use this to identify
    #            the bot when you call other Amazon Lex API operations.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name specified for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM role specified for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>The data privacy settings specified for the bot.</p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The session idle time specified for the bot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_status
    #   <p>Shows the current status of the bot. The bot is first in the
    #               <code>Creating</code> status. Once the bot is read for use, it
    #            changes to the <code>Available</code> status. After the bot is created,
    #            you can use the <code>Draft</code> version of the bot.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp indicating the date and time that the bot was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute bot_tags
    #   <p>A list of tags associated with the bot.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute test_bot_alias_tags
    #   <p>A list of tags associated with the test alias for the bot.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateBotOutput = ::Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :bot_tags,
      :test_bot_alias_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to create the version for.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the version. Use the description to help identify
    #            the version in lists.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version_locale_specification
    #   <p>Specifies the locales that Amazon Lex adds to this version. You can
    #            choose the <code>Draft</code> version or any other previously published
    #            version for each locale. When you specify a source version, the locale
    #            data is copied from the source version to the new version.</p>
    #
    #   @return [Hash<String, BotVersionLocaleDetails>]
    #
    CreateBotVersionInput = ::Struct.new(
      :bot_id,
      :description,
      :bot_version_locale_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The bot identifier specified in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the version specified in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version number assigned to the version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version_locale_specification
    #   <p>The source versions used for each locale in the new version.</p>
    #
    #   @return [Hash<String, BotVersionLocaleDetails>]
    #
    # @!attribute bot_status
    #   <p>When you send a request to create or update a bot, Amazon Lex sets the
    #            status response element to <code>Creating</code>. After Amazon Lex builds
    #            the bot, it sets status to <code>Available</code>. If Amazon Lex can't build
    #            the bot, it sets status to <code>Failed</code>.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the version was
    #            created.</p>
    #
    #   @return [Time]
    #
    CreateBotVersionOutput = ::Struct.new(
      :bot_id,
      :description,
      :bot_version,
      :bot_version_locale_specification,
      :bot_status,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_specification
    #   <p>Specifies the type of resource to export, either a bot or a bot
    #            locale. You can only specify one type of resource to export.</p>
    #
    #   @return [ExportResourceSpecification]
    #
    # @!attribute file_format
    #   <p>The file format of the bot or bot locale definition files.</p>
    #
    #   Enum, one of: ["LexJson", "TSV"]
    #
    #   @return [String]
    #
    # @!attribute file_password
    #   <p>An password to use to encrypt the exported archive. Using a password
    #            is optional, but you should encrypt the archive to protect the data in
    #            transit between Amazon Lex and your local computer.</p>
    #
    #   @return [String]
    #
    CreateExportInput = ::Struct.new(
      :resource_specification,
      :file_format,
      :file_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexModelsV2::Types::CreateExportInput "\
          "resource_specification=#{resource_specification || 'nil'}, "\
          "file_format=#{file_format || 'nil'}, "\
          "file_password=\"[SENSITIVE]\">"
      end
    end

    # @!attribute export_id
    #   <p>An identifier for a specific request to create an export.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>A description of the type of resource that was exported, either a
    #            bot or a bot locale.</p>
    #
    #   @return [ExportResourceSpecification]
    #
    # @!attribute file_format
    #   <p>The file format used for the bot or bot locale definition
    #            files.</p>
    #
    #   Enum, one of: ["LexJson", "TSV"]
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Completed</code>,
    #            you can use the <a href="https://docs.aws.amazon.com/latest/dg/API_DescribeExport.html">DescribeExport</a> operation to get the
    #            pre-signed S3 URL link to your exported bot or bot locale.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the request to export a bot was
    #            created.</p>
    #
    #   @return [Time]
    #
    CreateExportOutput = ::Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_name
    #   <p>The name of the intent. Intent names must be unique in the locale
    #            that contains the intent and cannot match the name of any built-in
    #            intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the intent. Use the description to help identify
    #            the intent in lists.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_intent_signature
    #   <p>A unique identifier for the built-in intent to base this intent
    #            on.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances
    #   <p>An array of strings that a user might say to signal the intent. For
    #            example, "I want a pizza", or "I want a {PizzaSize} pizza". </p>
    #            <p>In an utterance, slot names are enclosed in curly braces ("{", "}")
    #            to indicate where they should be displayed in the utterance shown to
    #            the user.. </p>
    #
    #   @return [Array<SampleUtterance>]
    #
    # @!attribute dialog_code_hook
    #   <p>Specifies that Amazon Lex invokes the alias Lambda function for each user
    #            input. You can invoke this Lambda function to personalize user
    #            interaction.</p>
    #            <p>For example, suppose that your bot determines that the user's name
    #            is John. You Lambda function might retrieve John's information from a
    #            backend database and prepopulate some of the values. For example, if
    #            you find that John is gluten intolerant, you might set the
    #            corresponding intent slot, <code>glutenIntolerant</code> to
    #               <code>true</code>. You might find John's phone number and set the
    #            corresponding session attribute.</p>
    #
    #   @return [DialogCodeHookSettings]
    #
    # @!attribute fulfillment_code_hook
    #   <p>Specifies that Amazon Lex invokes the alias Lambda function when the
    #            intent is ready for fulfillment. You can invoke this function to
    #            complete the bot's transaction with the user.</p>
    #            <p>For example, in a pizza ordering bot, the Lambda function can look up
    #            the closest pizza restaurant to the customer's location and then place
    #            an order on the customer's behalf.</p>
    #
    #   @return [FulfillmentCodeHookSettings]
    #
    # @!attribute intent_confirmation_setting
    #   <p>Provides prompts that Amazon Lex sends to the user to confirm the
    #            completion of an intent. If the user answers "no," the settings contain
    #            a statement that is sent to the user to end the intent.</p>
    #
    #   @return [IntentConfirmationSetting]
    #
    # @!attribute intent_closing_setting
    #   <p>Sets the response that Amazon Lex sends to the user when the intent is
    #            closed.</p>
    #
    #   @return [IntentClosingSetting]
    #
    # @!attribute input_contexts
    #   <p>A list of contexts that must be active for this intent to be
    #            considered by Amazon Lex.</p>
    #            <p>When an intent has an input context list, Amazon Lex only considers using
    #            the intent in an interaction with the user when the specified contexts
    #            are included in the active context list for the session. If the
    #            contexts are not active, then Amazon Lex will not use the intent.</p>
    #            <p>A context can be automatically activated using the
    #               <code>outputContexts</code> property or it can be set at
    #            runtime.</p>
    #            <p> For example, if there are two intents with different input contexts
    #            that respond to the same utterances, only the intent with the active
    #            context will respond.</p>
    #            <p>An intent may have up to 5 input contexts. If an intent has multiple
    #            input contexts, all of the contexts must be active to consider the
    #            intent.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>A lists of contexts that the intent activates when it is
    #            fulfilled.</p>
    #            <p>You can use an output context to indicate the intents that Amazon Lex
    #            should consider for the next turn of the conversation with a customer. </p>
    #            <p>When you use the <code>outputContextsList</code> property, all of
    #            the contexts specified in the list are activated when the intent is
    #            fulfilled. You can set up to 10 output contexts. You can also set the
    #            number of conversation turns that the context should be active, or the
    #            length of time that the context should be active.</p>
    #
    #   @return [Array<OutputContext>]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration information required to use the
    #               <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon Kendra
    #            index. The <code>AMAZON.KendraSearchIntent</code> intent is called when
    #            Amazon Lex can't determine another intent to invoke.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with this
    #            intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this intent is used.
    #            All of the bots, slot types, and slots used by the intent must have the
    #            same locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    CreateIntentInput = ::Struct.new(
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_id
    #   <p>A unique identifier for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The name specified for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_intent_signature
    #   <p>The signature of the parent intent specified for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances
    #   <p>The sample utterances specified for the intent.</p>
    #
    #   @return [Array<SampleUtterance>]
    #
    # @!attribute dialog_code_hook
    #   <p>The dialog Lambda function specified for the intent.</p>
    #
    #   @return [DialogCodeHookSettings]
    #
    # @!attribute fulfillment_code_hook
    #   <p>The fulfillment Lambda function specified for the intent.</p>
    #
    #   @return [FulfillmentCodeHookSettings]
    #
    # @!attribute intent_confirmation_setting
    #   <p>The confirmation setting specified for the intent.</p>
    #
    #   @return [IntentConfirmationSetting]
    #
    # @!attribute intent_closing_setting
    #   <p>The closing setting specified for the intent.</p>
    #
    #   @return [IntentClosingSetting]
    #
    # @!attribute input_contexts
    #   <p>The list of input contexts specified for the intent.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>The list of output contexts specified for the intent.</p>
    #
    #   @return [Array<OutputContext>]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration for searching a Amazon Kendra index specified for the
    #            intent.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with the
    #            intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale that the intent is specified to use.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the intent was created.</p>
    #
    #   @return [Time]
    #
    CreateIntentOutput = ::Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>A resource policy to add to the resource. The policy is a JSON
    #            structure that contains one or more statements that define the policy.
    #            The policy must follow the IAM syntax. For more information about the
    #            contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>. </p>
    #            <p>If the policy isn't valid, Amazon Lex returns a validation
    #            exception.</p>
    #
    #   @return [String]
    #
    CreateResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy was attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #
    #   @return [String]
    #
    CreateResourcePolicyOutput = ::Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>The name of the statement. The ID is the same as the
    #               <code>Sid</code> IAM property. The statement name must be unique
    #            within the policy. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html">IAM
    #               JSON policy elements: Sid</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>Determines whether the statement allows or denies access to the
    #            resource.</p>
    #
    #   Enum, one of: ["Allow", "Deny"]
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>An IAM principal, such as an IAM users, IAM roles, or AWS services
    #            that is allowed or denied access to a resource. For more information,
    #            see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">AWS JSON policy elements: Principal</a>.</p>
    #
    #   @return [Array<Principal>]
    #
    # @!attribute action
    #   <p>The Amazon Lex action that this policy either allows or denies. The
    #            action must apply to the resource type of the specified ARN. For more
    #            information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html">
    #               Actions, resources, and condition keys for Amazon Lex V2</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute condition
    #   <p>Specifies a condition when the policy is in effect. If the principal
    #            of the policy is a service principal, you must provide two condition
    #            blocks, one with a SourceAccount global condition key and one with a
    #            SourceArn global condition key.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM JSON policy elements: Condition </a>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision of the policy to edit. If this
    #            revision ID doesn't match the current revision ID, Amazon Lex throws an
    #            exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex overwrites the contents of
    #            the policy with the new values.</p>
    #
    #   @return [String]
    #
    CreateResourcePolicyStatementInput = ::Struct.new(
      :resource_arn,
      :statement_id,
      :effect,
      :principal,
      :action,
      :condition,
      :expected_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #
    #   @return [String]
    #
    CreateResourcePolicyStatementOutput = ::Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_name
    #   <p>The name of the slot. Slot names must be unique within the bot that
    #            contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot. Use this to help identify the slot in
    #            lists.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_id
    #   <p>The unique identifier for the slot type associated with this slot.
    #            The slot type determines the values that can be entered into the
    #            slot.</p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_setting
    #   <p>Specifies prompts that Amazon Lex sends to the user to elicit a response
    #            that provides the value for the slot. </p>
    #
    #   @return [SlotValueElicitationSetting]
    #
    # @!attribute obfuscation_setting
    #   <p>Determines how slot values are used in Amazon CloudWatch logs. If the value of
    #            the <code>obfuscationSetting</code> parameter is
    #               <code>DefaultObfuscation</code>, slot values are obfuscated in the
    #            log output. If the value is <code>None</code>, the actual value is
    #            present in the log output.</p>
    #            <p>The default is to obfuscate values in the CloudWatch logs.</p>
    #
    #   @return [ObfuscationSetting]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot will be used
    #            in. The string must match one of the supported locales. All of the
    #            bots, intents, slot types used by the slot must have the same locale.
    #            For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot returns multiple values in one response.
    #            Multi-value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>. </p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #
    #   @return [MultipleValuesSetting]
    #
    CreateSlotInput = ::Struct.new(
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :multiple_values_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier associated with the slot. Use this to identify
    #            the slot when you update or delete it.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_name
    #   <p>The name specified for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_id
    #   <p>The unique identifier of the slot type associated with this
    #            slot.</p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_setting
    #   <p>The value elicitation settings specified for the slot.</p>
    #
    #   @return [SlotValueElicitationSetting]
    #
    # @!attribute obfuscation_setting
    #   <p>Indicates whether the slot is configured to obfuscate values in Amazon CloudWatch
    #            logs.</p>
    #
    #   @return [ObfuscationSetting]
    #
    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and local specified for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The unique identifier of the intent associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The timestamp of the date and time that the slot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot returns multiple values in one
    #            response.</p>
    #
    #   @return [MultipleValuesSetting]
    #
    CreateSlotOutput = ::Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :multiple_values_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_name
    #   <p>The name for the slot. A slot type name must be unique within the
    #            account.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot type. Use the description to help identify
    #            the slot type in lists.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_values
    #   <p>A list of <code>SlotTypeValue</code> objects that defines the values
    #            that the slot type can take. Each value can have a list of synonyms,
    #            additional values that help train the machine learning model about the
    #            values that it resolves for a slot.</p>
    #
    #   @return [Array<SlotTypeValue>]
    #
    # @!attribute value_selection_setting
    #   <p>Determines the strategy that Amazon Lex uses to select a value from the
    #            list of possible values. The field can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OriginalValue</code> - Returns the value entered by the
    #                  user, if the user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TopResolution</code> - If there is a resolution list for
    #                  the slot, return the first value in the resolution list. If there
    #                  is no resolution list, return null.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionSetting</code>
    #            parameter, the default is <code>OriginalValue</code>.</p>
    #
    #   @return [SlotValueSelectionSetting]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The built-in slot type used as a parent of this slot type. When you
    #            define a parent slot type, the new slot type has the configuration of
    #            the parent slot type.</p>
    #            <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with this slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the bot version associated with this slot
    #            type.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot type will be
    #            used in. The string must match one of the supported locales. All of the
    #            bots, intents, and slots used by the slot type must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute external_source_setting
    #   <p>Sets the type of external information used to create the slot
    #            type.</p>
    #
    #   @return [ExternalSourceSetting]
    #
    CreateSlotTypeInput = ::Struct.new(
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :external_source_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier assigned to the slot type. Use this to
    #            identify the slot type in the <code>UpdateSlotType</code> and
    #               <code>DeleteSlotType</code> operations.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_name
    #   <p>The name specified for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_values
    #   <p>The list of values that the slot type can assume.</p>
    #
    #   @return [Array<SlotTypeValue>]
    #
    # @!attribute value_selection_setting
    #   <p>The strategy that Amazon Lex uses to select a value from the list of
    #            possible values.</p>
    #
    #   @return [SlotValueSelectionSetting]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The signature of the base slot type specified for the slot
    #            type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier for the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The specified language and local specified for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the slot type was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute external_source_setting
    #   <p>The type of external information used to create the slot
    #            type.</p>
    #
    #   @return [ExternalSourceSetting]
    #
    CreateSlotTypeOutput = ::Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :external_source_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateUploadUrlInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>An identifier for a unique import job. Use it when you call the
    #               <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_StartImport.html">StartImport</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_url
    #   <p>A pre-signed S3 write URL. Upload the zip archive file that contains
    #            the definition of your bot or bot locale.</p>
    #
    #   @return [String]
    #
    CreateUploadUrlOutput = ::Struct.new(
      :import_id,
      :upload_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom response string that Amazon Lex sends to your application. You
    #          define the content and structure the string.</p>
    #
    # @!attribute value
    #   <p>The string that is sent to your application.</p>
    #
    #   @return [String]
    #
    CustomPayload = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the parameters required for exporting a custom vocabulary.</p>
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the custom vocabulary to export.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the custom vocabulary to export.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale of the bot that contains the custom vocabulary to export.</p>
    #
    #   @return [String]
    #
    CustomVocabularyExportSpecification = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the parameters required for importing a custom vocabulary.</p>
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot to import the custom vocabulary to.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to import the custom vocabulary to.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the local to import the custom vocabulary to. The value must
    #         be <code>en_GB</code>.</p>
    #
    #   @return [String]
    #
    CustomVocabularyImportSpecification = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomVocabularyStatus
    #
    module CustomVocabularyStatus
      # No documentation available.
      #
      Ready = "Ready"

      # No documentation available.
      #
      Deleting = "Deleting"

      # No documentation available.
      #
      Exporting = "Exporting"

      # No documentation available.
      #
      Importing = "Importing"

      # No documentation available.
      #
      Creating = "Creating"
    end

    # <p>By default, data stored by Amazon Lex is encrypted. The
    #             <code>DataPrivacy</code> structure provides settings that determine
    #          how Amazon Lex handles special cases of securing the data for your bot.
    #       </p>
    #
    # @!attribute child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #            you must specify whether your use of Amazon Lex is related to a website,
    #            program, or other application that is directed or targeted, in whole or
    #            in part, to children under age 13 and subject to the Children's Online
    #            Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #               <code>false</code> in the <code>childDirected</code> field. By
    #            specifying <code>true</code> in the <code>childDirected</code> field,
    #            you confirm that your use of Amazon Lex <b>is</b>
    #            related to a website, program, or other application that is directed or
    #            targeted, in whole or in part, to children under age 13 and subject to
    #            COPPA. By specifying <code>false</code> in the
    #               <code>childDirected</code> field, you confirm that your use of Amazon Lex
    #               <b>is not</b> related to a website,
    #            program, or other application that is directed or targeted, in whole or
    #            in part, to children under age 13 and subject to COPPA. You may not
    #            specify a default value for the <code>childDirected</code> field that
    #            does not accurately reflect whether your use of Amazon Lex is related to a
    #            website, program, or other application that is directed or targeted, in
    #            whole or in part, to children under age 13 and subject to COPPA. If
    #            your use of Amazon Lex relates to a website, program, or other application
    #            that is directed in whole or in part, to children under age 13, you
    #            must obtain any required verifiable parental consent under COPPA. For
    #            information regarding the use of Amazon Lex in connection with websites,
    #            programs, or other applications that are directed or targeted, in whole
    #            or in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs data-security">Amazon Lex
    #               FAQ</a>.</p>
    #
    #   @return [Boolean]
    #
    DataPrivacy = ::Struct.new(
      :child_directed,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.child_directed ||= false
      end
    end

    # <p>The object used for specifying the data range that the customer
    #          wants Amazon Lex to read through in the input transcripts.</p>
    #
    # @!attribute start_date_time
    #   <p>A timestamp indicating the start date for the date range
    #            filter.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>A timestamp indicating the end date for the date range
    #            filter.</p>
    #
    #   @return [Time]
    #
    DateRangeFilter = ::Struct.new(
      :start_date_time,
      :end_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the alias to
    #            delete.</p>
    #
    #   @return [String]
    #
    # @!attribute skip_resource_in_use_check
    #   <p>When this parameter is true, Amazon Lex doesn't check to see if any other
    #            resource is using the alias before it is deleted.</p>
    #
    #   @return [Boolean]
    #
    DeleteBotAliasInput = ::Struct.new(
      :bot_alias_id,
      :bot_id,
      :skip_resource_in_use_check,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_resource_in_use_check ||= false
      end
    end

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the alias to
    #            delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_status
    #   <p>The current status of the alias. The status is <code>Deleting</code>
    #            while the alias is in the process of being deleted. Once the alias is
    #            deleted, it will no longer appear in the list of aliases returned by
    #            the <code>ListBotAliases</code> operation.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    DeleteBotAliasOutput = ::Struct.new(
      :bot_alias_id,
      :bot_id,
      :bot_alias_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to delete. </p>
    #
    #   @return [String]
    #
    # @!attribute skip_resource_in_use_check
    #   <p>When <code>true</code>, Amazon Lex doesn't check to see if another
    #            resource, such as an alias, is using the bot before it is
    #            deleted.</p>
    #
    #   @return [Boolean]
    #
    DeleteBotInput = ::Struct.new(
      :bot_id,
      :skip_resource_in_use_check,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_resource_in_use_check ||= false
      end
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the locale. </p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that will be deleted. The
    #            string must match one of the supported locales. For more information,
    #            see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    DeleteBotLocaleInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contained the deleted locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contained the deleted locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the deleted locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_locale_status
    #   <p>The status of deleting the bot locale. The locale first enters the
    #               <code>Deleting</code> status. Once the locale is deleted it no
    #            longer appears in the list of locales for the bot.</p>
    #
    #   Enum, one of: ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    #   @return [String]
    #
    DeleteBotLocaleOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_locale_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that Amazon Lex is deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_status
    #   <p>The current status of the bot. The status is <code>Deleting</code>
    #            while the bot and its associated resources are being deleted.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    DeleteBotOutput = ::Struct.new(
      :bot_id,
      :bot_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute skip_resource_in_use_check
    #   <p>By default, the <code>DeleteBotVersion</code> operations throws a
    #               <code>ResourceInUseException</code> exception if you try to delete a
    #            bot version that has an alias pointing at it. Set the
    #               <code>skipResourceInUseCheck</code> parameter to <code>true</code>
    #            to skip this check and remove the version even if an alias points to
    #            it.</p>
    #
    #   @return [Boolean]
    #
    DeleteBotVersionInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :skip_resource_in_use_check,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_resource_in_use_check ||= false
      end
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that is being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that is being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_status
    #   <p>The current status of the bot. </p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    DeleteBotVersionOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :bot_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot to remove the custom
    #         vocabulary from.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to remove the custom vocabulary
    #         from.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale identifier for the locale that contains the
    #         custom vocabulary to remove.</p>
    #
    #   @return [String]
    #
    DeleteCustomVocabularyInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that the custom vocabulary
    #         was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that the custom vocabulary
    #            was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale identifier for the locale that the
    #            custom vocabulary was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_vocabulary_status
    #   <p>The status of removing the custom vocabulary.</p>
    #
    #   Enum, one of: ["Ready", "Deleting", "Exporting", "Importing", "Creating"]
    #
    #   @return [String]
    #
    DeleteCustomVocabularyOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the export to delete.</p>
    #
    #   @return [String]
    #
    DeleteExportInput = ::Struct.new(
      :export_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the deleted export.</p>
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The current status of the deletion. When the deletion is complete,
    #            the export will no longer be returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListExports.html">ListExports</a> operation and calls to the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeExport.html">
    #               DescribeExport</a> operation with the export identifier will
    #            fail.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    DeleteExportOutput = ::Struct.new(
      :export_id,
      :export_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the import to delete.</p>
    #
    #   @return [String]
    #
    DeleteImportInput = ::Struct.new(
      :import_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the deleted import.</p>
    #
    #   @return [String]
    #
    # @!attribute import_status
    #   <p>The current status of the deletion. When the deletion is complete,
    #            the import will no longer be returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListImports.html">ListImports</a> operation and calls to the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeImport.html">DescribeImport</a> operation with the import identifier will
    #            fail.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    DeleteImportOutput = ::Struct.new(
      :import_id,
      :import_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_id
    #   <p>The unique identifier of the intent to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where the bot will be
    #            deleted. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    DeleteIntentInput = ::Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIntentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that has the
    #            resource policy attached.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision to edit. If this ID doesn't match the
    #            current revision number, Amazon Lex returns an exception</p>
    #            <p>If you don't specify a revision ID, Amazon Lex will delete the current
    #            policy.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :expected_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy was deleted from.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyOutput = ::Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>The name of the statement (SID) to delete from the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision of the policy to delete the statement
    #            from. If this revision ID doesn't match the current revision ID, Amazon Lex
    #            throws an exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex removes the current contents
    #            of the statement. </p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyStatementInput = ::Struct.new(
      :resource_arn,
      :statement_id,
      :expected_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy statement was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyStatementOutput = ::Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_id
    #   <p>The identifier of the slot to delete. </p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot will be
    #            deleted from. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The identifier of the intent associated with the slot.</p>
    #
    #   @return [String]
    #
    DeleteSlotInput = ::Struct.new(
      :slot_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSlotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_id
    #   <p>The identifier of the slot type to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the slot type will be
    #            deleted from. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute skip_resource_in_use_check
    #   <p>By default, the <code>DeleteSlotType</code> operations throws a
    #               <code>ResourceInUseException</code> exception if you try to delete a
    #            slot type used by a slot. Set the <code>skipResourceInUseCheck</code>
    #            parameter to <code>true</code> to skip this check and remove the slot
    #            type even if a slot uses it.</p>
    #
    #   @return [Boolean]
    #
    DeleteSlotTypeInput = ::Struct.new(
      :slot_type_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :skip_resource_in_use_check,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_resource_in_use_check ||= false
      end
    end

    DeleteSlotTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the
    #            utterances.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where the utterances were
    #            collected. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The unique identifier of the session with the user. The ID is
    #            returned in the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_RecognizeText.html">RecognizeText</a> and <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_RecognizeUtterance.html">RecognizeUtterance</a> operations.</p>
    #
    #   @return [String]
    #
    DeleteUtterancesInput = ::Struct.new(
      :bot_id,
      :locale_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUtterancesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the bot alias to
    #            describe.</p>
    #
    #   @return [String]
    #
    DescribeBotAliasInput = ::Struct.new(
      :bot_alias_id,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_name
    #   <p>The name of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_locale_settings
    #   <p>The locale settings that are unique to the alias.</p>
    #
    #   @return [Hash<String, BotAliasLocaleSettings>]
    #
    # @!attribute conversation_log_settings
    #   <p>Specifics of how Amazon Lex logs text and audio conversations with the
    #            bot associated with the alias.</p>
    #
    #   @return [ConversationLogSettings]
    #
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    #   @return [SentimentAnalysisSettings]
    #
    # @!attribute bot_alias_history_events
    #   <p>A list of events that affect a bot alias. For example, an event is
    #            recorded when the version that the alias points to changes.</p>
    #
    #   @return [Array<BotAliasHistoryEvent>]
    #
    # @!attribute bot_alias_status
    #   <p>The current status of the alias. When the alias is
    #               <code>Available</code>, the alias is ready for use with your
    #            bot.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the alias was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the alias was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    DescribeBotAliasOutput = ::Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_history_events,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot to describe.</p>
    #
    #   @return [String]
    #
    DescribeBotInput = ::Struct.new(
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with the
    #            locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The unique identifier of the locale to describe. The string must
    #            match one of the supported locales. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>. </p>
    #
    #   @return [String]
    #
    DescribeBotLocaleInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the version of the bot associated with the
    #            locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The unique identifier of the described locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_name
    #   <p>The name of the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The confidence threshold where Amazon Lex inserts the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #
    #   @return [Float]
    #
    # @!attribute voice_settings
    #   <p>The Amazon Polly voice Amazon Lex uses for voice interaction with the
    #            user.</p>
    #
    #   @return [VoiceSettings]
    #
    # @!attribute intents_count
    #   <p>The number of intents defined for the locale.</p>
    #
    #   @return [Integer]
    #
    # @!attribute slot_types_count
    #   <p>The number of slot types defined for the locale.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_locale_status
    #   <p>The status of the bot. If the status is <code>Failed</code>, the
    #            reasons for the failure are listed in the <code>failureReasons</code>
    #            field.</p>
    #
    #   Enum, one of: ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>if <code>botLocaleStatus</code> is <code>Failed</code>, Amazon Lex
    #            explains why it failed to build the bot.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the locale was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the locale was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_build_submitted_date_time
    #   <p>The date and time that the locale was last submitted for
    #            building.</p>
    #
    #   @return [Time]
    #
    # @!attribute bot_locale_history_events
    #   <p>History of changes, such as when a locale is used in an alias, that
    #            have taken place for the locale.</p>
    #
    #   @return [Array<BotLocaleHistoryEvent>]
    #
    # @!attribute recommended_actions
    #   <p>Recommended actions to take to resolve an error in the
    #               <code>failureReasons</code> field.</p>
    #
    #   @return [Array<String>]
    #
    DescribeBotLocaleOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :locale_name,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :intents_count,
      :slot_types_count,
      :bot_locale_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :last_build_submitted_date_time,
      :bot_locale_history_events,
      :recommended_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bot. </p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>Settings for managing data privacy of the bot and its conversations
    #            with users.</p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #            a conversation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_status
    #   <p>The current status of the bot. When the status is
    #               <code>Available</code> the bot is ready to be used in conversations
    #            with users.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    DescribeBotOutput = ::Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to describe. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation to describe.</p>
    #
    #   @return [String]
    #
    DescribeBotRecommendationInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation. If the status is Failed, then
    #            the reasons for the failure are listed in the failureReasons field.
    #         </p>
    #
    #   Enum, one of: ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation being described.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>If botRecommendationStatus is Failed, Amazon Lex explains why.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the bot recommendation was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the bot recommendation was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #
    #   @return [TranscriptSourceSetting]
    #
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that were used to encrypt the
    #            data related to the bot recommendation results, as well as the KMS key
    #            ARN used to encrypt the associated metadata.</p>
    #
    #   @return [EncryptionSetting]
    #
    # @!attribute bot_recommendation_results
    #   <p>The object representing the URL of the bot definition, the URL of
    #            the associated transcript and a statistical summary of the bot
    #            recommendation results.</p>
    #
    #   @return [BotRecommendationResults]
    #
    DescribeBotRecommendationOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :transcript_source_setting,
      :encryption_setting,
      :bot_recommendation_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot containing the version to return metadata
    #            for.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to return metadata for.</p>
    #
    #   @return [String]
    #
    DescribeBotVersionInput = ::Struct.new(
      :bot_id,
      :bot_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot that contains the version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot version.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>Data privacy settings for the bot version.</p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The number of seconds that a session with the bot remains active
    #            before it is discarded by Amazon Lex.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_status
    #   <p>The current status of the bot. When the status is
    #               <code>Available</code>, the bot version is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>If the <code>botStatus</code> is <code>Failed</code>, this contains
    #            a list of reasons that the version couldn't be built.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot version was
    #            created.</p>
    #
    #   @return [Time]
    #
    DescribeBotVersionOutput = ::Struct.new(
      :bot_id,
      :bot_name,
      :bot_version,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :failure_reasons,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The bot version of the bot to return metadata for.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale to return the custom vocabulary information for.
    #         The locale must be <code>en_GB</code>.</p>
    #
    #   @return [String]
    #
    DescribeCustomVocabularyMetadataInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the custom vocabulary to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale that contains the custom vocabulary to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_vocabulary_status
    #   <p>The status of the custom vocabulary. If the status is
    #         <code>Ready</code> the custom vocabulary is ready to use.</p>
    #
    #   Enum, one of: ["Ready", "Deleting", "Exporting", "Importing", "Creating"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the custom vocabulary was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the custom vocabulary was last updated.</p>
    #
    #   @return [Time]
    #
    DescribeCustomVocabularyMetadataOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the export to describe.</p>
    #
    #   @return [String]
    #
    DescribeExportInput = ::Struct.new(
      :export_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier of the described export.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>The bot, bot ID, and optional locale ID of the exported bot or bot
    #            locale.</p>
    #
    #   @return [ExportResourceSpecification]
    #
    # @!attribute file_format
    #   <p>The file format used in the files that describe the resource.
    #         </p>
    #
    #   Enum, one of: ["LexJson", "TSV"]
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Complete</code>
    #            the export archive file is available for download.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>If the <code>exportStatus</code> is failed, contains one or more
    #            reasons why the export could not be completed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute download_url
    #   <p>A pre-signed S3 URL that points to the bot or bot locale archive.
    #            The URL is only available for 5 minutes after calling the
    #               <code>DescribeExport</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the export was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The last date and time that the export was updated.</p>
    #
    #   @return [Time]
    #
    DescribeExportOutput = ::Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :failure_reasons,
      :download_url,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the import to describe.</p>
    #
    #   @return [String]
    #
    DescribeImportInput = ::Struct.new(
      :import_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier of the described import.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>The specifications of the imported bot, bot locale, or custom
    #            vocabulary.</p>
    #
    #   @return [ImportResourceSpecification]
    #
    # @!attribute imported_resource_id
    #   <p>The unique identifier that Amazon Lex assigned to the resource created by
    #            the import.</p>
    #
    #   @return [String]
    #
    # @!attribute imported_resource_name
    #   <p>The name of the imported resource.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_strategy
    #   <p>The strategy used when there was a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #
    #   Enum, one of: ["Overwrite", "FailOnConflict", "Append"]
    #
    #   @return [String]
    #
    # @!attribute import_status
    #   <p>The status of the import process. When the status is
    #               <code>Completed</code> the resource is imported and ready for
    #            use.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>If the <code>importStatus</code> field is <code>Failed</code>, this
    #            provides one or more reasons for the failure.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the import was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the import was last updated.</p>
    #
    #   @return [Time]
    #
    DescribeImportOutput = ::Struct.new(
      :import_id,
      :resource_specification,
      :imported_resource_id,
      :imported_resource_name,
      :merge_strategy,
      :import_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_id
    #   <p>The identifier of the intent to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intent to describe.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    DescribeIntentInput = ::Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_id
    #   <p>The unique identifier assigned to the intent when it was
    #            created.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The name specified for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_intent_signature
    #   <p>The identifier of the built-in intent that this intent is derived
    #            from, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances
    #   <p>User utterances that trigger this intent.</p>
    #
    #   @return [Array<SampleUtterance>]
    #
    # @!attribute dialog_code_hook
    #   <p>The Lambda function called during each turn of a conversation with
    #            the intent.</p>
    #
    #   @return [DialogCodeHookSettings]
    #
    # @!attribute fulfillment_code_hook
    #   <p>The Lambda function called when the intent is complete and ready for
    #            fulfillment.</p>
    #
    #   @return [FulfillmentCodeHookSettings]
    #
    # @!attribute slot_priorities
    #   <p>The list that determines the priority that slots should be elicited
    #            from the user.</p>
    #
    #   @return [Array<SlotPriority>]
    #
    # @!attribute intent_confirmation_setting
    #   <p>Prompts that Amazon Lex sends to the user to confirm completion of an
    #            intent.</p>
    #
    #   @return [IntentConfirmationSetting]
    #
    # @!attribute intent_closing_setting
    #   <p>The response that Amazon Lex sends to when the intent is closed.</p>
    #
    #   @return [IntentClosingSetting]
    #
    # @!attribute input_contexts
    #   <p>A list of contexts that must be active for the intent to be
    #            considered for sending to the user.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>A list of contexts that are activated when the intent is
    #            fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration information required to use the
    #               <code>AMAZON.KendraSearchIntent</code> intent.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale specified for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the intent was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the intent was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    DescribeIntentOutput = ::Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    DescribeResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The JSON structure that contains the resource policy. For more
    #            information about the contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #
    #   @return [String]
    #
    DescribeResourcePolicyOutput = ::Struct.new(
      :resource_arn,
      :policy,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot to describe.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #
    #   @return [String]
    #
    DescribeSlotInput = ::Struct.new(
      :slot_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier generated for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_name
    #   <p>The name specified for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_id
    #   <p>The identifier of the slot type that determines the values entered
    #            into the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_setting
    #   <p>Prompts that Amazon Lex uses to elicit a value for the slot.</p>
    #
    #   @return [SlotValueElicitationSetting]
    #
    # @!attribute obfuscation_setting
    #   <p>Whether slot values are shown in Amazon CloudWatch logs. If the value is
    #               <code>None</code>, the actual value of the slot is shown in
    #            logs.</p>
    #
    #   @return [ObfuscationSetting]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale specified for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The identifier of the intent associated with the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the slot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot accepts multiple values in a single
    #            utterance.</p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #
    #   @return [MultipleValuesSetting]
    #
    DescribeSlotOutput = ::Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :last_updated_date_time,
      :multiple_values_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_id
    #   <p>The identifier of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot type to
    #            describe. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    DescribeSlotTypeInput = ::Struct.new(
      :slot_type_id,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_name
    #   <p>The name specified for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description specified for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_values
    #   <p>The values that the slot type can take. Includes any synonyms for
    #            the slot type values.</p>
    #
    #   @return [Array<SlotTypeValue>]
    #
    # @!attribute value_selection_setting
    #   <p>The strategy that Amazon Lex uses to choose a value from a list of
    #            possible values.</p>
    #
    #   @return [SlotValueSelectionSetting]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The built in slot type used as a parent to this slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale specified for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the slot type was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot type was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute external_source_setting
    #   <p>Provides information about the external source of the slot type's
    #            definition.</p>
    #
    #   @return [ExternalSourceSetting]
    #
    DescribeSlotTypeOutput = ::Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :external_source_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings that determine the Lambda function that Amazon Lex uses for
    #          processing user responses.</p>
    #
    # @!attribute enabled
    #   <p>Enables the dialog code hook so that it processes user
    #            requests.</p>
    #
    #   @return [Boolean]
    #
    DialogCodeHookSettings = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # Includes enum constants for Effect
    #
    module Effect
      # No documentation available.
      #
      Allow = "Allow"

      # No documentation available.
      #
      Deny = "Deny"
    end

    # <p>The object representing the passwords that were used to encrypt the
    #          data related to the bot recommendation, as well as the KMS key ARN used
    #          to encrypt the associated metadata.</p>
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN used to encrypt the metadata associated with the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_locale_export_password
    #   <p>The password used to encrypt the recommended bot recommendation
    #            file.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_transcripts_password
    #   <p>The password used to encrypt the associated transcript file.</p>
    #
    #   @return [String]
    #
    EncryptionSetting = ::Struct.new(
      :kms_key_arn,
      :bot_locale_export_password,
      :associated_transcripts_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexModelsV2::Types::EncryptionSetting "\
          "kms_key_arn=#{kms_key_arn || 'nil'}, "\
          "bot_locale_export_password=\"[SENSITIVE]\", "\
          "associated_transcripts_password=\"[SENSITIVE]\">"
      end
    end

    # <p>Filters the response form the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListExports.html">ListExports</a> operation</p>
    #
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #
    #   Enum, one of: ["ExportResourceType"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values to use to filter the response. The values must be
    #               <code>Bot</code>, <code>BotLocale</code>, or
    #               <code>CustomVocabulary</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify EQ when the
    #               <code>ListExports</code> operation should return only resource types
    #            that equal the specified value. Specify CO when the
    #               <code>ListExports</code> operation should return resource types that
    #            contain the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    ExportFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportFilterName
    #
    module ExportFilterName
      # No documentation available.
      #
      ExportResourceType = "ExportResourceType"
    end

    # Includes enum constants for ExportFilterOperator
    #
    module ExportFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # <p>Provides information about the bot or bot locale that you want to
    #          export. You can specify the <code>botExportSpecification</code> or the
    #             <code>botLocaleExportSpecification</code>, but not both.</p>
    #
    # @!attribute bot_export_specification
    #   <p>Parameters for exporting a bot.</p>
    #
    #   @return [BotExportSpecification]
    #
    # @!attribute bot_locale_export_specification
    #   <p>Parameters for exporting a bot locale.</p>
    #
    #   @return [BotLocaleExportSpecification]
    #
    # @!attribute custom_vocabulary_export_specification
    #   <p>The parameters required to export a custom vocabulary.</p>
    #
    #   @return [CustomVocabularyExportSpecification]
    #
    ExportResourceSpecification = ::Struct.new(
      :bot_export_specification,
      :bot_locale_export_specification,
      :custom_vocabulary_export_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportSortAttribute
    #
    module ExportSortAttribute
      # No documentation available.
      #
      LastUpdatedDateTime = "LastUpdatedDateTime"
    end

    # <p>Provides information about sorting a list of exports.</p>
    #
    # @!attribute attribute
    #   <p>The export field to use for sorting.</p>
    #
    #   Enum, one of: ["LastUpdatedDateTime"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    ExportSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportStatus
    #
    module ExportStatus
      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Deleting = "Deleting"
    end

    # <p>Provides summary information about an export in an export list.
    #       </p>
    #
    # @!attribute export_id
    #   <p>The unique identifier that Amazon Lex assigned to the export.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>Information about the bot or bot locale that was exported.</p>
    #
    #   @return [ExportResourceSpecification]
    #
    # @!attribute file_format
    #   <p>The file format used in the export files.</p>
    #
    #   Enum, one of: ["LexJson", "TSV"]
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Completed</code>
    #            the export is ready to download.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the export was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the export was last updated.</p>
    #
    #   @return [Time]
    #
    ExportSummary = ::Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the external source of the slot type's
    #          definition.</p>
    #
    # @!attribute grammar_slot_type_setting
    #   <p>Settings required for a slot type based on a grammar that you
    #            provide.</p>
    #
    #   @return [GrammarSlotTypeSetting]
    #
    ExternalSourceSetting = ::Struct.new(
      :grammar_slot_type_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines if a Lambda function should be invoked for a specific
    #          intent.</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether a Lambda function should be invoked to fulfill a
    #            specific intent.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute post_fulfillment_status_specification
    #   <p>Provides settings for messages sent to the user for after the Lambda
    #            fulfillment function completes. Post-fulfillment messages can be sent
    #            for both streaming and non-streaming conversations.</p>
    #
    #   @return [PostFulfillmentStatusSpecification]
    #
    # @!attribute fulfillment_updates_specification
    #   <p>Provides settings for update messages sent to the user for
    #            long-running Lambda fulfillment functions. Fulfillment updates can be
    #            used only with streaming conversations.</p>
    #
    #   @return [FulfillmentUpdatesSpecification]
    #
    FulfillmentCodeHookSettings = ::Struct.new(
      :enabled,
      :post_fulfillment_status_specification,
      :fulfillment_updates_specification,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Provides settings for a message that is sent to the user when a
    #          fulfillment Lambda function starts running.</p>
    #
    # @!attribute delay_in_seconds
    #   <p>The delay between when the Lambda fulfillment function starts running
    #            and the start message is played. If the Lambda function returns before
    #            the delay is over, the start message isn't played.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_groups
    #   <p>One to 5 message groups that contain start messages. Amazon Lex chooses
    #            one of the messages to play to the user.</p>
    #
    #   @return [Array<MessageGroup>]
    #
    # @!attribute allow_interrupt
    #   <p>Determines whether the user can interrupt the start message while it
    #            is playing.</p>
    #
    #   @return [Boolean]
    #
    FulfillmentStartResponseSpecification = ::Struct.new(
      :delay_in_seconds,
      :message_groups,
      :allow_interrupt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides settings for a message that is sent periodically to the
    #          user while a fulfillment Lambda function is running.</p>
    #
    # @!attribute frequency_in_seconds
    #   <p>The frequency that a message is sent to the user. When the period
    #            ends, Amazon Lex chooses a message from the message groups and plays it to
    #            the user. If the fulfillment Lambda returns before the first period
    #            ends, an update message is not played to the user.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_groups
    #   <p>One to 5 message groups that contain update messages. Amazon Lex chooses
    #            one of the messages to play to the user.</p>
    #
    #   @return [Array<MessageGroup>]
    #
    # @!attribute allow_interrupt
    #   <p>Determines whether the user can interrupt an update message while it
    #            is playing.</p>
    #
    #   @return [Boolean]
    #
    FulfillmentUpdateResponseSpecification = ::Struct.new(
      :frequency_in_seconds,
      :message_groups,
      :allow_interrupt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for updating the user on the progress of
    #          fulfilling an intent.</p>
    #
    # @!attribute active
    #   <p>Determines whether fulfillment updates are sent to the user. When
    #            this field is true, updates are sent.</p>
    #            <p>If the <code>active</code> field is set to true, the
    #               <code>startResponse</code>, <code>updateResponse</code>, and
    #               <code>timeoutInSeconds</code> fields are required.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute start_response
    #   <p>Provides configuration information for the message sent to users
    #            when the fulfillment Lambda functions starts running.</p>
    #
    #   @return [FulfillmentStartResponseSpecification]
    #
    # @!attribute update_response
    #   <p>Provides configuration information for messages sent periodically to
    #            the user while the fulfillment Lambda function is running.</p>
    #
    #   @return [FulfillmentUpdateResponseSpecification]
    #
    # @!attribute timeout_in_seconds
    #   <p>The length of time that the fulfillment Lambda function should run
    #            before it times out.</p>
    #
    #   @return [Integer]
    #
    FulfillmentUpdatesSpecification = ::Struct.new(
      :active,
      :start_response,
      :update_response,
      :timeout_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings requried for a slot type based on a grammar that you
    #          provide.</p>
    #
    # @!attribute source
    #   <p>The source of the grammar used to create the slot type.</p>
    #
    #   @return [GrammarSlotTypeSource]
    #
    GrammarSlotTypeSetting = ::Struct.new(
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon S3 bucket name and location for the grammar
    #          that is the source for the slot type.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket that contains the grammar source.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_key
    #   <p>The path to the grammar in the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon KMS key required to decrypt the contents of the grammar,
    #            if any.</p>
    #
    #   @return [String]
    #
    GrammarSlotTypeSource = ::Struct.new(
      :s3_bucket_name,
      :s3_object_key,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A card that is shown to the user by a messaging platform. You define
    #          the contents of the card, the card is displayed by the platform. </p>
    #          <p>When you use a response card, the response from the user is
    #          constrained to the text associated with a button on the card.</p>
    #
    # @!attribute title
    #   <p>The title to display on the response card. The format of the title
    #            is determined by the platform displaying the response card.</p>
    #
    #   @return [String]
    #
    # @!attribute subtitle
    #   <p>The subtitle to display on the response card. The format of the
    #            subtitle is determined by the platform displaying the response
    #            card.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image to display on the response card. The image URL
    #            must be publicly available so that the platform displaying the response
    #            card has access to the image.</p>
    #
    #   @return [String]
    #
    # @!attribute buttons
    #   <p>A list of buttons that should be displayed on the response card. The
    #            arrangement of the buttons is determined by the platform that displays
    #            the button.</p>
    #
    #   @return [Array<Button>]
    #
    ImageResponseCard = ::Struct.new(
      :title,
      :subtitle,
      :image_url,
      :buttons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportExportFileFormat
    #
    module ImportExportFileFormat
      # No documentation available.
      #
      LexJson = "LexJson"

      # No documentation available.
      #
      TSV = "TSV"
    end

    # <p>Filters the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListImports.html">ListImports</a> operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #
    #   Enum, one of: ["ImportResourceType"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values to use to filter the response. The values must be
    #               <code>Bot</code>, <code>BotLocale</code>, or
    #               <code>CustomVocabulary</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify EQ when the
    #               <code>ListImports</code> operation should return only resource types
    #            that equal the specified value. Specify CO when the
    #               <code>ListImports</code> operation should return resource types that
    #            contain the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    ImportFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportFilterName
    #
    module ImportFilterName
      # No documentation available.
      #
      ImportResourceType = "ImportResourceType"
    end

    # Includes enum constants for ImportFilterOperator
    #
    module ImportFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # <p>Provides information about the bot or bot locale that you want to
    #          import. You can specify the <code>botImportSpecification</code> or the
    #             <code>botLocaleImportSpecification</code>, but not both.</p>
    #
    # @!attribute bot_import_specification
    #   <p>Parameters for importing a bot.</p>
    #
    #   @return [BotImportSpecification]
    #
    # @!attribute bot_locale_import_specification
    #   <p>Parameters for importing a bot locale.</p>
    #
    #   @return [BotLocaleImportSpecification]
    #
    # @!attribute custom_vocabulary_import_specification
    #   <p>Provides the parameters required for importing a custom vocabulary.</p>
    #
    #   @return [CustomVocabularyImportSpecification]
    #
    ImportResourceSpecification = ::Struct.new(
      :bot_import_specification,
      :bot_locale_import_specification,
      :custom_vocabulary_import_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportResourceType
    #
    module ImportResourceType
      # No documentation available.
      #
      Bot = "Bot"

      # No documentation available.
      #
      BotLocale = "BotLocale"

      # No documentation available.
      #
      CustomVocabulary = "CustomVocabulary"
    end

    # Includes enum constants for ImportSortAttribute
    #
    module ImportSortAttribute
      # No documentation available.
      #
      LastUpdatedDateTime = "LastUpdatedDateTime"
    end

    # <p>Provides information for sorting a list of imports.</p>
    #
    # @!attribute attribute
    #   <p>The export field to use for sorting.</p>
    #
    #   Enum, one of: ["LastUpdatedDateTime"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    ImportSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportStatus
    #
    module ImportStatus
      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Deleting = "Deleting"
    end

    # <p>Provides summary information about an import in an import
    #          list.</p>
    #
    # @!attribute import_id
    #   <p>The unique identifier that Amazon Lex assigned to the import.</p>
    #
    #   @return [String]
    #
    # @!attribute imported_resource_id
    #   <p>The unique identifier that Amazon Lex assigned to the imported
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute imported_resource_name
    #   <p>The name that you gave the imported resource.</p>
    #
    #   @return [String]
    #
    # @!attribute import_status
    #   <p>The status of the resource. When the status is
    #               <code>Completed</code> the resource is ready to build.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute merge_strategy
    #   <p>The strategy used to merge existing bot or bot locale definitions
    #            with the imported definition.</p>
    #
    #   Enum, one of: ["Overwrite", "FailOnConflict", "Append"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the import was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the import was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute imported_resource_type
    #   <p>The type of resource that was imported.</p>
    #
    #   Enum, one of: ["Bot", "BotLocale", "CustomVocabulary"]
    #
    #   @return [String]
    #
    ImportSummary = ::Struct.new(
      :import_id,
      :imported_resource_id,
      :imported_resource_name,
      :import_status,
      :merge_strategy,
      :creation_date_time,
      :last_updated_date_time,
      :imported_resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of a context that must be active for an intent to be
    #          selected by Amazon Lex.</p>
    #
    # @!attribute name
    #   <p>The name of the context.</p>
    #
    #   @return [String]
    #
    InputContext = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a statement the Amazon Lex conveys to the user when the intent
    #          is successfully fulfilled.</p>
    #
    # @!attribute closing_response
    #   <p>The response that Amazon Lex sends to the user when the intent is
    #            complete.</p>
    #
    #   @return [ResponseSpecification]
    #
    # @!attribute active
    #   <p>Specifies whether an intent's closing response is used. When this
    #            field is false, the closing response isn't sent to the user. If the
    #               <code>active</code> field isn't specified, the default is
    #            true.</p>
    #
    #   @return [Boolean]
    #
    IntentClosingSetting = ::Struct.new(
      :closing_response,
      :active,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a prompt for making sure that the user is ready for the
    #          intent to be fulfilled.</p>
    #
    # @!attribute prompt_specification
    #   <p>Prompts the user to confirm the intent. This question should have a
    #            yes or no answer.</p>
    #            <p>Amazon Lex uses this prompt to ensure that the user acknowledges that the
    #            intent is ready for fulfillment. For example, with the
    #               <code>OrderPizza</code> intent, you might want to confirm that the
    #            order is correct before placing it. For other intents, such as intents
    #            that simply respond to user questions, you might not need to ask the
    #            user for confirmation before providing the information. </p>
    #
    #   @return [PromptSpecification]
    #
    # @!attribute declination_response
    #   <p>When the user answers "no" to the question defined in
    #               <code>promptSpecification</code>, Amazon Lex responds with this response
    #            to acknowledge that the intent was canceled. </p>
    #
    #   @return [ResponseSpecification]
    #
    # @!attribute active
    #   <p>Specifies whether the intent's confirmation is sent to the user.
    #            When this field is false, confirmation and declination responses aren't
    #            sent. If the <code>active</code> field isn't specified, the default is
    #            true.</p>
    #
    #   @return [Boolean]
    #
    IntentConfirmationSetting = ::Struct.new(
      :prompt_specification,
      :declination_response,
      :active,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the response from the <code>ListIntents</code>
    #          operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to use for the filter.</p>
    #
    #   Enum, one of: ["IntentName"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value to use for the filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListIntents</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #               <code>ListIntents</code> operation should return aliases that
    #            contain the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    IntentFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntentFilterName
    #
    module IntentFilterName
      # No documentation available.
      #
      IntentName = "IntentName"
    end

    # Includes enum constants for IntentFilterOperator
    #
    module IntentFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # Includes enum constants for IntentSortAttribute
    #
    module IntentSortAttribute
      # No documentation available.
      #
      IntentName = "IntentName"

      # No documentation available.
      #
      LastUpdatedDateTime = "LastUpdatedDateTime"
    end

    # <p>Specifies attributes for sorting a list of intents.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of intents.</p>
    #
    #   Enum, one of: ["IntentName", "LastUpdatedDateTime"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    IntentSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object that contains the statistical summary of recommended
    #          intents associated with the bot recommendation.</p>
    #
    # @!attribute discovered_intent_count
    #   <p>The number of recommended intents associated with the bot
    #            recommendation.</p>
    #
    #   @return [Integer]
    #
    IntentStatistics = ::Struct.new(
      :discovered_intent_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about an intent returned by the
    #             <code>ListIntents</code> operation.</p>
    #
    # @!attribute intent_id
    #   <p>The unique identifier assigned to the intent. Use this ID to get
    #            detailed information about the intent with the
    #               <code>DescribeIntent</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_intent_signature
    #   <p>If this intent is derived from a built-in intent, the name of the
    #            parent intent.</p>
    #
    #   @return [String]
    #
    # @!attribute input_contexts
    #   <p>The input contexts that must be active for this intent to be
    #            considered for recognition.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>The output contexts that are activated when this intent is
    #            fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    # @!attribute last_updated_date_time
    #   <p>The timestamp of the date and time that the intent was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    IntentSummary = ::Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :input_contexts,
      :output_contexts,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an unexpected condition. Try your request
    #          again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides configuration information for the AMAZON.KendraSearchIntent
    #          intent. When you use this intent, Amazon Lex searches the specified Amazon Kendra
    #          index and returns documents from the index that match the user's
    #          utterance.</p>
    #
    # @!attribute kendra_index
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you want the
    #            AMAZON.KendraSearchIntent intent to search. The index must be in the
    #            same account and Region as the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute query_filter_string_enabled
    #   <p>Determines whether the AMAZON.KendraSearchIntent intent uses a
    #            custom query string to query the Amazon Kendra index.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute query_filter_string
    #   <p>A query filter that Amazon Lex sends to Amazon Kendra to filter the response from
    #            a query. The filter is in the format defined by Amazon Kendra. For more
    #            information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/filtering.html">Filtering
    #            queries</a>.</p>
    #
    #   @return [String]
    #
    KendraConfiguration = ::Struct.new(
      :kendra_index,
      :query_filter_string_enabled,
      :query_filter_string,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.query_filter_string_enabled ||= false
      end
    end

    # <p>Specifies a Lambda function that verifies requests to a bot or
    #          fulfills the user's request to a bot.</p>
    #
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_hook_interface_version
    #   <p>The version of the request-response that you want Amazon Lex to use to
    #            invoke your Lambda function.</p>
    #
    #   @return [String]
    #
    LambdaCodeHook = ::Struct.new(
      :lambda_arn,
      :code_hook_interface_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object that contains transcript filter details that are
    #          associated with a bot recommendation.</p>
    #
    # @!attribute date_range_filter
    #   <p>The object that contains a date range filter that will be applied to
    #            the transcript. Specify this object if you want Amazon Lex to only read the
    #            files that are within the date range.</p>
    #
    #   @return [DateRangeFilter]
    #
    LexTranscriptFilter = ::Struct.new(
      :date_range_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with this
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias associated with this request. If you
    #            specify the bot alias, you can't specify the bot version.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the bot version associated with this request. If
    #            you specify the bot version, you can't specify the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where the utterances were
    #            collected. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregation_duration
    #   <p>The time window for aggregating the utterance information. You can
    #            specify a time between one hour and two weeks.</p>
    #
    #   @return [UtteranceAggregationDuration]
    #
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of utterances. You can
    #            sort by the hit count, the missed count, or the number of distinct
    #            sessions the utterance appeared in.</p>
    #
    #   @return [AggregatedUtterancesSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the utterances
    #            in the response to only those that match the filter specification. You
    #            can only specify one filter and one string to filter on.</p>
    #
    #   @return [Array<AggregatedUtterancesFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of utterances to return in each page of results.
    #            If there are fewer results than the maximum page size, only the actual
    #            number of results are returned. If you don't specify the
    #               <code>maxResults</code> parameter, 1,000 results are
    #            returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListAggregatedUtterances</code>
    #            operation contains more results that specified in the
    #               <code>maxResults</code> parameter, a token is returned in the
    #            response. Use that token in the <code>nextToken</code> parameter to
    #            return the next page of results.</p>
    #
    #   @return [String]
    #
    ListAggregatedUtterancesInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :aggregation_duration,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the utterances.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The identifier of the bot alias that contains the utterances. If you
    #            specified the bot version, the bot alias ID isn't returned.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the bot version that contains the utterances. If
    #            you specified the bot alias, the bot version isn't returned.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that the utterances are
    #            in.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregation_duration
    #   <p>The time period used to aggregate the utterance data.</p>
    #
    #   @return [UtteranceAggregationDuration]
    #
    # @!attribute aggregation_window_start_time
    #   <p>The date and time that the aggregation window begins. Only data
    #            collected after this time is returned in the results.</p>
    #
    #   @return [Time]
    #
    # @!attribute aggregation_window_end_time
    #   <p>The date and time that the aggregation window ends. Only data
    #            collected between the start time and the end time are returned in the
    #            results. </p>
    #
    #   @return [Time]
    #
    # @!attribute aggregation_last_refreshed_date_time
    #   <p>The last date and time that the aggregated data was collected. The
    #            time period depends on the length of the aggregation window.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Hours</b> - for 1 hour time
    #                  window, every half hour; otherwise every hour.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Days</b> - every 6 hours</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Weeks</b> - for a one week time
    #                  window, every 12 hours; otherwise, every day</p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute aggregated_utterances_summaries
    #   <p>Summaries of the aggregated utterance data. Each response contains
    #            information about the number of times that the utterance was seen
    #            during the time period, whether it was detected or missed, and when it
    #            was seen during the time period.</p>
    #
    #   @return [Array<AggregatedUtterancesSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListAggregatedUtterances</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a
    #               <code>ListAggregatedUtterances</code> operation request to get the
    #            next page of results.</p>
    #
    #   @return [String]
    #
    ListAggregatedUtterancesOutput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :aggregation_duration,
      :aggregation_window_start_time,
      :aggregation_window_end_time,
      :aggregation_last_refreshed_date_time,
      :aggregated_utterances_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list aliases for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of aliases to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListBotAliases</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListBotAliasesInput = ::Struct.new(
      :bot_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_summaries
    #   <p>Summary information for the bot aliases that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more aliases available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #
    #   @return [Array<BotAliasSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBotAliases</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot associated with the aliases.</p>
    #
    #   @return [String]
    #
    ListBotAliasesOutput = ::Struct.new(
      :bot_alias_summaries,
      :next_token,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list locales for.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to list locales for.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of locales. You can sort
    #            by locale name in ascending or descending order.</p>
    #
    #   @return [BotLocaleSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification for a filter used to limit the response
    #            to only those locales that match the filter specification. You can only
    #            specify one filter and one value to filter on.</p>
    #
    #   @return [Array<BotLocaleFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of aliases to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListBotLocales</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token as the
    #               <code>nextToken</code> parameter to return the next page of results.
    #         </p>
    #
    #   @return [String]
    #
    ListBotLocalesInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list locales for.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBotLocales</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotLocales</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_locale_summaries
    #   <p>Summary information for the locales that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            locales available, the <code>nextToken</code> field contains a token to
    #            get the next page of results.</p>
    #
    #   @return [Array<BotLocaleSummary>]
    #
    ListBotLocalesOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :next_token,
      :bot_locale_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the bot
    #            recommendation list.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the bot recommendation
    #            list.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the ListBotRecommendation operation contains
    #            more results than specified in the maxResults parameter, a token is
    #            returned in the response. Use that token in the nextToken parameter to
    #            return the next page of results.</p>
    #
    #   @return [String]
    #
    ListBotRecommendationsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the bot
    #            recommendation list.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the bot recommendation
    #            list.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            list.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_summaries
    #   <p>Summary information for the bot recommendations that meet the filter
    #            specified in this request. The length of the list is specified in the
    #            maxResults parameter of the request. If there are more bot
    #            recommendations available, the nextToken field contains a token to get
    #            the next page of results.</p>
    #
    #   @return [Array<BotRecommendationSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the ListBotRecommendations operation. If the nextToken
    #            field is present, you send the contents as the nextToken parameter of a
    #            ListBotRecommendations operation request to get the next page of
    #            results. </p>
    #
    #   @return [String]
    #
    ListBotRecommendationsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list versions for.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of versions. You can
    #            specify that the list be sorted by version name in either ascending or
    #            descending order.</p>
    #
    #   @return [BotVersionSortBy]
    #
    # @!attribute max_results
    #   <p>The maximum number of versions to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response to the <code>ListBotVersion</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListBotVersionsInput = ::Struct.new(
      :bot_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to list versions for.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version_summaries
    #   <p>Summary information for the bot versions that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more versions available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #
    #   @return [Array<BotVersionSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBotVersions</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListBotVersionsOutput = ::Struct.new(
      :bot_id,
      :bot_version_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of bots. You can specify
    #            that the list be sorted by bot name in ascending or descending
    #            order.</p>
    #
    #   @return [BotSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the bots in the
    #            response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #
    #   @return [Array<BotFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of bots to return in each page of results. If
    #            there are fewer results than the maximum page size, only the actual
    #            number of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListBots</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. </p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListBots</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListBots</code> operation
    #            until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    #   @return [String]
    #
    ListBotsInput = ::Struct.new(
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_summaries
    #   <p>Summary information for the bots that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            bots available, the <code>nextToken</code> field contains a token to
    #            the next page of results.</p>
    #
    #   @return [Array<BotSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBots</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBots</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListBotsOutput = ::Struct.new(
      :bot_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Specifies sorting parameters for the list of built-in intents. You
    #            can specify that the list be sorted by the built-in intent signature in
    #            either ascending or descending order.</p>
    #
    #   @return [BuiltInIntentSortBy]
    #
    # @!attribute max_results
    #   <p>The maximum number of built-in intents to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListBuiltInIntents</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListBuiltInIntentsInput = ::Struct.new(
      :locale_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute built_in_intent_summaries
    #   <p>Summary information for the built-in intents that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more intents available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #
    #   @return [Array<BuiltInIntentSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBuiltInIntents</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the intents in the list.</p>
    #
    #   @return [String]
    #
    ListBuiltInIntentsOutput = ::Struct.new(
      :built_in_intent_summaries,
      :next_token,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot types to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListBuiltInSlotTypes</code> operation. You can choose to sort
    #            by the slot type signature in either ascending or descending
    #            order.</p>
    #
    #   @return [BuiltInSlotTypeSortBy]
    #
    # @!attribute max_results
    #   <p>The maximum number of built-in slot types to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListBuiltInSlotTypes</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListBuiltInSlotTypesInput = ::Struct.new(
      :locale_id,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute built_in_slot_type_summaries
    #   <p>Summary information for the built-in slot types that meet the filter
    #            criteria specified in the request. The length of the list is specified
    #            in the <code>maxResults</code> parameter of the request. If there are
    #            more slot types available, the <code>nextToken</code> field contains a
    #            token to get the next page of results.</p>
    #
    #   @return [Array<BuiltInSlotTypeSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListBuiltInSlotTypes</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a
    #               <code>LIstBuiltInSlotTypes</code> operation request to get the next
    #            page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the slot types in the list.</p>
    #
    #   @return [String]
    #
    ListBuiltInSlotTypesOutput = ::Struct.new(
      :built_in_slot_type_summaries,
      :next_token,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier that Amazon Lex assigned to the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to list exports for. </p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Determines the field that the list of exports is sorted by. You can
    #            sort by the <code>LastUpdatedDateTime</code> field in ascending or
    #            descending order.</p>
    #
    #   @return [ExportSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the exports in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #
    #   @return [Array<ExportFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of exports to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListExports</code> operation contains
    #            more results that specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. </p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListExports</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListExports</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>Specifies the resources that should be exported. If you
    #         don't specify a resource type in the <code>filters</code> parameter,
    #         both bot locales and custom vocabularies are exported.</p>
    #
    #   @return [String]
    #
    ListExportsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier assigned to the bot by Amazon Lex.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that was exported.</p>
    #
    #   @return [String]
    #
    # @!attribute export_summaries
    #   <p>Summary information for the exports that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter. If there are more exports
    #            available, the <code>nextToken</code> field contains a token to get the
    #            next page of results.</p>
    #
    #   @return [Array<ExportSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListExports</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListExports</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale specified in the request.</p>
    #
    #   @return [String]
    #
    ListExportsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :export_summaries,
      :next_token,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier that Amazon Lex assigned to the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot to list imports for.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Determines the field that the list of imports is sorted by. You can
    #            sort by the <code>LastUpdatedDateTime</code> field in ascending or
    #            descending order.</p>
    #
    #   @return [ImportSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the bots in the
    #            response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #
    #   @return [Array<ImportFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of imports to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListImports</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response.</p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListImports</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListImports</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>Specifies the locale that should be present in the list. If you
    #            don't specify a resource type in the <code>filters</code> parameter,
    #            the list contains both bot locales and custom vocabularies.</p>
    #
    #   @return [String]
    #
    ListImportsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier assigned by Amazon Lex to the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that was imported. It will always be
    #               <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute import_summaries
    #   <p>Summary information for the imports that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter. If there are more imports
    #            available, the <code>nextToken</code> field contains a token to get the
    #            next page of results.</p>
    #
    #   @return [Array<ImportSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListImports</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListImports</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale specified in the request.</p>
    #
    #   @return [String]
    #
    ListImportsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :import_summaries,
      :next_token,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListIntents</code> operation. You can choose to sort by the
    #            intent name or last updated date in either ascending or descending
    #            order.</p>
    #
    #   @return [IntentSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the intents in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and only one string to filter on.</p>
    #
    #   @return [Array<IntentFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of intents to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListIntents</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response.</p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListIntents</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListIntents</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    #   @return [String]
    #
    ListIntentsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the intents in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_summaries
    #   <p>Summary information for the intents that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            intents available, the <code>nextToken</code> field contains a token to
    #            get the next page of results.</p>
    #
    #   @return [Array<IntentSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListIntents</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListIntents</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListIntentsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the recommended
    #            intents.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the recommended intents.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the recommended
    #            intents.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation that contains the
    #            recommended intents.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the response from the ListRecommendedIntents operation contains
    #            more results than specified in the maxResults parameter, a token is
    #            returned in the response. Use that token in the nextToken parameter to
    #            return the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    #   @return [Integer]
    #
    ListRecommendedIntentsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the recommended
    #            intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation that contains the
    #            recommended intent.</p>
    #
    #   @return [String]
    #
    # @!attribute summary_list
    #   <p>Summary information for the intents that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #            maxResults parameter of the request. If there are more intents
    #            available, the nextToken field contains a token to get the next page of
    #            results.</p>
    #
    #   @return [Array<RecommendedIntentSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the ListRecommendedIntents operation. If the nextToken
    #            field is present, you send the contents as the nextToken parameter of a
    #            ListRecommendedIntents operation request to get the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListRecommendedIntentsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the slot
    #            types.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slot types to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListSlotTypes</code> operation. You can choose to sort by the
    #            slot type name or last updated date in either ascending or descending
    #            order.</p>
    #
    #   @return [SlotTypeSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the slot types
    #            in the response to only those that match the filter specification. You
    #            can only specify one filter and only one string to filter on.</p>
    #
    #   @return [Array<SlotTypeFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of slot types to return in each page of results.
    #            If there are fewer results than the max page size, only the actual
    #            number of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListSlotTypes</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListSlotTypesInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot types.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot types.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and local of the slot types in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_summaries
    #   <p>Summary information for the slot types that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            slot types available, the <code>nextToken</code> field contains a token
    #            to get the next page of results.</p>
    #
    #   @return [Array<SlotTypeSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListSlotTypes</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListSlotTypes</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListSlotTypesOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :slot_type_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the slots to list. The
    #            string must match one of the supported locales. For more information,
    #            see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The unique identifier of the intent that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListSlots</code> operation. You can choose to sort by the slot
    #            name or last updated date in either ascending or descending
    #            order.</p>
    #
    #   @return [SlotSortBy]
    #
    # @!attribute filters
    #   <p>Provides the specification of a filter used to limit the slots in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and only one string to filter on.</p>
    #
    #   @return [Array<SlotFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of slots to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response from the <code>ListSlots</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    ListSlotsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slots.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slots.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the slots in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slots.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_summaries
    #   <p>Summary information for the slots that meet the filter criteria
    #            specified in the request. The length of the list is specified in the
    #               <code>maxResults</code> parameter of the request. If there are more
    #            slots available, the <code>nextToken</code> field contains a token to
    #            get the next page of results.</p>
    #
    #   @return [Array<SlotSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates whether there are more results to return in a
    #            response to the <code>ListSlots</code> operation. If the
    #               <code>nextToken</code> field is present, you send the contents as
    #            the <code>nextToken</code> parameter of a <code>ListSlots</code>
    #            operation request to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListSlotsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :slot_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get a list of tags
    #            for.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MergeStrategy
    #
    module MergeStrategy
      # No documentation available.
      #
      Overwrite = "Overwrite"

      # No documentation available.
      #
      FailOnConflict = "FailOnConflict"

      # No documentation available.
      #
      Append = "Append"
    end

    # <p>The object that provides message text and it's type.</p>
    #
    # @!attribute plain_text_message
    #   <p>A message in plain text format.</p>
    #
    #   @return [PlainTextMessage]
    #
    # @!attribute custom_payload
    #   <p>A message in a custom format defined by the client
    #            application.</p>
    #
    #   @return [CustomPayload]
    #
    # @!attribute ssml_message
    #   <p>A message in Speech Synthesis Markup Language (SSML).</p>
    #
    #   @return [SSMLMessage]
    #
    # @!attribute image_response_card
    #   <p>A message that defines a response card that the client application
    #            can show to the user.</p>
    #
    #   @return [ImageResponseCard]
    #
    Message = ::Struct.new(
      :plain_text_message,
      :custom_payload,
      :ssml_message,
      :image_response_card,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides one or more messages that Amazon Lex should send to the
    #          user.</p>
    #
    # @!attribute message
    #   <p>The primary message that Amazon Lex should send to the user.</p>
    #
    #   @return [Message]
    #
    # @!attribute variations
    #   <p>Message variations to send to the user. When variations are defined,
    #            Amazon Lex chooses the primary message or one of the variations to send to
    #            the user.</p>
    #
    #   @return [Array<Message>]
    #
    MessageGroup = ::Struct.new(
      :message,
      :variations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether a slot can return multiple values.</p>
    #
    # @!attribute allow_multiple_values
    #   <p>Indicates whether a slot can return multiple values. When
    #               <code>true</code>, the slot may return more than one value in a
    #            response. When <code>false</code>, the slot returns only a single
    #            value.</p>
    #            <p>Multi-value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>.</p>
    #            <p>If the <code>allowMutlipleValues</code> is not set, the default
    #            value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    MultipleValuesSetting = ::Struct.new(
      :allow_multiple_values,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_multiple_values ||= false
      end
    end

    # <p>Determines whether Amazon Lex obscures slot values in conversation logs.
    #       </p>
    #
    # @!attribute obfuscation_setting_type
    #   <p>Value that determines whether Amazon Lex obscures slot values in
    #            conversation logs. The default is to obscure the values.</p>
    #
    #   Enum, one of: ["None", "DefaultObfuscation"]
    #
    #   @return [String]
    #
    ObfuscationSetting = ::Struct.new(
      :obfuscation_setting_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObfuscationSettingType
    #
    module ObfuscationSettingType
      # No documentation available.
      #
      None = "None"

      # No documentation available.
      #
      DefaultObfuscation = "DefaultObfuscation"
    end

    # <p>Describes a session context that is activated when an intent is
    #          fulfilled.</p>
    #
    # @!attribute name
    #   <p>The name of the output context.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live_in_seconds
    #   <p>The amount of time, in seconds, that the output context should
    #            remain active. The time is figured from the first time the context is
    #            sent to the user.</p>
    #
    #   @return [Integer]
    #
    # @!attribute turns_to_live
    #   <p>The number of conversation turns that the output context should
    #            remain active. The number of turns is counted from the first time that
    #            the context is sent to the user.</p>
    #
    #   @return [Integer]
    #
    OutputContext = ::Struct.new(
      :name,
      :time_to_live_in_seconds,
      :turns_to_live,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object that contains a path format that will be applied when
    #          Amazon Lex reads the transcript file in the bucket you provide. Specify this
    #          object if you only want Lex to read a subset of files in your Amazon S3
    #          bucket.</p>
    #
    # @!attribute object_prefixes
    #   <p>A list of Amazon S3 prefixes that points to sub-folders in the Amazon S3
    #            bucket. Specify this list if you only want Lex to read the files under
    #            this set of sub-folders.</p>
    #
    #   @return [Array<String>]
    #
    PathFormat = ::Struct.new(
      :object_prefixes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines an ASCII text message to send to the user.</p>
    #
    # @!attribute value
    #   <p>The message to send to the user.</p>
    #
    #   @return [String]
    #
    PlainTextMessage = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a setting that determines whether the post-fulfillment
    #          response is sent to the user. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete">https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete</a>
    #          </p>
    #
    # @!attribute success_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #
    #   @return [ResponseSpecification]
    #
    # @!attribute failure_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #
    #   @return [ResponseSpecification]
    #
    # @!attribute timeout_response
    #   <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #            user input.</p>
    #
    #   @return [ResponseSpecification]
    #
    PostFulfillmentStatusSpecification = ::Struct.new(
      :success_response,
      :failure_response,
      :timeout_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request couldn't be completed because one or more request
    #          fields aren't valid. Check the fields in your request and try
    #          again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PreconditionFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The IAM principal that you allowing or denying access to an Amazon Lex
    #          action. You must provide a <code>service</code> or an <code>arn</code>,
    #          but not both in the same statement. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html"> AWS JSON policy elements: Principal </a>.</p>
    #
    # @!attribute service
    #   <p>The name of the AWS service that should allowed or denied access to
    #            an Amazon Lex action.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the principal.</p>
    #
    #   @return [String]
    #
    Principal = ::Struct.new(
      :service,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a list of message groups that Amazon Lex sends to a user to
    #          elicit a response.</p>
    #
    # @!attribute message_groups
    #   <p>A collection of messages that Amazon Lex can send to the user. Amazon Lex
    #            chooses the actual message to send at runtime.</p>
    #
    #   @return [Array<MessageGroup>]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times the bot tries to elicit a response from
    #            the user using this prompt.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_interrupt
    #   <p>Indicates whether the user can interrupt a speech prompt from the
    #            bot.</p>
    #
    #   @return [Boolean]
    #
    PromptSpecification = ::Struct.new(
      :message_groups,
      :max_retries,
      :allow_interrupt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains a summary of a recommended intent.</p>
    #
    # @!attribute intent_id
    #   <p>The unique identifier of a recommended intent associated with the
    #            bot recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The name of a recommended intent associated with the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances_count
    #   <p>The count of sample utterances of a recommended intent that is
    #            associated with a bot recommendation.</p>
    #
    #   @return [Integer]
    #
    RecommendedIntentSummary = ::Struct.new(
      :intent_id,
      :intent_name,
      :sample_utterances_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the time window that utterance statistics are returned
    #          for. The time window is always relative to the last time that the that
    #          utterances were aggregated. For example, if the
    #             <code>ListAggregatedUtterances</code> operation is called at 1600,
    #          the time window is set to 1 hour, and the last refresh time was 1530,
    #          only utterances made between 1430 and 1530 are returned.</p>
    #          <p>You can choose the time window that statistics should be returned
    #          for.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Hours</b> - You can request
    #                utterance statistics for 1, 3, 6, 12, or 24 hour time windows.
    #                Statistics are refreshed every half hour for 1 hour time windows,
    #                and hourly for the other time windows.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Days</b> - You can request
    #                utterance statistics for 3 days. Statistics are refreshed every 6
    #                hours.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Weeks</b> - You can see
    #                statistics for one or two weeks. Statistics are refreshed every
    #                12 hours for one week time windows, and once per day for two week
    #                time windows.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute time_dimension
    #   <p>The type of time period that the <code>timeValue</code> field
    #            represents. </p>
    #
    #   Enum, one of: ["Hours", "Days", "Weeks"]
    #
    #   @return [String]
    #
    # @!attribute time_value
    #   <p>The period of the time window to gather statistics for. The valid
    #            value depends on the setting of the <code>timeDimension</code>
    #            field.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Hours</code> - 1/3/6/12/24</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Days</code> - 3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Weeks</code> - 1/2</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    RelativeAggregationDuration = ::Struct.new(
      :time_dimension,
      :time_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.time_value ||= 0
      end
    end

    # <p>You asked to describe a resource that doesn't exist. Check the
    #          resource that you are requesting and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a list of message groups that Amazon Lex uses to respond the
    #          user input.</p>
    #
    # @!attribute message_groups
    #   <p>A collection of responses that Amazon Lex can send to the user. Amazon Lex
    #            chooses the actual response to send at runtime.</p>
    #
    #   @return [Array<MessageGroup>]
    #
    # @!attribute allow_interrupt
    #   <p>Indicates whether the user can interrupt a speech response from
    #            Amazon Lex.</p>
    #
    #   @return [Boolean]
    #
    ResponseSpecification = ::Struct.new(
      :message_groups,
      :allow_interrupt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Amazon S3 bucket for logging audio conversations</p>
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS Key Management Service
    #            (KMS) key for encrypting audio log files stored in an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon S3 bucket where audio
    #            log files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute log_prefix
    #   <p>The S3 prefix to assign to audio log files.</p>
    #
    #   @return [String]
    #
    S3BucketLogDestination = ::Struct.new(
      :kms_key_arn,
      :s3_bucket_arn,
      :log_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object representing the Amazon S3 bucket containing the transcript,
    #          as well as the associated metadata.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the bucket containing the transcript and the associated
    #            metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute path_format
    #   <p>The object that contains a path format that will be applied when
    #            Amazon Lex reads the transcript file in the bucket you provide. Specify this
    #            object if you only want Lex to read a subset of files in your Amazon S3
    #            bucket.</p>
    #
    #   @return [PathFormat]
    #
    # @!attribute transcript_format
    #   <p>The format of the transcript content. Currently, Genie only supports
    #            the Amazon Lex transcript format.</p>
    #
    #   Enum, one of: ["Lex"]
    #
    #   @return [String]
    #
    # @!attribute transcript_filter
    #   <p>The object that contains the filter which will be applied when Amazon Lex
    #            reads through the Amazon S3 bucket. Specify this object if you want Amazon Lex to
    #            read only a subset of the Amazon S3 bucket based on the filter you
    #            provide.</p>
    #
    #   @return [TranscriptFilter]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key that customer use to encrypt their Amazon S3
    #            bucket. Only use this field if your bucket is encrypted using a
    #            customer managed KMS key.</p>
    #
    #   @return [String]
    #
    S3BucketTranscriptSource = ::Struct.new(
      :s3_bucket_name,
      :path_format,
      :transcript_format,
      :transcript_filter,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a Speech Synthesis Markup Language (SSML) prompt.</p>
    #
    # @!attribute value
    #   <p>The SSML text that defines the prompt.</p>
    #
    #   @return [String]
    #
    SSMLMessage = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A sample utterance that invokes an intent or respond to a slot
    #          elicitation prompt.</p>
    #
    # @!attribute utterance
    #   <p>The sample utterance that Amazon Lex uses to build its machine-learning
    #            model to recognize intents.</p>
    #
    #   @return [String]
    #
    SampleUtterance = ::Struct.new(
      :utterance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines one of the values for a slot type.</p>
    #
    # @!attribute value
    #   <p>The value that can be used for a slot type.</p>
    #
    #   @return [String]
    #
    SampleValue = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the transcripts
    #            that you are searching.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot containing the transcripts that you are
    #            searching.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the transcripts to
    #            search. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation associated with the
    #            transcripts to search.</p>
    #
    #   @return [String]
    #
    # @!attribute search_order
    #   <p>How SearchResults are ordered. Valid values are Ascending or
    #            Descending. The default is Descending.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A list of filter objects.</p>
    #
    #   @return [Array<AssociatedTranscriptFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_index
    #   <p>If the response from the SearchAssociatedTranscriptsRequest
    #            operation contains more results than specified in the maxResults
    #            parameter, an index is returned in the response. Use that index in the
    #            nextIndex parameter to return the next page of results.</p>
    #
    #   @return [Integer]
    #
    SearchAssociatedTranscriptsInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :search_order,
      :filters,
      :max_results,
      :next_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot associated with the transcripts
    #            that you are searching.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot containing the transcripts that you are
    #            searching.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the transcripts to
    #            search. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p> The unique identifier of the bot recommendation associated with the
    #            transcripts to search.</p>
    #
    #   @return [String]
    #
    # @!attribute next_index
    #   <p>A index that indicates whether there are more results to return in a
    #            response to the SearchAssociatedTranscripts operation. If the nextIndex
    #            field is present, you send the contents as the nextIndex parameter of a
    #            SearchAssociatedTranscriptsRequest operation to get the next page of
    #            results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute associated_transcripts
    #   <p>The object that contains the associated transcript that meet the
    #            criteria you specified.</p>
    #
    #   @return [Array<AssociatedTranscript>]
    #
    # @!attribute total_results
    #   <p>The total number of transcripts returned by the search.</p>
    #
    #   @return [Integer]
    #
    SearchAssociatedTranscriptsOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :next_index,
      :associated_transcripts,
      :total_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SearchOrder
    #
    module SearchOrder
      # No documentation available.
      #
      Ascending = "Ascending"

      # No documentation available.
      #
      Descending = "Descending"
    end

    # <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #          user utterances.</p>
    #
    # @!attribute detect_sentiment
    #   <p>Sets whether Amazon Lex uses Amazon Comprehend to detect the sentiment of user
    #            utterances.</p>
    #
    #   @return [Boolean]
    #
    SentimentAnalysisSettings = ::Struct.new(
      :detect_sentiment,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.detect_sentiment ||= false
      end
    end

    # <p>You have reached a quota for your bot. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotConstraint
    #
    module SlotConstraint
      # No documentation available.
      #
      Required = "Required"

      # No documentation available.
      #
      Optional = "Optional"
    end

    # <p>Specifies the default value to use when a user doesn't provide a
    #          value for a slot.</p>
    #
    # @!attribute default_value
    #   <p>The default value to use when a user doesn't provide a value for a
    #            slot.</p>
    #
    #   @return [String]
    #
    SlotDefaultValue = ::Struct.new(
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a list of values that Amazon Lex should use as the default value
    #          for a slot.</p>
    #
    # @!attribute default_value_list
    #   <p>A list of default values. Amazon Lex chooses the default value to use in
    #            the order that they are presented in the list.</p>
    #
    #   @return [Array<SlotDefaultValue>]
    #
    SlotDefaultValueSpecification = ::Struct.new(
      :default_value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the response from the <code>ListSlots</code>
    #          operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #
    #   Enum, one of: ["SlotName"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value to use to filter the response.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListSlots</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #               <code>ListSlots</code> operation should return aliases that contain
    #            the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    SlotFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotFilterName
    #
    module SlotFilterName
      # No documentation available.
      #
      SlotName = "SlotName"
    end

    # Includes enum constants for SlotFilterOperator
    #
    module SlotFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # <p>Sets the priority that Amazon Lex should use when eliciting slot values
    #          from a user.</p>
    #
    # @!attribute priority
    #   <p>The priority that a slot should be elicited.</p>
    #
    #   @return [Integer]
    #
    # @!attribute slot_id
    #   <p>The unique identifier of the slot.</p>
    #
    #   @return [String]
    #
    SlotPriority = ::Struct.new(
      :priority,
      :slot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotSortAttribute
    #
    module SlotSortAttribute
      # No documentation available.
      #
      SlotName = "SlotName"

      # No documentation available.
      #
      LastUpdatedDateTime = "LastUpdatedDateTime"
    end

    # <p>Specifies attributes for sorting a list of bots.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list.</p>
    #
    #   Enum, one of: ["SlotName", "LastUpdatedDateTime"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can choose ascending or
    #            descending.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    SlotSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a slot, a value that the bot elicits from
    #          the user.</p>
    #
    # @!attribute slot_id
    #   <p>The unique identifier of the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_name
    #   <p>The name given to the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_constraint
    #   <p>Whether the slot is required or optional. An intent is complete when
    #            all required slots are filled.</p>
    #
    #   Enum, one of: ["Required", "Optional"]
    #
    #   @return [String]
    #
    # @!attribute slot_type_id
    #   <p>The unique identifier for the slot type that defines the values for
    #            the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_prompt_specification
    #   <p>Prompts that are sent to the user to elicit a value for the
    #            slot.</p>
    #
    #   @return [PromptSpecification]
    #
    # @!attribute last_updated_date_time
    #   <p>The timestamp of the last date and time that the slot was
    #            updated.</p>
    #
    #   @return [Time]
    #
    SlotSummary = ::Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_constraint,
      :slot_type_id,
      :value_elicitation_prompt_specification,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotTypeCategory
    #
    module SlotTypeCategory
      # No documentation available.
      #
      Custom = "Custom"

      # No documentation available.
      #
      Extended = "Extended"

      # No documentation available.
      #
      ExternalGrammar = "ExternalGrammar"
    end

    # <p>Filters the response from the <code>ListSlotTypes</code>
    #          operation.</p>
    #
    # @!attribute name
    #   <p>The name of the field to use for filtering.</p>
    #
    #   Enum, one of: ["SlotTypeName", "ExternalSourceType"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value to use to filter the response.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator to use for the filter. Specify <code>EQ</code> when the
    #               <code>ListSlotTypes</code> operation should return only aliases that
    #            equal the specified value. Specify <code>CO</code> when the
    #               <code>ListSlotTypes</code> operation should return aliases that
    #            contain the specified value.</p>
    #
    #   Enum, one of: ["CO", "EQ"]
    #
    #   @return [String]
    #
    SlotTypeFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotTypeFilterName
    #
    module SlotTypeFilterName
      # No documentation available.
      #
      SlotTypeName = "SlotTypeName"

      # No documentation available.
      #
      ExternalSourceType = "ExternalSourceType"
    end

    # Includes enum constants for SlotTypeFilterOperator
    #
    module SlotTypeFilterOperator
      # No documentation available.
      #
      Contains = "CO"

      # No documentation available.
      #
      Equals = "EQ"
    end

    # Includes enum constants for SlotTypeSortAttribute
    #
    module SlotTypeSortAttribute
      # No documentation available.
      #
      SlotTypeName = "SlotTypeName"

      # No documentation available.
      #
      LastUpdatedDateTime = "LastUpdatedDateTime"
    end

    # <p>Specifies attributes for sorting a list of slot types.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to use to sort the list of slot types.</p>
    #
    #   Enum, one of: ["SlotTypeName", "LastUpdatedDateTime"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order to sort the list. You can say ascending or
    #            descending.</p>
    #
    #   Enum, one of: ["Ascending", "Descending"]
    #
    #   @return [String]
    #
    SlotTypeSortBy = ::Struct.new(
      :attribute,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object that contains the statistical summary of the recommended
    #          slot type associated with the bot recommendation.</p>
    #
    # @!attribute discovered_slot_type_count
    #   <p>The number of recommended slot types associated with the bot
    #            recommendation.</p>
    #
    #   @return [Integer]
    #
    SlotTypeStatistics = ::Struct.new(
      :discovered_slot_type_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides summary information about a slot type.</p>
    #
    # @!attribute slot_type_id
    #   <p>The unique identifier assigned to the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_name
    #   <p>The name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_slot_type_signature
    #   <p>If the slot type is derived from a built-on slot type, the name of
    #            the parent slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot type was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute slot_type_category
    #   <p>Indicates the type of the slot type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Custom</code> - A slot type that you created using
    #                  custom values. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/custom-slot-types.html">Creating custom slot
    #                  types</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Extended</code> - A slot type created by extending the
    #                  AMAZON.AlphaNumeric built-in slot type. For more information, see
    #                     <a href="https://docs.aws.amazon.com/lexv2/latest/dg/built-in-slot-alphanumerice.html">AMAZON.AlphaNumeric</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExternalGrammar</code> - A slot type using a custom
    #                  GRXML grammar to define values. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/building-grxml.html">Using a custom grammar slot type</a>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Custom", "Extended", "ExternalGrammar"]
    #
    #   @return [String]
    #
    SlotTypeSummary = ::Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :parent_slot_type_signature,
      :last_updated_date_time,
      :slot_type_category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Each slot type can have a set of values. Each
    #             <code>SlotTypeValue</code> represents a value that the slot type can
    #          take.</p>
    #
    # @!attribute sample_value
    #   <p>The value of the slot type entry.</p>
    #
    #   @return [SampleValue]
    #
    # @!attribute synonyms
    #   <p>Additional values related to the slot type entry.</p>
    #
    #   @return [Array<SampleValue>]
    #
    SlotTypeValue = ::Struct.new(
      :sample_value,
      :synonyms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings that you can use for eliciting a slot value.</p>
    #
    # @!attribute default_value_specification
    #   <p>A list of default values for a slot. Default values are used when
    #            Amazon Lex hasn't determined a value for a slot. You can specify default
    #            values from context variables, session attributes, and defined
    #            values.</p>
    #
    #   @return [SlotDefaultValueSpecification]
    #
    # @!attribute slot_constraint
    #   <p>Specifies whether the slot is required or optional.</p>
    #
    #   Enum, one of: ["Required", "Optional"]
    #
    #   @return [String]
    #
    # @!attribute prompt_specification
    #   <p>The prompt that Amazon Lex uses to elicit the slot value from the
    #            user.</p>
    #
    #   @return [PromptSpecification]
    #
    # @!attribute sample_utterances
    #   <p>If you know a specific pattern that users might respond to an Amazon Lex
    #            request for a slot value, you can provide those utterances to improve
    #            accuracy. This is optional. In most cases, Amazon Lex is capable of
    #            understanding user utterances.</p>
    #
    #   @return [Array<SampleUtterance>]
    #
    # @!attribute wait_and_continue_specification
    #   <p>Specifies the prompts that Amazon Lex uses while a bot is waiting for
    #            customer input. </p>
    #
    #   @return [WaitAndContinueSpecification]
    #
    SlotValueElicitationSetting = ::Struct.new(
      :default_value_specification,
      :slot_constraint,
      :prompt_specification,
      :sample_utterances,
      :wait_and_continue_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a regular expression used to validate the value of a
    #          slot.</p>
    #
    # @!attribute pattern
    #   <p>A regular expression used to validate the value of a slot.</p>
    #            <p> Use a standard regular expression. Amazon Lex supports the following
    #            characters in the regular expression: </p>
    #            <ul>
    #               <li>
    #                  <p>A-Z, a-z</p>
    #               </li>
    #               <li>
    #                  <p>0-9</p>
    #               </li>
    #               <li>
    #                  <p>Unicode characters ("\ u<Unicode>")</p>
    #               </li>
    #            </ul>
    #            <p> Represent Unicode characters with four digits, for example "\u0041"
    #            or "\u005A". </p>
    #            <p> The following regular expression operators are not supported: </p>
    #            <ul>
    #               <li>
    #                  <p>Infinite repeaters: *, +, or {x,} with no upper bound.</p>
    #               </li>
    #               <li>
    #                  <p>Wild card (.)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    SlotValueRegexFilter = ::Struct.new(
      :pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotValueResolutionStrategy
    #
    module SlotValueResolutionStrategy
      # No documentation available.
      #
      OriginalValue = "OriginalValue"

      # No documentation available.
      #
      TopResolution = "TopResolution"
    end

    # <p>Contains settings used by Amazon Lex to select a slot value.</p>
    #
    # @!attribute resolution_strategy
    #   <p>Determines the slot resolution strategy that Amazon Lex uses to
    #            return slot type values. The field can be set to one of the following
    #            values:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>OriginalValue - Returns the value entered by the user, if the
    #                  user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>TopResolution - If there is a resolution list for the slot,
    #                  return the first value in the resolution list as the slot type
    #                  value. If there is no resolution list, null is returned.</p>
    #               </li>
    #            </ul>
    #
    #            <p>If you don't specify the valueSelectionStrategy, the default is
    #            OriginalValue. </p>
    #
    #   Enum, one of: ["OriginalValue", "TopResolution"]
    #
    #   @return [String]
    #
    # @!attribute regex_filter
    #   <p>A regular expression used to validate the value of a slot.</p>
    #
    #   @return [SlotValueRegexFilter]
    #
    # @!attribute advanced_recognition_setting
    #   <p>Provides settings that enable advanced recognition settings for slot
    #            values.</p>
    #
    #   @return [AdvancedRecognitionSetting]
    #
    SlotValueSelectionSetting = ::Struct.new(
      :resolution_strategy,
      :regex_filter,
      :advanced_recognition_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      Ascending = "Ascending"

      # No documentation available.
      #
      Descending = "Descending"
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to start. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #
    #   @return [TranscriptSourceSetting]
    #
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that will be used to encrypt
    #            the data related to the bot recommendation results, as well as the KMS
    #            key ARN used to encrypt the associated metadata.</p>
    #
    #   @return [EncryptionSetting]
    #
    StartBotRecommendationInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :transcript_source_setting,
      :encryption_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot
    #            recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to start. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation.</p>
    #            <p>If the status is Failed, then the reasons for the failure are listed
    #            in the failureReasons field. </p>
    #
    #   Enum, one of: ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The identifier of the bot recommendation that you have
    #            created.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #
    #   @return [TranscriptSourceSetting]
    #
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that were used to encrypt the
    #            data related to the bot recommendation results, as well as the KMS key
    #            ARN used to encrypt the associated metadata.</p>
    #
    #   @return [EncryptionSetting]
    #
    StartBotRecommendationOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :transcript_source_setting,
      :encryption_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>The unique identifier for the import. It is included in the response
    #            from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateUploadUrl.html">CreateUploadUrl</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>Parameters for creating the bot, bot locale or custom
    #            vocabulary.</p>
    #
    #   @return [ImportResourceSpecification]
    #
    # @!attribute merge_strategy
    #   <p>The strategy to use when there is a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #
    #   Enum, one of: ["Overwrite", "FailOnConflict", "Append"]
    #
    #   @return [String]
    #
    # @!attribute file_password
    #   <p>The password used to encrypt the zip archive that contains the
    #            resource definition. You should always encrypt the zip archive to
    #            protect it during transit between your site and Amazon Lex.</p>
    #
    #   @return [String]
    #
    StartImportInput = ::Struct.new(
      :import_id,
      :resource_specification,
      :merge_strategy,
      :file_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexModelsV2::Types::StartImportInput "\
          "import_id=#{import_id || 'nil'}, "\
          "resource_specification=#{resource_specification || 'nil'}, "\
          "merge_strategy=#{merge_strategy || 'nil'}, "\
          "file_password=\"[SENSITIVE]\">"
      end
    end

    # @!attribute import_id
    #   <p>A unique identifier for the import.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>The parameters used when importing the resource.</p>
    #
    #   @return [ImportResourceSpecification]
    #
    # @!attribute merge_strategy
    #   <p>The strategy used when there was a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #
    #   Enum, one of: ["Overwrite", "FailOnConflict", "Append"]
    #
    #   @return [String]
    #
    # @!attribute import_status
    #   <p>The current status of the import. When the status is
    #               <code>Complete</code> the bot, bot alias, or custom vocabulary is
    #            ready to use.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the import request was created.</p>
    #
    #   @return [Time]
    #
    StartImportOutput = ::Struct.new(
      :import_id,
      :resource_specification,
      :merge_strategy,
      :import_status,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the messages that Amazon Lex sends to a user to remind them that
    #          the bot is waiting for a response.</p>
    #
    # @!attribute message_groups
    #   <p>One or more message groups, each containing one or more messages,
    #            that define the prompts that Amazon Lex sends to the user.</p>
    #
    #   @return [Array<MessageGroup>]
    #
    # @!attribute frequency_in_seconds
    #   <p>How often a message should be sent to the user. Minimum of 1 second,
    #            maximum of 5 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_in_seconds
    #   <p>If Amazon Lex waits longer than this length of time for a response, it
    #            will stop sending messages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_interrupt
    #   <p>Indicates that the user can interrupt the response by speaking while
    #            the message is being played.</p>
    #
    #   @return [Boolean]
    #
    StillWaitingResponseSpecification = ::Struct.new(
      :message_groups,
      :frequency_in_seconds,
      :timeout_in_seconds,
      :allow_interrupt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #            to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag keys to add to the resource. If a tag key already
    #            exists, the existing value is replaced with the new value.</p>
    #
    #   @return [Hash<String, String>]
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

    # <p>Defines the Amazon CloudWatch Logs destination log group for
    #          conversation text logs.</p>
    #
    # @!attribute cloud_watch
    #   <p>Defines the Amazon CloudWatch Logs log group where text and metadata logs are
    #            delivered.</p>
    #
    #   @return [CloudWatchLogGroupLogDestination]
    #
    TextLogDestination = ::Struct.new(
      :cloud_watch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines settings to enable text conversation logs.</p>
    #
    # @!attribute enabled
    #   <p>Determines whether conversation logs should be stored for an
    #            alias.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute destination
    #   <p>Defines the Amazon CloudWatch Logs destination log group for
    #            conversation text logs.</p>
    #
    #   @return [TextLogDestination]
    #
    TextLogSetting = ::Struct.new(
      :enabled,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Your request rate is too high. Reduce the frequency of
    #          requests.</p>
    #
    # @!attribute retry_after_seconds
    #
    #   @return [Integer]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # Includes enum constants for TimeDimension
    #
    module TimeDimension
      # No documentation available.
      #
      Hours = "Hours"

      # No documentation available.
      #
      Days = "Days"

      # No documentation available.
      #
      Weeks = "Weeks"
    end

    # <p>The object representing the filter that Amazon Lex will use to select the
    #          appropriate transcript.</p>
    #
    # @!attribute lex_transcript_filter
    #   <p>The object representing the filter that Amazon Lex will use to select the
    #            appropriate transcript when the transcript format is the Amazon Lex
    #            format.</p>
    #
    #   @return [LexTranscriptFilter]
    #
    TranscriptFilter = ::Struct.new(
      :lex_transcript_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TranscriptFormat
    #
    module TranscriptFormat
      # No documentation available.
      #
      Lex = "Lex"
    end

    # <p>Indicates the setting of the location where the transcript is
    #          stored.</p>
    #
    # @!attribute s3_bucket_transcript_source
    #   <p>Indicates the setting of the Amazon S3 bucket where the transcript is
    #            stored.</p>
    #
    #   @return [S3BucketTranscriptSource]
    #
    TranscriptSourceSetting = ::Struct.new(
      :s3_bucket_transcript_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags
    #            from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource. If a tag key does
    #            not exist on the resource, it is ignored.</p>
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

    # @!attribute bot_alias_id
    #   <p>The unique identifier of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_name
    #   <p>The new name to assign to the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description to assign to the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The new bot version to assign to the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_locale_settings
    #   <p>The new Lambda functions to use in each locale for the bot
    #            alias.</p>
    #
    #   @return [Hash<String, BotAliasLocaleSettings>]
    #
    # @!attribute conversation_log_settings
    #   <p>The new settings for storing conversation logs in Amazon CloudWatch Logs and
    #            Amazon S3 buckets.</p>
    #
    #   @return [ConversationLogSettings]
    #
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    #   @return [SentimentAnalysisSettings]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot with the updated alias.</p>
    #
    #   @return [String]
    #
    UpdateBotAliasInput = ::Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_alias_id
    #   <p>The identifier of the updated bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_name
    #   <p>The updated name of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The updated version of the bot that the alias points to.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_locale_settings
    #   <p>The updated Lambda functions to use in each locale for the bot
    #            alias.</p>
    #
    #   @return [Hash<String, BotAliasLocaleSettings>]
    #
    # @!attribute conversation_log_settings
    #   <p>The updated settings for storing conversation logs in Amazon CloudWatch Logs and
    #            Amazon S3 buckets.</p>
    #
    #   @return [ConversationLogSettings]
    #
    # @!attribute sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    #   @return [SentimentAnalysisSettings]
    #
    # @!attribute bot_alias_status
    #   <p>The current status of the bot alias. When the status is
    #               <code>Available</code> the alias is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot with the updated alias.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    UpdateBotAliasOutput = ::Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot to update. This identifier is
    #            returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html">CreateBot</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The new name of the bot. The name must be unique in the account that
    #            creates the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions
    #            to access the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>Provides information on additional privacy protections Amazon Lex should
    #            use with the bot's data.</p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot.</p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #
    #   @return [Integer]
    #
    UpdateBotInput = ::Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the locale to be updated. The
    #            version can only be the <code>DRAFT</code> version.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale to update. The string must
    #            match one of the supported locales. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description of the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The new confidence threshold where Amazon Lex inserts the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #
    #   @return [Float]
    #
    # @!attribute voice_settings
    #   <p>The new Amazon Polly voice Amazon Lex should use for voice interaction with the
    #            user.</p>
    #
    #   @return [VoiceSettings]
    #
    UpdateBotLocaleInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the updated locale.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the updated locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the updated bot locale.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_name
    #   <p>The updated locale name for the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the locale.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The updated confidence threshold for inserting the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #
    #   @return [Float]
    #
    # @!attribute voice_settings
    #   <p>The updated Amazon Polly voice to use for voice interaction with the
    #            user.</p>
    #
    #   @return [VoiceSettings]
    #
    # @!attribute bot_locale_status
    #   <p>The current status of the locale. When the bot status is
    #               <code>Built</code> the locale is ready for use.</p>
    #
    #   Enum, one of: ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>If the <code>botLocaleStatus</code> is <code>Failed</code>, the
    #               <code>failureReasons</code> field lists the errors that occurred
    #            while building the bot.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the locale was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the locale was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute recommended_actions
    #   <p>Recommended actions to take to resolve an error in the
    #               <code>failureReasons</code> field.</p>
    #
    #   @return [Array<String>]
    #
    UpdateBotLocaleOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :locale_name,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :bot_locale_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :recommended_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot after the update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bot after the update.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the bot after
    #            the update.</p>
    #
    #   @return [String]
    #
    # @!attribute data_privacy
    #   <p>The data privacy settings for the bot after the update.</p>
    #
    #   @return [DataPrivacy]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The session timeout, in seconds, for the bot after the
    #            update.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bot_status
    #   <p>Shows the current status of the bot. The bot is first in the
    #               <code>Creating</code> status. Once the bot is read for use, it
    #            changes to the <code>Available</code> status. After the bot is created,
    #            you can use the <code>DRAFT</code> version of the bot.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    UpdateBotOutput = ::Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot recommendation
    #            to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation to be
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to update. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that will be used to encrypt
    #            the data related to the bot recommendation results, as well as the KMS
    #            key ARN used to encrypt the associated metadata.</p>
    #
    #   @return [EncryptionSetting]
    #
    UpdateBotRecommendationInput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :encryption_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot containing the bot recommendation
    #            that has been updated.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot containing the bot recommendation that has
    #            been updated.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to update. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_status
    #   <p>The status of the bot recommendation.</p>
    #            <p>If the status is Failed, then the reasons for the failure are listed
    #            in the failureReasons field. </p>
    #
    #   Enum, one of: ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the bot recommendation was
    #            last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #
    #   @return [TranscriptSourceSetting]
    #
    # @!attribute encryption_setting
    #   <p>The object representing the passwords that were used to encrypt the
    #            data related to the bot recommendation results, as well as the KMS key
    #            ARN used to encrypt the associated metadata.</p>
    #
    #   @return [EncryptionSetting]
    #
    UpdateBotRecommendationOutput = ::Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :last_updated_date_time,
      :transcript_source_setting,
      :encryption_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique identifier Amazon Lex assigned to the export.</p>
    #
    #   @return [String]
    #
    # @!attribute file_password
    #   <p>The new password to use to encrypt the export zip archive.</p>
    #
    #   @return [String]
    #
    UpdateExportInput = ::Struct.new(
      :export_id,
      :file_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexModelsV2::Types::UpdateExportInput "\
          "export_id=#{export_id || 'nil'}, "\
          "file_password=\"[SENSITIVE]\">"
      end
    end

    # @!attribute export_id
    #   <p>The unique identifier Amazon Lex assigned to the export.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   <p>A description of the type of resource that was exported, either a
    #            bot or a bot locale.</p>
    #
    #   @return [ExportResourceSpecification]
    #
    # @!attribute file_format
    #   <p>The file format used for the files that define the resource. The
    #               <code>TSV</code> format is required to export a custom vocabulary
    #            only; otherwise use <code>LexJson</code> format.</p>
    #
    #   Enum, one of: ["LexJson", "TSV"]
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The status of the export. When the status is <code>Completed</code>
    #            the export archive is available for download.</p>
    #
    #   Enum, one of: ["InProgress", "Completed", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the export was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time that the export was last updated.</p>
    #
    #   @return [Time]
    #
    UpdateExportOutput = ::Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_id
    #   <p>The unique identifier of the intent to update.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The new name for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_intent_signature
    #   <p>The signature of the new built-in intent to use as the parent of
    #            this intent.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances
    #   <p>New utterances used to invoke the intent.</p>
    #
    #   @return [Array<SampleUtterance>]
    #
    # @!attribute dialog_code_hook
    #   <p>The new Lambda function to use between each turn of the conversation
    #            with the bot.</p>
    #
    #   @return [DialogCodeHookSettings]
    #
    # @!attribute fulfillment_code_hook
    #   <p>The new Lambda function to call when all of the intents required
    #            slots are provided and the intent is ready for fulfillment.</p>
    #
    #   @return [FulfillmentCodeHookSettings]
    #
    # @!attribute slot_priorities
    #   <p>A new list of slots and their priorities that are contained by the
    #            intent.</p>
    #
    #   @return [Array<SlotPriority>]
    #
    # @!attribute intent_confirmation_setting
    #   <p>New prompts that Amazon Lex sends to the user to confirm the completion
    #            of an intent.</p>
    #
    #   @return [IntentConfirmationSetting]
    #
    # @!attribute intent_closing_setting
    #   <p>The new response that Amazon Lex sends the user when the intent is
    #            closed.</p>
    #
    #   @return [IntentClosingSetting]
    #
    # @!attribute input_contexts
    #   <p>A new list of contexts that must be active in order for Amazon Lex to
    #            consider the intent.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>A new list of contexts that Amazon Lex activates when the intent is
    #            fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    # @!attribute kendra_configuration
    #   <p>New configuration settings for connecting to an Amazon Kendra index.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent. Must be
    #               <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale where this intent is used.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    UpdateIntentInput = ::Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intent_id
    #   <p>The identifier of the intent that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The updated name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_intent_signature
    #   <p>The updated built-in intent that is the parent of this
    #            intent.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances
    #   <p>The updated list of sample utterances for the intent.</p>
    #
    #   @return [Array<SampleUtterance>]
    #
    # @!attribute dialog_code_hook
    #   <p>The updated Lambda function called during each turn of the
    #            conversation with the user.</p>
    #
    #   @return [DialogCodeHookSettings]
    #
    # @!attribute fulfillment_code_hook
    #   <p>The updated Lambda function called when the intent is ready for
    #            fulfillment.</p>
    #
    #   @return [FulfillmentCodeHookSettings]
    #
    # @!attribute slot_priorities
    #   <p>The updated list of slots and their priorities that are elicited
    #            from the user for the intent.</p>
    #
    #   @return [Array<SlotPriority>]
    #
    # @!attribute intent_confirmation_setting
    #   <p>The updated prompts that Amazon Lex sends to the user to confirm the
    #            completion of an intent.</p>
    #
    #   @return [IntentConfirmationSetting]
    #
    # @!attribute intent_closing_setting
    #   <p>The updated response that Amazon Lex sends the user when the intent is
    #            closed.</p>
    #
    #   @return [IntentClosingSetting]
    #
    # @!attribute input_contexts
    #   <p>The updated list of contexts that must be active for the intent to
    #            be considered by Amazon Lex.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>The updated list of contexts that Amazon Lex activates when the intent is
    #            fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    # @!attribute kendra_configuration
    #   <p>The updated configuration for connecting to an Amazon Kendra index with the
    #               <code>AMAZON.KendraSearchIntent</code> intent.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the intent. Will always be
    #               <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The updated language and locale of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>A timestamp of when the intent was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the last time that the intent was modified.</p>
    #
    #   @return [Time]
    #
    UpdateIntentOutput = ::Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>A resource policy to add to the resource. The policy is a JSON
    #            structure that contains one or more statements that define the policy.
    #            The policy must follow the IAM syntax. For more information about the
    #            contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>. </p>
    #            <p>If the policy isn't valid, Amazon Lex returns a validation
    #            exception.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_revision_id
    #   <p>The identifier of the revision of the policy to update. If this
    #            revision ID doesn't match the current revision ID, Amazon Lex throws an
    #            exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex overwrites the contents of
    #            the policy with the new values.</p>
    #
    #   @return [String]
    #
    UpdateResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      :expected_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The current revision of the resource policy. Use the revision ID to
    #            make sure that you are updating the most current version of a resource
    #            policy when you add a policy statement to a resource, delete a
    #            resource, or update a resource.</p>
    #
    #   @return [String]
    #
    UpdateResourcePolicyOutput = ::Struct.new(
      :resource_arn,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier for the slot to update.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_name
    #   <p>The new name for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description for the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_id
    #   <p>The unique identifier of the new slot type to associate with this
    #            slot. </p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_setting
    #   <p>A new set of prompts that Amazon Lex sends to the user to elicit a
    #            response the provides a value for the slot.</p>
    #
    #   @return [SlotValueElicitationSetting]
    #
    # @!attribute obfuscation_setting
    #   <p>New settings that determine how slot values are formatted in Amazon CloudWatch
    #            logs. </p>
    #
    #   @return [ObfuscationSetting]
    #
    # @!attribute bot_id
    #   <p>The unique identifier of the bot that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot. Must always be
    #               <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that contains the slot.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute multiple_values_setting
    #   <p>Determines whether the slot accepts multiple values in one response.
    #            Multiple value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>.</p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #
    #   @return [MultipleValuesSetting]
    #
    UpdateSlotInput = ::Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :multiple_values_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_id
    #   <p>The unique identifier of the slot that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_name
    #   <p>The updated name of the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_id
    #   <p>The updated identifier of the slot type that provides values for the
    #            slot.</p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_setting
    #   <p>The updated prompts that Amazon Lex sends to the user to elicit a
    #            response that provides a value for the slot.</p>
    #
    #   @return [SlotValueElicitationSetting]
    #
    # @!attribute obfuscation_setting
    #   <p>The updated setting that determines whether the slot value is
    #            obfuscated in the Amazon CloudWatch logs.</p>
    #
    #   @return [ObfuscationSetting]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The identifier of the slot version that contains the slot. Will
    #            always be <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_id
    #   <p>The intent that contains the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The timestamp of the date and time that the slot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>The timestamp of the date and time that the slot was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute multiple_values_setting
    #   <p>Indicates whether the slot accepts multiple values in one
    #            response.</p>
    #
    #   @return [MultipleValuesSetting]
    #
    UpdateSlotOutput = ::Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :last_updated_date_time,
      :multiple_values_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier of the slot type to update.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_name
    #   <p>The new name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_values
    #   <p>A new list of values and their optional synonyms that define the
    #            values that the slot type can take.</p>
    #
    #   @return [Array<SlotTypeValue>]
    #
    # @!attribute value_selection_setting
    #   <p>The strategy that Amazon Lex should use when deciding on a value from the
    #            list of slot type values.</p>
    #
    #   @return [SlotValueSelectionSetting]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The new built-in slot type that should be used as the parent of this
    #            slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot type. Must be
    #               <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The identifier of the language and locale that contains the slot
    #            type. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute external_source_setting
    #   <p>Provides information about the external source of the slot type's
    #            definition.</p>
    #
    #   @return [ExternalSourceSetting]
    #
    UpdateSlotTypeInput = ::Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :external_source_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_type_id
    #   <p>The unique identifier of the updated slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_name
    #   <p>The updated name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_values
    #   <p>The updated values that the slot type provides.</p>
    #
    #   @return [Array<SlotTypeValue>]
    #
    # @!attribute value_selection_setting
    #   <p>The updated strategy that Amazon Lex uses to determine which value to
    #            select from the slot type.</p>
    #
    #   @return [SlotValueSelectionSetting]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The updated signature of the built-in slot type that is the parent
    #            of this slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that contains the slot type. This is always
    #               <code>DRAFT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The language and locale of the updated slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The timestamp of the date and time that the slot type was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date_time
    #   <p>A timestamp of the date and time that the slot type was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute external_source_setting
    #   <p>Provides information about the external source of the slot type's
    #            definition.</p>
    #
    #   @return [ExternalSourceSetting]
    #
    UpdateSlotTypeOutput = ::Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :external_source_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides parameters for setting the time window and duration for
    #          aggregating utterance data.</p>
    #
    # @!attribute relative_aggregation_duration
    #   <p>The desired time window for aggregating utterances. </p>
    #
    #   @return [RelativeAggregationDuration]
    #
    UtteranceAggregationDuration = ::Struct.new(
      :relative_aggregation_duration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the input parameters in your request isn't valid. Check the
    #          parameters and try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VoiceEngine
    #
    module VoiceEngine
      # No documentation available.
      #
      Standard = "standard"

      # No documentation available.
      #
      Neural = "neural"
    end

    # <p>Defines settings for using an Amazon Polly voice to communicate with a
    #          user.</p>
    #
    # @!attribute voice_id
    #   <p>The identifier of the Amazon Polly voice to use.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. For more
    #            information, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_SynthesizeSpeech.html polly-SynthesizeSpeech-request-Engine">
    #                  <code>engine</code> parameter of the
    #                  <code>SynthesizeSpeech</code> operation</a> in the
    #                  <i>Amazon Polly developer guide</i>.</p>
    #            <p>If you do not specify a value, the default is
    #            <code>standard</code>.</p>
    #
    #   Enum, one of: ["standard", "neural"]
    #
    #   @return [String]
    #
    VoiceSettings = ::Struct.new(
      :voice_id,
      :engine,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the prompts that Amazon Lex uses while a bot is waiting for
    #          customer input. </p>
    #
    # @!attribute waiting_response
    #   <p>The response that Amazon Lex sends to indicate that the bot is waiting
    #            for the conversation to continue.</p>
    #
    #   @return [ResponseSpecification]
    #
    # @!attribute continue_response
    #   <p>The response that Amazon Lex sends to indicate that the bot is ready to
    #            continue the conversation.</p>
    #
    #   @return [ResponseSpecification]
    #
    # @!attribute still_waiting_response
    #   <p>A response that Amazon Lex sends periodically to the user to indicate
    #            that the bot is still waiting for input from the user.</p>
    #
    #   @return [StillWaitingResponseSpecification]
    #
    # @!attribute active
    #   <p>Specifies whether the bot will wait for a user to respond. When this
    #            field is false, wait and continue responses for a slot aren't used. If
    #            the <code>active</code> field isn't specified, the default is
    #            true.</p>
    #
    #   @return [Boolean]
    #
    WaitAndContinueSpecification = ::Struct.new(
      :waiting_response,
      :continue_response,
      :still_waiting_response,
      :active,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
