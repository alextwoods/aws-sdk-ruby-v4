# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeService
  module Types

    # <p>A context is a variable that contains information about the current
    #       state of the conversation between a user and Amazon Lex. Context can be set
    #       automatically by Amazon Lex when an intent is fulfilled, or it can be set at
    #       runtime using the <code>PutContent</code>, <code>PutText</code>, or
    #         <code>PutSession</code> operation.</p>
    #
    # @!attribute name
    #   <p>The name of the context.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live
    #   <p>The length of time or number of turns that a context remains
    #         active.</p>
    #
    #   @return [ActiveContextTimeToLive]
    #
    # @!attribute parameters
    #   <p>State variables for the current context. You can use these values as
    #         default values for slots in subsequent events.</p>
    #
    #   @return [Hash<String, String>]
    #
    ActiveContext = ::Struct.new(
      :name,
      :time_to_live,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The length of time or number of turns that a context remains
    #       active.</p>
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
    ActiveContextTimeToLive = ::Struct.new(
      :time_to_live_in_seconds,
      :turns_to_live,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Either the Amazon Lex bot is still building, or one of the dependent
    #       services (Amazon Polly, AWS Lambda) failed with an internal service
    #       error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadGatewayException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Request validation failed, there is no usable message in the context,
    #       or the bot build failed, is still in progress, or contains unbuilt
    #       changes. </p>
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

    # <p>Represents an option to be shown on the client platform (Facebook,
    #       Slack, etc.)</p>
    #
    # @!attribute text
    #   <p>Text that is visible to the user on the button.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value sent to Amazon Lex when a user chooses the button. For
    #         example, consider button text "NYC." When the user chooses the button, the
    #         value sent can be "New York City."</p>
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

    # Includes enum constants for ConfirmationStatus
    #
    module ConfirmationStatus
      # No documentation available.
      #
      NONE = "None"

      # No documentation available.
      #
      CONFIRMED = "Confirmed"

      # No documentation available.
      #
      DENIED = "Denied"
    end

    # <p> Two clients are using the same AWS account, Amazon Lex bot, and user
    #       ID. </p>
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
      GENERIC = "application/vnd.amazonaws.card.generic"
    end

    # @!attribute bot_name
    #   <p>The name of the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user associated with the session data.</p>
    #
    #   @return [String]
    #
    DeleteSessionInput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot associated with the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>The alias in use for the bot associated with the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the client application user.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The unique identifier for the session.</p>
    #
    #   @return [String]
    #
    DeleteSessionOutput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> One of the dependencies, such as AWS Lambda or Amazon Polly, threw an
    #       exception. For example, </p>
    #          <ul>
    #             <li>
    #                <p>If Amazon Lex does not have sufficient permissions to call a Lambda
    #           function.</p>
    #             </li>
    #             <li>
    #                <p>If a Lambda function takes longer than 30 seconds to
    #           execute.</p>
    #             </li>
    #             <li>
    #                <p>If a fulfillment Lambda function returns a <code>Delegate</code>
    #           dialog action without removing any slot values.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DependencyFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the next action that the bot should take in its interaction
    #       with the user and provides information about the context in which the
    #       action takes place. Use the <code>DialogAction</code> data type to set the
    #       interaction to a specific state, or to return the interaction to a
    #       previous state.</p>
    #
    # @!attribute type
    #   <p>The next action that the bot should take in its interaction with the
    #         user. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfirmIntent</code> - The next action is asking the user if
    #             the intent is complete and ready to be fulfilled. This is a yes/no
    #             question such as "Place the order?"</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Close</code> - Indicates that the there will not be a
    #             response from the user. For example, the statement "Your order has
    #             been placed" does not require a response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delegate</code> - The next action is determined by
    #             Amazon Lex.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitIntent</code> - The next action is to determine the
    #             intent that the user wants to fulfill.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitSlot</code> - The next action is to elicit a slot
    #             value from the user.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"]
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>Map of the slots that have been gathered and their values. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute slot_to_elicit
    #   <p>The name of the slot that should be elicited from the user.</p>
    #
    #   @return [String]
    #
    # @!attribute fulfillment_state
    #   <p>The fulfillment state of the intent. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - The Lambda function associated with the
    #             intent failed to fulfill the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fulfilled</code> - The intent has fulfilled by the Lambda
    #             function associated with the intent. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadyForFulfillment</code> - All of the information
    #             necessary for the intent is present and the intent ready to be
    #             fulfilled by the client application.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Fulfilled", "Failed", "ReadyForFulfillment"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message that should be shown to the user. If you don't specify a
    #         message, Amazon Lex will use the message configured for the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute message_format
    #   <ul>
    #               <li>
    #                  <p>
    #                     <code>PlainText</code> - The message contains plain UTF-8
    #             text.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CustomPayload</code> - The message is a custom format for
    #             the client.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSML</code> - The message contains text formatted for voice
    #             output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Composite</code> - The message contains an escaped JSON
    #             object containing one or more messages. For more information, see
    #               <a href="https://docs.aws.amazon.com/lex/latest/dg/howitworks-manage-prompts.html">Message Groups</a>. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PlainText", "CustomPayload", "SSML", "Composite"]
    #
    #   @return [String]
    #
    DialogAction = ::Struct.new(
      :type,
      :intent_name,
      :slots,
      :slot_to_elicit,
      :fulfillment_state,
      :message,
      :message_format,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::DialogAction "\
          "type=#{type || 'nil'}, "\
          "intent_name=#{intent_name || 'nil'}, "\
          "slots=\"[SENSITIVE]\", "\
          "slot_to_elicit=#{slot_to_elicit || 'nil'}, "\
          "fulfillment_state=#{fulfillment_state || 'nil'}, "\
          "message=\"[SENSITIVE]\", "\
          "message_format=#{message_format || 'nil'}>"
      end
    end

    # Includes enum constants for DialogActionType
    #
    module DialogActionType
      # No documentation available.
      #
      ELICIT_INTENT = "ElicitIntent"

      # No documentation available.
      #
      CONFIRM_INTENT = "ConfirmIntent"

      # No documentation available.
      #
      ELICIT_SLOT = "ElicitSlot"

      # No documentation available.
      #
      CLOSE = "Close"

      # No documentation available.
      #
      DELEGATE = "Delegate"
    end

    # Includes enum constants for DialogState
    #
    module DialogState
      # No documentation available.
      #
      ELICIT_INTENT = "ElicitIntent"

      # No documentation available.
      #
      CONFIRM_INTENT = "ConfirmIntent"

      # No documentation available.
      #
      ELICIT_SLOT = "ElicitSlot"

      # No documentation available.
      #
      FULFILLED = "Fulfilled"

      # No documentation available.
      #
      READY_FOR_FULFILLMENT = "ReadyForFulfillment"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # Includes enum constants for FulfillmentState
    #
    module FulfillmentState
      # No documentation available.
      #
      FULFILLED = "Fulfilled"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      READY_FOR_FULFILLMENT = "ReadyForFulfillment"
    end

    # <p>Represents an option rendered to the user when a prompt is shown. It
    #       could be an image, a button, a link, or text. </p>
    #
    # @!attribute title
    #   <p>The title of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute sub_title
    #   <p>The subtitle shown below the title.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_link_url
    #   <p>The URL of an attachment to the response card.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image that is displayed to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute buttons
    #   <p>The list of options to show to the user.</p>
    #
    #   @return [Array<Button>]
    #
    GenericAttachment = ::Struct.new(
      :title,
      :sub_title,
      :attachment_link_url,
      :image_url,
      :buttons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. </p>
    #
    #   @return [String]
    #
    # @!attribute checkpoint_label_filter
    #   <p>A string used to filter the intents returned in the
    #           <code>recentIntentSummaryView</code> structure. </p>
    #            <p>When you specify a filter, only intents with their
    #           <code>checkpointLabel</code> field set to that string are
    #         returned.</p>
    #
    #   @return [String]
    #
    GetSessionInput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :checkpoint_label_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recent_intent_summary_view
    #   <p>An array of information about the intents used in the session. The
    #         array can contain a maximum of three summaries. If more than three intents
    #         are used in the session, the <code>recentIntentSummaryView</code>
    #         operation contains information about the last three intents used.</p>
    #            <p>If you set the <code>checkpointLabelFilter</code> parameter in the
    #         request, the array contains only the intents with the specified
    #         label.</p>
    #
    #   @return [Array<IntentSummary>]
    #
    # @!attribute session_attributes
    #   <p>Map of key/value pairs representing the session-specific context
    #         information. It contains application information passed between Amazon Lex and
    #         a client application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute session_id
    #   <p>A unique identifier for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute dialog_action
    #   <p>Describes the current state of the bot.</p>
    #
    #   @return [DialogAction]
    #
    # @!attribute active_contexts
    #   <p>A list of active contexts for the session. A context can be set when
    #         an intent is fulfilled or by calling the <code>PostContent</code>,
    #           <code>PostText</code>, or <code>PutSession</code> operation.</p>
    #            <p>You can use a context to control the intents that can follow up an
    #         intent, or to modify the operation of your application.</p>
    #
    #   @return [Array<ActiveContext>]
    #
    GetSessionOutput = ::Struct.new(
      :recent_intent_summary_view,
      :session_attributes,
      :session_id,
      :dialog_action,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::GetSessionOutput "\
          "recent_intent_summary_view=#{recent_intent_summary_view || 'nil'}, "\
          "session_attributes=\"[SENSITIVE]\", "\
          "session_id=#{session_id || 'nil'}, "\
          "dialog_action=#{dialog_action || 'nil'}, "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # <p>Provides a score that indicates the confidence that Amazon Lex has that an
    #       intent is the one that satisfies the user's intent.</p>
    #
    # @!attribute score
    #   <p>A score that indicates how confident Amazon Lex is that an intent satisfies
    #         the user's intent. Ranges between 0.00 and 1.00. Higher scores indicate
    #         higher confidence.</p>
    #
    #   @return [Float]
    #
    IntentConfidence = ::Struct.new(
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.score ||= 0
      end

    end

    # <p>Provides information about the state of an intent. You can use this
    #       information to get the current state of an intent so that you can process
    #       the intent, or so that you can return the intent to its previous
    #       state.</p>
    #
    # @!attribute intent_name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute checkpoint_label
    #   <p>A user-defined label that identifies a particular intent. You can use
    #         this label to return to a previous intent. </p>
    #            <p>Use the <code>checkpointLabelFilter</code> parameter of the
    #           <code>GetSessionRequest</code> operation to filter the intents returned
    #         by the operation to those with only the specified label.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>Map of the slots that have been gathered and their values. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute confirmation_status
    #   <p>The status of the intent after the user responds to the confirmation
    #         prompt. If the user confirms the intent, Amazon Lex sets this field to
    #           <code>Confirmed</code>. If the user denies the intent, Amazon Lex sets this
    #         value to <code>Denied</code>. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Confirmed</code> - The user has responded "Yes" to the
    #             confirmation prompt, confirming that the intent is complete and that
    #             it is ready to be fulfilled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Denied</code> - The user has responded "No" to the
    #             confirmation prompt.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code> - The user has never been prompted for
    #             confirmation; or, the user was prompted but did not confirm or deny
    #             the prompt.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["None", "Confirmed", "Denied"]
    #
    #   @return [String]
    #
    # @!attribute dialog_action_type
    #   <p>The next action that the bot should take in its interaction with the
    #         user. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfirmIntent</code> - The next action is asking the user if
    #             the intent is complete and ready to be fulfilled. This is a yes/no
    #             question such as "Place the order?"</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Close</code> - Indicates that the there will not be a
    #             response from the user. For example, the statement "Your order has
    #             been placed" does not require a response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitIntent</code> - The next action is to determine the
    #             intent that the user wants to fulfill.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitSlot</code> - The next action is to elicit a slot
    #             value from the user.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"]
    #
    #   @return [String]
    #
    # @!attribute fulfillment_state
    #   <p>The fulfillment state of the intent. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - The Lambda function associated with the
    #             intent failed to fulfill the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fulfilled</code> - The intent has fulfilled by the Lambda
    #             function associated with the intent. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadyForFulfillment</code> - All of the information
    #             necessary for the intent is present and the intent ready to be
    #             fulfilled by the client application.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Fulfilled", "Failed", "ReadyForFulfillment"]
    #
    #   @return [String]
    #
    # @!attribute slot_to_elicit
    #   <p>The next slot to elicit from the user. If there is not slot to elicit,
    #         the field is blank.</p>
    #
    #   @return [String]
    #
    IntentSummary = ::Struct.new(
      :intent_name,
      :checkpoint_label,
      :slots,
      :confirmation_status,
      :dialog_action_type,
      :fulfillment_state,
      :slot_to_elicit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::IntentSummary "\
          "intent_name=#{intent_name || 'nil'}, "\
          "checkpoint_label=#{checkpoint_label || 'nil'}, "\
          "slots=\"[SENSITIVE]\", "\
          "confirmation_status=#{confirmation_status || 'nil'}, "\
          "dialog_action_type=#{dialog_action_type || 'nil'}, "\
          "fulfillment_state=#{fulfillment_state || 'nil'}, "\
          "slot_to_elicit=#{slot_to_elicit || 'nil'}>"
      end
    end

    # <p>Internal service error. Retry the call.</p>
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

    # <p>Exceeded a limit.</p>
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

    # <p>This exception is not used.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LoopDetectedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageFormatType
    #
    module MessageFormatType
      # No documentation available.
      #
      PLAIN_TEXT = "PlainText"

      # No documentation available.
      #
      CUSTOM_PAYLOAD = "CustomPayload"

      # No documentation available.
      #
      SSML = "SSML"

      # No documentation available.
      #
      COMPOSITE = "Composite"
    end

    # <p>The accept header in the request does not have a valid value.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotAcceptableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource (such as the Amazon Lex bot or an alias) that is referred
    #       to is not found.</p>
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

    # @!attribute bot_name
    #   <p>Name of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>Alias of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. At runtime, each request must contain
    #         the <code>userID</code> field.</p>
    #            <p>To decide the user ID to use for your application, consider the
    #         following factors.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>userID</code> field must not contain any personally
    #             identifiable information of the user, for example, name, personal
    #             identification numbers, or other end user personal information.</p>
    #               </li>
    #               <li>
    #                  <p>If you want a user to start a conversation on one device and
    #             continue on another device, use a user-specific identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If you want the same user to be able to have two independent
    #             conversations on two different devices, choose a device-specific
    #             identifier.</p>
    #               </li>
    #               <li>
    #                  <p>A user can't have two independent conversations with two different
    #             versions of the same bot. For example, a user can't have a
    #             conversation with the PROD and BETA versions of the same bot. If you
    #             anticipate that a user will need to have conversation with two
    #             different versions, for example, while testing, include the bot alias
    #             in the user ID to separate the two conversations.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute session_attributes
    #   <p>You pass this value as the <code>x-amz-lex-session-attributes</code>
    #         HTTP header.</p>
    #            <p>Application-specific information passed between Amazon Lex and a client
    #         application. The value must be a JSON serialized and base64 encoded map
    #         with string keys and values. The total size of the
    #           <code>sessionAttributes</code> and <code>requestAttributes</code>
    #         headers is limited to 12 KB.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html context-mgmt-session-attribs">Setting Session Attributes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute request_attributes
    #   <p>You pass this value as the <code>x-amz-lex-request-attributes</code>
    #         HTTP header.</p>
    #            <p>Request-specific information passed between Amazon Lex and a client
    #         application. The value must be a JSON serialized and base64 encoded map
    #         with string keys and values. The total size of the
    #           <code>requestAttributes</code> and <code>sessionAttributes</code>
    #         headers is limited to 12 KB.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #         attributes. Don't create any request attributes with the prefix
    #           <code>x-amz-lex:</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html context-mgmt-request-attribs">Setting Request Attributes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p> You pass this value as the <code>Content-Type</code> HTTP header. </p>
    #            <p> Indicates the audio format or text. The header value must start with
    #         one of the following prefixes: </p>
    #            <ul>
    #               <li>
    #                  <p>PCM format, audio data must be in little-endian byte order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/l16; rate=16000; channels=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #                 channel-count=1; is-big-endian=false </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/x-cbr-opus-with-preamble; preamble-size=0;
    #                 bit-rate=256000; frame-size-milliseconds=4</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Text format</p>
    #                  <ul>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute accept
    #   <p> You pass this value as the <code>Accept</code> HTTP header. </p>
    #            <p> The message Amazon Lex returns in the response can be either text or
    #         speech based on the <code>Accept</code> HTTP header value in the request. </p>
    #            <ul>
    #               <li>
    #                  <p> If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
    #             returns text in the response. </p>
    #               </li>
    #               <li>
    #                  <p> If the value begins with <code>audio/</code>, Amazon Lex returns
    #             speech in the response. Amazon Lex uses Amazon Polly to generate the speech
    #             (using the configuration you specified in the <code>Accept</code>
    #             header). For example, if you specify <code>audio/mpeg</code> as the
    #             value, Amazon Lex returns speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #               <code>audio/pcm</code> in 16-bit, little endian format.
    #             </p>
    #               </li>
    #               <li>
    #                  <p>The following are the accepted values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/mpeg</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/ogg</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/pcm</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute input_stream
    #   <p> User input in PCM or Opus audio format or text format as described in
    #         the <code>Content-Type</code> HTTP header. </p>
    #            <p>You can stream audio data to Amazon Lex or you can create a local buffer
    #         that captures all of the audio data before sending. In general, you get
    #         better performance if you stream audio data rather than buffering the data
    #         locally.</p>
    #
    #   @return [String]
    #
    # @!attribute active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    #
    #   @return [String]
    #
    PostContentInput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
      :request_attributes,
      :content_type,
      :accept,
      :input_stream,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PostContentInput "\
          "bot_name=#{bot_name || 'nil'}, "\
          "bot_alias=#{bot_alias || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "session_attributes=\"[SENSITIVE]\", "\
          "request_attributes=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}, "\
          "accept=#{accept || 'nil'}, "\
          "input_stream=#{input_stream || 'nil'}, "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # @!attribute content_type
    #   <p>Content type as specified in the <code>Accept</code> HTTP header in
    #         the request.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>Current user intent that Amazon Lex is aware of.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence
    #   <p>Provides a score that indicates how confident Amazon Lex is that the
    #         returned intent is the one that matches the user's intent. The score is
    #         between 0.0 and 1.0.</p>
    #            <p>The score is a relative score, not an absolute score. The score may
    #         change based on improvements to Amazon Lex. </p>
    #
    #   @return [String]
    #
    # @!attribute alternative_intents
    #   <p>One to four alternative intents that may be applicable to the user's
    #         intent.</p>
    #            <p>Each alternative includes a score that indicates how confident Amazon Lex
    #         is that the intent matches the user's intent. The intents are sorted by
    #         the confidence score.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>Map of zero or more intent slots (name/value pairs) Amazon Lex detected
    #         from the user input during the conversation. The field is base-64
    #         encoded.</p>
    #            <p>Amazon Lex creates a resolution list containing likely values for a slot.
    #         The value that it returns is determined by the
    #           <code>valueSelectionStrategy</code> selected when the slot type was
    #         created or updated. If <code>valueSelectionStrategy</code> is set to
    #           <code>ORIGINAL_VALUE</code>, the value provided by the user is returned,
    #         if the user value is similar to the slot values. If
    #           <code>valueSelectionStrategy</code> is set to
    #           <code>TOP_RESOLUTION</code> Amazon Lex returns the first value in the
    #         resolution list or, if there is no resolution list, null. If you don't
    #         specify a <code>valueSelectionStrategy</code>, the default is
    #           <code>ORIGINAL_VALUE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute session_attributes
    #   <p> Map of key/value pairs representing the session-specific context
    #         information. </p>
    #
    #   @return [String]
    #
    # @!attribute sentiment_response
    #   <p>The sentiment expressed in an utterance.</p>
    #            <p>When the bot is configured to send utterances to Amazon Comprehend for
    #         sentiment analysis, this field contains the result of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>You can only use this field in the de-DE, en-AU, en-GB, en-US, es-419,
    #         es-ES, es-US, fr-CA, fr-FR, and it-IT locales. In all other locales, the
    #           <code>message</code> field is null. You should use the
    #           <code>encodedMessage</code> field instead.</p>
    #            <p>The message to convey to the user. The message can come from the bot's
    #         configuration or from a Lambda function.</p>
    #            <p>If the intent is not configured with a Lambda function, or if the Lambda
    #         function returned <code>Delegate</code> as the
    #           <code>dialogAction.type</code> in its response, Amazon Lex decides on the
    #         next course of action and selects an appropriate message from the bot's
    #         configuration based on the current interaction context. For example, if
    #         Amazon Lex isn't able to understand user input, it uses a clarification prompt
    #         message.</p>
    #            <p>When you create an intent you can assign messages to groups. When
    #         messages are assigned to groups Amazon Lex returns one message from each group
    #         in the response. The message field is an escaped JSON string containing
    #         the messages. For more information about the structure of the JSON string
    #         returned, see <a>msg-prompts-formats</a>.</p>
    #            <p>If the Lambda function returns a message, Amazon Lex passes it to the client
    #         in its response.</p>
    #
    #   @deprecated
    #     The message field is deprecated, use the encodedMessage field instead. The message field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales.
    #
    #   @return [String]
    #
    # @!attribute encoded_message
    #   <p>The message to convey to the user. The message can come from the bot's
    #         configuration or from a Lambda function.</p>
    #            <p>If the intent is not configured with a Lambda function, or if the Lambda
    #         function returned <code>Delegate</code> as the
    #           <code>dialogAction.type</code> in its response, Amazon Lex decides on the
    #         next course of action and selects an appropriate message from the bot's
    #         configuration based on the current interaction context. For example, if
    #         Amazon Lex isn't able to understand user input, it uses a clarification prompt
    #         message.</p>
    #            <p>When you create an intent you can assign messages to groups. When
    #         messages are assigned to groups Amazon Lex returns one message from each group
    #         in the response. The message field is an escaped JSON string containing
    #         the messages. For more information about the structure of the JSON string
    #         returned, see <a>msg-prompts-formats</a>.</p>
    #            <p>If the Lambda function returns a message, Amazon Lex passes it to the client
    #         in its response.</p>
    #            <p>The <code>encodedMessage</code> field is base-64 encoded. You must
    #         decode the field before you can use the value.</p>
    #
    #   @return [String]
    #
    # @!attribute message_format
    #   <p>The format of the response message. One of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlainText</code> - The message contains plain UTF-8
    #             text.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CustomPayload</code> - The message is a custom format for
    #             the client.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSML</code> - The message contains text formatted for voice
    #             output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Composite</code> - The message contains an escaped JSON
    #             object containing one or more messages from the groups that messages
    #             were assigned to when the intent was created.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PlainText", "CustomPayload", "SSML", "Composite"]
    #
    #   @return [String]
    #
    # @!attribute dialog_state
    #   <p>Identifies the current state of the user interaction. Amazon Lex returns
    #         one of the following values as <code>dialogState</code>. The client can
    #         optionally use this information to customize the user interface. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ElicitIntent</code> - Amazon Lex wants to elicit the user's intent.
    #             Consider the following examples: </p>
    #                  <p> For example, a user might utter an intent ("I want to order a
    #             pizza"). If Amazon Lex cannot infer the user intent from this utterance, it
    #             will return this dialog state. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfirmIntent</code> - Amazon Lex is expecting a "yes" or "no"
    #             response. </p>
    #                  <p>For example, Amazon Lex wants user confirmation before fulfilling an
    #             intent. Instead of a simple "yes" or "no" response, a user might
    #             respond with additional information. For example, "yes, but make it a
    #             thick crust pizza" or "no, I want to order a drink." Amazon Lex can process
    #             such additional information (in these examples, update the crust type
    #             slot or change the intent from OrderPizza to OrderDrink). </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitSlot</code> - Amazon Lex is expecting the value of a slot for
    #             the current intent. </p>
    #                  <p> For example, suppose that in the response Amazon Lex sends this
    #             message: "What size pizza would you like?". A user might reply with
    #             the slot value (e.g., "medium"). The user might also provide
    #             additional information in the response (e.g., "medium thick crust
    #             pizza"). Amazon Lex can process such additional information appropriately.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fulfilled</code> - Conveys that the Lambda function has
    #             successfully fulfilled the intent. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadyForFulfillment</code> - Conveys that the client has to
    #             fulfill the request. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - Conveys that the conversation with the user
    #             failed. </p>
    #                  <p> This can happen for various reasons, including that the user does
    #             not provide an appropriate response to prompts from the service (you
    #             can configure how many times Amazon Lex can prompt a user for specific
    #             information), or if the Lambda function fails to fulfill the intent.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute slot_to_elicit
    #   <p> If the <code>dialogState</code> value is <code>ElicitSlot</code>,
    #         returns the name of the slot for which Amazon Lex is eliciting a value. </p>
    #
    #   @return [String]
    #
    # @!attribute input_transcript
    #   <p>The text used to process the request.</p>
    #            <p>You can use this field only in the de-DE, en-AU, en-GB, en-US, es-419,
    #         es-ES, es-US, fr-CA, fr-FR, and it-IT locales. In all other locales, the
    #           <code>inputTranscript</code> field is null. You should use the
    #           <code>encodedInputTranscript</code> field instead.</p>
    #            <p>If the input was an audio stream, the <code>inputTranscript</code>
    #         field contains the text extracted from the audio stream. This is the text
    #         that is actually processed to recognize intents and slot values. You can
    #         use this information to determine if Amazon Lex is correctly processing the
    #         audio that you send.</p>
    #
    #   @deprecated
    #     The inputTranscript field is deprecated, use the encodedInputTranscript field instead. The inputTranscript field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales.
    #
    #   @return [String]
    #
    # @!attribute encoded_input_transcript
    #   <p>The text used to process the request.</p>
    #            <p>If the input was an audio stream, the
    #           <code>encodedInputTranscript</code> field contains the text extracted
    #         from the audio stream. This is the text that is actually processed to
    #         recognize intents and slot values. You can use this information to
    #         determine if Amazon Lex is correctly processing the audio that you send.</p>
    #            <p>The <code>encodedInputTranscript</code> field is base-64 encoded. You must
    #         decode the field before you can use the value.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_stream
    #   <p>The prompt (or statement) to convey to the user. This is based on the
    #         bot configuration and context. For example, if Amazon Lex did not understand
    #         the user intent, it sends the <code>clarificationPrompt</code> configured
    #         for the bot. If the intent requires confirmation before taking the
    #         fulfillment action, it sends the <code>confirmationPrompt</code>. Another
    #         example: Suppose that the Lambda function successfully fulfilled the
    #         intent, and sent a message to convey to the user. Then Amazon Lex sends that
    #         message in the response. </p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that responded to the conversation. You can use
    #         this information to help determine if one version of a bot is performing
    #         better than another version.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The unique identifier for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute active_contexts
    #   <p>A list of active contexts for the session. A context can be set when
    #         an intent is fulfilled or by calling the <code>PostContent</code>,
    #           <code>PostText</code>, or <code>PutSession</code> operation.</p>
    #            <p>You can use a context to control the intents that can follow up an
    #         intent, or to modify the operation of your application.</p>
    #
    #   @return [String]
    #
    PostContentOutput = ::Struct.new(
      :content_type,
      :intent_name,
      :nlu_intent_confidence,
      :alternative_intents,
      :slots,
      :session_attributes,
      :sentiment_response,
      :message,
      :encoded_message,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :input_transcript,
      :encoded_input_transcript,
      :audio_stream,
      :bot_version,
      :session_id,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PostContentOutput "\
          "content_type=#{content_type || 'nil'}, "\
          "intent_name=#{intent_name || 'nil'}, "\
          "nlu_intent_confidence=#{nlu_intent_confidence || 'nil'}, "\
          "alternative_intents=#{alternative_intents || 'nil'}, "\
          "slots=#{slots || 'nil'}, "\
          "session_attributes=#{session_attributes || 'nil'}, "\
          "sentiment_response=#{sentiment_response || 'nil'}, "\
          "message=\"[SENSITIVE]\", "\
          "encoded_message=\"[SENSITIVE]\", "\
          "message_format=#{message_format || 'nil'}, "\
          "dialog_state=#{dialog_state || 'nil'}, "\
          "slot_to_elicit=#{slot_to_elicit || 'nil'}, "\
          "input_transcript=#{input_transcript || 'nil'}, "\
          "encoded_input_transcript=\"[SENSITIVE]\", "\
          "audio_stream=#{audio_stream || 'nil'}, "\
          "bot_version=#{bot_version || 'nil'}, "\
          "session_id=#{session_id || 'nil'}, "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>The alias of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. At runtime, each request must contain
    #         the <code>userID</code> field.</p>
    #            <p>To decide the user ID to use for your application, consider the
    #         following factors.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>userID</code> field must not contain any personally
    #             identifiable information of the user, for example, name, personal
    #             identification numbers, or other end user personal information.</p>
    #               </li>
    #               <li>
    #                  <p>If you want a user to start a conversation on one device and
    #             continue on another device, use a user-specific identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If you want the same user to be able to have two independent
    #             conversations on two different devices, choose a device-specific
    #             identifier.</p>
    #               </li>
    #               <li>
    #                  <p>A user can't have two independent conversations with two different
    #             versions of the same bot. For example, a user can't have a
    #             conversation with the PROD and BETA versions of the same bot. If you
    #             anticipate that a user will need to have conversation with two
    #             different versions, for example, while testing, include the bot alias
    #             in the user ID to separate the two conversations.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute session_attributes
    #   <p>Application-specific information passed between Amazon Lex and a client
    #         application.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html context-mgmt-session-attribs">Setting Session Attributes</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute request_attributes
    #   <p>Request-specific information passed between Amazon Lex and a client
    #         application.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #         attributes. Don't create any request attributes with the prefix
    #           <code>x-amz-lex:</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html context-mgmt-request-attribs">Setting Request Attributes</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute input_text
    #   <p>The text that the user entered (Amazon Lex interprets this text).</p>
    #
    #   @return [String]
    #
    # @!attribute active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    #
    #   @return [Array<ActiveContext>]
    #
    PostTextInput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
      :request_attributes,
      :input_text,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PostTextInput "\
          "bot_name=#{bot_name || 'nil'}, "\
          "bot_alias=#{bot_alias || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "session_attributes=\"[SENSITIVE]\", "\
          "request_attributes=\"[SENSITIVE]\", "\
          "input_text=\"[SENSITIVE]\", "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # @!attribute intent_name
    #   <p>The current user intent that Amazon Lex is aware of.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence
    #   <p>Provides a score that indicates how confident Amazon Lex is that the
    #         returned intent is the one that matches the user's intent. The score is
    #         between 0.0 and 1.0. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html">Confidence Scores</a>.</p>
    #            <p>The score is a relative score, not an absolute score. The score may
    #         change based on improvements to Amazon Lex.</p>
    #
    #   @return [IntentConfidence]
    #
    # @!attribute alternative_intents
    #   <p>One to four alternative intents that may be applicable to the user's
    #         intent.</p>
    #            <p>Each alternative includes a score that indicates how confident Amazon Lex
    #         is that the intent matches the user's intent. The intents are sorted by
    #         the confidence score.</p>
    #
    #   @return [Array<PredictedIntent>]
    #
    # @!attribute slots
    #   <p> The intent slots that Amazon Lex detected from the user input in the
    #         conversation. </p>
    #            <p>Amazon Lex creates a resolution list containing likely values for a slot.
    #         The value that it returns is determined by the
    #           <code>valueSelectionStrategy</code> selected when the slot type was
    #         created or updated. If <code>valueSelectionStrategy</code> is set to
    #           <code>ORIGINAL_VALUE</code>, the value provided by the user is returned,
    #         if the user value is similar to the slot values. If
    #           <code>valueSelectionStrategy</code> is set to
    #           <code>TOP_RESOLUTION</code> Amazon Lex returns the first value in the
    #         resolution list or, if there is no resolution list, null. If you don't
    #         specify a <code>valueSelectionStrategy</code>, the default is
    #           <code>ORIGINAL_VALUE</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute session_attributes
    #   <p>A map of key-value pairs representing the session-specific context
    #         information.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>The message to convey to the user. The message can come from the bot's
    #         configuration or from a Lambda function.</p>
    #            <p>If the intent is not configured with a Lambda function, or if the Lambda
    #         function returned <code>Delegate</code> as the
    #           <code>dialogAction.type</code> its response, Amazon Lex decides on the next
    #         course of action and selects an appropriate message from the bot's
    #         configuration based on the current interaction context. For example, if
    #         Amazon Lex isn't able to understand user input, it uses a clarification prompt
    #         message.</p>
    #            <p>When you create an intent you can assign messages to groups. When
    #         messages are assigned to groups Amazon Lex returns one message from each group
    #         in the response. The message field is an escaped JSON string containing
    #         the messages. For more information about the structure of the JSON string
    #         returned, see <a>msg-prompts-formats</a>.</p>
    #            <p>If the Lambda function returns a message, Amazon Lex passes it to the client
    #         in its response.</p>
    #
    #   @return [String]
    #
    # @!attribute sentiment_response
    #   <p>The sentiment expressed in and utterance.</p>
    #            <p>When the bot is configured to send utterances to Amazon Comprehend for
    #         sentiment analysis, this field contains the result of the analysis.</p>
    #
    #   @return [SentimentResponse]
    #
    # @!attribute message_format
    #   <p>The format of the response message. One of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlainText</code> - The message contains plain UTF-8
    #             text.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CustomPayload</code> - The message is a custom format
    #             defined by the Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSML</code> - The message contains text formatted for voice
    #             output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Composite</code> - The message contains an escaped JSON
    #             object containing one or more messages from the groups that messages
    #             were assigned to when the intent was created.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PlainText", "CustomPayload", "SSML", "Composite"]
    #
    #   @return [String]
    #
    # @!attribute dialog_state
    #   <p> Identifies the current state of the user interaction. Amazon Lex returns
    #         one of the following values as <code>dialogState</code>. The client can
    #         optionally use this information to customize the user interface. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ElicitIntent</code> - Amazon Lex wants to elicit user intent. </p>
    #                  <p>For example, a user might utter an intent ("I want to order a
    #             pizza"). If Amazon Lex cannot infer the user intent from this utterance, it
    #             will return this dialogState.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfirmIntent</code> - Amazon Lex is expecting a "yes" or "no"
    #             response. </p>
    #                  <p> For example, Amazon Lex wants user confirmation before fulfilling an
    #             intent. </p>
    #                  <p>Instead of a simple "yes" or "no," a user might respond with
    #             additional information. For example, "yes, but make it thick crust
    #             pizza" or "no, I want to order a drink". Amazon Lex can process such
    #             additional information (in these examples, update the crust type slot
    #             value, or change intent from OrderPizza to OrderDrink).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitSlot</code> - Amazon Lex is expecting a slot value for the
    #             current intent. </p>
    #                  <p>For example, suppose that in the response Amazon Lex sends this
    #             message: "What size pizza would you like?". A user might reply with
    #             the slot value (e.g., "medium"). The user might also provide
    #             additional information in the response (e.g., "medium thick crust
    #             pizza"). Amazon Lex can process such additional information appropriately.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fulfilled</code> - Conveys that the Lambda function configured
    #             for the intent has successfully fulfilled the intent. </p>
    #
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadyForFulfillment</code> - Conveys that the client has to
    #             fulfill the intent. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - Conveys that the conversation with the user
    #             failed. </p>
    #                  <p> This can happen for various reasons including that the user did
    #             not provide an appropriate response to prompts from the service (you
    #             can configure how many times Amazon Lex can prompt a user for specific
    #             information), or the Lambda function failed to fulfill the intent.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute slot_to_elicit
    #   <p>If the <code>dialogState</code> value is <code>ElicitSlot</code>,
    #         returns the name of the slot for which Amazon Lex is eliciting a value. </p>
    #
    #   @return [String]
    #
    # @!attribute response_card
    #   <p>Represents the options that the user has to respond to the current
    #         prompt. Response Card can come from the bot configuration (in the
    #         Amazon Lex console, choose the settings button next to a slot) or from a
    #         code hook (Lambda function). </p>
    #
    #   @return [ResponseCard]
    #
    # @!attribute session_id
    #   <p>A unique identifier for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_version
    #   <p>The version of the bot that responded to the conversation. You can use
    #         this information to help determine if one version of a bot is performing
    #         better than another version.</p>
    #
    #   @return [String]
    #
    # @!attribute active_contexts
    #   <p>A list of active contexts for the session. A context can be set when
    #         an intent is fulfilled or by calling the <code>PostContent</code>,
    #           <code>PostText</code>, or <code>PutSession</code> operation.</p>
    #            <p>You can use a context to control the intents that can follow up an
    #         intent, or to modify the operation of your application.</p>
    #
    #   @return [Array<ActiveContext>]
    #
    PostTextOutput = ::Struct.new(
      :intent_name,
      :nlu_intent_confidence,
      :alternative_intents,
      :slots,
      :session_attributes,
      :message,
      :sentiment_response,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :response_card,
      :session_id,
      :bot_version,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PostTextOutput "\
          "intent_name=#{intent_name || 'nil'}, "\
          "nlu_intent_confidence=#{nlu_intent_confidence || 'nil'}, "\
          "alternative_intents=#{alternative_intents || 'nil'}, "\
          "slots=\"[SENSITIVE]\", "\
          "session_attributes=\"[SENSITIVE]\", "\
          "message=\"[SENSITIVE]\", "\
          "sentiment_response=#{sentiment_response || 'nil'}, "\
          "message_format=#{message_format || 'nil'}, "\
          "dialog_state=#{dialog_state || 'nil'}, "\
          "slot_to_elicit=#{slot_to_elicit || 'nil'}, "\
          "response_card=#{response_card || 'nil'}, "\
          "session_id=#{session_id || 'nil'}, "\
          "bot_version=#{bot_version || 'nil'}, "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # <p>An intent that Amazon Lex suggests satisfies the user's intent. Includes
    #       the name of the intent, the confidence that Amazon Lex has that the user's
    #       intent is satisfied, and the slots defined for the intent.</p>
    #
    # @!attribute intent_name
    #   <p>The name of the intent that Amazon Lex suggests satisfies the user's
    #         intent.</p>
    #
    #   @return [String]
    #
    # @!attribute nlu_intent_confidence
    #   <p>Indicates how confident Amazon Lex is that an intent satisfies the user's
    #         intent.</p>
    #
    #   @return [IntentConfidence]
    #
    # @!attribute slots
    #   <p>The slot and slot values associated with the predicted intent.</p>
    #
    #   @return [Hash<String, String>]
    #
    PredictedIntent = ::Struct.new(
      :intent_name,
      :nlu_intent_confidence,
      :slots,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PredictedIntent "\
          "intent_name=#{intent_name || 'nil'}, "\
          "nlu_intent_confidence=#{nlu_intent_confidence || 'nil'}, "\
          "slots=\"[SENSITIVE]\">"
      end
    end

    # @!attribute bot_name
    #   <p>The name of the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. </p>
    #
    #   @return [String]
    #
    # @!attribute session_attributes
    #   <p>Map of key/value pairs representing the session-specific context
    #         information. It contains application information passed between Amazon Lex and
    #         a client application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute dialog_action
    #   <p>Sets the next action that the bot should take to fulfill the
    #         conversation.</p>
    #
    #   @return [DialogAction]
    #
    # @!attribute recent_intent_summary_view
    #   <p>A summary of the recent intents for the bot. You can use the intent
    #         summary view to set a checkpoint label on an intent and modify attributes
    #         of intents. You can also use it to remove or add intent summary objects to
    #         the list.</p>
    #            <p>An intent that you modify or add to the list must make sense for the
    #         bot. For example, the intent name must be valid for the bot. You must
    #         provide valid values for:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>intentName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>slot names</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>slotToElict</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you send the <code>recentIntentSummaryView</code> parameter in a
    #           <code>PutSession</code> request, the contents of the new summary view
    #         replaces the old summary view. For example, if a <code>GetSession</code>
    #         request returns three intents in the summary view and you call
    #           <code>PutSession</code> with one intent in the summary view, the next
    #         call to <code>GetSession</code> will only return one intent.</p>
    #
    #   @return [Array<IntentSummary>]
    #
    # @!attribute accept
    #   <p>The message that Amazon Lex returns in the response can be either text or
    #         speech based depending on the value of this field.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
    #             returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex returns speech
    #             in the response. Amazon Lex uses Amazon Polly to generate the speech in the
    #             configuration that you specify. For example, if you specify
    #               <code>audio/mpeg</code> as the value, Amazon Lex returns speech in the
    #             MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech is returned as
    #               <code>audio/pcm</code> in 16-bit, little endian format.</p>
    #               </li>
    #               <li>
    #                  <p>The following are the accepted values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>audio/mpeg</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/ogg</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/pcm</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/*</code> (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>text/plain; charset=utf-8</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    #
    #   @return [Array<ActiveContext>]
    #
    PutSessionInput = ::Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
      :dialog_action,
      :recent_intent_summary_view,
      :accept,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PutSessionInput "\
          "bot_name=#{bot_name || 'nil'}, "\
          "bot_alias=#{bot_alias || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "session_attributes=\"[SENSITIVE]\", "\
          "dialog_action=#{dialog_action || 'nil'}, "\
          "recent_intent_summary_view=#{recent_intent_summary_view || 'nil'}, "\
          "accept=#{accept || 'nil'}, "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # @!attribute content_type
    #   <p>Content type as specified in the <code>Accept</code> HTTP header in
    #         the request.</p>
    #
    #   @return [String]
    #
    # @!attribute intent_name
    #   <p>The name of the current intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>Map of zero or more intent slots Amazon Lex detected from the user input
    #         during the conversation.</p>
    #            <p>Amazon Lex creates a resolution list containing likely values for a slot.
    #         The value that it returns is determined by the
    #           <code>valueSelectionStrategy</code> selected when the slot type was
    #         created or updated. If <code>valueSelectionStrategy</code> is set to
    #           <code>ORIGINAL_VALUE</code>, the value provided by the user is returned,
    #         if the user value is similar to the slot values. If
    #           <code>valueSelectionStrategy</code> is set to
    #           <code>TOP_RESOLUTION</code> Amazon Lex returns the first value in the
    #         resolution list or, if there is no resolution list, null. If you don't
    #         specify a <code>valueSelectionStrategy</code> the default is
    #           <code>ORIGINAL_VALUE</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute session_attributes
    #   <p>Map of key/value pairs representing session-specific context
    #         information.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The next message that should be presented to the user.</p>
    #            <p>You can only use this field in the de-DE, en-AU, en-GB, en-US, es-419,
    #         es-ES, es-US, fr-CA, fr-FR, and it-IT locales. In all other locales, the
    #           <code>message</code> field is null. You should use the
    #           <code>encodedMessage</code> field instead.</p>
    #
    #   @deprecated
    #     The message field is deprecated, use the encodedMessage field instead. The message field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales.
    #
    #   @return [String]
    #
    # @!attribute encoded_message
    #   <p>The next message that should be presented to the user.</p>
    #            <p>The <code>encodedMessage</code> field is base-64 encoded. You must
    #         decode the field before you can use the value.</p>
    #
    #   @return [String]
    #
    # @!attribute message_format
    #   <p>The format of the response message. One of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlainText</code> - The message contains plain UTF-8
    #             text.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CustomPayload</code> - The message is a custom format for
    #             the client.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSML</code> - The message contains text formatted for voice
    #             output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Composite</code> - The message contains an escaped JSON
    #             object containing one or more messages from the groups that messages
    #             were assigned to when the intent was created.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PlainText", "CustomPayload", "SSML", "Composite"]
    #
    #   @return [String]
    #
    # @!attribute dialog_state
    #   <p></p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfirmIntent</code> - Amazon Lex is expecting a "yes" or "no"
    #             response to confirm the intent before fulfilling an intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitIntent</code> - Amazon Lex wants to elicit the user's
    #             intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitSlot</code> - Amazon Lex is expecting the value of a slot
    #             for the current intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - Conveys that the conversation with the user
    #             has failed. This can happen for various reasons, including the user
    #             does not provide an appropriate response to prompts from the service,
    #             or if the Lambda function fails to fulfill the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fulfilled</code> - Conveys that the Lambda function has
    #             sucessfully fulfilled the intent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadyForFulfillment</code> - Conveys that the client has to
    #             fulfill the intent.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute slot_to_elicit
    #   <p>If the <code>dialogState</code> is <code>ElicitSlot</code>, returns
    #         the name of the slot for which Amazon Lex is eliciting a value.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_stream
    #   <p>The audio version of the message to convey to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>A unique identifier for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute active_contexts
    #   <p>A list of active contexts for the session.</p>
    #
    #   @return [String]
    #
    PutSessionOutput = ::Struct.new(
      :content_type,
      :intent_name,
      :slots,
      :session_attributes,
      :message,
      :encoded_message,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :audio_stream,
      :session_id,
      :active_contexts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeService::Types::PutSessionOutput "\
          "content_type=#{content_type || 'nil'}, "\
          "intent_name=#{intent_name || 'nil'}, "\
          "slots=#{slots || 'nil'}, "\
          "session_attributes=#{session_attributes || 'nil'}, "\
          "message=\"[SENSITIVE]\", "\
          "encoded_message=\"[SENSITIVE]\", "\
          "message_format=#{message_format || 'nil'}, "\
          "dialog_state=#{dialog_state || 'nil'}, "\
          "slot_to_elicit=#{slot_to_elicit || 'nil'}, "\
          "audio_stream=#{audio_stream || 'nil'}, "\
          "session_id=#{session_id || 'nil'}, "\
          "active_contexts=\"[SENSITIVE]\">"
      end
    end

    # <p>The input speech is too long.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If you configure a response card when creating your bots, Amazon Lex
    #       substitutes the session attributes and slot values that are available, and
    #       then returns it. The response card can also come from a Lambda function (
    #         <code>dialogCodeHook</code> and <code>fulfillmentActivity</code> on an
    #       intent).</p>
    #
    # @!attribute version
    #   <p>The version of the response card format.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type of the response.</p>
    #
    #   Enum, one of: ["application/vnd.amazonaws.card.generic"]
    #
    #   @return [String]
    #
    # @!attribute generic_attachments
    #   <p>An array of attachment objects representing options.</p>
    #
    #   @return [Array<GenericAttachment>]
    #
    ResponseCard = ::Struct.new(
      :version,
      :content_type,
      :generic_attachments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The sentiment expressed in an utterance.</p>
    #          <p>When the bot is configured to send utterances to Amazon Comprehend for
    #       sentiment analysis, this field structure contains the result of the
    #       analysis.</p>
    #
    # @!attribute sentiment_label
    #   <p>The inferred sentiment that Amazon Comprehend has the highest
    #         confidence in.</p>
    #
    #   @return [String]
    #
    # @!attribute sentiment_score
    #   <p>The likelihood that the sentiment was correctly inferred.</p>
    #
    #   @return [String]
    #
    SentimentResponse = ::Struct.new(
      :sentiment_label,
      :sentiment_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Content-Type header (<code>PostContent</code> API) has an invalid
    #       value. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedMediaTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end