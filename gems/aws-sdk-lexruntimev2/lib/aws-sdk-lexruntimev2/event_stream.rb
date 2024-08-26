# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  module EventStream

    # EventStreamHandler for the the {Client#start_conversation} operation.
    # Register event handlers using the `#on_<event_name>` methods
    # and set the handler using the `event_stream_handler` option
    # on the {Client#start_conversation} method.
    # @example Basic Usage
    #   handler = StartConversation.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.start_conversation(params, event_stream_handler: handler)
    class StartConversationHandler < Hearth::EventStream::HandlerBase
      # Register an event handler for the initial response.
      # @yield [event] Called when the initial response is received.
      # @yieldparam event [Types::StartConversationOutput] the initial response
      # @example Event structure
      #   event #=> Types::StartConversationOutput
      def on_initial_response(&block)
        on(Types::StartConversationOutput, block)
      end

      # Register an event handler for playback_interruption_event events
      # @yield [event] Called when playback_interruption_event events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::PlaybackInterruptionEvent] the event.
      # @example Event structure
      #   event #=> Types::PlaybackInterruptionEvent
      #   event.event_reason #=> String, one of ["DTMF_START_DETECTED", "TEXT_DETECTED", "VOICE_START_DETECTED"]
      #   event.caused_by_event_id #=> String
      #   event.event_id #=> String
      def on_playback_interruption_event(&block)
        on(Types::StartConversationResponseEventStream::PlaybackInterruptionEvent, block)
      end

      # Register an event handler for transcript_event events
      # @yield [event] Called when transcript_event events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::TranscriptEvent] the event.
      # @example Event structure
      #   event #=> Types::TranscriptEvent
      #   event.transcript #=> String
      #   event.event_id #=> String
      def on_transcript_event(&block)
        on(Types::StartConversationResponseEventStream::TranscriptEvent, block)
      end

      # Register an event handler for intent_result_event events
      # @yield [event] Called when intent_result_event events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::IntentResultEvent] the event.
      # @example Event structure
      #   event #=> Types::IntentResultEvent
      #   event.input_mode #=> String, one of ["Text", "Speech", "DTMF"]
      #   event.interpretations #=> Array<Interpretation>
      #   event.interpretations[0] #=> Types::Interpretation
      #   event.interpretations[0].nlu_confidence #=> Types::ConfidenceScore
      #   event.interpretations[0].nlu_confidence.score #=> Float
      #   event.interpretations[0].sentiment_response #=> Types::SentimentResponse
      #   event.interpretations[0].sentiment_response.sentiment #=> String, one of ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"]
      #   event.interpretations[0].sentiment_response.sentiment_score #=> Types::SentimentScore
      #   event.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
      #   event.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
      #   event.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
      #   event.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
      #   event.interpretations[0].intent #=> Types::Intent
      #   event.interpretations[0].intent.name #=> String
      #   event.interpretations[0].intent.slots #=> Hash<String, Slot>
      #   event.interpretations[0].intent.slots['key'] #=> Types::Slot
      #   event.interpretations[0].intent.slots['key'].value #=> Types::Value
      #   event.interpretations[0].intent.slots['key'].value.original_value #=> String
      #   event.interpretations[0].intent.slots['key'].value.interpreted_value #=> String
      #   event.interpretations[0].intent.slots['key'].value.resolved_values #=> Array<String>
      #   event.interpretations[0].intent.slots['key'].value.resolved_values[0] #=> String
      #   event.interpretations[0].intent.slots['key'].shape #=> String, one of ["Scalar", "List", "Composite"]
      #   event.interpretations[0].intent.slots['key'].values #=> Array<Slot>
      #   event.interpretations[0].intent.slots['key'].sub_slots #=> Hash<String, Slot>
      #   event.interpretations[0].intent.state #=> String, one of ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
      #   event.interpretations[0].intent.confirmation_state #=> String, one of ["Confirmed", "Denied", "None"]
      #   event.interpretations[0].interpretation_source #=> String, one of ["Bedrock", "Lex"]
      #   event.session_state #=> Types::SessionState
      #   event.session_state.dialog_action #=> Types::DialogAction
      #   event.session_state.dialog_action.type #=> String, one of ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
      #   event.session_state.dialog_action.slot_to_elicit #=> String
      #   event.session_state.dialog_action.slot_elicitation_style #=> String, one of ["Default", "SpellByLetter", "SpellByWord"]
      #   event.session_state.dialog_action.sub_slot_to_elicit #=> Types::ElicitSubSlot
      #   event.session_state.dialog_action.sub_slot_to_elicit.name #=> String
      #   event.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
      #   event.session_state.intent #=> Types::Intent
      #   event.session_state.active_contexts #=> Array<ActiveContext>
      #   event.session_state.active_contexts[0] #=> Types::ActiveContext
      #   event.session_state.active_contexts[0].name #=> String
      #   event.session_state.active_contexts[0].time_to_live #=> Types::ActiveContextTimeToLive
      #   event.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
      #   event.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
      #   event.session_state.active_contexts[0].context_attributes #=> Hash<String, String>
      #   event.session_state.active_contexts[0].context_attributes['key'] #=> String
      #   event.session_state.session_attributes #=> Hash<String, String>
      #   event.session_state.session_attributes['key'] #=> String
      #   event.session_state.originating_request_id #=> String
      #   event.session_state.runtime_hints #=> Types::RuntimeHints
      #   event.session_state.runtime_hints.slot_hints #=> Hash<String, Hash<String, RuntimeHintDetails>>
      #   event.session_state.runtime_hints.slot_hints['key'] #=> Hash<String, RuntimeHintDetails>
      #   event.session_state.runtime_hints.slot_hints['key']['key'] #=> Types::RuntimeHintDetails
      #   event.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values #=> Array<RuntimeHintValue>
      #   event.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0] #=> Types::RuntimeHintValue
      #   event.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0].phrase #=> String
      #   event.session_state.runtime_hints.slot_hints['key']['key'].sub_slot_hints #=> Hash<String, RuntimeHintDetails>
      #   event.request_attributes #=> Hash<String, String>
      #   event.session_id #=> String
      #   event.event_id #=> String
      #   event.recognized_bot_member #=> Types::RecognizedBotMember
      #   event.recognized_bot_member.bot_id #=> String
      #   event.recognized_bot_member.bot_name #=> String
      def on_intent_result_event(&block)
        on(Types::StartConversationResponseEventStream::IntentResultEvent, block)
      end

      # Register an event handler for text_response_event events
      # @yield [event] Called when text_response_event events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::TextResponseEvent] the event.
      # @example Event structure
      #   event #=> Types::TextResponseEvent
      #   event.messages #=> Array<Message>
      #   event.messages[0] #=> Types::Message
      #   event.messages[0].content #=> String
      #   event.messages[0].content_type #=> String, one of ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
      #   event.messages[0].image_response_card #=> Types::ImageResponseCard
      #   event.messages[0].image_response_card.title #=> String
      #   event.messages[0].image_response_card.subtitle #=> String
      #   event.messages[0].image_response_card.image_url #=> String
      #   event.messages[0].image_response_card.buttons #=> Array<Button>
      #   event.messages[0].image_response_card.buttons[0] #=> Types::Button
      #   event.messages[0].image_response_card.buttons[0].text #=> String
      #   event.messages[0].image_response_card.buttons[0].value #=> String
      #   event.event_id #=> String
      def on_text_response_event(&block)
        on(Types::StartConversationResponseEventStream::TextResponseEvent, block)
      end

      # Register an event handler for audio_response_event events
      # @yield [event] Called when audio_response_event events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::AudioResponseEvent] the event.
      # @example Event structure
      #   event #=> Types::AudioResponseEvent
      #   event.audio_chunk #=> String
      #   event.content_type #=> String
      #   event.event_id #=> String
      def on_audio_response_event(&block)
        on(Types::StartConversationResponseEventStream::AudioResponseEvent, block)
      end

      # Register an event handler for heartbeat_event events
      # @yield [event] Called when heartbeat_event events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::HeartbeatEvent] the event.
      # @example Event structure
      #   event #=> Types::HeartbeatEvent
      #   event.event_id #=> String
      def on_heartbeat_event(&block)
        on(Types::StartConversationResponseEventStream::HeartbeatEvent, block)
      end

      # Register an event handler for any unknown events.
      # @yield [event] Called when unknown events are received.
      # @yieldparam event [Types::StartConversationResponseEventStream::Unknown] the event with value set to the Message
      def on_unknown_event(&block)
        on(Types::StartConversationResponseEventStream::Unknown, block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response'
          Parsers::EventStream::StartConversationInitialResponse.parse(message)
        when 'PlaybackInterruptionEvent'
          Types::StartConversationResponseEventStream::PlaybackInterruptionEvent.new(Parsers::EventStream::PlaybackInterruptionEvent.parse(message))
        when 'TranscriptEvent'
          Types::StartConversationResponseEventStream::TranscriptEvent.new(Parsers::EventStream::TranscriptEvent.parse(message))
        when 'IntentResultEvent'
          Types::StartConversationResponseEventStream::IntentResultEvent.new(Parsers::EventStream::IntentResultEvent.parse(message))
        when 'TextResponseEvent'
          Types::StartConversationResponseEventStream::TextResponseEvent.new(Parsers::EventStream::TextResponseEvent.parse(message))
        when 'AudioResponseEvent'
          Types::StartConversationResponseEventStream::AudioResponseEvent.new(Parsers::EventStream::AudioResponseEvent.parse(message))
        when 'HeartbeatEvent'
          Types::StartConversationResponseEventStream::HeartbeatEvent.new(Parsers::EventStream::HeartbeatEvent.parse(message))
        when 'AccessDeniedException'
          Types::StartConversationResponseEventStream::AccessDeniedException.new(Parsers::EventStream::AccessDeniedException.parse(message))
        when 'ResourceNotFoundException'
          Types::StartConversationResponseEventStream::ResourceNotFoundException.new(Parsers::EventStream::ResourceNotFoundException.parse(message))
        when 'ValidationException'
          Types::StartConversationResponseEventStream::ValidationException.new(Parsers::EventStream::ValidationException.parse(message))
        when 'ThrottlingException'
          Types::StartConversationResponseEventStream::ThrottlingException.new(Parsers::EventStream::ThrottlingException.parse(message))
        when 'InternalServerException'
          Types::StartConversationResponseEventStream::InternalServerException.new(Parsers::EventStream::InternalServerException.parse(message))
        when 'ConflictException'
          Types::StartConversationResponseEventStream::ConflictException.new(Parsers::EventStream::ConflictException.parse(message))
        when 'DependencyFailedException'
          Types::StartConversationResponseEventStream::DependencyFailedException.new(Parsers::EventStream::DependencyFailedException.parse(message))
        when 'BadGatewayException'
          Types::StartConversationResponseEventStream::BadGatewayException.new(Parsers::EventStream::BadGatewayException.parse(message))
        else
          Types::StartConversationResponseEventStream::Unknown.new(name: type, value: message)
        end
      end

      def parse_exception_event(type, message)
        case type
        when 'AccessDeniedException'
          data = Parsers::EventStream::AccessDeniedException.parse(message)
          Errors::AccessDeniedException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::AccessDeniedException')
        when 'ResourceNotFoundException'
          data = Parsers::EventStream::ResourceNotFoundException.parse(message)
          Errors::ResourceNotFoundException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::ResourceNotFoundException')
        when 'ValidationException'
          data = Parsers::EventStream::ValidationException.parse(message)
          Errors::ValidationException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::ValidationException')
        when 'ThrottlingException'
          data = Parsers::EventStream::ThrottlingException.parse(message)
          Errors::ThrottlingException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::ThrottlingException')
        when 'InternalServerException'
          data = Parsers::EventStream::InternalServerException.parse(message)
          Errors::InternalServerException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::InternalServerException')
        when 'ConflictException'
          data = Parsers::EventStream::ConflictException.parse(message)
          Errors::ConflictException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::ConflictException')
        when 'DependencyFailedException'
          data = Parsers::EventStream::DependencyFailedException.parse(message)
          Errors::DependencyFailedException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::DependencyFailedException')
        when 'BadGatewayException'
          data = Parsers::EventStream::BadGatewayException.parse(message)
          Errors::BadGatewayException.new(data: data, error_code: 'AWS::SDK::LexRuntimeV2::Types::StartConversationResponseEventStream::BadGatewayException')
        else
          data = Types::StartConversationResponseEventStream::Unknown.new(name: type, value: message)
          Errors::ApiError.new(error_code: type, metadata: {data: data})
        end
      end

      def parse_error_event(message)
        error_code = message.headers.delete(':error-code')&.value
        error_message = message.headers.delete(':error-message')&.value
        metadata = {message: message}
        Errors::ApiError.new(error_code: error_code, metadata: metadata, message: error_message)
      end
    end

    # Output returned from {Client#start_conversation}
    # and used to signal (send) async input events.
    # @example Basic Usage
    #   stream = client.playback_interruption_event(initial_request)
    #   stream.signal_start_conversation(event_params) # send an event
    #   stream.join # close the input stream and wait for the server
    class StartConversationOutput < Hearth::EventStream::AsyncOutput

      # Signal (send) an StartConversationRequestEventStream::ConfigurationEvent input event
      # @param [Hash | Types::ConfigurationEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::ConfigurationEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_configuration_event(
      #     request_attributes: {
      #       'key' => 'value'
      #     },
      #     response_content_type: 'responseContentType', # required
      #     session_state: {
      #       dialog_action: {
      #         type: 'Close', # required - accepts ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
      #         slot_to_elicit: 'slotToElicit',
      #         slot_elicitation_style: 'Default', # accepts ["Default", "SpellByLetter", "SpellByWord"]
      #         sub_slot_to_elicit: {
      #           name: 'name', # required
      #         }
      #       },
      #       intent: {
      #         name: 'name', # required
      #         slots: {
      #           'key' => {
      #             value: {
      #               original_value: 'originalValue',
      #               interpreted_value: 'interpretedValue', # required
      #               resolved_values: [
      #                 'member'
      #               ]
      #             },
      #             shape: 'Scalar', # accepts ["Scalar", "List", "Composite"]
      #           }
      #         },
      #         state: 'Failed', # accepts ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
      #         confirmation_state: 'Confirmed' # accepts ["Confirmed", "Denied", "None"]
      #       },
      #       active_contexts: [
      #         {
      #           name: 'name', # required
      #           time_to_live: {
      #             time_to_live_in_seconds: 1, # required
      #             turns_to_live: 1 # required
      #           }, # required
      #           context_attributes: {
      #             'key' => 'value'
      #           } # required
      #         }
      #       ],
      #       originating_request_id: 'originatingRequestId',
      #       runtime_hints: {
      #         slot_hints: {
      #           'key' => {
      #             'key' => {
      #               runtime_hint_values: [
      #                 {
      #                   phrase: 'phrase' # required
      #                 }
      #               ],
      #             }
      #           }
      #         }
      #       }
      #     },
      #     welcome_messages: [
      #       {
      #         content: 'content',
      #         content_type: 'CustomPayload', # required - accepts ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
      #         image_response_card: {
      #           title: 'title', # required
      #           subtitle: 'subtitle',
      #           image_url: 'imageUrl',
      #           buttons: [
      #             {
      #               text: 'text', # required
      #               value: 'value' # required
      #             }
      #           ]
      #         }
      #       }
      #     ],
      #     disable_playback: false,
      #     event_id: 'eventId',
      #     client_timestamp_millis: 1
      #   )
      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an StartConversationRequestEventStream::AudioInputEvent input event
      # @param [Hash | Types::AudioInputEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::AudioInputEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_audio_input_event(
      #     audio_chunk: 'audioChunk',
      #     content_type: 'contentType', # required
      #     event_id: 'eventId',
      #     client_timestamp_millis: 1
      #   )
      def signal_audio_input_event(params = {})
        input = Params::AudioInputEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioInputEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an StartConversationRequestEventStream::DtmfInputEvent input event
      # @param [Hash | Types::DTMFInputEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::DTMFInputEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_dtmf_input_event(
      #     input_character: 'inputCharacter', # required
      #     event_id: 'eventId',
      #     client_timestamp_millis: 1
      #   )
      def signal_dtmf_input_event(params = {})
        input = Params::DTMFInputEvent.build(params, context: 'params')
        message = Builders::EventStream::DTMFInputEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an StartConversationRequestEventStream::TextInputEvent input event
      # @param [Hash | Types::TextInputEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::TextInputEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_text_input_event(
      #     text: 'text', # required
      #     event_id: 'eventId',
      #     client_timestamp_millis: 1
      #   )
      def signal_text_input_event(params = {})
        input = Params::TextInputEvent.build(params, context: 'params')
        message = Builders::EventStream::TextInputEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an StartConversationRequestEventStream::PlaybackCompletionEvent input event
      # @param [Hash | Types::PlaybackCompletionEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::PlaybackCompletionEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_playback_completion_event(
      #     event_id: 'eventId',
      #     client_timestamp_millis: 1
      #   )
      def signal_playback_completion_event(params = {})
        input = Params::PlaybackCompletionEvent.build(params, context: 'params')
        message = Builders::EventStream::PlaybackCompletionEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an StartConversationRequestEventStream::DisconnectionEvent input event
      # @param [Hash | Types::DisconnectionEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::DisconnectionEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_disconnection_event(
      #     event_id: 'eventId',
      #     client_timestamp_millis: 1
      #   )
      def signal_disconnection_event(params = {})
        input = Params::DisconnectionEvent.build(params, context: 'params')
        message = Builders::EventStream::DisconnectionEvent.build(input: input)
        send_event(message)
      end
    end
  end
end
