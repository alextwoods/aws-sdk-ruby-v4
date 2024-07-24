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
    # Register event handlers using the +#on_<event_name>+ methods
    # and set the handler using the +event_stream_handler+ option
    # on the {Client#start_conversation} method.
    # @example Basic Usage
    #   handler = StartConversation.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.start_conversation(params, event_stream_handler: handler)
    class StartConversationHandler < Hearth::EventStream::HandlerBase

      # Register an event handler for playback_interruption_event events
      # @yield [event] Called when playback_interruption_event events are received.
      # @yieldparam event [Types::PlaybackInterruptionEvent] the event.
      # @example Event structure
      #   event #=> Types::PlaybackInterruptionEvent
      #   event.event_reason #=> String, one of ["DTMF_START_DETECTED", "TEXT_DETECTED", "VOICE_START_DETECTED"]
      #   event.caused_by_event_id #=> String
      #   event.event_id #=> String
      def on_playback_interruption_event(&block)
        on('PlaybackInterruptionEvent', block)
      end

      # Register an event handler for transcript_event events
      # @yield [event] Called when transcript_event events are received.
      # @yieldparam event [Types::TranscriptEvent] the event.
      # @example Event structure
      #   event #=> Types::TranscriptEvent
      #   event.transcript #=> String
      #   event.event_id #=> String
      def on_transcript_event(&block)
        on('TranscriptEvent', block)
      end

      # Register an event handler for intent_result_event events
      # @yield [event] Called when intent_result_event events are received.
      # @yieldparam event [Types::IntentResultEvent] the event.
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
        on('IntentResultEvent', block)
      end

      # Register an event handler for text_response_event events
      # @yield [event] Called when text_response_event events are received.
      # @yieldparam event [Types::TextResponseEvent] the event.
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
        on('TextResponseEvent', block)
      end

      # Register an event handler for audio_response_event events
      # @yield [event] Called when audio_response_event events are received.
      # @yieldparam event [Types::AudioResponseEvent] the event.
      # @example Event structure
      #   event #=> Types::AudioResponseEvent
      #   event.audio_chunk #=> String
      #   event.content_type #=> String
      #   event.event_id #=> String
      def on_audio_response_event(&block)
        on('AudioResponseEvent', block)
      end

      # Register an event handler for heartbeat_event events
      # @yield [event] Called when heartbeat_event events are received.
      # @yieldparam event [Types::HeartbeatEvent] the event.
      # @example Event structure
      #   event #=> Types::HeartbeatEvent
      #   event.event_id #=> String
      def on_heartbeat_event(&block)
        on('HeartbeatEvent', block)
      end

      # Register an event handler for access_denied_exception events
      # @yield [event] Called when access_denied_exception events are received.
      # @yieldparam event [Types::AccessDeniedException] the event.
      # @example Event structure
      #   event #=> Types::AccessDeniedException
      #   event.message #=> String
      def on_access_denied_exception(&block)
        on('AccessDeniedException', block)
      end

      # Register an event handler for resource_not_found_exception events
      # @yield [event] Called when resource_not_found_exception events are received.
      # @yieldparam event [Types::ResourceNotFoundException] the event.
      # @example Event structure
      #   event #=> Types::ResourceNotFoundException
      #   event.message #=> String
      def on_resource_not_found_exception(&block)
        on('ResourceNotFoundException', block)
      end

      # Register an event handler for validation_exception events
      # @yield [event] Called when validation_exception events are received.
      # @yieldparam event [Types::ValidationException] the event.
      # @example Event structure
      #   event #=> Types::ValidationException
      #   event.message #=> String
      def on_validation_exception(&block)
        on('ValidationException', block)
      end

      # Register an event handler for throttling_exception events
      # @yield [event] Called when throttling_exception events are received.
      # @yieldparam event [Types::ThrottlingException] the event.
      # @example Event structure
      #   event #=> Types::ThrottlingException
      #   event.message #=> String
      def on_throttling_exception(&block)
        on('ThrottlingException', block)
      end

      # Register an event handler for internal_server_exception events
      # @yield [event] Called when internal_server_exception events are received.
      # @yieldparam event [Types::InternalServerException] the event.
      # @example Event structure
      #   event #=> Types::InternalServerException
      #   event.message #=> String
      def on_internal_server_exception(&block)
        on('InternalServerException', block)
      end

      # Register an event handler for conflict_exception events
      # @yield [event] Called when conflict_exception events are received.
      # @yieldparam event [Types::ConflictException] the event.
      # @example Event structure
      #   event #=> Types::ConflictException
      #   event.message #=> String
      def on_conflict_exception(&block)
        on('ConflictException', block)
      end

      # Register an event handler for dependency_failed_exception events
      # @yield [event] Called when dependency_failed_exception events are received.
      # @yieldparam event [Types::DependencyFailedException] the event.
      # @example Event structure
      #   event #=> Types::DependencyFailedException
      #   event.message #=> String
      def on_dependency_failed_exception(&block)
        on('DependencyFailedException', block)
      end

      # Register an event handler for bad_gateway_exception events
      # @yield [event] Called when bad_gateway_exception events are received.
      # @yieldparam event [Types::BadGatewayException] the event.
      # @example Event structure
      #   event #=> Types::BadGatewayException
      #   event.message #=> String
      def on_bad_gateway_exception(&block)
        on('BadGatewayException', block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response' then Parsers::EventStream::StartConversationInitialResponse.parse(message)
        when 'PlaybackInterruptionEvent' then Parsers::EventStream::PlaybackInterruptionEvent.parse(message)
        when 'TranscriptEvent' then Parsers::EventStream::TranscriptEvent.parse(message)
        when 'IntentResultEvent' then Parsers::EventStream::IntentResultEvent.parse(message)
        when 'TextResponseEvent' then Parsers::EventStream::TextResponseEvent.parse(message)
        when 'AudioResponseEvent' then Parsers::EventStream::AudioResponseEvent.parse(message)
        when 'HeartbeatEvent' then Parsers::EventStream::HeartbeatEvent.parse(message)
        when 'AccessDeniedException' then Parsers::EventStream::AccessDeniedException.parse(message)
        when 'ResourceNotFoundException' then Parsers::EventStream::ResourceNotFoundException.parse(message)
        when 'ValidationException' then Parsers::EventStream::ValidationException.parse(message)
        when 'ThrottlingException' then Parsers::EventStream::ThrottlingException.parse(message)
        when 'InternalServerException' then Parsers::EventStream::InternalServerException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'DependencyFailedException' then Parsers::EventStream::DependencyFailedException.parse(message)
        when 'BadGatewayException' then Parsers::EventStream::BadGatewayException.parse(message)
        end
      end
    end

    # Output class returned from {Client#start_conversation}
    # and allowing async sending (signaling) of input events.
    # @example Basic Usage
    #   stream = client.playback_interruption_event(initial_request)
    #   stream.signal_start_conversation(event_params) # send an event
    #   stream.join # close the input stream and wait for the server
    class StartConversationOutput < Hearth::EventStream::AsyncOutput

      # Signal (send) an StartConversationRequestEventStream::ConfigurationEvent input event
      # @param [Hash | Types::ConfigurationEvent] params
      #   Request parameters for this operation.
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
      #   Request parameters for this operation.
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
      #   Request parameters for this operation.
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
      #   Request parameters for this operation.
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
      #   Request parameters for this operation.
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
      #   Request parameters for this operation.
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
