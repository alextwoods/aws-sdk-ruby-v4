# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::LexRuntimeV2
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ActiveContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveContext, context: context)
        type = Types::ActiveContext.new
        type.name = params[:name]
        type.time_to_live = ActiveContextTimeToLive.build(params[:time_to_live], context: "#{context}[:time_to_live]") unless params[:time_to_live].nil?
        type.context_attributes = ActiveContextParametersMap.build(params[:context_attributes], context: "#{context}[:context_attributes]") unless params[:context_attributes].nil?
        type
      end
    end

    module ActiveContextParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ActiveContextTimeToLive
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveContextTimeToLive, context: context)
        type = Types::ActiveContextTimeToLive.new
        type.time_to_live_in_seconds = params[:time_to_live_in_seconds]
        type.turns_to_live = params[:turns_to_live]
        type
      end
    end

    module ActiveContextsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActiveContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AudioInputEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioInputEvent, context: context)
        type = Types::AudioInputEvent.new
        type.audio_chunk = params[:audio_chunk]
        type.content_type = params[:content_type]
        type.event_id = params[:event_id]
        type.client_timestamp_millis = params[:client_timestamp_millis]
        type
      end
    end

    module AudioResponseEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioResponseEvent, context: context)
        type = Types::AudioResponseEvent.new
        type.audio_chunk = params[:audio_chunk]
        type.content_type = params[:content_type]
        type.event_id = params[:event_id]
        type
      end
    end

    module BadGatewayException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadGatewayException, context: context)
        type = Types::BadGatewayException.new
        type.message = params[:message]
        type
      end
    end

    module Button
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Button, context: context)
        type = Types::Button.new
        type.text = params[:text]
        type.value = params[:value]
        type
      end
    end

    module ButtonsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Button.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfidenceScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfidenceScore, context: context)
        type = Types::ConfidenceScore.new
        type.score = params[:score]
        type
      end
    end

    module ConfigurationEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationEvent, context: context)
        type = Types::ConfigurationEvent.new
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.response_content_type = params[:response_content_type]
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.welcome_messages = Messages.build(params[:welcome_messages], context: "#{context}[:welcome_messages]") unless params[:welcome_messages].nil?
        type.disable_playback = params[:disable_playback]
        type.event_id = params[:event_id]
        type.client_timestamp_millis = params[:client_timestamp_millis]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module DTMFInputEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DTMFInputEvent, context: context)
        type = Types::DTMFInputEvent.new
        type.input_character = params[:input_character]
        type.event_id = params[:event_id]
        type.client_timestamp_millis = params[:client_timestamp_millis]
        type
      end
    end

    module DeleteSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSessionInput, context: context)
        type = Types::DeleteSessionInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module DeleteSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSessionOutput, context: context)
        type = Types::DeleteSessionOutput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module DependencyFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyFailedException, context: context)
        type = Types::DependencyFailedException.new
        type.message = params[:message]
        type
      end
    end

    module DialogAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DialogAction, context: context)
        type = Types::DialogAction.new
        type.type = params[:type]
        type.slot_to_elicit = params[:slot_to_elicit]
        type.slot_elicitation_style = params[:slot_elicitation_style]
        type
      end
    end

    module DisconnectionEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectionEvent, context: context)
        type = Types::DisconnectionEvent.new
        type.event_id = params[:event_id]
        type.client_timestamp_millis = params[:client_timestamp_millis]
        type
      end
    end

    module GetSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionInput, context: context)
        type = Types::GetSessionInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module GetSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionOutput, context: context)
        type = Types::GetSessionOutput.new
        type.session_id = params[:session_id]
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.interpretations = Interpretations.build(params[:interpretations], context: "#{context}[:interpretations]") unless params[:interpretations].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type
      end
    end

    module HeartbeatEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HeartbeatEvent, context: context)
        type = Types::HeartbeatEvent.new
        type.event_id = params[:event_id]
        type
      end
    end

    module ImageResponseCard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageResponseCard, context: context)
        type = Types::ImageResponseCard.new
        type.title = params[:title]
        type.subtitle = params[:subtitle]
        type.image_url = params[:image_url]
        type.buttons = ButtonsList.build(params[:buttons], context: "#{context}[:buttons]") unless params[:buttons].nil?
        type
      end
    end

    module Intent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Intent, context: context)
        type = Types::Intent.new
        type.name = params[:name]
        type.slots = Slots.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.state = params[:state]
        type.confirmation_state = params[:confirmation_state]
        type
      end
    end

    module IntentResultEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentResultEvent, context: context)
        type = Types::IntentResultEvent.new
        type.input_mode = params[:input_mode]
        type.interpretations = Interpretations.build(params[:interpretations], context: "#{context}[:interpretations]") unless params[:interpretations].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.session_id = params[:session_id]
        type.event_id = params[:event_id]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module Interpretation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Interpretation, context: context)
        type = Types::Interpretation.new
        type.nlu_confidence = ConfidenceScore.build(params[:nlu_confidence], context: "#{context}[:nlu_confidence]") unless params[:nlu_confidence].nil?
        type.sentiment_response = SentimentResponse.build(params[:sentiment_response], context: "#{context}[:sentiment_response]") unless params[:sentiment_response].nil?
        type.intent = Intent.build(params[:intent], context: "#{context}[:intent]") unless params[:intent].nil?
        type
      end
    end

    module Interpretations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Interpretation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.content = params[:content]
        type.content_type = params[:content_type]
        type.image_response_card = ImageResponseCard.build(params[:image_response_card], context: "#{context}[:image_response_card]") unless params[:image_response_card].nil?
        type
      end
    end

    module Messages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlaybackCompletionEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlaybackCompletionEvent, context: context)
        type = Types::PlaybackCompletionEvent.new
        type.event_id = params[:event_id]
        type.client_timestamp_millis = params[:client_timestamp_millis]
        type
      end
    end

    module PlaybackInterruptionEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlaybackInterruptionEvent, context: context)
        type = Types::PlaybackInterruptionEvent.new
        type.event_reason = params[:event_reason]
        type.caused_by_event_id = params[:caused_by_event_id]
        type.event_id = params[:event_id]
        type
      end
    end

    module PutSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSessionInput, context: context)
        type = Types::PutSessionInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.response_content_type = params[:response_content_type]
        type
      end
    end

    module PutSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSessionOutput, context: context)
        type = Types::PutSessionOutput.new
        type.content_type = params[:content_type]
        type.messages = params[:messages]
        type.session_state = params[:session_state]
        type.request_attributes = params[:request_attributes]
        type.session_id = params[:session_id]
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type
      end
    end

    module RecognizeTextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecognizeTextInput, context: context)
        type = Types::RecognizeTextInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type.text = params[:text]
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type
      end
    end

    module RecognizeTextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecognizeTextOutput, context: context)
        type = Types::RecognizeTextOutput.new
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.interpretations = Interpretations.build(params[:interpretations], context: "#{context}[:interpretations]") unless params[:interpretations].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.session_id = params[:session_id]
        type
      end
    end

    module RecognizeUtteranceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecognizeUtteranceInput, context: context)
        type = Types::RecognizeUtteranceInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type.session_state = params[:session_state]
        type.request_attributes = params[:request_attributes]
        type.request_content_type = params[:request_content_type]
        type.response_content_type = params[:response_content_type]
        io = params[:input_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.input_stream = io
        type
      end
    end

    module RecognizeUtteranceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecognizeUtteranceOutput, context: context)
        type = Types::RecognizeUtteranceOutput.new
        type.input_mode = params[:input_mode]
        type.content_type = params[:content_type]
        type.messages = params[:messages]
        type.interpretations = params[:interpretations]
        type.session_state = params[:session_state]
        type.request_attributes = params[:request_attributes]
        type.session_id = params[:session_id]
        type.input_transcript = params[:input_transcript]
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RuntimeHintDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimeHintDetails, context: context)
        type = Types::RuntimeHintDetails.new
        type.runtime_hint_values = RuntimeHintValuesList.build(params[:runtime_hint_values], context: "#{context}[:runtime_hint_values]") unless params[:runtime_hint_values].nil?
        type
      end
    end

    module RuntimeHintValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimeHintValue, context: context)
        type = Types::RuntimeHintValue.new
        type.phrase = params[:phrase]
        type
      end
    end

    module RuntimeHintValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuntimeHintValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuntimeHints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimeHints, context: context)
        type = Types::RuntimeHints.new
        type.slot_hints = SlotHintsIntentMap.build(params[:slot_hints], context: "#{context}[:slot_hints]") unless params[:slot_hints].nil?
        type
      end
    end

    module SentimentResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentResponse, context: context)
        type = Types::SentimentResponse.new
        type.sentiment = params[:sentiment]
        type.sentiment_score = SentimentScore.build(params[:sentiment_score], context: "#{context}[:sentiment_score]") unless params[:sentiment_score].nil?
        type
      end
    end

    module SentimentScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentScore, context: context)
        type = Types::SentimentScore.new
        type.positive = params[:positive]
        type.negative = params[:negative]
        type.neutral = params[:neutral]
        type.mixed = params[:mixed]
        type
      end
    end

    module SessionState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionState, context: context)
        type = Types::SessionState.new
        type.dialog_action = DialogAction.build(params[:dialog_action], context: "#{context}[:dialog_action]") unless params[:dialog_action].nil?
        type.intent = Intent.build(params[:intent], context: "#{context}[:intent]") unless params[:intent].nil?
        type.active_contexts = ActiveContextsList.build(params[:active_contexts], context: "#{context}[:active_contexts]") unless params[:active_contexts].nil?
        type.session_attributes = StringMap.build(params[:session_attributes], context: "#{context}[:session_attributes]") unless params[:session_attributes].nil?
        type.originating_request_id = params[:originating_request_id]
        type.runtime_hints = RuntimeHints.build(params[:runtime_hints], context: "#{context}[:runtime_hints]") unless params[:runtime_hints].nil?
        type
      end
    end

    module Slot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Slot, context: context)
        type = Types::Slot.new
        type.value = Value.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.shape = params[:shape]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SlotHintsIntentMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SlotHintsSlotMap.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module SlotHintsSlotMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RuntimeHintDetails.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Slots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Slot.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module StartConversationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConversationInput, context: context)
        type = Types::StartConversationInput.new
        type.bot_id = params[:bot_id]
        type.bot_alias_id = params[:bot_alias_id]
        type.locale_id = params[:locale_id]
        type.session_id = params[:session_id]
        type.conversation_mode = params[:conversation_mode]
        type.request_event_stream = StartConversationRequestEventStream.build(params[:request_event_stream], context: "#{context}[:request_event_stream]") unless params[:request_event_stream].nil?
        type
      end
    end

    module StartConversationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConversationOutput, context: context)
        type = Types::StartConversationOutput.new
        type.response_event_stream = StartConversationResponseEventStream.build(params[:response_event_stream], context: "#{context}[:response_event_stream]") unless params[:response_event_stream].nil?
        type
      end
    end

    module StartConversationRequestEventStream
      def self.build(params, context: '')
        return params if params.is_a?(Types::StartConversationRequestEventStream)
        Hearth::Validator.validate!(params, ::Hash, Types::StartConversationRequestEventStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :configuration_event
          Types::StartConversationRequestEventStream::ConfigurationEvent.new(
            (ConfigurationEvent.build(params[:configuration_event], context: "#{context}[:configuration_event]") unless params[:configuration_event].nil?)
          )
        when :audio_input_event
          Types::StartConversationRequestEventStream::AudioInputEvent.new(
            (AudioInputEvent.build(params[:audio_input_event], context: "#{context}[:audio_input_event]") unless params[:audio_input_event].nil?)
          )
        when :dtmf_input_event
          Types::StartConversationRequestEventStream::DtmfInputEvent.new(
            (DTMFInputEvent.build(params[:dtmf_input_event], context: "#{context}[:dtmf_input_event]") unless params[:dtmf_input_event].nil?)
          )
        when :text_input_event
          Types::StartConversationRequestEventStream::TextInputEvent.new(
            (TextInputEvent.build(params[:text_input_event], context: "#{context}[:text_input_event]") unless params[:text_input_event].nil?)
          )
        when :playback_completion_event
          Types::StartConversationRequestEventStream::PlaybackCompletionEvent.new(
            (PlaybackCompletionEvent.build(params[:playback_completion_event], context: "#{context}[:playback_completion_event]") unless params[:playback_completion_event].nil?)
          )
        when :disconnection_event
          Types::StartConversationRequestEventStream::DisconnectionEvent.new(
            (DisconnectionEvent.build(params[:disconnection_event], context: "#{context}[:disconnection_event]") unless params[:disconnection_event].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :configuration_event, :audio_input_event, :dtmf_input_event, :text_input_event, :playback_completion_event, :disconnection_event set"
        end
      end
    end

    module StartConversationResponseEventStream
      def self.build(params, context: '')
        return params if params.is_a?(Types::StartConversationResponseEventStream)
        Hearth::Validator.validate!(params, ::Hash, Types::StartConversationResponseEventStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :playback_interruption_event
          Types::StartConversationResponseEventStream::PlaybackInterruptionEvent.new(
            (PlaybackInterruptionEvent.build(params[:playback_interruption_event], context: "#{context}[:playback_interruption_event]") unless params[:playback_interruption_event].nil?)
          )
        when :transcript_event
          Types::StartConversationResponseEventStream::TranscriptEvent.new(
            (TranscriptEvent.build(params[:transcript_event], context: "#{context}[:transcript_event]") unless params[:transcript_event].nil?)
          )
        when :intent_result_event
          Types::StartConversationResponseEventStream::IntentResultEvent.new(
            (IntentResultEvent.build(params[:intent_result_event], context: "#{context}[:intent_result_event]") unless params[:intent_result_event].nil?)
          )
        when :text_response_event
          Types::StartConversationResponseEventStream::TextResponseEvent.new(
            (TextResponseEvent.build(params[:text_response_event], context: "#{context}[:text_response_event]") unless params[:text_response_event].nil?)
          )
        when :audio_response_event
          Types::StartConversationResponseEventStream::AudioResponseEvent.new(
            (AudioResponseEvent.build(params[:audio_response_event], context: "#{context}[:audio_response_event]") unless params[:audio_response_event].nil?)
          )
        when :heartbeat_event
          Types::StartConversationResponseEventStream::HeartbeatEvent.new(
            (HeartbeatEvent.build(params[:heartbeat_event], context: "#{context}[:heartbeat_event]") unless params[:heartbeat_event].nil?)
          )
        when :access_denied_exception
          Types::StartConversationResponseEventStream::AccessDeniedException.new(
            (AccessDeniedException.build(params[:access_denied_exception], context: "#{context}[:access_denied_exception]") unless params[:access_denied_exception].nil?)
          )
        when :resource_not_found_exception
          Types::StartConversationResponseEventStream::ResourceNotFoundException.new(
            (ResourceNotFoundException.build(params[:resource_not_found_exception], context: "#{context}[:resource_not_found_exception]") unless params[:resource_not_found_exception].nil?)
          )
        when :validation_exception
          Types::StartConversationResponseEventStream::ValidationException.new(
            (ValidationException.build(params[:validation_exception], context: "#{context}[:validation_exception]") unless params[:validation_exception].nil?)
          )
        when :throttling_exception
          Types::StartConversationResponseEventStream::ThrottlingException.new(
            (ThrottlingException.build(params[:throttling_exception], context: "#{context}[:throttling_exception]") unless params[:throttling_exception].nil?)
          )
        when :internal_server_exception
          Types::StartConversationResponseEventStream::InternalServerException.new(
            (InternalServerException.build(params[:internal_server_exception], context: "#{context}[:internal_server_exception]") unless params[:internal_server_exception].nil?)
          )
        when :conflict_exception
          Types::StartConversationResponseEventStream::ConflictException.new(
            (ConflictException.build(params[:conflict_exception], context: "#{context}[:conflict_exception]") unless params[:conflict_exception].nil?)
          )
        when :dependency_failed_exception
          Types::StartConversationResponseEventStream::DependencyFailedException.new(
            (DependencyFailedException.build(params[:dependency_failed_exception], context: "#{context}[:dependency_failed_exception]") unless params[:dependency_failed_exception].nil?)
          )
        when :bad_gateway_exception
          Types::StartConversationResponseEventStream::BadGatewayException.new(
            (BadGatewayException.build(params[:bad_gateway_exception], context: "#{context}[:bad_gateway_exception]") unless params[:bad_gateway_exception].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :playback_interruption_event, :transcript_event, :intent_result_event, :text_response_event, :audio_response_event, :heartbeat_event, :access_denied_exception, :resource_not_found_exception, :validation_exception, :throttling_exception, :internal_server_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception set"
        end
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TextInputEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextInputEvent, context: context)
        type = Types::TextInputEvent.new
        type.text = params[:text]
        type.event_id = params[:event_id]
        type.client_timestamp_millis = params[:client_timestamp_millis]
        type
      end
    end

    module TextResponseEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextResponseEvent, context: context)
        type = Types::TextResponseEvent.new
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.event_id = params[:event_id]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TranscriptEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptEvent, context: context)
        type = Types::TranscriptEvent.new
        type.transcript = params[:transcript]
        type.event_id = params[:event_id]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module Value
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Value, context: context)
        type = Types::Value.new
        type.original_value = params[:original_value]
        type.interpreted_value = params[:interpreted_value]
        type.resolved_values = StringList.build(params[:resolved_values], context: "#{context}[:resolved_values]") unless params[:resolved_values].nil?
        type
      end
    end

    module Values
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Slot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
