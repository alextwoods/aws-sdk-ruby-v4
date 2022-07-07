# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  module Types

    # <p></p>
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

    # <p>Contains information about the contexts that a user is using in a
    #          session. You can configure Amazon Lex V2 to set a context when an intent is
    #          fulfilled, or you can set a context using the , , or  operations.</p>
    #          <p>Use a context to indicate to Amazon Lex V2 intents that should be used as
    #          follow-up intents. For example, if the active context is
    #             <code>order-fulfilled</code>, only intents that have
    #             <code>order-fulfilled</code> configured as a trigger are considered
    #          for follow up.</p>
    #
    # @!attribute name
    #   <p>The name of the context.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live
    #   <p>Indicates the number of turns or seconds that the context is active.
    #            Once the time to live expires, the context is no longer returned in a
    #            response.</p>
    #
    #   @return [ActiveContextTimeToLive]
    #
    # @!attribute context_attributes
    #   <p>A list of contexts active for the request. A context can be
    #            activated when a previous intent is fulfilled, or by including the
    #            context in the request.</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex V2 will use the current
    #            list of contexts for the session. If you specify an empty list, all
    #            contexts for the session are cleared. </p>
    #
    #   @return [Hash<String, String>]
    #
    ActiveContext = ::Struct.new(
      :name,
      :time_to_live,
      :context_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The time that a context is active. You can specify the time to live
    #          in seconds or in conversation turns.</p>
    #
    # @!attribute time_to_live_in_seconds
    #   <p>The number of seconds that the context is active. You can specify
    #            between 5 and 86400 seconds (24 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute turns_to_live
    #   <p>The number of turns that the context is active. You can specify up
    #            to 20 turns. Each request and response from the bot is a turn.</p>
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

    # <p>Represents a chunk of audio sent from the client application to
    #          Amazon Lex V2. The audio is all or part of an utterance from the user.</p>
    #          <p>Amazon Lex V2 accumulates audio chunks until it recognizes a natural pause
    #          in speech before processing the input.</p>
    #
    # @!attribute audio_chunk
    #   <p>An encoded stream of audio.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The encoding used for the audio chunk. You must use 8 KHz PCM 16-bit
    #            mono-channel little-endian format. The value of the field should
    #            be:</p>
    #            <p>
    #               <code>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #               channel-count=1; is-big-endian=false</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier that your application assigns to the event. You
    #            can use this to identify events in logs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_timestamp_millis
    #   <p>A timestamp set by the client of the date and time that the event
    #            was sent to Amazon Lex V2.</p>
    #
    #   @return [Integer]
    #
    AudioInputEvent = ::Struct.new(
      :audio_chunk,
      :content_type,
      :event_id,
      :client_timestamp_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.client_timestamp_millis ||= 0
      end

    end

    # <p>An event sent from Amazon Lex V2 to your client application containing audio
    #          to play to the user. </p>
    #
    # @!attribute audio_chunk
    #   <p>A chunk of the audio to play. </p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The encoding of the audio chunk. This is the same as the encoding
    #            configure in the <code>contentType</code> field of the
    #               <code>ConfigurationEvent</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
    #            the form <code>RESPONSE-N</code>, where N is a number starting with one
    #            and incremented for each event sent by Amazon Lex V2 in the current
    #            session.</p>
    #
    #   @return [String]
    #
    AudioResponseEvent = ::Struct.new(
      :audio_chunk,
      :content_type,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>A button that appears on a response card show to the user.</p>
    #
    # @!attribute text
    #   <p>The text that is displayed on the button.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value returned to Amazon Lex V2 when a user chooses the button.</p>
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

    # <p>Provides a score that indicates the confidence that Amazon Lex V2 has that
    #          an intent is the one that satisfies the user's intent.</p>
    #
    # @!attribute score
    #   <p>A score that indicates how confident Amazon Lex V2 is that an intent
    #            satisfies the user's intent. Ranges between 0.00 and 1.00. Higher
    #            scores indicate higher confidence.</p>
    #
    #   @return [Float]
    #
    ConfidenceScore = ::Struct.new(
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.score ||= 0
      end

    end

    # <p>The initial event sent from the application to Amazon Lex V2 to configure
    #          the conversation, including session and request attributes and the
    #          response content type.</p>
    #
    # @!attribute request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes for prefix
    #               <code>x-amz-lex:</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech based on the <code>responseContentType</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain;charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex V2 returns
    #                  speech in the response. Amazon Lex V2 uses Amazon Polly to generate the speech
    #                  using the configuration that you specified in the
    #                     <code>requestContentType</code> parameter. For example, if you
    #                  specify <code>audio/mpeg</code> as the value, Amazon Lex V2 returns
    #                  speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #                  audio/pcm in 16-bit, little-endian format.</p>
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
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute session_state
    #   <p>The state of the user's session with Amazon Lex V2.</p>
    #
    #   @return [SessionState]
    #
    # @!attribute welcome_messages
    #   <p>A list of messages to send to the user.</p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute disable_playback
    #   <p>Determines whether Amazon Lex V2 should send audio responses to the client
    #            application.
    #         </p>
    #            <p>Set this field to false when the client is operating in a playback
    #            mode where audio responses are played to the user. If the client isn't
    #            operating in playback mode, such as a text chat application, set this
    #            to true so that Amazon Lex V2 doesn't wait for the prompt to finish playing on
    #            the client.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute event_id
    #   <p>A unique identifier that your application assigns to the event. You
    #            can use this to identify events in logs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_timestamp_millis
    #   <p>A timestamp set by the client of the date and time that the event
    #            was sent to Amazon Lex V2.</p>
    #
    #   @return [Integer]
    #
    ConfigurationEvent = ::Struct.new(
      :request_attributes,
      :response_content_type,
      :session_state,
      :welcome_messages,
      :disable_playback,
      :event_id,
      :client_timestamp_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.disable_playback ||= false
        self.client_timestamp_millis ||= 0
      end

    end

    # Includes enum constants for ConfirmationState
    #
    module ConfirmationState
      # No documentation available.
      #
      CONFIRMED = "Confirmed"

      # No documentation available.
      #
      DENIED = "Denied"

      # No documentation available.
      #
      NONE = "None"
    end

    # <p></p>
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

    # Includes enum constants for ConversationMode
    #
    module ConversationMode
      # No documentation available.
      #
      AUDIO = "AUDIO"

      # No documentation available.
      #
      TEXT = "TEXT"
    end

    # <p>A DTMF character sent from the client application. DTMF characters
    #          are typically sent from a phone keypad to represent numbers. For
    #          example, you can have Amazon Lex V2 process a credit card number input from a
    #          phone.</p>
    #
    # @!attribute input_character
    #   <p>The DTMF character that the user pressed. The allowed characters are
    #            A - D, 0 - 9,   and *.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier that your application assigns to the event. You
    #            can use this to identify events in logs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_timestamp_millis
    #   <p>A timestamp set by the client of the date and time that the event
    #            was sent to Amazon Lex V2.</p>
    #
    #   @return [Integer]
    #
    DTMFInputEvent = ::Struct.new(
      :input_character,
      :event_id,
      :client_timestamp_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.client_timestamp_millis ||= 0
      end

      def to_s
        "#<struct AWS::SDK::LexRuntimeV2::Types::DTMFInputEvent "\
          "input_character=\"[SENSITIVE]\", "\
          "event_id=#{event_id || 'nil'}, "\
          "client_timestamp_millis=#{client_timestamp_millis || 'nil'}>"
      end
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier in use for the bot that contains the session
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session is in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session to delete.</p>
    #
    #   @return [String]
    #
    DeleteSessionInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contained the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier in use for the bot that contained the session
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session was used.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the deleted session.</p>
    #
    #   @return [String]
    #
    DeleteSessionOutput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>The next action that Amazon Lex V2 should take.</p>
    #
    # @!attribute type
    #   <p>The next action that the bot should take in its interaction with the
    #            user. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Close</code> - Indicates that there will not be a
    #                  response from the user. For example, the statement "Your order
    #                  has been placed" does not require a response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfirmIntent</code> - The next action is asking the
    #                  user if the intent is complete and ready to be fulfilled. This is
    #                  a yes/no question such as "Place the order?"</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delegate</code> - The next action is determined by
    #                  Amazon Lex V2.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ElicitSlot</code> - The next action is to elicit a slot
    #                  value from the user.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #
    #   @return [String]
    #
    # @!attribute slot_to_elicit
    #   <p>The name of the slot that should be elicited from the user.</p>
    #
    #   @return [String]
    #
    # @!attribute slot_elicitation_style
    #   <p>Configures the slot to use spell-by-letter or spell-by-word style.
    #            When you use a style on a slot, users can spell out their input to make
    #            it clear to your bot.</p>
    #            <ul>
    #               <li>
    #                  <p>Spell by letter - "b" "o" "b"</p>
    #               </li>
    #               <li>
    #                  <p>Spell by word - "b as in boy" "o as in oscar" "b as in
    #                  boy"</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/using-spelling.html">
    #               Using spelling to enter slot values </a>.</p>
    #
    #   Enum, one of: ["Default", "SpellByLetter", "SpellByWord"]
    #
    #   @return [String]
    #
    DialogAction = ::Struct.new(
      :type,
      :slot_to_elicit,
      :slot_elicitation_style,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DialogActionType
    #
    module DialogActionType
      # No documentation available.
      #
      CLOSE = "Close"

      # No documentation available.
      #
      CONFIRM_INTENT = "ConfirmIntent"

      # No documentation available.
      #
      DELEGATE = "Delegate"

      # No documentation available.
      #
      ELICIT_INTENT = "ElicitIntent"

      # No documentation available.
      #
      ELICIT_SLOT = "ElicitSlot"

      # No documentation available.
      #
      NONE = "None"
    end

    # <p>A notification from the client that it is disconnecting from Amazon Lex V2.
    #          Sending a <code>DisconnectionEvent</code> event is optional, but can
    #          help identify a conversation in logs.</p>
    #
    # @!attribute event_id
    #   <p>A unique identifier that your application assigns to the event. You
    #            can use this to identify events in logs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_timestamp_millis
    #   <p>A timestamp set by the client of the date and time that the event
    #            was sent to Amazon Lex V2.</p>
    #
    #   @return [Integer]
    #
    DisconnectionEvent = ::Struct.new(
      :event_id,
      :client_timestamp_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.client_timestamp_millis ||= 0
      end

    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that contains the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier in use for the bot that contains the session
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session is in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session to return.</p>
    #
    #   @return [String]
    #
    GetSessionInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the returned session.</p>
    #
    #   @return [String]
    #
    # @!attribute messages
    #   <p>A list of messages that were last sent to the user. The messages are
    #            ordered based on the order that your returned the messages from your
    #            Lambda function or the order that messages are defined in the bot.
    #         </p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute interpretations
    #   <p>A list of intents that Amazon Lex V2 determined might satisfy the user's
    #            utterance. </p>
    #            <p>Each interpretation includes the intent, a score that indicates how
    #            confident Amazon Lex V2 is that the interpretation is the correct one, and an
    #            optional sentiment response that indicates the sentiment expressed in
    #            the utterance.</p>
    #
    #   @return [Array<Interpretation>]
    #
    # @!attribute session_state
    #   <p>Represents the current state of the dialog between the user and the
    #            bot.</p>
    #            <p>You can use this to determine the progress of the conversation and
    #            what the next action might be.</p>
    #
    #   @return [SessionState]
    #
    GetSessionOutput = ::Struct.new(
      :session_id,
      :messages,
      :interpretations,
      :session_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Event that Amazon Lex V2 sends to indicate that the stream is still open
    #          between the client application and Amazon Lex V2 </p>
    #
    # @!attribute event_id
    #   <p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
    #            the form <code>RESPONSE-N</code>, where N is a number starting with one
    #            and incremented for each event sent by Amazon Lex V2 in the current
    #            session.</p>
    #
    #   @return [String]
    #
    HeartbeatEvent = ::Struct.new(
      :event_id,
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

    # Includes enum constants for InputMode
    #
    module InputMode
      # No documentation available.
      #
      TEXT = "Text"

      # No documentation available.
      #
      SPEECH = "Speech"

      # No documentation available.
      #
      DTMF = "DTMF"
    end

    # <p>The current intent that Amazon Lex V2 is attempting to fulfill.</p>
    #
    # @!attribute name
    #   <p>The name of the intent.</p>
    #
    #   @return [String]
    #
    # @!attribute slots
    #   <p>A map of all of the slots for the intent. The name of the slot maps
    #            to the value of the slot. If a slot has not been filled, the value is
    #            null.</p>
    #
    #   @return [Hash<String, Slot>]
    #
    # @!attribute state
    #   <p>Contains fulfillment information for the intent. </p>
    #
    #   Enum, one of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #
    #   @return [String]
    #
    # @!attribute confirmation_state
    #   <p>Contains information about whether fulfillment of the intent has
    #            been confirmed.</p>
    #
    #   Enum, one of: ["Confirmed", "Denied", "None"]
    #
    #   @return [String]
    #
    Intent = ::Struct.new(
      :name,
      :slots,
      :state,
      :confirmation_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the current state of the conversation between the client
    #          application and Amazon Lex V2.</p>
    #
    # @!attribute input_mode
    #   <p>Indicates whether the input to the operation was text or
    #            speech.</p>
    #
    #   Enum, one of: ["Text", "Speech", "DTMF"]
    #
    #   @return [String]
    #
    # @!attribute interpretations
    #   <p>A list of intents that Amazon Lex V2 determined might satisfy the user's
    #            utterance.</p>
    #
    #            <p>Each interpretation includes the intent, a score that indicates how
    #            confident Amazon Lex V2 is that the interpretation is the correct one, and an
    #            optional sentiment response that indicates the sentiment expressed in
    #            the utterance.</p>
    #
    #   @return [Array<Interpretation>]
    #
    # @!attribute session_state
    #   <p>The state of the user's session with Amazon Lex V2.</p>
    #
    #   @return [SessionState]
    #
    # @!attribute request_attributes
    #   <p>The attributes sent in the request.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute session_id
    #   <p>The identifier of the session in use.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
    #            the form <code>RESPONSE-N</code>, where N is a number starting with one
    #            and incremented for each event sent by Amazon Lex V2 in the current
    #            session.</p>
    #
    #   @return [String]
    #
    IntentResultEvent = ::Struct.new(
      :input_mode,
      :interpretations,
      :session_state,
      :request_attributes,
      :session_id,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntentState
    #
    module IntentState
      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      FULFILLED = "Fulfilled"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      READY_FOR_FULFILLMENT = "ReadyForFulfillment"

      # No documentation available.
      #
      WAITING = "Waiting"

      # No documentation available.
      #
      FULFILLMENT_IN_PROGRESS = "FulfillmentInProgress"
    end

    # <p></p>
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

    # <p>An intent that Amazon Lex V2 determined might satisfy the user's utterance.
    #          The intents are ordered by the confidence score. </p>
    #
    # @!attribute nlu_confidence
    #   <p>Determines the threshold where Amazon Lex V2 will insert the
    #               <code>AMAZON.FallbackIntent</code>,
    #               <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #            alternative intents in a response. <code>AMAZON.FallbackIntent</code>
    #            and <code>AMAZON.KendraSearchIntent</code> are only inserted if they
    #            are configured for the bot.</p>
    #
    #   @return [ConfidenceScore]
    #
    # @!attribute sentiment_response
    #   <p>The sentiment expressed in an utterance. </p>
    #            <p>When the bot is configured to send utterances to Amazon Comprehend
    #            for sentiment analysis, this field contains the result of the
    #            analysis.</p>
    #
    #   @return [SentimentResponse]
    #
    # @!attribute intent
    #   <p>A list of intents that might satisfy the user's utterance. The
    #            intents are ordered by the confidence score.</p>
    #
    #   @return [Intent]
    #
    Interpretation = ::Struct.new(
      :nlu_confidence,
      :sentiment_response,
      :intent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for text that is returned to the customer..</p>
    #
    # @!attribute content
    #   <p>The text of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>Indicates the type of response.</p>
    #
    #   Enum, one of: ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
    #
    #   @return [String]
    #
    # @!attribute image_response_card
    #   <p>A card that is shown to the user by a messaging platform. You define
    #            the contents of the card, the card is displayed by the platform. </p>
    #            <p>When you use a response card, the response from the user is
    #            constrained to the text associated with a button on the card.</p>
    #
    #   @return [ImageResponseCard]
    #
    Message = ::Struct.new(
      :content,
      :content_type,
      :image_response_card,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeV2::Types::Message "\
          "content=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}, "\
          "image_response_card=#{image_response_card || 'nil'}>"
      end
    end

    # Includes enum constants for MessageContentType
    #
    module MessageContentType
      # No documentation available.
      #
      CUSTOM_PAYLOAD = "CustomPayload"

      # No documentation available.
      #
      IMAGE_RESPONSE_CARD = "ImageResponseCard"

      # No documentation available.
      #
      PLAIN_TEXT = "PlainText"

      # No documentation available.
      #
      SSML = "SSML"
    end

    # <p>Event sent from the client application to Amazon Lex V2 to indicate that
    #          playback of audio is complete and that Amazon Lex V2 should start processing
    #          the user's input.</p>
    #
    # @!attribute event_id
    #   <p>A unique identifier that your application assigns to the event. You
    #            can use this to identify events in logs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_timestamp_millis
    #   <p>A timestamp set by the client of the date and time that the event
    #            was sent to Amazon Lex V2.</p>
    #
    #   @return [Integer]
    #
    PlaybackCompletionEvent = ::Struct.new(
      :event_id,
      :client_timestamp_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.client_timestamp_millis ||= 0
      end

    end

    # <p>Event sent from Amazon Lex V2 to indicate to the client application should
    #          stop playback of audio. For example, if the client is playing a prompt
    #          that asks for the user's telephone number, the user might start to say
    #          the phone number before the prompt is complete. Amazon Lex V2 sends this event
    #          to the client application to indicate that the user is responding and
    #          that Amazon Lex V2 is processing their input.</p>
    #
    # @!attribute event_reason
    #   <p>Indicates the type of user input that Amazon Lex V2 detected.</p>
    #
    #   Enum, one of: ["DTMF_START_DETECTED", "TEXT_DETECTED", "VOICE_START_DETECTED"]
    #
    #   @return [String]
    #
    # @!attribute caused_by_event_id
    #   <p>The identifier of the event that contained the audio, DTMF, or text
    #            that caused the interruption.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
    #            the form <code>RESPONSE-N</code>, where N is a number starting with one
    #            and incremented for each event sent by Amazon Lex V2 in the current
    #            session.</p>
    #
    #   @return [String]
    #
    PlaybackInterruptionEvent = ::Struct.new(
      :event_reason,
      :caused_by_event_id,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlaybackInterruptionReason
    #
    module PlaybackInterruptionReason
      # No documentation available.
      #
      DTMF_START_DETECTED = "DTMF_START_DETECTED"

      # No documentation available.
      #
      TEXT_DETECTED = "TEXT_DETECTED"

      # No documentation available.
      #
      VOICE_START_DETECTED = "VOICE_START_DETECTED"
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that receives the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier of the bot that receives the session
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session is in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session that receives the session data.</p>
    #
    #   @return [String]
    #
    # @!attribute messages
    #   <p>A list of messages to send to the user. Messages are sent in the
    #            order that they are defined in the list.</p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute session_state
    #   <p>Sets the state of the session with the user. You can use this to set
    #            the current intent, attributes, context, and dialog action. Use the
    #            dialog action to determine the next step that Amazon Lex V2 should use in the
    #            conversation with the user.</p>
    #
    #   @return [SessionState]
    #
    # @!attribute request_attributes
    #   <p>Request-specific information passed between Amazon Lex V2 and the client
    #            application.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes with the prefix
    #               <code>x-amz-lex:</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech depending on the value of this parameter. </p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    PutSessionInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :messages,
      :session_state,
      :request_attributes,
      :response_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_type
    #   <p>The type of response. Same as the type specified in the
    #               <code>responseContentType</code> field in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute messages
    #   <p>A list of messages that were last sent to the user. The messages are
    #            ordered based on how you return the messages from you Lambda function
    #            or the order that the messages are defined in the bot.</p>
    #
    #   @return [String]
    #
    # @!attribute session_state
    #   <p>Represents the current state of the dialog between the user and the
    #            bot.</p>
    #            <p>Use this to determine the progress of the conversation and what the
    #            next action may be.</p>
    #
    #   @return [String]
    #
    # @!attribute request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2. These are the same as the <code>requestAttribute</code>
    #            parameter in the call to the <code>PutSession</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session that received the data.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_stream
    #   <p>If the requested content type was audio, the audio version of the
    #            message to convey to the user.</p>
    #
    #   @return [String]
    #
    PutSessionOutput = ::Struct.new(
      :content_type,
      :messages,
      :session_state,
      :request_attributes,
      :session_id,
      :audio_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that processes the request.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier in use for the bot that processes the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session is in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the user session that is having the
    #            conversation.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The text that the user entered. Amazon Lex V2 interprets this text.</p>
    #
    #   @return [String]
    #
    # @!attribute session_state
    #   <p>The current state of the dialog between the user and the bot.</p>
    #
    #   @return [SessionState]
    #
    # @!attribute request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2 </p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes with the prefix
    #               <code>x-amz-lex:</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    RecognizeTextInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :text,
      :session_state,
      :request_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeV2::Types::RecognizeTextInput "\
          "bot_id=#{bot_id || 'nil'}, "\
          "bot_alias_id=#{bot_alias_id || 'nil'}, "\
          "locale_id=#{locale_id || 'nil'}, "\
          "session_id=#{session_id || 'nil'}, "\
          "text=\"[SENSITIVE]\", "\
          "session_state=#{session_state || 'nil'}, "\
          "request_attributes=#{request_attributes || 'nil'}>"
      end
    end

    # @!attribute messages
    #   <p>A list of messages last sent to the user. The messages are ordered
    #            based on the order that you returned the messages from your Lambda
    #            function or the order that the messages are defined in the bot.</p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute session_state
    #   <p>Represents the current state of the dialog between the user and the
    #            bot. </p>
    #            <p>Use this to determine the progress of the conversation and what the
    #            next action may be.</p>
    #
    #   @return [SessionState]
    #
    # @!attribute interpretations
    #   <p>A list of intents that Amazon Lex V2 determined might satisfy the user's
    #            utterance. </p>
    #            <p>Each interpretation includes the intent, a score that indicates now
    #            confident Amazon Lex V2 is that the interpretation is the correct one, and an
    #            optional sentiment response that indicates the sentiment expressed in
    #            the utterance.</p>
    #
    #   @return [Array<Interpretation>]
    #
    # @!attribute request_attributes
    #   <p>The attributes sent in the request.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute session_id
    #   <p>The identifier of the session in use.</p>
    #
    #   @return [String]
    #
    RecognizeTextOutput = ::Struct.new(
      :messages,
      :session_state,
      :interpretations,
      :request_attributes,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot that should receive the request.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier in use for the bot that should receive the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session is in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_state
    #   <p>Sets the state of the session with the user. You can use this to set
    #            the current intent, attributes, context, and dialog action. Use the
    #            dialog action to determine the next step that Amazon Lex V2 should use in the
    #            conversation with the user.</p>
    #            <p>The <code>sessionState</code> field must be compressed using gzip
    #            and then base64 encoded before sending to Amazon Lex V2.</p>
    #
    #   @return [String]
    #
    # @!attribute request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2 </p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes for prefix
    #               <code>x-amz-lex:</code>.</p>
    #            <p>The <code>requestAttributes</code> field must be compressed using
    #            gzip and then base64 encoded before sending to Amazon Lex V2.</p>
    #
    #   @return [String]
    #
    # @!attribute request_content_type
    #   <p>Indicates the format for audio input or that the content is text.
    #            The header must start with one of the following prefixes:</p>
    #            <ul>
    #               <li>
    #                  <p>PCM format, audio data must be in little-endian byte
    #                  order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/l16; rate=16000; channels=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #                        channel-count=1; is-big-endian=false</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4</p>
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
    # @!attribute response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech based on the <code>responseContentType</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain;charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex V2 returns
    #                  speech in the response. Amazon Lex V2 uses Amazon Polly to generate the speech
    #                  using the configuration that you specified in the
    #                     <code>requestContentType</code> parameter. For example, if you
    #                  specify <code>audio/mpeg</code> as the value, Amazon Lex V2 returns
    #                  speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #                     <code>audio/pcm</code> at 16 KHz in 16-bit, little-endian
    #                  format.</p>
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
    #                        <p>audio/pcm (16 KHz)</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute input_stream
    #   <p>User input in PCM or Opus audio format or text format as described
    #            in the <code>requestContentType</code> parameter.</p>
    #
    #   @return [String]
    #
    RecognizeUtteranceInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :session_state,
      :request_attributes,
      :request_content_type,
      :response_content_type,
      :input_stream,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LexRuntimeV2::Types::RecognizeUtteranceInput "\
          "bot_id=#{bot_id || 'nil'}, "\
          "bot_alias_id=#{bot_alias_id || 'nil'}, "\
          "locale_id=#{locale_id || 'nil'}, "\
          "session_id=#{session_id || 'nil'}, "\
          "session_state=\"[SENSITIVE]\", "\
          "request_attributes=\"[SENSITIVE]\", "\
          "request_content_type=#{request_content_type || 'nil'}, "\
          "response_content_type=#{response_content_type || 'nil'}, "\
          "input_stream=#{input_stream || 'nil'}>"
      end
    end

    # @!attribute input_mode
    #   <p>Indicates whether the input mode to the operation was text or
    #            speech.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>Content type as specified in the <code>responseContentType</code> in
    #            the request.</p>
    #
    #   @return [String]
    #
    # @!attribute messages
    #   <p>A list of messages that were last sent to the user. The messages are
    #            ordered based on the order that you returned the messages from your
    #            Lambda function or the order that the messages are defined in the
    #            bot.</p>
    #            <p>The <code>messages</code> field is compressed with gzip and then
    #            base64 encoded. Before you can use the contents of the field, you must
    #            decode and decompress the contents. See the example for a simple
    #            function to decode and decompress the contents.</p>
    #
    #   @return [String]
    #
    # @!attribute interpretations
    #   <p>A list of intents that Amazon Lex V2 determined might satisfy the user's
    #            utterance.</p>
    #            <p>Each interpretation includes the intent, a score that indicates how
    #            confident Amazon Lex V2 is that the interpretation is the correct one, and an
    #            optional sentiment response that indicates the sentiment expressed in
    #            the utterance.</p>
    #            <p>The <code>interpretations</code> field is compressed with gzip and
    #            then base64 encoded. Before you can use the contents of the field, you
    #            must decode and decompress the contents. See the example for a simple
    #            function to decode and decompress the contents.</p>
    #
    #   @return [String]
    #
    # @!attribute session_state
    #   <p>Represents the current state of the dialog between the user and the
    #            bot.</p>
    #            <p>Use this to determine the progress of the conversation and what the
    #            next action might be.</p>
    #            <p>The <code>sessionState</code> field is compressed with gzip and then
    #            base64 encoded. Before you can use the contents of the field, you must
    #            decode and decompress the contents. See the example for a simple
    #            function to decode and decompress the contents.</p>
    #
    #   @return [String]
    #
    # @!attribute request_attributes
    #   <p>The attributes sent in the request.</p>
    #            <p>The <code>requestAttributes</code> field is compressed with gzip and
    #            then base64 encoded. Before you can use the contents of the field, you
    #            must decode and decompress the contents.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session in use.</p>
    #
    #   @return [String]
    #
    # @!attribute input_transcript
    #   <p>The text used to process the request.</p>
    #            <p>If the input was an audio stream, the <code>inputTranscript</code>
    #            field contains the text extracted from the audio stream. This is the
    #            text that is actually processed to recognize intents and slot values.
    #            You can use this information to determine if Amazon Lex V2 is correctly
    #            processing the audio that you send.</p>
    #            <p>The <code>inputTranscript</code> field is compressed with gzip and
    #            then base64 encoded. Before you can use the contents of the field, you
    #            must decode and decompress the contents. See the example for a simple
    #            function to decode and decompress the contents.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_stream
    #   <p>The prompt or statement to send to the user. This is based on the
    #            bot configuration and context. For example, if Amazon Lex V2 did not understand
    #            the user intent, it sends the <code>clarificationPrompt</code>
    #            configured for the bot. If the intent requires confirmation before
    #            taking the fulfillment action, it sends the
    #               <code>confirmationPrompt</code>. Another example: Suppose that the
    #            Lambda function successfully fulfilled the intent, and sent a message
    #            to convey to the user. Then Amazon Lex V2 sends that message in the
    #            response.</p>
    #
    #   @return [String]
    #
    RecognizeUtteranceOutput = ::Struct.new(
      :input_mode,
      :content_type,
      :messages,
      :interpretations,
      :session_state,
      :request_attributes,
      :session_id,
      :input_transcript,
      :audio_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>Provides an array of phrases that should be given preference when
    #          resolving values for a slot.</p>
    #
    # @!attribute runtime_hint_values
    #   <p>One or more strings that Amazon Lex V2 should look for in the input to the
    #            bot. Each phrase is given preference when deciding on slot
    #            values.</p>
    #
    #   @return [Array<RuntimeHintValue>]
    #
    RuntimeHintDetails = ::Struct.new(
      :runtime_hint_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the phrase that Amazon Lex V2 should look for in the user's input
    #          to the bot.</p>
    #
    # @!attribute phrase
    #   <p>The phrase that Amazon Lex V2 should look for in the user's input to the
    #            bot.</p>
    #
    #   @return [String]
    #
    RuntimeHintValue = ::Struct.new(
      :phrase,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can provide Amazon Lex V2 with hints to the phrases that a customer is
    #          likely to use for a slot. When a slot with hints is resolved, the
    #          phrases in the runtime hints are preferred in the resolution. You can
    #          provide hints for a maximum of 100 intents. You can provide a maximum
    #          of 100 slots.</p>
    #          <p>Before you can use runtime hints with an existing bot, you must
    #          first rebuild the bot.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.xml">Using hints to improve
    #             accuracy</a>.</p>
    #
    # @!attribute slot_hints
    #   <p>A list of the slots in the intent that should have runtime hints
    #            added, and the phrases that should be added for each slot.</p>
    #            <p>The first level of the <code>slotHints</code> map is the name of the
    #            intent. The second level is the name of the slot within the intent. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.xml">Using hints to improve
    #               accuracy</a>.</p>
    #            <p>The intent name and slot name must exist.</p>
    #
    #   @return [Hash<String, Hash<String, RuntimeHintDetails>>]
    #
    RuntimeHints = ::Struct.new(
      :slot_hints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the sentiment expressed in a user's
    #          response in a conversation. Sentiments are determined using Amazon
    #          Comprehend. Sentiments are only returned if they are enabled for the
    #          bot.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-sentiment.html">
    #             Determine Sentiment </a> in the <i>Amazon Comprehend
    #             developer guide</i>.</p>
    #
    # @!attribute sentiment
    #   <p>The overall sentiment expressed in the user's response. This is the
    #            sentiment most likely expressed by the user based on the analysis by
    #            Amazon Comprehend.</p>
    #
    #   Enum, one of: ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"]
    #
    #   @return [String]
    #
    # @!attribute sentiment_score
    #   <p>The individual sentiment responses for the utterance.</p>
    #
    #   @return [SentimentScore]
    #
    SentimentResponse = ::Struct.new(
      :sentiment,
      :sentiment_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The individual sentiment responses for the utterance.</p>
    #
    # @!attribute positive
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy
    #            of its detection of the <code>POSITIVE</code> sentiment.</p>
    #
    #   @return [Float]
    #
    # @!attribute negative
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy
    #            of its detection of the <code>NEGATIVE</code> sentiment.</p>
    #
    #   @return [Float]
    #
    # @!attribute neutral
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy
    #            of its detection of the <code>NEUTRAL</code> sentiment.</p>
    #
    #   @return [Float]
    #
    # @!attribute mixed
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy
    #            of its detection of the <code>MIXED</code> sentiment.</p>
    #
    #   @return [Float]
    #
    SentimentScore = ::Struct.new(
      :positive,
      :negative,
      :neutral,
      :mixed,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.positive ||= 0
        self.negative ||= 0
        self.neutral ||= 0
        self.mixed ||= 0
      end

    end

    # Includes enum constants for SentimentType
    #
    module SentimentType
      # No documentation available.
      #
      MIXED = "MIXED"

      # No documentation available.
      #
      NEGATIVE = "NEGATIVE"

      # No documentation available.
      #
      NEUTRAL = "NEUTRAL"

      # No documentation available.
      #
      POSITIVE = "POSITIVE"
    end

    # <p>The state of the user's session with Amazon Lex V2.</p>
    #
    # @!attribute dialog_action
    #   <p>The next step that Amazon Lex V2 should take in the conversation with a
    #            user.</p>
    #
    #   @return [DialogAction]
    #
    # @!attribute intent
    #   <p>The active intent that Amazon Lex V2 is processing.</p>
    #
    #   @return [Intent]
    #
    # @!attribute active_contexts
    #   <p>One or more contexts that indicate to Amazon Lex V2 the context of a
    #            request. When a context is active, Amazon Lex V2 considers intents with the
    #            matching context as a trigger as the next intent in a session.</p>
    #
    #   @return [Array<ActiveContext>]
    #
    # @!attribute session_attributes
    #   <p>Map of key/value pairs representing session-specific context
    #            information. It contains application information passed between Amazon Lex V2
    #            and a client application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute originating_request_id
    #   <p>A unique identifier for a specific request.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_hints
    #   <p>Hints for phrases that a customer is likely to use
    #         for a slot. Amazon Lex V2 uses the hints to help determine the correct
    #         value of a slot.</p>
    #
    #   @return [RuntimeHints]
    #
    SessionState = ::Struct.new(
      :dialog_action,
      :intent,
      :active_contexts,
      :session_attributes,
      :originating_request_id,
      :runtime_hints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Shape
    #
    module Shape
      # No documentation available.
      #
      SCALAR = "Scalar"

      # No documentation available.
      #
      LIST = "List"
    end

    # <p>A value that Amazon Lex V2 uses to fulfill an intent. </p>
    #
    # @!attribute value
    #   <p>The current value of the slot.</p>
    #
    #   @return [Value]
    #
    # @!attribute shape
    #   <p>When the <code>shape</code> value is <code>List</code>, it indicates
    #            that the <code>values</code> field contains a list of slot values. When
    #            the value is <code>Scalar</code>, it indicates that the
    #               <code>value</code> field contains a single value.</p>
    #
    #   Enum, one of: ["Scalar", "List"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of one or more values that the user provided for the slot.
    #            For example, if a for a slot that elicits pizza toppings, the values
    #            might be "pepperoni" and "pineapple." </p>
    #
    #   @return [Array<Slot>]
    #
    Slot = ::Struct.new(
      :value,
      :shape,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot_id
    #   <p>The identifier of the bot to process the request.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_alias_id
    #   <p>The alias identifier in use for the bot that processes the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_id
    #   <p>The locale where the session is in use.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the user session that is having the
    #            conversation.</p>
    #
    #   @return [String]
    #
    # @!attribute conversation_mode
    #   <p>The conversation type that you are using the Amazon Lex V2. If the
    #            conversation mode is <code>AUDIO</code> you can send both audio and
    #            DTMF information. If the mode is <code>TEXT</code> you can only send
    #            text.</p>
    #
    #   Enum, one of: ["AUDIO", "TEXT"]
    #
    #   @return [String]
    #
    # @!attribute request_event_stream
    #   <p>Represents the stream of events to Amazon Lex V2 from your application. The
    #            events are encoded as HTTP/2 data frames.</p>
    #
    #   @return [StartConversationRequestEventStream]
    #
    StartConversationInput = ::Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :conversation_mode,
      :request_event_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_event_stream
    #   <p>Represents the stream of events from Amazon Lex V2 to your application. The
    #            events are encoded as HTTP/2 data frames.</p>
    #
    #   @return [StartConversationResponseEventStream]
    #
    StartConversationOutput = ::Struct.new(
      :response_event_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a stream of events between your application and
    #          Amazon Lex V2.</p>
    #
    class StartConversationRequestEventStream < Hearth::Union
      # <p>Configuration information sent from your client application to
      #          Amazon Lex V2</p>
      #
      class ConfigurationEvent < StartConversationRequestEventStream
        def to_h
          { configuration_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::ConfigurationEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Speech audio sent from your client application to Amazon Lex V2. Audio
      #          starts accumulating when Amazon Lex V2 identifies a voice and continues until a
      #          natural pause in the speech is found before processing.</p>
      #
      class AudioInputEvent < StartConversationRequestEventStream
        def to_h
          { audio_input_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::AudioInputEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>DTMF information sent to Amazon Lex V2 by your application. Amazon Lex V2
      #          accumulates the DMTF information from when the user sends the first
      #          character and ends</p>
      #          <ul>
      #             <li>
      #                <p>when there's a pause longer that the value configured for the
      #                end timeout.</p>
      #             </li>
      #             <li>
      #                <p>when there's a digit that is the configured end
      #                character.</p>
      #             </li>
      #             <li>
      #                <p>when Amazon Lex V2 accumulates characters equal to the maximum DTMF
      #                character configuration.</p>
      #             </li>
      #          </ul>
      #
      class DtmfInputEvent < StartConversationRequestEventStream
        def to_h
          { dtmf_input_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::DtmfInputEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Text sent from your client application to Amazon Lex V2. Each
      #             <code>TextInputEvent</code> is processed individually.</p>
      #
      class TextInputEvent < StartConversationRequestEventStream
        def to_h
          { text_input_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::TextInputEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Event sent from the client application to Amazon Lex V2 to indicate that it
      #          has finished playing audio and that Amazon Lex V2 should start listening for
      #          user input.</p>
      #
      class PlaybackCompletionEvent < StartConversationRequestEventStream
        def to_h
          { playback_completion_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::PlaybackCompletionEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Event sent from the client application to indicate to Amazon Lex V2 that the
      #          conversation is over.</p>
      #
      class DisconnectionEvent < StartConversationRequestEventStream
        def to_h
          { disconnection_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::DisconnectionEvent #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < StartConversationRequestEventStream
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Represents a stream of events between Amazon Lex V2 and your
    #          application.</p>
    #
    class StartConversationResponseEventStream < Hearth::Union
      # <p>Event sent from Amazon Lex V2 to indicate to the client application should
      #          stop playback of audio. For example, if the client is playing a prompt
      #          that asks for the user's telephone number, the user might start to say
      #          the phone number before the prompt is complete. Amazon Lex V2 sends this event
      #          to the client application to indicate that the user is responding and
      #          that Amazon Lex V2 is processing their input.</p>
      #
      class PlaybackInterruptionEvent < StartConversationResponseEventStream
        def to_h
          { playback_interruption_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::PlaybackInterruptionEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Event sent from Amazon Lex V2 to your client application that contains a
      #          transcript of voice audio. </p>
      #
      class TranscriptEvent < StartConversationResponseEventStream
        def to_h
          { transcript_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::TranscriptEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Event sent from Amazon Lex V2 to the client application containing the
      #          current state of the conversation between the user and Amazon Lex V2.</p>
      #
      class IntentResultEvent < StartConversationResponseEventStream
        def to_h
          { intent_result_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::IntentResultEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The event sent from Amazon Lex V2 to your application with text to present
      #          to the user.</p>
      #
      class TextResponseEvent < StartConversationResponseEventStream
        def to_h
          { text_response_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::TextResponseEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An event sent from Amazon Lex V2 to your client application containing audio
      #          to play to the user. </p>
      #
      class AudioResponseEvent < StartConversationResponseEventStream
        def to_h
          { audio_response_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::AudioResponseEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Event that Amazon Lex V2 sends to indicate that the stream is still open
      #          between the client application and Amazon Lex V2 </p>
      #
      class HeartbeatEvent < StartConversationResponseEventStream
        def to_h
          { heartbeat_event: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::HeartbeatEvent #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Exception thrown when the credentials passed with the request are
      #          invalid or expired. Also thrown when the credentials in the request do
      #          not have permission to access the <code>StartConversation</code>
      #          operation.</p>
      #
      class AccessDeniedException < StartConversationResponseEventStream
        def to_h
          { access_denied_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::AccessDeniedException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Exception thrown if one of the input parameters points to a resource
      #          that does not exist. For example, if the bot ID specified does not
      #          exist.</p>
      #
      class ResourceNotFoundException < StartConversationResponseEventStream
        def to_h
          { resource_not_found_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::ResourceNotFoundException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Exception thrown when one or more parameters could not be validated.
      #          The <code>message</code> contains the name of the field that isn't
      #          valid.</p>
      #
      class ValidationException < StartConversationResponseEventStream
        def to_h
          { validation_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::ValidationException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Exception thrown when your application exceeds the maximum number of
      #          concurrent requests. </p>
      #
      class ThrottlingException < StartConversationResponseEventStream
        def to_h
          { throttling_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::ThrottlingException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An error occurred with Amazon Lex V2.</p>
      #
      class InternalServerException < StartConversationResponseEventStream
        def to_h
          { internal_server_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::InternalServerException #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Exception thrown when two clients are using the same AWS account,
      #          Amazon Lex V2 bot, and session ID.</p>
      #
      class ConflictException < StartConversationResponseEventStream
        def to_h
          { conflict_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::ConflictException #{__getobj__ || 'nil'}>"
        end
      end

      # <p></p>
      #
      class DependencyFailedException < StartConversationResponseEventStream
        def to_h
          { dependency_failed_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::DependencyFailedException #{__getobj__ || 'nil'}>"
        end
      end

      # <p></p>
      #
      class BadGatewayException < StartConversationResponseEventStream
        def to_h
          { bad_gateway_exception: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::BadGatewayException #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < StartConversationResponseEventStream
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::LexRuntimeV2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for StyleType
    #
    module StyleType
      # No documentation available.
      #
      DEFAULT = "Default"

      # No documentation available.
      #
      SPELL_BY_LETTER = "SpellByLetter"

      # No documentation available.
      #
      SPELL_BY_WORD = "SpellByWord"
    end

    # <p>The event sent from your client application to Amazon Lex V2 with text input
    #          from the user.</p>
    #
    # @!attribute text
    #   <p>The text from the user. Amazon Lex V2 processes this as a complete
    #            statement.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier that your application assigns to the event. You
    #            can use this to identify events in logs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_timestamp_millis
    #   <p>A timestamp set by the client of the date and time that the event
    #            was sent to Amazon Lex V2.</p>
    #
    #   @return [Integer]
    #
    TextInputEvent = ::Struct.new(
      :text,
      :event_id,
      :client_timestamp_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.client_timestamp_millis ||= 0
      end

      def to_s
        "#<struct AWS::SDK::LexRuntimeV2::Types::TextInputEvent "\
          "text=\"[SENSITIVE]\", "\
          "event_id=#{event_id || 'nil'}, "\
          "client_timestamp_millis=#{client_timestamp_millis || 'nil'}>"
      end
    end

    # <p>The event sent from Amazon Lex V2 to your application with text to present
    #          to the user.</p>
    #
    # @!attribute messages
    #   <p>A list of messages to send to the user. Messages are ordered based
    #            on the order that you returned the messages from your Lambda function
    #            or the order that the messages are defined in the bot.</p>
    #
    #   @return [Array<Message>]
    #
    # @!attribute event_id
    #   <p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
    #            the form <code>RESPONSE-N</code>, where N is a number starting with one
    #            and incremented for each event sent by Amazon Lex V2 in the current
    #            session.</p>
    #
    #   @return [String]
    #
    TextResponseEvent = ::Struct.new(
      :messages,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Event sent from Amazon Lex V2 to your client application that contains a
    #          transcript of voice audio. </p>
    #
    # @!attribute transcript
    #   <p>The transcript of the voice audio from the user.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
    #            the form <code>RESPONSE-N</code>, where N is a number starting with one
    #            and incremented for each event sent by Amazon Lex V2 in the current
    #            session.</p>
    #
    #   @return [String]
    #
    TranscriptEvent = ::Struct.new(
      :transcript,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>The value of a slot.</p>
    #
    # @!attribute original_value
    #   <p>The text of the utterance from the user that was entered for the
    #            slot.</p>
    #
    #   @return [String]
    #
    # @!attribute interpreted_value
    #   <p>The value that Amazon Lex V2 determines for the slot. The actual value
    #            depends on the setting of the value selection strategy for the bot. You
    #            can choose to use the value entered by the user, or you can have Amazon Lex V2
    #            choose the first value in the <code>resolvedValues</code> list.</p>
    #
    #   @return [String]
    #
    # @!attribute resolved_values
    #   <p>A list of additional values that have been recognized for the
    #            slot.</p>
    #
    #   @return [Array<String>]
    #
    Value = ::Struct.new(
      :original_value,
      :interpreted_value,
      :resolved_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end