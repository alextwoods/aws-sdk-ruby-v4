# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelBuildingService
  module Types

    # <p>Your IAM user or role does not have permission to call the Amazon Lex V2 APIs
    #       required to migrate your bot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not well formed. For example, a value is invalid or
    #       a required field is missing. Check the field values, and try
    #       again.</p>
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

    # <p>Provides information about a bot alias.</p>
    #
    # @!attribute name
    #   <p>The name of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the Amazon Lex bot to which the alias points.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot to which the alias points.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the bot alias was updated. When you create a
    #         resource, the creation date and last updated date are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the bot alias was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute checksum
    #   <p>Checksum of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute conversation_logs
    #   <p>Settings that determine how Amazon Lex uses conversation logs for the
    #         alias.</p>
    #
    #   @return [ConversationLogsResponse]
    #
    BotAliasMetadata = ::Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :last_updated_date,
      :created_date,
      :checksum,
      :conversation_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an association between an Amazon Lex bot and an external
    #       messaging platform.</p>
    #
    # @!attribute name
    #   <p>The name of the association between the bot and the channel.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A text description of the association you are creating. </p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made. </p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot to which this association is being made. </p>
    #            <note>
    #               <p>Currently, Amazon Lex supports associations with Facebook and Slack,
    #           and Twilio.</p>
    #
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date that the association between the Amazon Lex bot and the channel
    #         was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>Specifies the type of association by indicating the type of channel
    #         being established between the Amazon Lex bot and the external messaging
    #         platform.</p>
    #
    #   Enum, one of: ["Facebook", "Slack", "Twilio-Sms", "Kik"]
    #
    #   @return [String]
    #
    # @!attribute bot_configuration
    #   <p>Provides information necessary to communicate with the messaging
    #         platform. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the bot channel. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The channel has been created and is
    #             ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Channel creation is in
    #             progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - There was an error creating the channel.
    #             For information about the reason for the failure, see the
    #               <code>failureReason</code> field.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_PROGRESS", "CREATED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
    #         reason that it failed to create the association.</p>
    #
    #   @return [String]
    #
    BotChannelAssociation = ::Struct.new(
      :name,
      :description,
      :bot_alias,
      :bot_name,
      :created_date,
      :type,
      :bot_configuration,
      :status,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexModelBuildingService::Types::BotChannelAssociation "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "bot_alias=#{bot_alias || 'nil'}, "\
          "bot_name=#{bot_name || 'nil'}, "\
          "created_date=#{created_date || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "bot_configuration=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "failure_reason=#{failure_reason || 'nil'}>"
      end
    end

    # <p>Provides information about a bot. .</p>
    #
    # @!attribute name
    #   <p>The name of the bot. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the bot.</p>
    #
    #   Enum, one of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the bot was updated. When you create a bot, the
    #         creation date and last updated date are the same. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the bot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the bot. For a new bot, the version is always
    #           <code>$LATEST</code>.</p>
    #
    #   @return [String]
    #
    BotMetadata = ::Struct.new(
      :name,
      :description,
      :status,
      :last_updated_date,
      :created_date,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides metadata for a built-in intent.</p>
    #
    # @!attribute signature
    #   <p>A unique identifier for the built-in intent. To find the signature
    #         for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_locales
    #   <p>A list of identifiers for the locales that the intent
    #         supports.</p>
    #
    #   @return [Array<String>]
    #
    BuiltinIntentMetadata = ::Struct.new(
      :signature,
      :supported_locales,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a slot used in a built-in
    #       intent.</p>
    #
    # @!attribute name
    #   <p>A list of the slots defined for the intent.</p>
    #
    #   @return [String]
    #
    BuiltinIntentSlot = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a built in slot type.</p>
    #
    # @!attribute signature
    #   <p>A unique identifier for the built-in slot type. To find the
    #         signature for a slot type, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_locales
    #   <p>A list of target locales for the slot. </p>
    #
    #   @return [Array<String>]
    #
    BuiltinSlotTypeMetadata = ::Struct.new(
      :signature,
      :supported_locales,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelStatus
    #
    module ChannelStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for ChannelType
    #
    module ChannelType
      # No documentation available.
      #
      FACEBOOK = "Facebook"

      # No documentation available.
      #
      SLACK = "Slack"

      # No documentation available.
      #
      TWILIO_SMS = "Twilio-Sms"

      # No documentation available.
      #
      KIK = "Kik"
    end

    # <p>Specifies a Lambda function that verifies requests to a bot or
    #       fulfills the user's request to a bot..</p>
    #
    # @!attribute uri
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute message_version
    #   <p>The version of the request-response that you want Amazon Lex to use to
    #         invoke your Lambda function. For more information, see <a>using-lambda</a>.</p>
    #
    #   @return [String]
    #
    CodeHook = ::Struct.new(
      :uri,
      :message_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> There was a conflict processing the request. Try your request
    #       again. </p>
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

    # Includes enum constants for ContentType
    #
    module ContentType
      # No documentation available.
      #
      PLAIN_TEXT = "PlainText"

      # No documentation available.
      #
      SSML = "SSML"

      # No documentation available.
      #
      CUSTOM_PAYLOAD = "CustomPayload"
    end

    # <p>Provides the settings needed for conversation logs.</p>
    #
    # @!attribute log_settings
    #   <p>The settings for your conversation logs. You can log the conversation
    #         text, conversation audio, or both.</p>
    #
    #   @return [Array<LogSettingsRequest>]
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to write
    #         to your CloudWatch Logs for text logs and your S3 bucket for audio logs.
    #         If audio encryption is enabled, this role also provides access permission
    #         for the AWS KMS key used for encrypting audio logs. For more information,
    #         see <a href="https://docs.aws.amazon.com/lex/latest/dg/conversation-logs-role-and-policy.html">Creating an
    #           IAM Role and Policy for Conversation Logs</a>.</p>
    #
    #   @return [String]
    #
    ConversationLogsRequest = ::Struct.new(
      :log_settings,
      :iam_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about conversation log settings.</p>
    #
    # @!attribute log_settings
    #   <p>The settings for your conversation logs. You can log text, audio, or
    #         both.</p>
    #
    #   @return [Array<LogSettingsResponse>]
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to write your logs
    #         to CloudWatch Logs or an S3 bucket.</p>
    #
    #   @return [String]
    #
    ConversationLogsResponse = ::Struct.new(
      :log_settings,
      :iam_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot that you want to create a new version of. The
    #         name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code> version
    #         of the bot. If you specify a checksum and the <code>$LATEST</code> version
    #         of the bot has a different checksum, a
    #           <code>PreconditionFailedException</code> exception is returned and Amazon Lex
    #         doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    #
    #   @return [String]
    #
    CreateBotVersionInput = ::Struct.new(
      :name,
      :checksum,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute intents
    #   <p>An array of <code>Intent</code> objects. For more information, see
    #           <a>PutBot</a>.</p>
    #
    #   @return [Array<Intent>]
    #
    # @!attribute clarification_prompt
    #   <p>The message that Amazon Lex uses when it doesn't understand the user's
    #         request. For more information, see <a>PutBot</a>. </p>
    #
    #   @return [Prompt]
    #
    # @!attribute abort_statement
    #   <p>The message that Amazon Lex uses to cancel a conversation. For more
    #         information, see <a>PutBot</a>.</p>
    #
    #   @return [Statement]
    #
    # @!attribute status
    #   <p> When you send a request to create or update a bot, Amazon Lex sets the
    #           <code>status</code> response element to <code>BUILDING</code>. After
    #         Amazon Lex builds the bot, it sets <code>status</code> to <code>READY</code>.
    #         If Amazon Lex can't build the bot, it sets <code>status</code> to
    #           <code>FAILED</code>. Amazon Lex returns the reason for the failure in the
    #           <code>failureReason</code> response element. </p>
    #
    #   Enum, one of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
    #         reason that it failed to build the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date when the <code>$LATEST</code> version of this bot was
    #         updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date when the bot version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #         a conversation. For more information, see <a>PutBot</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute voice_id
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interactions
    #         with the user.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum identifying the version of the bot that was
    #         created.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the bot. </p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p> Specifies the target locale for the bot. </p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #         you must specify whether your use of Amazon Lex is related to a website,
    #         program, or other application that is directed or targeted, in whole or in
    #         part, to children under age 13 and subject to the Children's Online
    #         Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #           <code>false</code> in the <code>childDirected</code> field. By
    #         specifying <code>true</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is</b> related
    #         to a website, program, or other application that is directed or targeted,
    #         in whole or in part, to children under age 13 and subject to COPPA. By
    #         specifying <code>false</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is not</b>
    #         related to a website, program, or other application that is directed or
    #         targeted, in whole or in part, to children under age 13 and subject to
    #         COPPA. You may not specify a default value for the
    #           <code>childDirected</code> field that does not accurately reflect
    #         whether your use of Amazon Lex is related to a website, program, or other
    #         application that is directed or targeted, in whole or in part, to children
    #         under age 13 and subject to COPPA.</p>
    #            <p>If your use of Amazon Lex relates to a website, program, or other
    #         application that is directed in whole or in part, to children under age
    #         13, you must obtain any required verifiable parental consent under COPPA.
    #         For information regarding the use of Amazon Lex in connection with websites,
    #         programs, or other applications that are directed or targeted, in whole or
    #         in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs data-security">Amazon Lex FAQ.</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_model_improvements
    #   <p>Indicates whether the bot uses accuracy improvements.
    #           <code>true</code> indicates that the bot is using the improvements,
    #         otherwise, <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute detect_sentiment
    #   <p>Indicates whether utterances entered by the user should be sent to
    #         Amazon Comprehend for sentiment analysis.</p>
    #
    #   @return [Boolean]
    #
    CreateBotVersionOutput = ::Struct.new(
      :name,
      :description,
      :intents,
      :clarification_prompt,
      :abort_statement,
      :status,
      :failure_reason,
      :last_updated_date,
      :created_date,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :version,
      :locale,
      :child_directed,
      :enable_model_improvements,
      :detect_sentiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent that you want to create a new version of.
    #         The name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the <code>$LATEST</code> version of the intent that
    #         should be used to create the new version. If you specify a checksum and
    #         the <code>$LATEST</code> version of the intent has a different checksum,
    #         Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    #         doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    #
    #   @return [String]
    #
    CreateIntentVersionInput = ::Struct.new(
      :name,
      :checksum,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>An array of slot types that defines the information required to
    #         fulfill the intent.</p>
    #
    #   @return [Array<Slot>]
    #
    # @!attribute sample_utterances
    #   <p>An array of sample utterances configured for the intent. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute confirmation_prompt
    #   <p>If defined, the prompt that Amazon Lex uses to confirm the user's
    #         intent before fulfilling it. </p>
    #
    #   @return [Prompt]
    #
    # @!attribute rejection_statement
    #   <p>If the user answers "no" to the question defined in
    #           <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #
    #   @return [Statement]
    #
    # @!attribute follow_up_prompt
    #   <p>If defined, Amazon Lex uses this prompt to solicit additional user
    #         activity after the intent is fulfilled. </p>
    #
    #   @return [FollowUpPrompt]
    #
    # @!attribute conclusion_statement
    #   <p>After the Lambda function specified in the
    #           <code>fulfillmentActivity</code> field fulfills the intent, Amazon Lex
    #         conveys this statement to the user. </p>
    #
    #   @return [Statement]
    #
    # @!attribute dialog_code_hook
    #   <p>If defined, Amazon Lex invokes this Lambda function for each user
    #         input.</p>
    #
    #   @return [CodeHook]
    #
    # @!attribute fulfillment_activity
    #   <p> Describes how the intent is fulfilled. </p>
    #
    #   @return [FulfillmentActivity]
    #
    # @!attribute parent_intent_signature
    #   <p>A unique identifier for a built-in intent.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the intent was updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the intent was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version number assigned to the new version of the
    #         intent.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the intent version created.</p>
    #
    #   @return [String]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration information, if any, for connecting an Amazon Kendra
    #         index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute input_contexts
    #   <p>An array of <code>InputContext</code> objects that lists the contexts
    #         that must be active for Amazon Lex to choose the intent in a conversation with
    #         the user.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>An array of <code>OutputContext</code> objects that lists the contexts
    #         that the intent activates when the intent is fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    CreateIntentVersionOutput = ::Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :kendra_configuration,
      :input_contexts,
      :output_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type that you want to create a new version
    #         for. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum for the <code>$LATEST</code> version of the slot type that
    #         you want to publish. If you specify a checksum and the
    #           <code>$LATEST</code> version of the slot type has a different checksum,
    #         Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    #         doesn't publish the new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    #
    #   @return [String]
    #
    CreateSlotTypeVersionInput = ::Struct.new(
      :name,
      :checksum,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute enumeration_values
    #   <p>A list of <code>EnumerationValue</code> objects that defines the
    #         values that the slot type can take.</p>
    #
    #   @return [Array<EnumerationValue>]
    #
    # @!attribute last_updated_date
    #   <p>The date that the slot type was updated. When you create a
    #         resource, the creation date and last update date are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the slot type was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version assigned to the new slot type version. </p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the <code>$LATEST</code> version of the slot
    #         type.</p>
    #
    #   @return [String]
    #
    # @!attribute value_selection_strategy
    #   <p>The strategy that Amazon Lex uses to determine the value of the slot.
    #         For more information, see <a>PutSlotType</a>.</p>
    #
    #   Enum, one of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #
    #   @return [String]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The built-in slot type used a the parent of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_configurations
    #   <p>Configuration information that extends the parent built-in slot
    #         type.</p>
    #
    #   @return [Array<SlotTypeConfiguration>]
    #
    CreateSlotTypeVersionOutput = ::Struct.new(
      :name,
      :description,
      :enumeration_values,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :value_selection_strategy,
      :parent_slot_type_signature,
      :slot_type_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the alias to delete. The name is case sensitive.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot that the alias points to.</p>
    #
    #   @return [String]
    #
    DeleteBotAliasInput = ::Struct.new(
      :name,
      :bot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBotAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the association. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>An alias that points to the specific version of the Amazon Lex bot to
    #         which this association is being made.</p>
    #
    #   @return [String]
    #
    DeleteBotChannelAssociationInput = ::Struct.new(
      :name,
      :bot_name,
      :bot_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBotChannelAssociationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    DeleteBotInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the bot to delete. You cannot delete the
    #           <code>$LATEST</code> version of the bot. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteBot</a>
    #         operation.</p>
    #
    #   @return [String]
    #
    DeleteBotVersionInput = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBotVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    DeleteIntentInput = ::Struct.new(
      :name,
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

    # @!attribute name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the intent to delete. You cannot delete the
    #           <code>$LATEST</code> version of the intent. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteIntent</a>
    #         operation.</p>
    #
    #   @return [String]
    #
    DeleteIntentVersionInput = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIntentVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    DeleteSlotTypeInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSlotTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the slot type to delete. You cannot delete the
    #           <code>$LATEST</code> version of the slot type. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteSlotType</a>
    #         operation.</p>
    #
    #   @return [String]
    #
    DeleteSlotTypeVersionInput = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSlotTypeVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot that stored the utterances.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p> The unique identifier for the user that made the utterances. This
    #         is the user ID that was sent in the <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> operation request that contained the
    #         utterance.</p>
    #
    #   @return [String]
    #
    DeleteUtterancesInput = ::Struct.new(
      :bot_name,
      :user_id,
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

    # Includes enum constants for Destination
    #
    module Destination
      # No documentation available.
      #
      CLOUDWATCH_LOGS = "CLOUDWATCH_LOGS"

      # No documentation available.
      #
      S3 = "S3"
    end

    # <p>Each slot type can have a set of values. Each enumeration value
    #       represents a value the slot type can take. </p>
    #          <p>For example, a pizza ordering bot could have a slot type that
    #       specifies the type of crust that the pizza should have. The slot type
    #       could include the values </p>
    #          <ul>
    #             <li>
    #                <p>thick</p>
    #             </li>
    #             <li>
    #                <p>thin</p>
    #             </li>
    #             <li>
    #                <p>stuffed</p>
    #             </li>
    #          </ul>
    #
    # @!attribute value
    #   <p>The value of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute synonyms
    #   <p>Additional values related to the slot type value.</p>
    #
    #   @return [Array<String>]
    #
    EnumerationValue = ::Struct.new(
      :value,
      :synonyms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportStatus
    #
    module ExportStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for ExportType
    #
    module ExportType
      # No documentation available.
      #
      ALEXA_SKILLS_KIT = "ALEXA_SKILLS_KIT"

      # No documentation available.
      #
      LEX = "LEX"
    end

    # <p>A prompt for additional activity after an intent is fulfilled. For
    #       example, after the <code>OrderPizza</code> intent is fulfilled, you might
    #       prompt the user to find out whether the user wants to order
    #       drinks.</p>
    #
    # @!attribute prompt
    #   <p>Prompts for information from the user. </p>
    #
    #   @return [Prompt]
    #
    # @!attribute rejection_statement
    #   <p>If the user answers "no" to the question defined in the
    #           <code>prompt</code> field, Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #
    #   @return [Statement]
    #
    FollowUpPrompt = ::Struct.new(
      :prompt,
      :rejection_statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes how the intent is fulfilled after the user provides all
    #       of the information required for the intent. You can provide a Lambda
    #       function to process the intent, or you can return the intent information
    #       to the client application. We recommend that you use a Lambda function so
    #       that the relevant logic lives in the Cloud and limit the client-side code
    #       primarily to presentation. If you need to update the logic, you only
    #       update the Lambda function; you don't need to upgrade your client
    #       application. </p>
    #
    #
    #          <p>Consider the following examples:</p>
    #          <ul>
    #             <li>
    #                <p>In a pizza ordering application, after the user provides all of
    #           the information for placing an order, you use a Lambda function to
    #           place an order with a pizzeria. </p>
    #             </li>
    #             <li>
    #                <p>In a gaming application, when a user says "pick up a rock,"
    #           this information must go back to the client application so that it can
    #           perform the operation and update the graphics. In this case, you want
    #           Amazon Lex to return the intent data to the client. </p>
    #             </li>
    #          </ul>
    #
    # @!attribute type
    #   <p> How the intent should be fulfilled, either by running a Lambda
    #         function or by returning the slot data to the client application.
    #       </p>
    #
    #   Enum, one of: ["ReturnIntent", "CodeHook"]
    #
    #   @return [String]
    #
    # @!attribute code_hook
    #   <p> A description of the Lambda function that is run to fulfill the
    #         intent. </p>
    #
    #   @return [CodeHook]
    #
    FulfillmentActivity = ::Struct.new(
      :type,
      :code_hook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FulfillmentActivityType
    #
    module FulfillmentActivityType
      # No documentation available.
      #
      RETURN_INTENT = "ReturnIntent"

      # No documentation available.
      #
      CODE_HOOK = "CodeHook"
    end

    # @!attribute name
    #   <p>The name of the bot alias. The name is case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    GetBotAliasInput = ::Struct.new(
      :name,
      :bot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that the alias points to.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot that the alias points to.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the bot alias was updated. When you create a
    #         resource, the creation date and the last updated date are the
    #         same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the bot alias was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute checksum
    #   <p>Checksum of the bot alias.</p>
    #
    #   @return [String]
    #
    # @!attribute conversation_logs
    #   <p>The settings that determine how Amazon Lex uses conversation logs for the
    #         alias.</p>
    #
    #   @return [ConversationLogsResponse]
    #
    GetBotAliasOutput = ::Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :last_updated_date,
      :created_date,
      :checksum,
      :conversation_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of aliases. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of aliases, specify the pagination
    #         token in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of aliases to return in the response. The
    #         default is 50. . </p>
    #
    #   @return [Integer]
    #
    # @!attribute name_contains
    #   <p>Substring to match in bot alias names. An alias will be returned if
    #         any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    #
    #   @return [String]
    #
    GetBotAliasesInput = ::Struct.new(
      :bot_name,
      :next_token,
      :max_results,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_aliases
    #   <p>An array of <code>BotAliasMetadata</code> objects, each describing
    #         a bot alias.</p>
    #
    #   @return [Array<BotAliasMetadata>]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching next page of aliases. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of aliases, specify the pagination
    #         token in the next request. </p>
    #
    #   @return [String]
    #
    GetBotAliasesOutput = ::Struct.new(
      :bot_aliases,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the association between the bot and the channel. The
    #         name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    #
    #   @return [String]
    #
    GetBotChannelAssociationInput = ::Struct.new(
      :name,
      :bot_name,
      :bot_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the association between the bot and the
    #         channel.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the association between the bot and the
    #         channel.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date that the association between the bot and the channel was
    #         created.</p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>The type of the messaging platform.</p>
    #
    #   Enum, one of: ["Facebook", "Slack", "Twilio-Sms", "Kik"]
    #
    #   @return [String]
    #
    # @!attribute bot_configuration
    #   <p>Provides information that the messaging platform needs to
    #         communicate with the Amazon Lex bot.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the bot channel. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The channel has been created and is
    #             ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Channel creation is in
    #             progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - There was an error creating the channel.
    #             For information about the reason for the failure, see the
    #               <code>failureReason</code> field.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_PROGRESS", "CREATED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
    #         reason that it failed to create the association.</p>
    #
    #   @return [String]
    #
    GetBotChannelAssociationOutput = ::Struct.new(
      :name,
      :description,
      :bot_alias,
      :bot_name,
      :created_date,
      :type,
      :bot_configuration,
      :status,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexModelBuildingService::Types::GetBotChannelAssociationOutput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "bot_alias=#{bot_alias || 'nil'}, "\
          "bot_name=#{bot_name || 'nil'}, "\
          "created_date=#{created_date || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "bot_configuration=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "failure_reason=#{failure_reason || 'nil'}>"
      end
    end

    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot in the association.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of associations. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of associations, specify the
    #         pagination token in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of associations to return in the response. The
    #         default is 50. </p>
    #
    #   @return [Integer]
    #
    # @!attribute name_contains
    #   <p>Substring to match in channel association names. An association
    #         will be returned if any part of its name matches the substring. For
    #         example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot
    #         channel associations, use a hyphen ("-") as the <code>nameContains</code>
    #         parameter.</p>
    #
    #   @return [String]
    #
    GetBotChannelAssociationsInput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :next_token,
      :max_results,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_channel_associations
    #   <p>An array of objects, one for each association, that provides
    #         information about the Amazon Lex bot and its association with the channel.
    #       </p>
    #
    #   @return [Array<BotChannelAssociation>]
    #
    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of associations. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of associations, specify the
    #         pagination token in the next request. </p>
    #
    #   @return [String]
    #
    GetBotChannelAssociationsOutput = ::Struct.new(
      :bot_channel_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute version_or_alias
    #   <p>The version or alias of the bot.</p>
    #
    #   @return [String]
    #
    GetBotInput = ::Struct.new(
      :name,
      :version_or_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute intents
    #   <p>An array of <code>intent</code> objects. For more information, see
    #           <a>PutBot</a>.</p>
    #
    #   @return [Array<Intent>]
    #
    # @!attribute enable_model_improvements
    #   <p>Indicates whether the bot uses accuracy improvements.
    #           <code>true</code> indicates that the bot is using the improvements,
    #         otherwise, <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The score that determines where Amazon Lex inserts the
    #           <code>AMAZON.FallbackIntent</code>,
    #           <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #         alternative intents in a <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or
    #           <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> response.
    #           <code>AMAZON.FallbackIntent</code> is inserted if the confidence score
    #         for all intents is below this value.
    #           <code>AMAZON.KendraSearchIntent</code> is only inserted if it is
    #         configured for the bot.</p>
    #
    #   @return [Float]
    #
    # @!attribute clarification_prompt
    #   <p>The message Amazon Lex uses when it doesn't understand the user's
    #         request. For more information, see <a>PutBot</a>. </p>
    #
    #   @return [Prompt]
    #
    # @!attribute abort_statement
    #   <p>The message that Amazon Lex returns when the user elects to end the
    #         conversation without completing it. For more information, see <a>PutBot</a>.</p>
    #
    #   @return [Statement]
    #
    # @!attribute status
    #   <p>The status of the bot. </p>
    #            <p>When the status is <code>BUILDING</code> Amazon Lex is building the bot
    #         for testing and use.</p>
    #            <p>If the status of the bot is <code>READY_BASIC_TESTING</code>, you
    #         can test the bot using the exact utterances specified in the bot's
    #         intents. When the bot is ready for full testing or to run, the status is
    #           <code>READY</code>.</p>
    #            <p>If there was a problem with building the bot, the status is
    #           <code>FAILED</code> and the <code>failureReason</code> field explains
    #         why the bot did not build.</p>
    #            <p>If the bot was saved but not built, the status is
    #           <code>NOT_BUILT</code>.</p>
    #
    #   Enum, one of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex explains why
    #         it failed to build the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the bot was updated. When you create a resource, the
    #         creation date and last updated date are the same. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the bot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #         a conversation. For more information, see <a>PutBot</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute voice_id
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #         with the user. For more information, see <a>PutBot</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the bot used to identify a specific revision of the
    #         bot's <code>$LATEST</code> version.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the bot. For a new bot, the version is always
    #           <code>$LATEST</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p> The target locale for the bot. </p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #         you must specify whether your use of Amazon Lex is related to a website,
    #         program, or other application that is directed or targeted, in whole or in
    #         part, to children under age 13 and subject to the Children's Online
    #         Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #           <code>false</code> in the <code>childDirected</code> field. By
    #         specifying <code>true</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is</b> related
    #         to a website, program, or other application that is directed or targeted,
    #         in whole or in part, to children under age 13 and subject to COPPA. By
    #         specifying <code>false</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is not</b>
    #         related to a website, program, or other application that is directed or
    #         targeted, in whole or in part, to children under age 13 and subject to
    #         COPPA. You may not specify a default value for the
    #           <code>childDirected</code> field that does not accurately reflect
    #         whether your use of Amazon Lex is related to a website, program, or other
    #         application that is directed or targeted, in whole or in part, to children
    #         under age 13 and subject to COPPA.</p>
    #            <p>If your use of Amazon Lex relates to a website, program, or other
    #         application that is directed in whole or in part, to children under age
    #         13, you must obtain any required verifiable parental consent under COPPA.
    #         For information regarding the use of Amazon Lex in connection with websites,
    #         programs, or other applications that are directed or targeted, in whole or
    #         in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs data-security">Amazon Lex FAQ.</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute detect_sentiment
    #   <p>Indicates whether user utterances should be sent to Amazon Comprehend
    #         for sentiment analysis.</p>
    #
    #   @return [Boolean]
    #
    GetBotOutput = ::Struct.new(
      :name,
      :description,
      :intents,
      :enable_model_improvements,
      :nlu_intent_confidence_threshold,
      :clarification_prompt,
      :abort_statement,
      :status,
      :failure_reason,
      :last_updated_date,
      :created_date,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :version,
      :locale,
      :child_directed,
      :detect_sentiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot for which versions should be
    #         returned.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of bot versions. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of bot versions to return in the response. The
    #         default is 10.</p>
    #
    #   @return [Integer]
    #
    GetBotVersionsInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bots
    #   <p>An array of <code>BotMetadata</code> objects, one for each numbered
    #         version of the bot plus one for the <code>$LATEST</code>
    #         version.</p>
    #
    #   @return [Array<BotMetadata>]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of bot versions. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    #
    #   @return [String]
    #
    GetBotVersionsOutput = ::Struct.new(
      :bots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of bots. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of bots, specify the pagination token
    #         in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of bots to return in the response that the
    #         request will return. The default is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name_contains
    #   <p>Substring to match in bot names. A bot will be returned if any part
    #         of its name matches the substring. For example, "xyz" matches both
    #         "xyzabc" and "abcxyz."</p>
    #
    #   @return [String]
    #
    GetBotsInput = ::Struct.new(
      :next_token,
      :max_results,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bots
    #   <p>An array of <code>botMetadata</code> objects, with one entry for
    #         each bot. </p>
    #
    #   @return [Array<BotMetadata>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, it includes a pagination token that
    #         you can specify in your next request to fetch the next page of bots.
    #       </p>
    #
    #   @return [String]
    #
    GetBotsOutput = ::Struct.new(
      :bots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute signature
    #   <p>The unique identifier for a built-in intent. To find the signature
    #         for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    GetBuiltinIntentInput = ::Struct.new(
      :signature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute signature
    #   <p>The unique identifier for a built-in intent.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_locales
    #   <p>A list of locales that the intent supports.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute slots
    #   <p>An array of <code>BuiltinIntentSlot</code> objects, one entry for
    #         each slot type in the intent.</p>
    #
    #   @return [Array<BuiltinIntentSlot>]
    #
    GetBuiltinIntentOutput = ::Struct.new(
      :signature,
      :supported_locales,
      :slots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute locale
    #   <p>A list of locales that the intent supports.</p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute signature_contains
    #   <p>Substring to match in built-in intent signatures. An intent will be
    #         returned if any part of its signature matches the substring. For example,
    #         "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an
    #         intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of intents. If this
    #         API call is truncated, Amazon Lex returns a pagination token in the response.
    #         To fetch the next page of intents, use the pagination token in the next
    #         request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of intents to return in the response. The
    #         default is 10.</p>
    #
    #   @return [Integer]
    #
    GetBuiltinIntentsInput = ::Struct.new(
      :locale,
      :signature_contains,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intents
    #   <p>An array of <code>builtinIntentMetadata</code> objects, one for
    #         each intent in the response.</p>
    #
    #   @return [Array<BuiltinIntentMetadata>]
    #
    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of intents. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of intents, specify the pagination
    #         token in the next request.</p>
    #
    #   @return [String]
    #
    GetBuiltinIntentsOutput = ::Struct.new(
      :intents,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute locale
    #   <p>A list of locales that the slot type supports.</p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute signature_contains
    #   <p>Substring to match in built-in slot type signatures. A slot type
    #         will be returned if any part of its signature matches the substring. For
    #         example, "xyz" matches both "xyzabc" and "abcxyz."</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of slot types. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of slot types, specify the
    #         pagination token in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of slot types to return in the response. The
    #         default is 10.</p>
    #
    #   @return [Integer]
    #
    GetBuiltinSlotTypesInput = ::Struct.new(
      :locale,
      :signature_contains,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_types
    #   <p>An array of <code>BuiltInSlotTypeMetadata</code> objects, one entry
    #         for each slot type returned.</p>
    #
    #   @return [Array<BuiltinSlotTypeMetadata>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the response includes a pagination
    #         token that you can use in your next request to fetch the next page of slot
    #         types.</p>
    #
    #   @return [String]
    #
    GetBuiltinSlotTypesOutput = ::Struct.new(
      :slot_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot to export.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the bot to export.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource to export. </p>
    #
    #   Enum, one of: ["BOT", "INTENT", "SLOT_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute export_type
    #   <p>The format of the exported data.</p>
    #
    #   Enum, one of: ["ALEXA_SKILLS_KIT", "LEX"]
    #
    #   @return [String]
    #
    GetExportInput = ::Struct.new(
      :name,
      :version,
      :resource_type,
      :export_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot being exported.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the bot being exported.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the exported resource.</p>
    #
    #   Enum, one of: ["BOT", "INTENT", "SLOT_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute export_type
    #   <p>The format of the exported data.</p>
    #
    #   Enum, one of: ["ALEXA_SKILLS_KIT", "LEX"]
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The status of the export. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The export is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The export is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The export could not be
    #             completed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_PROGRESS", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
    #         reason that it failed to export the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>An S3 pre-signed URL that provides the location of the exported
    #         resource. The exported resource is a ZIP archive that contains the
    #         exported resource in JSON format. The structure of the archive may change.
    #         Your code should not rely on the archive structure.</p>
    #
    #   @return [String]
    #
    GetExportOutput = ::Struct.new(
      :name,
      :version,
      :resource_type,
      :export_type,
      :export_status,
      :failure_reason,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>The identifier of the import job information to return.</p>
    #
    #   @return [String]
    #
    GetImportInput = ::Struct.new(
      :import_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name given to the import job.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource imported.</p>
    #
    #   Enum, one of: ["BOT", "INTENT", "SLOT_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute merge_strategy
    #   <p>The action taken when there was a conflict between an existing
    #         resource and a resource in the import file.</p>
    #
    #   Enum, one of: ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"]
    #
    #   @return [String]
    #
    # @!attribute import_id
    #   <p>The identifier for the specific import job.</p>
    #
    #   @return [String]
    #
    # @!attribute import_status
    #   <p>The status of the import job. If the status is <code>FAILED</code>,
    #         you can get the reason for the failure from the <code>failureReason</code>
    #         field.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>A string that describes why an import job failed to
    #         complete.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_date
    #   <p>A timestamp for the date and time that the import job was
    #         created.</p>
    #
    #   @return [Time]
    #
    GetImportOutput = ::Struct.new(
      :name,
      :resource_type,
      :merge_strategy,
      :import_id,
      :import_status,
      :failure_reason,
      :created_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the intent.</p>
    #
    #   @return [String]
    #
    GetIntentInput = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>An array of intent slots configured for the intent.</p>
    #
    #   @return [Array<Slot>]
    #
    # @!attribute sample_utterances
    #   <p>An array of sample utterances configured for the intent.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute confirmation_prompt
    #   <p>If defined in the bot, Amazon Lex uses prompt to confirm the intent
    #         before fulfilling the user's request. For more information, see <a>PutIntent</a>. </p>
    #
    #   @return [Prompt]
    #
    # @!attribute rejection_statement
    #   <p>If the user answers "no" to the question defined in
    #           <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #
    #   @return [Statement]
    #
    # @!attribute follow_up_prompt
    #   <p>If defined in the bot, Amazon Lex uses this prompt to solicit additional
    #         user activity after the intent is fulfilled. For more information, see
    #           <a>PutIntent</a>.</p>
    #
    #   @return [FollowUpPrompt]
    #
    # @!attribute conclusion_statement
    #   <p>After the Lambda function specified in the
    #           <code>fulfillmentActivity</code> element fulfills the intent, Amazon Lex
    #         conveys this statement to the user.</p>
    #
    #   @return [Statement]
    #
    # @!attribute dialog_code_hook
    #   <p>If defined in the bot, Amazon Amazon Lex invokes this Lambda function
    #         for each user input. For more information, see <a>PutIntent</a>. </p>
    #
    #   @return [CodeHook]
    #
    # @!attribute fulfillment_activity
    #   <p>Describes how the intent is fulfilled. For more information, see
    #           <a>PutIntent</a>. </p>
    #
    #   @return [FulfillmentActivity]
    #
    # @!attribute parent_intent_signature
    #   <p>A unique identifier for a built-in intent.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the intent was updated. When you create a resource,
    #         the creation date and the last updated date are the same. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the intent was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration information, if any, to connect to an Amazon Kendra
    #         index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute input_contexts
    #   <p>An array of <code>InputContext</code> objects that lists the contexts
    #         that must be active for Amazon Lex to choose the intent in a conversation with
    #         the user.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>An array of <code>OutputContext</code> objects that lists the contexts
    #         that the intent activates when the intent is fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    GetIntentOutput = ::Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :kendra_configuration,
      :input_contexts,
      :output_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent for which versions should be
    #         returned.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of intent versions.
    #         If the response to this call is truncated, Amazon Lex returns a pagination
    #         token in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of intent versions to return in the response.
    #         The default is 10.</p>
    #
    #   @return [Integer]
    #
    GetIntentVersionsInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intents
    #   <p>An array of <code>IntentMetadata</code> objects, one for each
    #         numbered version of the intent plus one for the <code>$LATEST</code>
    #         version.</p>
    #
    #   @return [Array<IntentMetadata>]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of intent versions.
    #         If the response to this call is truncated, Amazon Lex returns a pagination
    #         token in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    #
    #   @return [String]
    #
    GetIntentVersionsOutput = ::Struct.new(
      :intents,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of intents. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of intents, specify the pagination
    #         token in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of intents to return in the response. The
    #         default is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name_contains
    #   <p>Substring to match in intent names. An intent will be returned if
    #         any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    #
    #   @return [String]
    #
    GetIntentsInput = ::Struct.new(
      :next_token,
      :max_results,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intents
    #   <p>An array of <code>Intent</code> objects. For more information, see
    #           <a>PutBot</a>.</p>
    #
    #   @return [Array<IntentMetadata>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the response includes a pagination
    #         token that you can specify in your next request to fetch the next page of
    #         intents. </p>
    #
    #   @return [String]
    #
    GetIntentsOutput = ::Struct.new(
      :intents,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute migration_id
    #   <p>The unique identifier of the migration to view. The
    #           <code>migrationID</code> is returned by the  operation.</p>
    #
    #   @return [String]
    #
    GetMigrationInput = ::Struct.new(
      :migration_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute migration_id
    #   <p>The unique identifier of the migration. This is the same as the
    #         identifier used when calling the <code>GetMigration</code>
    #         operation.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_name
    #   <p>The name of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_version
    #   <p>The version of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_locale
    #   <p>The locale of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute v2_bot_id
    #   <p>The unique identifier of the Amazon Lex V2 bot that the Amazon Lex V1 is being
    #         migrated to.</p>
    #
    #   @return [String]
    #
    # @!attribute v2_bot_role
    #   <p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_status
    #   <p>Indicates the status of the migration. When the status is
    #           <code>COMPLETE</code> the migration is finished and the bot is available
    #         in Amazon Lex V2. There may be alerts and warnings that need to be resolved to
    #         complete the migration.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute migration_strategy
    #   <p>The strategy used to conduct the migration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates
    #             the Amazon Lex V1 bot to the new bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot
    #           metadata and the locale being migrated. It doesn't change any other
    #           locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale
    #           is created in the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_NEW", "UPDATE_EXISTING"]
    #
    #   @return [String]
    #
    # @!attribute migration_timestamp
    #   <p>The date and time that the migration started.</p>
    #
    #   @return [Time]
    #
    # @!attribute alerts
    #   <p>A list of alerts and warnings that indicate issues with the migration
    #         for the Amazon Lex V1 bot to Amazon Lex V2. You receive a warning when an Amazon Lex V1
    #         feature has a different implementation if Amazon Lex V2.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/migrate.html">Migrating a bot</a> in the <i>Amazon Lex V2
    #           developer guide</i>.</p>
    #
    #   @return [Array<MigrationAlert>]
    #
    GetMigrationOutput = ::Struct.new(
      :migration_id,
      :v1_bot_name,
      :v1_bot_version,
      :v1_bot_locale,
      :v2_bot_id,
      :v2_bot_role,
      :migration_status,
      :migration_strategy,
      :migration_timestamp,
      :alerts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_by_attribute
    #   <p>The field to sort the list of migrations by. You can sort by the
    #         Amazon Lex V1 bot name or the date and time that the migration was
    #         started.</p>
    #
    #   Enum, one of: ["V1_BOT_NAME", "MIGRATION_DATE_TIME"]
    #
    #   @return [String]
    #
    # @!attribute sort_by_order
    #   <p>The order so sort the list.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute v1_bot_name_contains
    #   <p>Filters the list to contain only bots whose name contains the
    #         specified string. The string is matched anywhere in bot name.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_status_equals
    #   <p>Filters the list to contain only migrations in the specified state.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of migrations to return in the response. The
    #         default is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of migrations. If the
    #         response to this operation is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of migrations, specify the
    #         pagination token in the request.</p>
    #
    #   @return [String]
    #
    GetMigrationsInput = ::Struct.new(
      :sort_by_attribute,
      :sort_by_order,
      :v1_bot_name_contains,
      :migration_status_equals,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute migration_summaries
    #   <p>An array of summaries for migrations from Amazon Lex V1 to Amazon Lex V2. To see
    #         details of the migration, use the <code>migrationId</code> from the
    #         summary in a call to the
    #         operation.</p>
    #
    #   @return [Array<MigrationSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, it includes a pagination token that you
    #         can specify in your next request to fetch the next page of
    #         migrations.</p>
    #
    #   @return [String]
    #
    GetMigrationsOutput = ::Struct.new(
      :migration_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type. The name is case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the slot type. </p>
    #
    #   @return [String]
    #
    GetSlotTypeInput = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute enumeration_values
    #   <p>A list of <code>EnumerationValue</code> objects that defines the
    #         values that the slot type can take.</p>
    #
    #   @return [Array<EnumerationValue>]
    #
    # @!attribute last_updated_date
    #   <p>The date that the slot type was updated. When you create a
    #         resource, the creation date and last update date are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the slot type was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the <code>$LATEST</code> version of the slot
    #         type.</p>
    #
    #   @return [String]
    #
    # @!attribute value_selection_strategy
    #   <p>The strategy that Amazon Lex uses to determine the value of the slot.
    #         For more information, see <a>PutSlotType</a>.</p>
    #
    #   Enum, one of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #
    #   @return [String]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The built-in slot type used as a parent for the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_configurations
    #   <p>Configuration information that extends the parent built-in slot
    #         type.</p>
    #
    #   @return [Array<SlotTypeConfiguration>]
    #
    GetSlotTypeOutput = ::Struct.new(
      :name,
      :description,
      :enumeration_values,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :value_selection_strategy,
      :parent_slot_type_signature,
      :slot_type_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type for which versions should be
    #         returned.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of slot type
    #         versions. If the response to this call is truncated, Amazon Lex returns a
    #         pagination token in the response. To fetch the next page of versions,
    #         specify the pagination token in the next request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of slot type versions to return in the response.
    #         The default is 10.</p>
    #
    #   @return [Integer]
    #
    GetSlotTypeVersionsInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_types
    #   <p>An array of <code>SlotTypeMetadata</code> objects, one for each
    #         numbered version of the slot type plus one for the <code>$LATEST</code>
    #         version.</p>
    #
    #   @return [Array<SlotTypeMetadata>]
    #
    # @!attribute next_token
    #   <p>A pagination token for fetching the next page of slot type
    #         versions. If the response to this call is truncated, Amazon Lex returns a
    #         pagination token in the response. To fetch the next page of versions,
    #         specify the pagination token in the next request. </p>
    #
    #   @return [String]
    #
    GetSlotTypeVersionsOutput = ::Struct.new(
      :slot_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token that fetches the next page of slot types. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch next page of slot types, specify the pagination
    #         token in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of slot types to return in the response. The
    #         default is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name_contains
    #   <p>Substring to match in slot type names. A slot type will be returned
    #         if any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    #
    #   @return [String]
    #
    GetSlotTypesInput = ::Struct.new(
      :next_token,
      :max_results,
      :name_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute slot_types
    #   <p>An array of objects, one for each slot type, that provides
    #         information such as the name of the slot type, the version, and a
    #         description.</p>
    #
    #   @return [Array<SlotTypeMetadata>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, it includes a pagination token that
    #         you can specify in your next request to fetch the next page of slot
    #         types.</p>
    #
    #   @return [String]
    #
    GetSlotTypesOutput = ::Struct.new(
      :slot_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot for which utterance information should be
    #         returned.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_versions
    #   <p>An array of bot versions for which utterance information should be
    #         returned. The limit is 5 versions per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status_type
    #   <p>To return utterances that were recognized and handled, use
    #           <code>Detected</code>. To return utterances that were not recognized,
    #         use <code>Missed</code>.</p>
    #
    #   Enum, one of: ["Detected", "Missed"]
    #
    #   @return [String]
    #
    GetUtterancesViewInput = ::Struct.new(
      :bot_name,
      :bot_versions,
      :status_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot for which utterance information was
    #         returned.</p>
    #
    #   @return [String]
    #
    # @!attribute utterances
    #   <p>An array of <a>UtteranceList</a> objects, each
    #         containing a list of <a>UtteranceData</a> objects describing
    #         the utterances that were processed by your bot. The response contains a
    #         maximum of 100 <code>UtteranceData</code> objects for each version. Amazon Lex
    #         returns the most frequent utterances received by the bot in the last 15
    #         days.</p>
    #
    #   @return [Array<UtteranceList>]
    #
    GetUtterancesViewOutput = ::Struct.new(
      :bot_name,
      :utterances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportStatus
    #
    module ImportStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The name of a context that must be active for an intent to be selected
    #       by Amazon Lex.</p>
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

    # <p>Identifies the specific version of an intent.</p>
    #
    # @!attribute intent_name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_version
    #   <p>The version of the intent.</p>
    #
    #   @return [String]
    #
    Intent = ::Struct.new(
      :intent_name,
      :intent_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an intent.</p>
    #
    # @!attribute name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the intent was updated. When you create an intent,
    #         the creation date and last updated date are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the intent was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the intent.</p>
    #
    #   @return [String]
    #
    IntentMetadata = ::Struct.new(
      :name,
      :description,
      :last_updated_date,
      :created_date,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal Amazon Lex error occurred. Try your request again.</p>
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

    # <p>Provides configuration information for the AMAZON.KendraSearchIntent
    #       intent. When you use this intent, Amazon Lex searches the specified Amazon
    #       Kendra index and returns documents from the index that match the user's
    #       utterance. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html">
    #         AMAZON.KendraSearchIntent</a>.</p>
    #
    # @!attribute kendra_index
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you
    #         want the AMAZON.KendraSearchIntent intent to search. The index must be in
    #         the same account and Region as the Amazon Lex bot. If the Amazon Kendra index
    #         does not exist, you get an exception when you call the
    #           <code>PutIntent</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute query_filter_string
    #   <p>A query filter that Amazon Lex sends to Amazon Kendra to filter the
    #         response from the query. The filter is in the format defined by Amazon
    #         Kendra. For more information, see <a href="http://docs.aws.amazon.com/kendra/latest/dg/filtering.html">Filtering
    #           queries</a>.</p>
    #            <p>You can override this filter string with a new filter string at
    #         runtime.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #         search the Amazon Kendra index. The role must be in the same account and
    #         Region as the Amazon Lex bot. If the role does not exist, you get an exception
    #         when you call the <code>PutIntent</code> operation.</p>
    #
    #   @return [String]
    #
    KendraConfiguration = ::Struct.new(
      :kendra_index,
      :query_filter_string,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeded a limit. Try your request again.</p>
    #
    # @!attribute retry_after_seconds
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get a list of tags
    #         for.</p>
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
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Locale
    #
    module Locale
      # No documentation available.
      #
      DE_DE = "de-DE"

      # No documentation available.
      #
      EN_AU = "en-AU"

      # No documentation available.
      #
      EN_GB = "en-GB"

      # No documentation available.
      #
      EN_IN = "en-IN"

      # No documentation available.
      #
      EN_US = "en-US"

      # No documentation available.
      #
      ES_419 = "es-419"

      # No documentation available.
      #
      ES_ES = "es-ES"

      # No documentation available.
      #
      ES_US = "es-US"

      # No documentation available.
      #
      FR_FR = "fr-FR"

      # No documentation available.
      #
      FR_CA = "fr-CA"

      # No documentation available.
      #
      IT_IT = "it-IT"

      # No documentation available.
      #
      JA_JP = "ja-JP"

      # No documentation available.
      #
      KO_KR = "ko-KR"
    end

    # <p>Settings used to configure delivery mode and destination for
    #       conversation logs.</p>
    #
    # @!attribute log_type
    #   <p>The type of logging to enable. Text logs are delivered to a CloudWatch
    #         Logs log group. Audio logs are delivered to an S3 bucket.</p>
    #
    #   Enum, one of: ["AUDIO", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>Where the logs will be delivered. Text logs are delivered to a
    #         CloudWatch Logs log group. Audio logs are delivered to an S3
    #         bucket.</p>
    #
    #   Enum, one of: ["CLOUDWATCH_LOGS", "S3"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS KMS customer managed key for
    #         encrypting audio logs delivered to an S3 bucket. The key does not apply to
    #         CloudWatch Logs and is optional for S3 buckets.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3
    #         bucket where the logs should be delivered.</p>
    #
    #   @return [String]
    #
    LogSettingsRequest = ::Struct.new(
      :log_type,
      :destination,
      :kms_key_arn,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for conversation logs.</p>
    #
    # @!attribute log_type
    #   <p>The type of logging that is enabled.</p>
    #
    #   Enum, one of: ["AUDIO", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination where logs are delivered.</p>
    #
    #   Enum, one of: ["CLOUDWATCH_LOGS", "S3"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the key used to encrypt audio logs
    #         in an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3
    #         bucket where the logs are delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_prefix
    #   <p>The resource prefix is the first part of the S3 object key within the
    #         S3 bucket that you specified to contain audio logs. For CloudWatch Logs it
    #         is the prefix of the log stream name within the log group that you
    #         specified. </p>
    #
    #   @return [String]
    #
    LogSettingsResponse = ::Struct.new(
      :log_type,
      :destination,
      :kms_key_arn,
      :resource_arn,
      :resource_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogType
    #
    module LogType
      # No documentation available.
      #
      AUDIO = "AUDIO"

      # No documentation available.
      #
      TEXT = "TEXT"
    end

    # Includes enum constants for MergeStrategy
    #
    module MergeStrategy
      # No documentation available.
      #
      OVERWRITE_LATEST = "OVERWRITE_LATEST"

      # No documentation available.
      #
      FAIL_ON_CONFLICT = "FAIL_ON_CONFLICT"
    end

    # <p>The message object that provides the message text and its
    #       type.</p>
    #
    # @!attribute content_type
    #   <p>The content type of the message string.</p>
    #
    #   Enum, one of: ["PlainText", "SSML", "CustomPayload"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The text of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute group_number
    #   <p>Identifies the message group that the message belongs to. When a group
    #         is assigned to a message, Amazon Lex returns one message from each group in the
    #         response.</p>
    #
    #   @return [Integer]
    #
    Message = ::Struct.new(
      :content_type,
      :content,
      :group_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about alerts and warnings that Amazon Lex sends during
    #       a migration. The alerts include information about how to resolve the
    #       issue.</p>
    #
    # @!attribute type
    #   <p>The type of alert. There are two kinds of alerts:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - There was an issue with the migration that
    #             can't be resolved. The migration stops.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN</code> - There was an issue with the migration that
    #             requires manual changes to the new Amazon Lex V2 bot. The migration
    #             continues.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ERROR", "WARN"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that describes why the alert was issued.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Additional details about the alert.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute reference_ur_ls
    #   <p>A link to the Amazon Lex documentation that describes how to resolve
    #       the alert.</p>
    #
    #   @return [Array<String>]
    #
    MigrationAlert = ::Struct.new(
      :type,
      :message,
      :details,
      :reference_ur_ls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MigrationAlertType
    #
    module MigrationAlertType
      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      WARN = "WARN"
    end

    # Includes enum constants for MigrationSortAttribute
    #
    module MigrationSortAttribute
      # No documentation available.
      #
      V1_BOT_NAME = "V1_BOT_NAME"

      # No documentation available.
      #
      MIGRATION_DATE_TIME = "MIGRATION_DATE_TIME"
    end

    # Includes enum constants for MigrationStatus
    #
    module MigrationStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for MigrationStrategy
    #
    module MigrationStrategy
      # No documentation available.
      #
      CREATE_NEW = "CREATE_NEW"

      # No documentation available.
      #
      UPDATE_EXISTING = "UPDATE_EXISTING"
    end

    # <p>Provides information about migrating a bot from Amazon Lex V1 to Amazon Lex V2.</p>
    #
    # @!attribute migration_id
    #   <p>The unique identifier that Amazon Lex assigned to the migration.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_name
    #   <p>The name of the Amazon Lex V1 bot that is the source of the migration.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_version
    #   <p>The version of the Amazon Lex V1 bot that is the source of the migration.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_locale
    #   <p>The locale of the Amazon Lex V1 bot that is the source of the migration.</p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute v2_bot_id
    #   <p>The unique identifier of the Amazon Lex V2 that is the destination of the migration.</p>
    #
    #   @return [String]
    #
    # @!attribute v2_bot_role
    #   <p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_status
    #   <p>The status of the operation. When the status is <code>COMPLETE</code>
    #       the bot is available in Amazon Lex V2. There may be alerts and warnings that
    #       need to be resolved to complete the migration.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute migration_strategy
    #   <p>The strategy used to conduct the migration.</p>
    #
    #   Enum, one of: ["CREATE_NEW", "UPDATE_EXISTING"]
    #
    #   @return [String]
    #
    # @!attribute migration_timestamp
    #   <p>The date and time that the migration started.</p>
    #
    #   @return [Time]
    #
    MigrationSummary = ::Struct.new(
      :migration_id,
      :v1_bot_name,
      :v1_bot_version,
      :v1_bot_locale,
      :v2_bot_id,
      :v2_bot_role,
      :migration_status,
      :migration_strategy,
      :migration_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource specified in the request was not found. Check the
    #       resource and try again.</p>
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

    # Includes enum constants for ObfuscationSetting
    #
    module ObfuscationSetting
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      DEFAULT_OBFUSCATION = "DEFAULT_OBFUSCATION"
    end

    # <p>The specification of an output context that is set when an intent is
    #       fulfilled.</p>
    #
    # @!attribute name
    #   <p>The name of the context.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live_in_seconds
    #   <p>The number of seconds that the context should be active after it is
    #         first sent in a <code>PostContent</code> or <code>PostText</code>
    #         response. You can set the value between 5 and 86,400 seconds (24
    #         hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute turns_to_live
    #   <p>The number of conversation turns that the context should be active. A
    #         conversation turn is one <code>PostContent</code> or <code>PostText</code>
    #         request and the corresponding response from Amazon Lex.</p>
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

    # <p> The checksum of the resource that you are trying to change does
    #       not match the checksum in the request. Check the resource's checksum and
    #       try again.</p>
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

    # Includes enum constants for ProcessBehavior
    #
    module ProcessBehavior
      # No documentation available.
      #
      SAVE = "SAVE"

      # No documentation available.
      #
      BUILD = "BUILD"
    end

    # <p>Obtains information from the user. To define a prompt, provide one
    #       or more messages and specify the number of attempts to get information
    #       from the user. If you provide more than one message, Amazon Lex chooses one of
    #       the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>
    #
    # @!attribute messages
    #   <p>An array of objects, each of which provides a message string and
    #         its type. You can specify the message string in plain text or in Speech
    #         Synthesis Markup Language (SSML).</p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute max_attempts
    #   <p>The number of times to prompt the user for information.</p>
    #
    #   @return [Integer]
    #
    # @!attribute response_card
    #   <p>A response card. Amazon Lex uses this prompt at runtime, in the
    #           <code>PostText</code> API response. It substitutes session attributes
    #         and slot values for placeholders in the response card. For more
    #         information, see <a>ex-resp-card</a>. </p>
    #
    #   @return [String]
    #
    Prompt = ::Struct.new(
      :messages,
      :max_attempts,
      :response_card,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the alias. The name is <i>not</i> case
    #         sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new bot alias, leave the <code>checksum</code>
    #         field blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a bot alias, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    #   @return [String]
    #
    # @!attribute conversation_logs
    #   <p>Settings for conversation logs for the alias.</p>
    #
    #   @return [ConversationLogsRequest]
    #
    # @!attribute tags
    #   <p>A list of tags to add to the bot alias. You can only add tags when you
    #         create an alias, you can't use the <code>PutBotAlias</code> operation to
    #         update the tags on a bot alias. To update tags, use the
    #           <code>TagResource</code> operation.</p>
    #
    #   @return [Array<Tag>]
    #
    PutBotAliasInput = ::Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :checksum,
      :conversation_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that the alias points to.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the bot that the alias points to.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the bot alias was updated. When you create a
    #         resource, the creation date and the last updated date are the
    #         same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the bot alias was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute checksum
    #   <p>The checksum for the current version of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute conversation_logs
    #   <p>The settings that determine how Amazon Lex uses conversation logs for the
    #         alias.</p>
    #
    #   @return [ConversationLogsResponse]
    #
    # @!attribute tags
    #   <p>A list of tags associated with a bot.</p>
    #
    #   @return [Array<Tag>]
    #
    PutBotAliasOutput = ::Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :last_updated_date,
      :created_date,
      :checksum,
      :conversation_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot. The name is <i>not</i> case
    #         sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute intents
    #   <p>An array of <code>Intent</code> objects. Each intent represents a
    #         command that a user can express. For example, a pizza ordering bot might
    #         support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>
    #
    #   @return [Array<Intent>]
    #
    # @!attribute enable_model_improvements
    #   <p>Set to <code>true</code> to enable access to natural language
    #         understanding improvements. </p>
    #            <p>When you set the <code>enableModelImprovements</code> parameter to
    #           <code>true</code> you can use the
    #           <code>nluIntentConfidenceThreshold</code> parameter to configure
    #         confidence scores. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html">Confidence Scores</a>.</p>
    #            <p>You can only set the <code>enableModelImprovements</code> parameter in
    #         certain Regions. If you set the parameter to <code>true</code>, your bot
    #         has access to accuracy improvements.</p>
    #            <p>The Regions where you can set the <code>enableModelImprovements</code>
    #         parameter to <code>true</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (us-east-1)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (us-west-2)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
    #               </li>
    #               <li>
    #                  <p>EU (Ireland) (eu-west-1)</p>
    #               </li>
    #            </ul>
    #            <p>In other Regions, the <code>enableModelImprovements</code> parameter
    #         is set to <code>true</code> by default. In these Regions setting the
    #         parameter to <code>false</code> throws a <code>ValidationException</code>
    #         exception.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #           <code>AMAZON.FallbackIntent</code>,
    #           <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #         alternative intents in a <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or
    #           <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> response.
    #           <code>AMAZON.FallbackIntent</code> and
    #           <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #         configured for the bot.</p>
    #            <p>You must set the <code>enableModelImprovements</code> parameter to
    #           <code>true</code> to use confidence scores in the following
    #         regions.</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (us-east-1)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (us-west-2)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
    #               </li>
    #               <li>
    #                  <p>EU (Ireland) (eu-west-1)</p>
    #               </li>
    #            </ul>
    #            <p>In other Regions, the <code>enableModelImprovements</code> parameter
    #         is set to <code>true</code> by default.</p>
    #            <p>For example, suppose a bot is configured with the confidence threshold
    #         of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex returns three
    #         alternative intents with the following confidence scores: IntentA (0.70),
    #         IntentB (0.60), IntentC (0.50). The response from the
    #           <code>PostText</code> operation would be:</p>
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
    # @!attribute clarification_prompt
    #   <p>When Amazon Lex doesn't understand the user's intent, it uses this
    #         message to get clarification. To specify how many times Amazon Lex should
    #         repeat the clarification prompt, use the <code>maxAttempts</code> field.
    #         If Amazon Lex still doesn't understand, it sends the message in the
    #           <code>abortStatement</code> field. </p>
    #            <p>When you create a clarification prompt, make sure that it suggests
    #         the correct response from the user. for example, for a bot that orders
    #         pizza and drinks, you might create this clarification prompt: "What would
    #         you like to do? You can say 'Order a pizza' or 'Order a drink.'"</p>
    #            <p>If you have defined a fallback intent, it will be invoked if the
    #         clarification prompt is repeated the number of times defined in the
    #           <code>maxAttempts</code> field. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">
    #           AMAZON.FallbackIntent</a>.</p>
    #            <p>If you don't define a clarification prompt, at runtime Amazon Lex will
    #         return a 400 Bad Request exception in three cases: </p>
    #            <ul>
    #               <li>
    #                  <p>Follow-up prompt - When the user responds to a follow-up prompt
    #             but does not provide an intent. For example, in response to a
    #             follow-up prompt that says "Would you like anything else today?" the
    #             user says "Yes." Amazon Lex will return a 400 Bad Request exception because
    #             it does not have a clarification prompt to send to the user to get an
    #             intent.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda function - When using a Lambda function, you return an
    #               <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a
    #             clarification prompt to get an intent from the user, it returns a 400
    #             Bad Request exception.</p>
    #               </li>
    #               <li>
    #                  <p>PutSession operation - When using the <code>PutSession</code>
    #             operation, you send an <code>ElicitIntent</code> dialog type. Since
    #             Amazon Lex does not have a clarification prompt to get an intent from the
    #             user, it returns a 400 Bad Request exception.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Prompt]
    #
    # @!attribute abort_statement
    #   <p>When Amazon Lex can't understand the user's input in context, it tries
    #         to elicit the information a few times. After that, Amazon Lex sends the message
    #         defined in <code>abortStatement</code> to the user, and then cancels the
    #         conversation. To set the number of retries, use the
    #           <code>valueElicitationPrompt</code> field for the slot type. </p>
    #            <p>For example, in a pizza ordering bot, Amazon Lex might ask a user "What
    #         type of crust would you like?" If the user's response is not one of the
    #         expected responses (for example, "thin crust, "deep dish," etc.), Amazon Lex
    #         tries to elicit a correct response a few more times. </p>
    #            <p>For example, in a pizza ordering application,
    #           <code>OrderPizza</code> might be one of the intents. This intent might
    #         require the <code>CrustType</code> slot. You specify the
    #           <code>valueElicitationPrompt</code> field when you create the
    #           <code>CrustType</code> slot.</p>
    #            <p>If you have defined a fallback intent the cancel statement will not be
    #         sent to the user, the fallback intent is used instead. For more
    #         information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">
    #           AMAZON.FallbackIntent</a>.</p>
    #
    #   @return [Statement]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #         a conversation.</p>
    #            <p>A user interaction session remains active for the amount of time
    #         specified. If no conversation occurs during this time, the session expires
    #         and Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>For example, suppose that a user chooses the OrderPizza intent, but
    #         gets sidetracked halfway through placing an order. If the user doesn't
    #         complete the order within the specified time, Amazon Lex discards the slot
    #         information that it gathered, and the user must start over.</p>
    #            <p>If you don't include the <code>idleSessionTTLInSeconds</code>
    #         element in a <code>PutBot</code> operation request, Amazon Lex uses the default
    #         value. This is also true if the request replaces an existing
    #         bot.</p>
    #            <p>The default is 300 seconds (5 minutes).</p>
    #
    #   @return [Integer]
    #
    # @!attribute voice_id
    #   <p>The Amazon Polly voice ID that you want Amazon Lex to use for voice
    #         interactions with the user. The locale configured for the voice must match
    #         the locale of the bot. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Voices
    #           in Amazon Polly</a> in the <i>Amazon Polly Developer
    #           Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new bot, leave the <code>checksum</code> field
    #         blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a bot, set the <code>checksum</code> field
    #         to the checksum of the most recent revision of the <code>$LATEST</code>
    #         version. If you don't specify the <code> checksum</code> field, or if the
    #         checksum does not match the <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    #   @return [String]
    #
    # @!attribute process_behavior
    #   <p>If you set the <code>processBehavior</code> element to
    #           <code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If you
    #         set the element to <code>SAVE</code> Amazon Lex saves the bot, but doesn't
    #         build it. </p>
    #            <p>If you don't specify this value, the default value is
    #           <code>BUILD</code>.</p>
    #
    #   Enum, one of: ["SAVE", "BUILD"]
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p> Specifies the target locale for the bot. Any intent used in the
    #         bot must be compatible with the locale of the bot. </p>
    #
    #            <p>The default is <code>en-US</code>.</p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #         you must specify whether your use of Amazon Lex is related to a website,
    #         program, or other application that is directed or targeted, in whole or in
    #         part, to children under age 13 and subject to the Children's Online
    #         Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #           <code>false</code> in the <code>childDirected</code> field. By
    #         specifying <code>true</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is</b> related
    #         to a website, program, or other application that is directed or targeted,
    #         in whole or in part, to children under age 13 and subject to COPPA. By
    #         specifying <code>false</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is not</b>
    #         related to a website, program, or other application that is directed or
    #         targeted, in whole or in part, to children under age 13 and subject to
    #         COPPA. You may not specify a default value for the
    #           <code>childDirected</code> field that does not accurately reflect
    #         whether your use of Amazon Lex is related to a website, program, or other
    #         application that is directed or targeted, in whole or in part, to children
    #         under age 13 and subject to COPPA.</p>
    #            <p>If your use of Amazon Lex relates to a website, program, or other
    #         application that is directed in whole or in part, to children under age
    #         13, you must obtain any required verifiable parental consent under COPPA.
    #         For information regarding the use of Amazon Lex in connection with websites,
    #         programs, or other applications that are directed or targeted, in whole or
    #         in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs data-security">Amazon Lex FAQ.</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute detect_sentiment
    #   <p>When set to <code>true</code> user utterances are sent to Amazon
    #         Comprehend for sentiment analysis. If you don't specify
    #           <code>detectSentiment</code>, the default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute create_version
    #   <p>When set to <code>true</code> a new numbered version of the bot is
    #         created. This is the same as calling the <code>CreateBotVersion</code>
    #         operation. If you don't specify <code>createVersion</code>, the default is
    #           <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #         create a bot, you can't use the <code>PutBot</code> operation to update
    #         the tags on a bot. To update tags, use the <code>TagResource</code>
    #         operation.</p>
    #
    #   @return [Array<Tag>]
    #
    PutBotInput = ::Struct.new(
      :name,
      :description,
      :intents,
      :enable_model_improvements,
      :nlu_intent_confidence_threshold,
      :clarification_prompt,
      :abort_statement,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :process_behavior,
      :locale,
      :child_directed,
      :detect_sentiment,
      :create_version,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute intents
    #   <p>An array of <code>Intent</code> objects. For more information, see
    #           <a>PutBot</a>.</p>
    #
    #   @return [Array<Intent>]
    #
    # @!attribute enable_model_improvements
    #   <p>Indicates whether the bot uses accuracy improvements.
    #           <code>true</code> indicates that the bot is using the improvements,
    #         otherwise, <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute nlu_intent_confidence_threshold
    #   <p>The score that determines where Amazon Lex inserts the
    #           <code>AMAZON.FallbackIntent</code>,
    #           <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #         alternative intents in a <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or
    #           <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> response.
    #           <code>AMAZON.FallbackIntent</code> is inserted if the confidence score
    #         for all intents is below this value.
    #           <code>AMAZON.KendraSearchIntent</code> is only inserted if it is
    #         configured for the bot.</p>
    #
    #   @return [Float]
    #
    # @!attribute clarification_prompt
    #   <p> The prompts that Amazon Lex uses when it doesn't understand the user's
    #         intent. For more information, see <a>PutBot</a>. </p>
    #
    #   @return [Prompt]
    #
    # @!attribute abort_statement
    #   <p>The message that Amazon Lex uses to cancel a conversation. For more
    #         information, see <a>PutBot</a>.</p>
    #
    #   @return [Statement]
    #
    # @!attribute status
    #   <p> When you send a request to create a bot with
    #           <code>processBehavior</code> set to <code>BUILD</code>, Amazon Lex sets the
    #           <code>status</code> response element to <code>BUILDING</code>.</p>
    #            <p>In the <code>READY_BASIC_TESTING</code> state you can test the bot
    #         with user inputs that exactly match the utterances configured for the
    #         bot's intents and values in the slot types.</p>
    #            <p>If Amazon Lex can't build the bot, Amazon Lex sets <code>status</code> to
    #           <code>FAILED</code>. Amazon Lex returns the reason for the failure in the
    #           <code>failureReason</code> response element. </p>
    #            <p>When you set <code>processBehavior</code> to <code>SAVE</code>,
    #         Amazon Lex sets the status code to <code>NOT BUILT</code>.</p>
    #            <p>When the bot is in the <code>READY</code> state you can test and
    #         publish the bot.</p>
    #
    #   Enum, one of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
    #         reason that it failed to build the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the bot was updated. When you create a resource, the
    #         creation date and last updated date are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the bot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The maximum length of time that Amazon Lex retains the data gathered in
    #         a conversation. For more information, see <a>PutBot</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute voice_id
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #         with the user. For more information, see <a>PutBot</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the bot that you created.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the bot. For a new bot, the version is always
    #           <code>$LATEST</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p> The target locale for the bot. </p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #         you must specify whether your use of Amazon Lex is related to a website,
    #         program, or other application that is directed or targeted, in whole or in
    #         part, to children under age 13 and subject to the Children's Online
    #         Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #           <code>false</code> in the <code>childDirected</code> field. By
    #         specifying <code>true</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is</b> related
    #         to a website, program, or other application that is directed or targeted,
    #         in whole or in part, to children under age 13 and subject to COPPA. By
    #         specifying <code>false</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is not</b>
    #         related to a website, program, or other application that is directed or
    #         targeted, in whole or in part, to children under age 13 and subject to
    #         COPPA. You may not specify a default value for the
    #           <code>childDirected</code> field that does not accurately reflect
    #         whether your use of Amazon Lex is related to a website, program, or other
    #         application that is directed or targeted, in whole or in part, to children
    #         under age 13 and subject to COPPA.</p>
    #            <p>If your use of Amazon Lex relates to a website, program, or other
    #         application that is directed in whole or in part, to children under age
    #         13, you must obtain any required verifiable parental consent under COPPA.
    #         For information regarding the use of Amazon Lex in connection with websites,
    #         programs, or other applications that are directed or targeted, in whole or
    #         in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs data-security">Amazon Lex FAQ.</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute create_version
    #   <p>
    #               <code>True</code> if a new version of the bot was created. If the
    #           <code>createVersion</code> field was not specified in the request, the
    #           <code>createVersion</code> field is set to false in the
    #         response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute detect_sentiment
    #   <p>
    #               <code>true</code> if the bot is configured to send user utterances to
    #         Amazon Comprehend for sentiment analysis. If the
    #           <code>detectSentiment</code> field was not specified in the request, the
    #           <code>detectSentiment</code> field is <code>false</code> in the
    #         response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the bot.</p>
    #
    #   @return [Array<Tag>]
    #
    PutBotOutput = ::Struct.new(
      :name,
      :description,
      :intents,
      :enable_model_improvements,
      :nlu_intent_confidence_threshold,
      :clarification_prompt,
      :abort_statement,
      :status,
      :failure_reason,
      :last_updated_date,
      :created_date,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :version,
      :locale,
      :child_directed,
      :create_version,
      :detect_sentiment,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent. The name is <i>not</i> case
    #         sensitive. </p>
    #            <p>The name can't match a built-in intent name, or a built-in intent
    #         name with "AMAZON." removed. For example, because there is a built-in
    #         intent called <code>AMAZON.HelpIntent</code>, you can't create a custom
    #         intent called <code>HelpIntent</code>.</p>
    #            <p>For a list of built-in intents, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>An array of intent slots. At runtime, Amazon Lex elicits required slot
    #         values from the user using prompts defined in the slots. For more
    #         information, see <a>how-it-works</a>. </p>
    #
    #   @return [Array<Slot>]
    #
    # @!attribute sample_utterances
    #   <p>An array of utterances (strings) that a user might say to signal
    #         the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
    #         {PizzaSize} pizzas". </p>
    #
    #            <p>In each utterance, a slot name is enclosed in curly braces.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute confirmation_prompt
    #   <p>Prompts the user to confirm the intent. This question should have a
    #         yes or no answer.</p>
    #            <p>Amazon Lex uses this prompt to ensure that the user acknowledges that
    #         the intent is ready for fulfillment. For example, with the
    #           <code>OrderPizza</code> intent, you might want to confirm that the order
    #         is correct before placing it. For other intents, such as intents that
    #         simply respond to user questions, you might not need to ask the user for
    #         confirmation before providing the information. </p>
    #            <note>
    #               <p>You you must provide both the <code>rejectionStatement</code> and
    #           the <code>confirmationPrompt</code>, or neither.</p>
    #            </note>
    #
    #   @return [Prompt]
    #
    # @!attribute rejection_statement
    #   <p>When the user answers "no" to the question defined in
    #           <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #            <note>
    #               <p>You must provide both the <code>rejectionStatement</code> and the
    #             <code>confirmationPrompt</code>, or neither.</p>
    #            </note>
    #
    #   @return [Statement]
    #
    # @!attribute follow_up_prompt
    #   <p>Amazon Lex uses this prompt to solicit additional activity after
    #         fulfilling an intent. For example, after the <code>OrderPizza</code>
    #         intent is fulfilled, you might prompt the user to order a drink.</p>
    #            <p>The action that Amazon Lex takes depends on the user's response, as
    #         follows:</p>
    #            <ul>
    #               <li>
    #                  <p>If the user says "Yes" it responds with the clarification
    #             prompt that is configured for the bot.</p>
    #               </li>
    #               <li>
    #                  <p>if the user says "Yes" and continues with an utterance that
    #             triggers an intent it starts a conversation for the intent.</p>
    #               </li>
    #               <li>
    #                  <p>If the user says "No" it responds with the rejection statement
    #             configured for the the follow-up prompt.</p>
    #               </li>
    #               <li>
    #                  <p>If it doesn't recognize the utterance it repeats the follow-up
    #             prompt again.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The <code>followUpPrompt</code> field and the
    #           <code>conclusionStatement</code> field are mutually exclusive. You can
    #         specify only one. </p>
    #
    #   @return [FollowUpPrompt]
    #
    # @!attribute conclusion_statement
    #   <p> The statement that you want Amazon Lex to convey to the user after the
    #         intent is successfully fulfilled by the Lambda function. </p>
    #            <p>This element is relevant only if you provide a Lambda function in
    #         the <code>fulfillmentActivity</code>. If you return the intent to the
    #         client application, you can't specify this element.</p>
    #            <note>
    #               <p>The <code>followUpPrompt</code> and
    #             <code>conclusionStatement</code> are mutually exclusive. You can
    #           specify only one.</p>
    #            </note>
    #
    #   @return [Statement]
    #
    # @!attribute dialog_code_hook
    #   <p> Specifies a Lambda function to invoke for each user input. You can
    #         invoke this Lambda function to personalize user interaction. </p>
    #            <p>For example, suppose your bot determines that the user is John.
    #         Your Lambda function might retrieve John's information from a backend
    #         database and prepopulate some of the values. For example, if you find that
    #         John is gluten intolerant, you might set the corresponding intent slot,
    #           <code>GlutenIntolerant</code>, to true. You might find John's phone
    #         number and set the corresponding session attribute. </p>
    #
    #   @return [CodeHook]
    #
    # @!attribute fulfillment_activity
    #   <p>Required. Describes how the intent is fulfilled. For example, after
    #         a user provides all of the information for a pizza order,
    #           <code>fulfillmentActivity</code> defines how the bot places an order
    #         with a local pizza store. </p>
    #            <p> You might configure Amazon Lex to return all of the intent information
    #         to the client application, or direct it to invoke a Lambda function that
    #         can process the intent (for example, place an order with a pizzeria).
    #       </p>
    #
    #   @return [FulfillmentActivity]
    #
    # @!attribute parent_intent_signature
    #   <p>A unique identifier for the built-in intent to base this intent on.
    #         To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new intent, leave the <code>checksum</code> field
    #         blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a intent, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    #   @return [String]
    #
    # @!attribute create_version
    #   <p>When set to <code>true</code> a new numbered version of the intent
    #         is created. This is the same as calling the
    #           <code>CreateIntentVersion</code> operation. If you do not specify
    #           <code>createVersion</code>, the default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration information required to use the
    #           <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon
    #         Kendra index. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html">
    #           AMAZON.KendraSearchIntent</a>.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute input_contexts
    #   <p>An array of <code>InputContext</code> objects that lists the contexts
    #         that must be active for Amazon Lex to choose the intent in a conversation with
    #         the user.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>An array of <code>OutputContext</code> objects that lists the contexts
    #         that the intent activates when the intent is fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    PutIntentInput = ::Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :checksum,
      :create_version,
      :kendra_configuration,
      :input_contexts,
      :output_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>An array of intent slots that are configured for the
    #         intent.</p>
    #
    #   @return [Array<Slot>]
    #
    # @!attribute sample_utterances
    #   <p> An array of sample utterances that are configured for the intent.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute confirmation_prompt
    #   <p>If defined in the intent, Amazon Lex prompts the user to confirm the
    #         intent before fulfilling it.</p>
    #
    #   @return [Prompt]
    #
    # @!attribute rejection_statement
    #   <p>If the user answers "no" to the question defined in
    #           <code>confirmationPrompt</code> Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #
    #   @return [Statement]
    #
    # @!attribute follow_up_prompt
    #   <p>If defined in the intent, Amazon Lex uses this prompt to solicit
    #         additional user activity after the intent is fulfilled.</p>
    #
    #   @return [FollowUpPrompt]
    #
    # @!attribute conclusion_statement
    #   <p>After the Lambda function specified in
    #           the<code>fulfillmentActivity</code>intent fulfills the intent, Amazon Lex
    #         conveys this statement to the user.</p>
    #
    #   @return [Statement]
    #
    # @!attribute dialog_code_hook
    #   <p>If defined in the intent, Amazon Lex invokes this Lambda function for
    #         each user input.</p>
    #
    #   @return [CodeHook]
    #
    # @!attribute fulfillment_activity
    #   <p>If defined in the intent, Amazon Lex invokes this Lambda function to
    #         fulfill the intent after the user provides all of the information required
    #         by the intent.</p>
    #
    #   @return [FulfillmentActivity]
    #
    # @!attribute parent_intent_signature
    #   <p>A unique identifier for the built-in intent that this intent is
    #         based on.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the intent was updated. When you create a resource,
    #         the creation date and last update dates are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the intent was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the intent. For a new intent, the version is always
    #           <code>$LATEST</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the <code>$LATEST</code>version of the intent created
    #         or updated.</p>
    #
    #   @return [String]
    #
    # @!attribute create_version
    #   <p>
    #               <code>True</code> if a new version of the intent was created. If
    #         the <code>createVersion</code> field was not specified in the request, the
    #           <code>createVersion</code> field is set to false in the
    #         response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kendra_configuration
    #   <p>Configuration information, if any, required to connect to an Amazon
    #         Kendra index and use the <code>AMAZON.KendraSearchIntent</code>
    #         intent.</p>
    #
    #   @return [KendraConfiguration]
    #
    # @!attribute input_contexts
    #   <p>An array of <code>InputContext</code> objects that lists the contexts
    #         that must be active for Amazon Lex to choose the intent in a conversation with
    #         the user.</p>
    #
    #   @return [Array<InputContext>]
    #
    # @!attribute output_contexts
    #   <p>An array of <code>OutputContext</code> objects that lists the contexts
    #         that the intent activates when the intent is fulfilled.</p>
    #
    #   @return [Array<OutputContext>]
    #
    PutIntentOutput = ::Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :create_version,
      :kendra_configuration,
      :input_contexts,
      :output_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type. The name is <i>not</i>
    #         case sensitive. </p>
    #            <p>The name can't match a built-in slot type name, or a built-in slot
    #         type name with "AMAZON." removed. For example, because there is a built-in
    #         slot type called <code>AMAZON.DATE</code>, you can't create a custom slot
    #         type called <code>DATE</code>.</p>
    #            <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute enumeration_values
    #   <p>A list of <code>EnumerationValue</code> objects that defines the
    #         values that the slot type can take. Each value can have a list of
    #           <code>synonyms</code>, which are additional values that help train the
    #         machine learning model about the values that it resolves for a slot. </p>
    #            <p>A regular expression slot type doesn't require enumeration values.
    #         All other slot types require a list of enumeration values.</p>
    #            <p>When Amazon Lex resolves a slot value, it generates a resolution list
    #         that contains up to five possible values for the slot. If you are using a
    #         Lambda function, this resolution list is passed to the function. If you
    #         are not using a Lambda function you can choose to return the value that
    #         the user entered or the first value in the resolution list as the slot
    #         value. The <code>valueSelectionStrategy</code> field indicates the option
    #         to use. </p>
    #
    #   @return [Array<EnumerationValue>]
    #
    # @!attribute checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new slot type, leave the <code>checksum</code>
    #         field blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a slot type, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    #   @return [String]
    #
    # @!attribute value_selection_strategy
    #   <p>Determines the slot resolution strategy that Amazon Lex uses to return
    #         slot type values. The field can be set to one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORIGINAL_VALUE</code> - Returns the value entered by the
    #             user, if the user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_RESOLUTION</code> - If there is a resolution list for
    #             the slot, return the first value in the resolution list as the slot
    #             type value. If there is no resolution list, null is
    #             returned.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionStrategy</code>, the
    #         default is <code>ORIGINAL_VALUE</code>.</p>
    #
    #   Enum, one of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #
    #   @return [String]
    #
    # @!attribute create_version
    #   <p>When set to <code>true</code> a new numbered version of the slot
    #         type is created. This is the same as calling the
    #           <code>CreateSlotTypeVersion</code> operation. If you do not specify
    #           <code>createVersion</code>, the default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The built-in slot type used as the parent of the slot type. When you
    #         define a parent slot type, the new slot type has all of the same
    #         configuration as the parent.</p>
    #            <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_configurations
    #   <p>Configuration information that extends the parent built-in slot type.
    #         The configuration is added to the settings for the parent slot
    #         type.</p>
    #
    #   @return [Array<SlotTypeConfiguration>]
    #
    PutSlotTypeInput = ::Struct.new(
      :name,
      :description,
      :enumeration_values,
      :checksum,
      :value_selection_strategy,
      :create_version,
      :parent_slot_type_signature,
      :slot_type_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute enumeration_values
    #   <p>A list of <code>EnumerationValue</code> objects that defines the
    #         values that the slot type can take.</p>
    #
    #   @return [Array<EnumerationValue>]
    #
    # @!attribute last_updated_date
    #   <p>The date that the slot type was updated. When you create a slot
    #         type, the creation date and last update date are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the slot type was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the slot type. For a new slot type, the version is
    #         always <code>$LATEST</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>Checksum of the <code>$LATEST</code> version of the slot
    #         type.</p>
    #
    #   @return [String]
    #
    # @!attribute value_selection_strategy
    #   <p>The slot resolution strategy that Amazon Lex uses to determine the value
    #         of the slot. For more information, see <a>PutSlotType</a>.</p>
    #
    #   Enum, one of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #
    #   @return [String]
    #
    # @!attribute create_version
    #   <p>
    #               <code>True</code> if a new version of the slot type was created. If
    #         the <code>createVersion</code> field was not specified in the request, the
    #           <code>createVersion</code> field is set to false in the
    #         response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_slot_type_signature
    #   <p>The built-in slot type used as the parent of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_configurations
    #   <p>Configuration information that extends the parent built-in slot
    #         type.</p>
    #
    #   @return [Array<SlotTypeConfiguration>]
    #
    PutSlotTypeOutput = ::Struct.new(
      :name,
      :description,
      :enumeration_values,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :value_selection_strategy,
      :create_version,
      :parent_slot_type_signature,
      :slot_type_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReferenceType
    #
    module ReferenceType
      # No documentation available.
      #
      INTENT = "Intent"

      # No documentation available.
      #
      BOT = "Bot"

      # No documentation available.
      #
      BOTALIAS = "BotAlias"

      # No documentation available.
      #
      BOTCHANNEL = "BotChannel"
    end

    # <p>The resource that you are attempting to delete is referred to by
    #       another resource. Use this information to remove references to the
    #       resource that you are trying to delete.</p>
    #          <p>The body of the exception contains a JSON object that describes the
    #       resource.</p>
    #          <p>
    #             <code>{ "resourceType": BOT | BOTALIAS | BOTCHANNEL |
    #         INTENT,</code>
    #          </p>
    #          <p>
    #             <code>"resourceReference": {</code>
    #          </p>
    #          <p>
    #             <code>"name": <i>string</i>, "version":
    #           <i>string</i> } }</code>
    #          </p>
    #
    # @!attribute reference_type
    #   Enum, one of: ["Intent", "Bot", "BotAlias", "BotChannel"]
    #
    #   @return [String]
    #
    # @!attribute example_reference
    #   <p>Describes the resource that refers to the resource that you are
    #         attempting to delete. This object is returned as part of the
    #           <code>ResourceInUseException</code> exception. </p>
    #
    #   @return [ResourceReference]
    #
    ResourceInUseException = ::Struct.new(
      :reference_type,
      :example_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the resource that refers to the resource that you are
    #       attempting to delete. This object is returned as part of the
    #         <code>ResourceInUseException</code> exception. </p>
    #
    # @!attribute name
    #   <p>The name of the resource that is using the resource that you are
    #         trying to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource that is using the resource that you are
    #         trying to delete.</p>
    #
    #   @return [String]
    #
    ResourceReference = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      BOT = "BOT"

      # No documentation available.
      #
      INTENT = "INTENT"

      # No documentation available.
      #
      SLOT_TYPE = "SLOT_TYPE"
    end

    # <p>Identifies the version of a specific slot.</p>
    #
    # @!attribute name
    #   <p>The name of the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_constraint
    #   <p>Specifies whether the slot is required or optional. </p>
    #
    #   Enum, one of: ["Required", "Optional"]
    #
    #   @return [String]
    #
    # @!attribute slot_type
    #   <p>The type of the slot, either a custom slot type that you defined or
    #         one of the built-in slot types.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_type_version
    #   <p>The version of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute value_elicitation_prompt
    #   <p>The prompt that Amazon Lex uses to elicit the slot value from the
    #         user.</p>
    #
    #   @return [Prompt]
    #
    # @!attribute priority
    #   <p> Directs Amazon Lex the order in which to elicit this slot value from
    #         the user. For example, if the intent has two slots with priorities 1 and
    #         2, AWS Amazon Lex first elicits a value for the slot with priority 1.</p>
    #            <p>If multiple slots share the same priority, the order in which Amazon Lex
    #         elicits values is arbitrary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sample_utterances
    #   <p> If you know a specific pattern with which users might respond to
    #         an Amazon Lex request for a slot value, you can provide those utterances to
    #         improve accuracy. This is optional. In most cases, Amazon Lex is capable of
    #         understanding user utterances. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute response_card
    #   <p> A set of possible responses for the slot type used by text-based
    #         clients. A user chooses an option from the response card, instead of using
    #         text to reply. </p>
    #
    #   @return [String]
    #
    # @!attribute obfuscation_setting
    #   <p>Determines whether a slot is obfuscated in conversation logs and
    #         stored utterances. When you obfuscate a slot, the value is replaced by the
    #         slot name in curly braces ({}). For example, if the slot name is
    #         "full_name", obfuscated values are replaced with "{full_name}". For more
    #         information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html"> Slot Obfuscation </a>.
    #       </p>
    #
    #   Enum, one of: ["NONE", "DEFAULT_OBFUSCATION"]
    #
    #   @return [String]
    #
    # @!attribute default_value_spec
    #   <p>A list of default values for the slot. Default values are used when
    #         Amazon Lex hasn't determined a value for a slot. You can specify default values
    #         from context variables, session attributes, and defined values.</p>
    #
    #   @return [SlotDefaultValueSpec]
    #
    Slot = ::Struct.new(
      :name,
      :description,
      :slot_constraint,
      :slot_type,
      :slot_type_version,
      :value_elicitation_prompt,
      :priority,
      :sample_utterances,
      :response_card,
      :obfuscation_setting,
      :default_value_spec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotConstraint
    #
    module SlotConstraint
      # No documentation available.
      #
      REQUIRED = "Required"

      # No documentation available.
      #
      OPTIONAL = "Optional"
    end

    # <p>A default value for a slot.</p>
    #
    # @!attribute default_value
    #   <p>The default value for the slot. You can specify one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code> context-name.slot-name</code> - The slot value "slot-name"
    #             in the context "context-name."</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>{attribute}</code> - The slot value of the session attribute
    #             "attribute."</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>'value'</code> - The discrete value "value."</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    SlotDefaultValue = ::Struct.new(
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the default values for a slot. Default values are used when
    #       Amazon Lex hasn't determined a value for a slot.</p>
    #
    # @!attribute default_value_list
    #   <p>The default values for a slot. You can specify more than one default.
    #         For example, you can specify a default value to use from a matching
    #         context variable, a session attribute, or a fixed value.</p>
    #            <p>The default value chosen is selected based on the order that you
    #         specify them in the list. For example, if you specify a context variable
    #         and a fixed value in that order, Amazon Lex uses the context variable if it is
    #         available, else it uses the fixed value.</p>
    #
    #   @return [Array<SlotDefaultValue>]
    #
    SlotDefaultValueSpec = ::Struct.new(
      :default_value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides configuration information for a slot type.</p>
    #
    # @!attribute regex_configuration
    #   <p>A regular expression used to validate the value of a slot.</p>
    #
    #   @return [SlotTypeRegexConfiguration]
    #
    SlotTypeConfiguration = ::Struct.new(
      :regex_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a slot type..</p>
    #
    # @!attribute name
    #   <p>The name of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the slot type.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_date
    #   <p>The date that the slot type was updated. When you create a
    #         resource, the creation date and last updated date are the same. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_date
    #   <p>The date that the slot type was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of the slot type.</p>
    #
    #   @return [String]
    #
    SlotTypeMetadata = ::Struct.new(
      :name,
      :description,
      :last_updated_date,
      :created_date,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a regular expression used to validate the value of a
    #       slot.</p>
    #
    # @!attribute pattern
    #   <p>A regular expression used to validate the value of a slot. </p>
    #            <p>Use a standard regular expression. Amazon Lex supports the following
    #         characters in the regular expression:</p>
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
    #            <p>Represent Unicode characters with four digits, for example
    #         "\u0041" or "\u005A".</p>
    #            <p>The following regular expression operators are not supported:</p>
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
    SlotTypeRegexConfiguration = ::Struct.new(
      :pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SlotValueSelectionStrategy
    #
    module SlotValueSelectionStrategy
      # No documentation available.
      #
      ORIGINAL_VALUE = "ORIGINAL_VALUE"

      # No documentation available.
      #
      TOP_RESOLUTION = "TOP_RESOLUTION"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # @!attribute payload
    #   <p>A zip archive in binary format. The archive should contain one file, a
    #         JSON file containing the resource to import. The resource should match the
    #         type specified in the <code>resourceType</code> field.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Specifies the type of resource to export. Each resource also
    #         exports any resources that it depends on. </p>
    #            <ul>
    #               <li>
    #                  <p>A bot exports dependent intents.</p>
    #               </li>
    #               <li>
    #                  <p>An intent exports dependent slot types.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["BOT", "INTENT", "SLOT_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute merge_strategy
    #   <p>Specifies the action that the <code>StartImport</code> operation
    #         should take when there is an existing resource with the same
    #         name.</p>
    #            <ul>
    #               <li>
    #                  <p>FAIL_ON_CONFLICT - The import operation is stopped on the first
    #             conflict between a resource in the import file and an existing
    #             resource. The name of the resource causing the conflict is in the
    #               <code>failureReason</code> field of the response to the
    #               <code>GetImport</code> operation.</p>
    #                  <p>OVERWRITE_LATEST - The import operation proceeds even if there
    #             is a conflict with an existing resource. The $LASTEST version of the
    #             existing resource is overwritten with the data from the import
    #             file.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to add to the imported bot. You can only add tags when
    #         you import a bot, you can't add tags to an intent or slot type.</p>
    #
    #   @return [Array<Tag>]
    #
    StartImportInput = ::Struct.new(
      :payload,
      :resource_type,
      :merge_strategy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name given to the import job.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource to import.</p>
    #
    #   Enum, one of: ["BOT", "INTENT", "SLOT_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute merge_strategy
    #   <p>The action to take when there is a merge conflict.</p>
    #
    #   Enum, one of: ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"]
    #
    #   @return [String]
    #
    # @!attribute import_id
    #   <p>The identifier for the specific import job.</p>
    #
    #   @return [String]
    #
    # @!attribute import_status
    #   <p>The status of the import job. If the status is <code>FAILED</code>,
    #         you can get the reason for the failure using the <code>GetImport</code>
    #         operation.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags added to the imported bot.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_date
    #   <p>A timestamp for the date and time that the import job was
    #         requested.</p>
    #
    #   @return [Time]
    #
    StartImportOutput = ::Struct.new(
      :name,
      :resource_type,
      :merge_strategy,
      :import_id,
      :import_status,
      :tags,
      :created_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute v1_bot_name
    #   <p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_version
    #   <p>The version of the bot to migrate to Amazon Lex V2. You can migrate the
    #           <code>$LATEST</code> version as well as any numbered version.</p>
    #
    #   @return [String]
    #
    # @!attribute v2_bot_name
    #   <p>The name of the Amazon Lex V2 bot that you are migrating the Amazon Lex V1 bot to. </p>
    #            <ul>
    #               <li>
    #                  <p>If the Amazon Lex V2 bot doesn't exist, you must use the
    #               <code>CREATE_NEW</code> migration strategy.</p>
    #               </li>
    #               <li>
    #                  <p>If the Amazon Lex V2 bot exists, you must use the
    #               <code>UPDATE_EXISTING</code> migration strategy to change the
    #             contents of the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute v2_bot_role
    #   <p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_strategy
    #   <p>The strategy used to conduct the migration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates
    #             the Amazon Lex V1 bot to the new bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot
    #             metadata and the locale being migrated. It doesn't change any other
    #             locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale
    #             is created in the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_NEW", "UPDATE_EXISTING"]
    #
    #   @return [String]
    #
    StartMigrationInput = ::Struct.new(
      :v1_bot_name,
      :v1_bot_version,
      :v2_bot_name,
      :v2_bot_role,
      :migration_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute v1_bot_name
    #   <p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_version
    #   <p>The version of the bot to migrate to Amazon Lex V2. </p>
    #
    #   @return [String]
    #
    # @!attribute v1_bot_locale
    #   <p>The locale used for the Amazon Lex V1 bot. </p>
    #
    #   Enum, one of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #
    #   @return [String]
    #
    # @!attribute v2_bot_id
    #   <p>The unique identifier for the Amazon Lex V2 bot. </p>
    #
    #   @return [String]
    #
    # @!attribute v2_bot_role
    #   <p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_id
    #   <p>The unique identifier that Amazon Lex assigned to the migration.</p>
    #
    #   @return [String]
    #
    # @!attribute migration_strategy
    #   <p>The strategy used to conduct the migration.</p>
    #
    #   Enum, one of: ["CREATE_NEW", "UPDATE_EXISTING"]
    #
    #   @return [String]
    #
    # @!attribute migration_timestamp
    #   <p>The date and time that the migration started.</p>
    #
    #   @return [Time]
    #
    StartMigrationOutput = ::Struct.new(
      :v1_bot_name,
      :v1_bot_version,
      :v1_bot_locale,
      :v2_bot_id,
      :v2_bot_role,
      :migration_id,
      :migration_strategy,
      :migration_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of messages that convey information to the user. At
    #       runtime, Amazon Lex selects the message to convey. </p>
    #
    # @!attribute messages
    #   <p>A collection of message objects.</p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute response_card
    #   <p> At runtime, if the client is using the <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> API, Amazon Lex includes the response card in the response.
    #         It substitutes all of the session attributes and slot values for
    #         placeholders in the response card. </p>
    #
    #   @return [String]
    #
    Statement = ::Struct.new(
      :messages,
      :response_card,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      BUILDING = "BUILDING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      READY_BASIC_TESTING = "READY_BASIC_TESTING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      NOT_BUILT = "NOT_BUILT"
    end

    # Includes enum constants for StatusType
    #
    module StatusType
      # No documentation available.
      #
      DETECTED = "Detected"

      # No documentation available.
      #
      MISSED = "Missed"
    end

    # <p>A list of key/value pairs that identify a bot, bot alias, or bot
    #       channel. Tag keys and values can consist of Unicode letters, digits, white
    #       space, and any of the following symbols: _ . : / = + - @. </p>
    #
    # @!attribute key
    #   <p>The key for the tag. Keys are not case-sensitive and must be
    #         unique.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with a key. The value may be an empty string but
    #         it can't be null.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #         to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag keys to add to the resource. If a tag key already
    #         exists, the existing value is replaced with the new value.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags
    #         from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource. If a tag key does not
    #         exist on the resource, it is ignored.</p>
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

    # <p>Provides information about a single utterance that was made to your
    #       bot. </p>
    #
    # @!attribute utterance_string
    #   <p>The text that was entered by the user or the text representation of
    #         an audio clip.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of times that the utterance was processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute distinct_users
    #   <p>The total number of individuals that used the utterance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute first_uttered_date
    #   <p>The date that the utterance was first recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_uttered_date
    #   <p>The date that the utterance was last recorded.</p>
    #
    #   @return [Time]
    #
    UtteranceData = ::Struct.new(
      :utterance_string,
      :count,
      :distinct_users,
      :first_uttered_date,
      :last_uttered_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a list of utterances that have been made to a specific
    #       version of your bot. The list contains a maximum of 100
    #       utterances.</p>
    #
    # @!attribute bot_version
    #   <p>The version of the bot that processed the list.</p>
    #
    #   @return [String]
    #
    # @!attribute utterances
    #   <p>One or more <a>UtteranceData</a> objects that contain
    #         information about the utterances that have been made to a bot. The maximum
    #         number of object is 100.</p>
    #
    #   @return [Array<UtteranceData>]
    #
    UtteranceList = ::Struct.new(
      :bot_version,
      :utterances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
