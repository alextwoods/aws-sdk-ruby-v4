# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  # @api private
  module Params

    class AccessDeniedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ActiveContext
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ActiveContext, context: context)
        type = Types::ActiveContext.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.time_to_live = ActiveContextTimeToLive.build(params[:time_to_live], context: "#{context}[:time_to_live]") unless params[:time_to_live].nil?
        type.context_attributes = ActiveContextParametersMap.build(params[:context_attributes], context: "#{context}[:context_attributes]") unless params[:context_attributes].nil?
        type
      end
    end

    class ActiveContextParametersMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ActiveContextTimeToLive
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ActiveContextTimeToLive, context: context)
        type = Types::ActiveContextTimeToLive.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.time_to_live_in_seconds = params[:time_to_live_in_seconds] unless params[:time_to_live_in_seconds].nil?
        type.turns_to_live = params[:turns_to_live] unless params[:turns_to_live].nil?
        type
      end
    end

    class ActiveContextsList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActiveContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AudioInputEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AudioInputEvent, context: context)
        type = Types::AudioInputEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.audio_chunk = params[:audio_chunk] unless params[:audio_chunk].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.client_timestamp_millis = params[:client_timestamp_millis] unless params[:client_timestamp_millis].nil?
        type
      end
    end

    class AudioResponseEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AudioResponseEvent, context: context)
        type = Types::AudioResponseEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.audio_chunk = params[:audio_chunk] unless params[:audio_chunk].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type
      end
    end

    class BadGatewayException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BadGatewayException, context: context)
        type = Types::BadGatewayException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class Button
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Button, context: context)
        type = Types::Button.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.text = params[:text] unless params[:text].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class ButtonsList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Button.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ConfidenceScore
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConfidenceScore, context: context)
        type = Types::ConfidenceScore.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.score = params[:score]&.to_f unless params[:score].nil?
        type
      end
    end

    class ConfigurationEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConfigurationEvent, context: context)
        type = Types::ConfigurationEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.response_content_type = params[:response_content_type] unless params[:response_content_type].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.welcome_messages = Messages.build(params[:welcome_messages], context: "#{context}[:welcome_messages]") unless params[:welcome_messages].nil?
        type.disable_playback = params[:disable_playback] unless params[:disable_playback].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.client_timestamp_millis = params[:client_timestamp_millis] unless params[:client_timestamp_millis].nil?
        type
      end
    end

    class ConflictException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class DTMFInputEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DTMFInputEvent, context: context)
        type = Types::DTMFInputEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.input_character = params[:input_character] unless params[:input_character].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.client_timestamp_millis = params[:client_timestamp_millis] unless params[:client_timestamp_millis].nil?
        type
      end
    end

    class DeleteSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteSessionInput, context: context)
        type = Types::DeleteSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type
      end
    end

    class DeleteSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteSessionOutput, context: context)
        type = Types::DeleteSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type
      end
    end

    class DependencyFailedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DependencyFailedException, context: context)
        type = Types::DependencyFailedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class DialogAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DialogAction, context: context)
        type = Types::DialogAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type] unless params[:type].nil?
        type.slot_to_elicit = params[:slot_to_elicit] unless params[:slot_to_elicit].nil?
        type.slot_elicitation_style = params[:slot_elicitation_style] unless params[:slot_elicitation_style].nil?
        type.sub_slot_to_elicit = ElicitSubSlot.build(params[:sub_slot_to_elicit], context: "#{context}[:sub_slot_to_elicit]") unless params[:sub_slot_to_elicit].nil?
        type
      end
    end

    class DisconnectionEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisconnectionEvent, context: context)
        type = Types::DisconnectionEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.client_timestamp_millis = params[:client_timestamp_millis] unless params[:client_timestamp_millis].nil?
        type
      end
    end

    class ElicitSubSlot
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ElicitSubSlot, context: context)
        type = Types::ElicitSubSlot.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.sub_slot_to_elicit = ElicitSubSlot.build(params[:sub_slot_to_elicit], context: "#{context}[:sub_slot_to_elicit]") unless params[:sub_slot_to_elicit].nil?
        type
      end
    end

    class GetSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSessionInput, context: context)
        type = Types::GetSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type
      end
    end

    class GetSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSessionOutput, context: context)
        type = Types::GetSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.interpretations = Interpretations.build(params[:interpretations], context: "#{context}[:interpretations]") unless params[:interpretations].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type
      end
    end

    class HeartbeatEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeartbeatEvent, context: context)
        type = Types::HeartbeatEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type
      end
    end

    class ImageResponseCard
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImageResponseCard, context: context)
        type = Types::ImageResponseCard.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.title = params[:title] unless params[:title].nil?
        type.subtitle = params[:subtitle] unless params[:subtitle].nil?
        type.image_url = params[:image_url] unless params[:image_url].nil?
        type.buttons = ButtonsList.build(params[:buttons], context: "#{context}[:buttons]") unless params[:buttons].nil?
        type
      end
    end

    class Intent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Intent, context: context)
        type = Types::Intent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.slots = Slots.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.state = params[:state] unless params[:state].nil?
        type.confirmation_state = params[:confirmation_state] unless params[:confirmation_state].nil?
        type
      end
    end

    class IntentResultEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntentResultEvent, context: context)
        type = Types::IntentResultEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.input_mode = params[:input_mode] unless params[:input_mode].nil?
        type.interpretations = Interpretations.build(params[:interpretations], context: "#{context}[:interpretations]") unless params[:interpretations].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.recognized_bot_member = RecognizedBotMember.build(params[:recognized_bot_member], context: "#{context}[:recognized_bot_member]") unless params[:recognized_bot_member].nil?
        type
      end
    end

    class InternalServerException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class Interpretation
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Interpretation, context: context)
        type = Types::Interpretation.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.nlu_confidence = ConfidenceScore.build(params[:nlu_confidence], context: "#{context}[:nlu_confidence]") unless params[:nlu_confidence].nil?
        type.sentiment_response = SentimentResponse.build(params[:sentiment_response], context: "#{context}[:sentiment_response]") unless params[:sentiment_response].nil?
        type.intent = Intent.build(params[:intent], context: "#{context}[:intent]") unless params[:intent].nil?
        type.interpretation_source = params[:interpretation_source] unless params[:interpretation_source].nil?
        type
      end
    end

    class Interpretations
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Interpretation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Message
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.content = params[:content] unless params[:content].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.image_response_card = ImageResponseCard.build(params[:image_response_card], context: "#{context}[:image_response_card]") unless params[:image_response_card].nil?
        type
      end
    end

    class Messages
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PlaybackCompletionEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PlaybackCompletionEvent, context: context)
        type = Types::PlaybackCompletionEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.client_timestamp_millis = params[:client_timestamp_millis] unless params[:client_timestamp_millis].nil?
        type
      end
    end

    class PlaybackInterruptionEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PlaybackInterruptionEvent, context: context)
        type = Types::PlaybackInterruptionEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.event_reason = params[:event_reason] unless params[:event_reason].nil?
        type.caused_by_event_id = params[:caused_by_event_id] unless params[:caused_by_event_id].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type
      end
    end

    class PutSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutSessionInput, context: context)
        type = Types::PutSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.response_content_type = params[:response_content_type] unless params[:response_content_type].nil?
        type
      end
    end

    class PutSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutSessionOutput, context: context)
        type = Types::PutSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.messages = params[:messages] unless params[:messages].nil?
        type.session_state = params[:session_state] unless params[:session_state].nil?
        type.request_attributes = params[:request_attributes] unless params[:request_attributes].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type
      end
    end

    class RecognizeTextInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecognizeTextInput, context: context)
        type = Types::RecognizeTextInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.text = params[:text] unless params[:text].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type
      end
    end

    class RecognizeTextOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecognizeTextOutput, context: context)
        type = Types::RecognizeTextOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.session_state = SessionState.build(params[:session_state], context: "#{context}[:session_state]") unless params[:session_state].nil?
        type.interpretations = Interpretations.build(params[:interpretations], context: "#{context}[:interpretations]") unless params[:interpretations].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.recognized_bot_member = RecognizedBotMember.build(params[:recognized_bot_member], context: "#{context}[:recognized_bot_member]") unless params[:recognized_bot_member].nil?
        type
      end
    end

    class RecognizeUtteranceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecognizeUtteranceInput, context: context)
        type = Types::RecognizeUtteranceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.session_state = params[:session_state] unless params[:session_state].nil?
        type.request_attributes = params[:request_attributes] unless params[:request_attributes].nil?
        type.request_content_type = params[:request_content_type] unless params[:request_content_type].nil?
        type.response_content_type = params[:response_content_type] unless params[:response_content_type].nil?
        io = params[:input_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.input_stream = io
        type
      end
    end

    class RecognizeUtteranceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecognizeUtteranceOutput, context: context)
        type = Types::RecognizeUtteranceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.input_mode = params[:input_mode] unless params[:input_mode].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.messages = params[:messages] unless params[:messages].nil?
        type.interpretations = params[:interpretations] unless params[:interpretations].nil?
        type.session_state = params[:session_state] unless params[:session_state].nil?
        type.request_attributes = params[:request_attributes] unless params[:request_attributes].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.input_transcript = params[:input_transcript] unless params[:input_transcript].nil?
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type.recognized_bot_member = params[:recognized_bot_member] unless params[:recognized_bot_member].nil?
        type
      end
    end

    class RecognizedBotMember
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecognizedBotMember, context: context)
        type = Types::RecognizedBotMember.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_name = params[:bot_name] unless params[:bot_name].nil?
        type
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class RuntimeHintDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RuntimeHintDetails, context: context)
        type = Types::RuntimeHintDetails.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.runtime_hint_values = RuntimeHintValuesList.build(params[:runtime_hint_values], context: "#{context}[:runtime_hint_values]") unless params[:runtime_hint_values].nil?
        type.sub_slot_hints = SlotHintsSlotMap.build(params[:sub_slot_hints], context: "#{context}[:sub_slot_hints]") unless params[:sub_slot_hints].nil?
        type
      end
    end

    class RuntimeHintValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RuntimeHintValue, context: context)
        type = Types::RuntimeHintValue.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.phrase = params[:phrase] unless params[:phrase].nil?
        type
      end
    end

    class RuntimeHintValuesList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuntimeHintValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class RuntimeHints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RuntimeHints, context: context)
        type = Types::RuntimeHints.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.slot_hints = SlotHintsIntentMap.build(params[:slot_hints], context: "#{context}[:slot_hints]") unless params[:slot_hints].nil?
        type
      end
    end

    class SentimentResponse
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SentimentResponse, context: context)
        type = Types::SentimentResponse.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sentiment = params[:sentiment] unless params[:sentiment].nil?
        type.sentiment_score = SentimentScore.build(params[:sentiment_score], context: "#{context}[:sentiment_score]") unless params[:sentiment_score].nil?
        type
      end
    end

    class SentimentScore
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SentimentScore, context: context)
        type = Types::SentimentScore.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.positive = params[:positive]&.to_f unless params[:positive].nil?
        type.negative = params[:negative]&.to_f unless params[:negative].nil?
        type.neutral = params[:neutral]&.to_f unless params[:neutral].nil?
        type.mixed = params[:mixed]&.to_f unless params[:mixed].nil?
        type
      end
    end

    class SessionState
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SessionState, context: context)
        type = Types::SessionState.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.dialog_action = DialogAction.build(params[:dialog_action], context: "#{context}[:dialog_action]") unless params[:dialog_action].nil?
        type.intent = Intent.build(params[:intent], context: "#{context}[:intent]") unless params[:intent].nil?
        type.active_contexts = ActiveContextsList.build(params[:active_contexts], context: "#{context}[:active_contexts]") unless params[:active_contexts].nil?
        type.session_attributes = StringMap.build(params[:session_attributes], context: "#{context}[:session_attributes]") unless params[:session_attributes].nil?
        type.originating_request_id = params[:originating_request_id] unless params[:originating_request_id].nil?
        type.runtime_hints = RuntimeHints.build(params[:runtime_hints], context: "#{context}[:runtime_hints]") unless params[:runtime_hints].nil?
        type
      end
    end

    class Slot
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Slot, context: context)
        type = Types::Slot.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.value = Value.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.shape = params[:shape] unless params[:shape].nil?
        type.member_values = Values.build(params[:member_values], context: "#{context}[:member_values]") unless params[:member_values].nil?
        type.sub_slots = Slots.build(params[:sub_slots], context: "#{context}[:sub_slots]") unless params[:sub_slots].nil?
        type
      end
    end

    class SlotHintsIntentMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SlotHintsSlotMap.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class SlotHintsSlotMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RuntimeHintDetails.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class Slots
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Slot.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class StartConversationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartConversationInput, context: context)
        type = Types::StartConversationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bot_id = params[:bot_id] unless params[:bot_id].nil?
        type.bot_alias_id = params[:bot_alias_id] unless params[:bot_alias_id].nil?
        type.locale_id = params[:locale_id] unless params[:locale_id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.conversation_mode = params[:conversation_mode] unless params[:conversation_mode].nil?
        type.request_event_stream = StartConversationRequestEventStream.build(params[:request_event_stream], context: "#{context}[:request_event_stream]") unless params[:request_event_stream].nil?
        type
      end
    end

    class StartConversationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartConversationOutput, context: context)
        type = Types::StartConversationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.response_event_stream = StartConversationResponseEventStream.build(params[:response_event_stream], context: "#{context}[:response_event_stream]") unless params[:response_event_stream].nil?
        type
      end
    end

    class StartConversationRequestEventStream
      def self.build(params, context:)
        return params if params.is_a?(Types::StartConversationRequestEventStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartConversationRequestEventStream, context: context)
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

    class StartConversationResponseEventStream
      def self.build(params, context:)
        return params if params.is_a?(Types::StartConversationResponseEventStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartConversationResponseEventStream, context: context)
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

    class StringList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class StringMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TextInputEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TextInputEvent, context: context)
        type = Types::TextInputEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.text = params[:text] unless params[:text].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type.client_timestamp_millis = params[:client_timestamp_millis] unless params[:client_timestamp_millis].nil?
        type
      end
    end

    class TextResponseEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TextResponseEvent, context: context)
        type = Types::TextResponseEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type
      end
    end

    class ThrottlingException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class TranscriptEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TranscriptEvent, context: context)
        type = Types::TranscriptEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transcript = params[:transcript] unless params[:transcript].nil?
        type.event_id = params[:event_id] unless params[:event_id].nil?
        type
      end
    end

    class ValidationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class Value
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Value, context: context)
        type = Types::Value.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.original_value = params[:original_value] unless params[:original_value].nil?
        type.interpreted_value = params[:interpreted_value] unless params[:interpreted_value].nil?
        type.resolved_values = StringList.build(params[:resolved_values], context: "#{context}[:resolved_values]") unless params[:resolved_values].nil?
        type
      end
    end

    class Values
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Slot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
