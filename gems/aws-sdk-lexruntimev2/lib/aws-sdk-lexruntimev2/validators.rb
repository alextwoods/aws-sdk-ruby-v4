# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  # @api private
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActiveContext
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ActiveContext, context: context)
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input[:time_to_live], context: "#{context}[:time_to_live]")
        ActiveContextTimeToLive.validate!(input[:time_to_live], context: "#{context}[:time_to_live]") unless input[:time_to_live].nil?
        Hearth::Validator.validate_required!(input[:context_attributes], context: "#{context}[:context_attributes]")
        ActiveContextParametersMap.validate!(input[:context_attributes], context: "#{context}[:context_attributes]") unless input[:context_attributes].nil?
      end
    end

    class ActiveContextParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ActiveContextTimeToLive
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ActiveContextTimeToLive, context: context)
        Hearth::Validator.validate_required!(input[:time_to_live_in_seconds], context: "#{context}[:time_to_live_in_seconds]")
        Hearth::Validator.validate_types!(input[:time_to_live_in_seconds], ::Integer, context: "#{context}[:time_to_live_in_seconds]")
        Hearth::Validator.validate_required!(input[:turns_to_live], context: "#{context}[:turns_to_live]")
        Hearth::Validator.validate_types!(input[:turns_to_live], ::Integer, context: "#{context}[:turns_to_live]")
      end
    end

    class ActiveContextsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActiveContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioInputEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AudioInputEvent, context: context)
        Hearth::Validator.validate_types!(input[:audio_chunk], ::String, context: "#{context}[:audio_chunk]")
        Hearth::Validator.validate_required!(input[:content_type], context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate_types!(input[:client_timestamp_millis], ::Integer, context: "#{context}[:client_timestamp_millis]")
      end
    end

    class AudioResponseEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AudioResponseEvent, context: context)
        Hearth::Validator.validate_types!(input[:audio_chunk], ::String, context: "#{context}[:audio_chunk]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class BadGatewayException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BadGatewayException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Button
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Button, context: context)
        Hearth::Validator.validate_required!(input[:text], context: "#{context}[:text]")
        Hearth::Validator.validate_types!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate_required!(input[:value], context: "#{context}[:value]")
        Hearth::Validator.validate_types!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ButtonsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Button.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfidenceScore
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConfidenceScore, context: context)
        Hearth::Validator.validate_types!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class ConfigurationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConfigurationEvent, context: context)
        StringMap.validate!(input[:request_attributes], context: "#{context}[:request_attributes]") unless input[:request_attributes].nil?
        Hearth::Validator.validate_required!(input[:response_content_type], context: "#{context}[:response_content_type]")
        Hearth::Validator.validate_types!(input[:response_content_type], ::String, context: "#{context}[:response_content_type]")
        SessionState.validate!(input[:session_state], context: "#{context}[:session_state]") unless input[:session_state].nil?
        Messages.validate!(input[:welcome_messages], context: "#{context}[:welcome_messages]") unless input[:welcome_messages].nil?
        Hearth::Validator.validate_types!(input[:disable_playback], ::TrueClass, ::FalseClass, context: "#{context}[:disable_playback]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate_types!(input[:client_timestamp_millis], ::Integer, context: "#{context}[:client_timestamp_millis]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DTMFInputEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DTMFInputEvent, context: context)
        Hearth::Validator.validate_required!(input[:input_character], context: "#{context}[:input_character]")
        Hearth::Validator.validate_types!(input[:input_character], ::String, context: "#{context}[:input_character]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate_types!(input[:client_timestamp_millis], ::Integer, context: "#{context}[:client_timestamp_millis]")
      end
    end

    class DeleteSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteSessionInput, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_required!(input[:bot_alias_id], context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_required!(input[:locale_id], context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_required!(input[:session_id], context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class DeleteSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteSessionOutput, context: context)
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class DependencyFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DependencyFailedException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DialogAction
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DialogAction, context: context)
        Hearth::Validator.validate_required!(input[:type], context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:slot_to_elicit], ::String, context: "#{context}[:slot_to_elicit]")
        Hearth::Validator.validate_types!(input[:slot_elicitation_style], ::String, context: "#{context}[:slot_elicitation_style]")
        ElicitSubSlot.validate!(input[:sub_slot_to_elicit], context: "#{context}[:sub_slot_to_elicit]") unless input[:sub_slot_to_elicit].nil?
      end
    end

    class DisconnectionEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisconnectionEvent, context: context)
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate_types!(input[:client_timestamp_millis], ::Integer, context: "#{context}[:client_timestamp_millis]")
      end
    end

    class ElicitSubSlot
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ElicitSubSlot, context: context)
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        ElicitSubSlot.validate!(input[:sub_slot_to_elicit], context: "#{context}[:sub_slot_to_elicit]") unless input[:sub_slot_to_elicit].nil?
      end
    end

    class GetSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSessionInput, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_required!(input[:bot_alias_id], context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_required!(input[:locale_id], context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_required!(input[:session_id], context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class GetSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSessionOutput, context: context)
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Interpretations.validate!(input[:interpretations], context: "#{context}[:interpretations]") unless input[:interpretations].nil?
        SessionState.validate!(input[:session_state], context: "#{context}[:session_state]") unless input[:session_state].nil?
      end
    end

    class HeartbeatEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::HeartbeatEvent, context: context)
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class ImageResponseCard
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ImageResponseCard, context: context)
        Hearth::Validator.validate_required!(input[:title], context: "#{context}[:title]")
        Hearth::Validator.validate_types!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate_types!(input[:subtitle], ::String, context: "#{context}[:subtitle]")
        Hearth::Validator.validate_types!(input[:image_url], ::String, context: "#{context}[:image_url]")
        ButtonsList.validate!(input[:buttons], context: "#{context}[:buttons]") unless input[:buttons].nil?
      end
    end

    class Intent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Intent, context: context)
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Slots.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:confirmation_state], ::String, context: "#{context}[:confirmation_state]")
      end
    end

    class IntentResultEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IntentResultEvent, context: context)
        Hearth::Validator.validate_types!(input[:input_mode], ::String, context: "#{context}[:input_mode]")
        Interpretations.validate!(input[:interpretations], context: "#{context}[:interpretations]") unless input[:interpretations].nil?
        SessionState.validate!(input[:session_state], context: "#{context}[:session_state]") unless input[:session_state].nil?
        StringMap.validate!(input[:request_attributes], context: "#{context}[:request_attributes]") unless input[:request_attributes].nil?
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        RecognizedBotMember.validate!(input[:recognized_bot_member], context: "#{context}[:recognized_bot_member]") unless input[:recognized_bot_member].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Interpretation
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Interpretation, context: context)
        ConfidenceScore.validate!(input[:nlu_confidence], context: "#{context}[:nlu_confidence]") unless input[:nlu_confidence].nil?
        SentimentResponse.validate!(input[:sentiment_response], context: "#{context}[:sentiment_response]") unless input[:sentiment_response].nil?
        Intent.validate!(input[:intent], context: "#{context}[:intent]") unless input[:intent].nil?
        Hearth::Validator.validate_types!(input[:interpretation_source], ::String, context: "#{context}[:interpretation_source]")
      end
    end

    class Interpretations
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Interpretation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Message, context: context)
        Hearth::Validator.validate_types!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate_required!(input[:content_type], context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        ImageResponseCard.validate!(input[:image_response_card], context: "#{context}[:image_response_card]") unless input[:image_response_card].nil?
      end
    end

    class Messages
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlaybackCompletionEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PlaybackCompletionEvent, context: context)
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate_types!(input[:client_timestamp_millis], ::Integer, context: "#{context}[:client_timestamp_millis]")
      end
    end

    class PlaybackInterruptionEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PlaybackInterruptionEvent, context: context)
        Hearth::Validator.validate_types!(input[:event_reason], ::String, context: "#{context}[:event_reason]")
        Hearth::Validator.validate_types!(input[:caused_by_event_id], ::String, context: "#{context}[:caused_by_event_id]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class PutSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutSessionInput, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_required!(input[:bot_alias_id], context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_required!(input[:locale_id], context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_required!(input[:session_id], context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate_required!(input[:session_state], context: "#{context}[:session_state]")
        SessionState.validate!(input[:session_state], context: "#{context}[:session_state]") unless input[:session_state].nil?
        StringMap.validate!(input[:request_attributes], context: "#{context}[:request_attributes]") unless input[:request_attributes].nil?
        Hearth::Validator.validate_types!(input[:response_content_type], ::String, context: "#{context}[:response_content_type]")
      end
    end

    class PutSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutSessionOutput, context: context)
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:messages], ::String, context: "#{context}[:messages]")
        Hearth::Validator.validate_types!(input[:session_state], ::String, context: "#{context}[:session_state]")
        Hearth::Validator.validate_types!(input[:request_attributes], ::String, context: "#{context}[:request_attributes]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        unless input[:audio_stream].respond_to?(:read) || input[:audio_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:audio_stream].class}"
        end
      end
    end

    class RecognizeTextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecognizeTextInput, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_required!(input[:bot_alias_id], context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_required!(input[:locale_id], context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_required!(input[:session_id], context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_required!(input[:text], context: "#{context}[:text]")
        Hearth::Validator.validate_types!(input[:text], ::String, context: "#{context}[:text]")
        SessionState.validate!(input[:session_state], context: "#{context}[:session_state]") unless input[:session_state].nil?
        StringMap.validate!(input[:request_attributes], context: "#{context}[:request_attributes]") unless input[:request_attributes].nil?
      end
    end

    class RecognizeTextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecognizeTextOutput, context: context)
        Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        SessionState.validate!(input[:session_state], context: "#{context}[:session_state]") unless input[:session_state].nil?
        Interpretations.validate!(input[:interpretations], context: "#{context}[:interpretations]") unless input[:interpretations].nil?
        StringMap.validate!(input[:request_attributes], context: "#{context}[:request_attributes]") unless input[:request_attributes].nil?
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        RecognizedBotMember.validate!(input[:recognized_bot_member], context: "#{context}[:recognized_bot_member]") unless input[:recognized_bot_member].nil?
      end
    end

    class RecognizeUtteranceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecognizeUtteranceInput, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_required!(input[:bot_alias_id], context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_required!(input[:locale_id], context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_required!(input[:session_id], context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_state], ::String, context: "#{context}[:session_state]")
        Hearth::Validator.validate_types!(input[:request_attributes], ::String, context: "#{context}[:request_attributes]")
        Hearth::Validator.validate_required!(input[:request_content_type], context: "#{context}[:request_content_type]")
        Hearth::Validator.validate_types!(input[:request_content_type], ::String, context: "#{context}[:request_content_type]")
        Hearth::Validator.validate_types!(input[:response_content_type], ::String, context: "#{context}[:response_content_type]")
        unless input[:input_stream].respond_to?(:read) || input[:input_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:input_stream].class}"
        end
      end
    end

    class RecognizeUtteranceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecognizeUtteranceOutput, context: context)
        Hearth::Validator.validate_types!(input[:input_mode], ::String, context: "#{context}[:input_mode]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:messages], ::String, context: "#{context}[:messages]")
        Hearth::Validator.validate_types!(input[:interpretations], ::String, context: "#{context}[:interpretations]")
        Hearth::Validator.validate_types!(input[:session_state], ::String, context: "#{context}[:session_state]")
        Hearth::Validator.validate_types!(input[:request_attributes], ::String, context: "#{context}[:request_attributes]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:input_transcript], ::String, context: "#{context}[:input_transcript]")
        unless input[:audio_stream].respond_to?(:read) || input[:audio_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:audio_stream].class}"
        end
        Hearth::Validator.validate_types!(input[:recognized_bot_member], ::String, context: "#{context}[:recognized_bot_member]")
      end
    end

    class RecognizedBotMember
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecognizedBotMember, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuntimeHintDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RuntimeHintDetails, context: context)
        RuntimeHintValuesList.validate!(input[:runtime_hint_values], context: "#{context}[:runtime_hint_values]") unless input[:runtime_hint_values].nil?
        SlotHintsSlotMap.validate!(input[:sub_slot_hints], context: "#{context}[:sub_slot_hints]") unless input[:sub_slot_hints].nil?
      end
    end

    class RuntimeHintValue
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RuntimeHintValue, context: context)
        Hearth::Validator.validate_required!(input[:phrase], context: "#{context}[:phrase]")
        Hearth::Validator.validate_types!(input[:phrase], ::String, context: "#{context}[:phrase]")
      end
    end

    class RuntimeHintValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuntimeHintValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuntimeHints
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RuntimeHints, context: context)
        SlotHintsIntentMap.validate!(input[:slot_hints], context: "#{context}[:slot_hints]") unless input[:slot_hints].nil?
      end
    end

    class SentimentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SentimentResponse, context: context)
        Hearth::Validator.validate_types!(input[:sentiment], ::String, context: "#{context}[:sentiment]")
        SentimentScore.validate!(input[:sentiment_score], context: "#{context}[:sentiment_score]") unless input[:sentiment_score].nil?
      end
    end

    class SentimentScore
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SentimentScore, context: context)
        Hearth::Validator.validate_types!(input[:positive], ::Float, context: "#{context}[:positive]")
        Hearth::Validator.validate_types!(input[:negative], ::Float, context: "#{context}[:negative]")
        Hearth::Validator.validate_types!(input[:neutral], ::Float, context: "#{context}[:neutral]")
        Hearth::Validator.validate_types!(input[:mixed], ::Float, context: "#{context}[:mixed]")
      end
    end

    class SessionState
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SessionState, context: context)
        DialogAction.validate!(input[:dialog_action], context: "#{context}[:dialog_action]") unless input[:dialog_action].nil?
        Intent.validate!(input[:intent], context: "#{context}[:intent]") unless input[:intent].nil?
        ActiveContextsList.validate!(input[:active_contexts], context: "#{context}[:active_contexts]") unless input[:active_contexts].nil?
        StringMap.validate!(input[:session_attributes], context: "#{context}[:session_attributes]") unless input[:session_attributes].nil?
        Hearth::Validator.validate_types!(input[:originating_request_id], ::String, context: "#{context}[:originating_request_id]")
        RuntimeHints.validate!(input[:runtime_hints], context: "#{context}[:runtime_hints]") unless input[:runtime_hints].nil?
      end
    end

    class Slot
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Slot, context: context)
        Value.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate_types!(input[:shape], ::String, context: "#{context}[:shape]")
        Values.validate!(input[:member_values], context: "#{context}[:member_values]") unless input[:member_values].nil?
        Slots.validate!(input[:sub_slots], context: "#{context}[:sub_slots]") unless input[:sub_slots].nil?
      end
    end

    class SlotHintsIntentMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          SlotHintsSlotMap.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class SlotHintsSlotMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          RuntimeHintDetails.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Slots
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Slot.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class StartConversationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartConversationInput, context: context)
        Hearth::Validator.validate_required!(input[:bot_id], context: "#{context}[:bot_id]")
        Hearth::Validator.validate_types!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate_required!(input[:bot_alias_id], context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_types!(input[:bot_alias_id], ::String, context: "#{context}[:bot_alias_id]")
        Hearth::Validator.validate_required!(input[:locale_id], context: "#{context}[:locale_id]")
        Hearth::Validator.validate_types!(input[:locale_id], ::String, context: "#{context}[:locale_id]")
        Hearth::Validator.validate_required!(input[:session_id], context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input[:conversation_mode], ::String, context: "#{context}[:conversation_mode]")
        StartConversationRequestEventStream.validate!(input[:request_event_stream], context: "#{context}[:request_event_stream]") unless input[:request_event_stream].nil?
      end
    end

    class StartConversationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartConversationOutput, context: context)
        StartConversationResponseEventStream.validate!(input[:response_event_stream], context: "#{context}[:response_event_stream]") unless input[:response_event_stream].nil?
      end
    end

    class StartConversationRequestEventStream
      def self.validate!(input, context:)
        case input
        when Types::StartConversationRequestEventStream::ConfigurationEvent
          ConfigurationEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationRequestEventStream::AudioInputEvent
          AudioInputEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationRequestEventStream::DtmfInputEvent
          DTMFInputEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationRequestEventStream::TextInputEvent
          TextInputEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationRequestEventStream::PlaybackCompletionEvent
          PlaybackCompletionEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationRequestEventStream::DisconnectionEvent
          DisconnectionEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::StartConversationRequestEventStream, got #{input.class}."
        end
      end

      class ConfigurationEvent
        def self.validate!(input, context:)
          Validators::ConfigurationEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class AudioInputEvent
        def self.validate!(input, context:)
          Validators::AudioInputEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class DtmfInputEvent
        def self.validate!(input, context:)
          Validators::DTMFInputEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class TextInputEvent
        def self.validate!(input, context:)
          Validators::TextInputEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class PlaybackCompletionEvent
        def self.validate!(input, context:)
          Validators::PlaybackCompletionEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class DisconnectionEvent
        def self.validate!(input, context:)
          Validators::DisconnectionEvent.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class StartConversationResponseEventStream
      def self.validate!(input, context:)
        case input
        when Types::StartConversationResponseEventStream::PlaybackInterruptionEvent
          PlaybackInterruptionEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::TranscriptEvent
          TranscriptEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::IntentResultEvent
          IntentResultEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::TextResponseEvent
          TextResponseEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::AudioResponseEvent
          AudioResponseEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::HeartbeatEvent
          HeartbeatEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::AccessDeniedException
          AccessDeniedException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::ResourceNotFoundException
          ResourceNotFoundException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::ValidationException
          ValidationException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::ThrottlingException
          ThrottlingException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::InternalServerException
          InternalServerException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::ConflictException
          ConflictException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::DependencyFailedException
          DependencyFailedException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StartConversationResponseEventStream::BadGatewayException
          BadGatewayException.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::StartConversationResponseEventStream, got #{input.class}."
        end
      end

      class PlaybackInterruptionEvent
        def self.validate!(input, context:)
          Validators::PlaybackInterruptionEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class TranscriptEvent
        def self.validate!(input, context:)
          Validators::TranscriptEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class IntentResultEvent
        def self.validate!(input, context:)
          Validators::IntentResultEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class TextResponseEvent
        def self.validate!(input, context:)
          Validators::TextResponseEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class AudioResponseEvent
        def self.validate!(input, context:)
          Validators::AudioResponseEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class HeartbeatEvent
        def self.validate!(input, context:)
          Validators::HeartbeatEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class AccessDeniedException
        def self.validate!(input, context:)
          Validators::AccessDeniedException.validate!(input, context: context) unless input.nil?
        end
      end

      class ResourceNotFoundException
        def self.validate!(input, context:)
          Validators::ResourceNotFoundException.validate!(input, context: context) unless input.nil?
        end
      end

      class ValidationException
        def self.validate!(input, context:)
          Validators::ValidationException.validate!(input, context: context) unless input.nil?
        end
      end

      class ThrottlingException
        def self.validate!(input, context:)
          Validators::ThrottlingException.validate!(input, context: context) unless input.nil?
        end
      end

      class InternalServerException
        def self.validate!(input, context:)
          Validators::InternalServerException.validate!(input, context: context) unless input.nil?
        end
      end

      class ConflictException
        def self.validate!(input, context:)
          Validators::ConflictException.validate!(input, context: context) unless input.nil?
        end
      end

      class DependencyFailedException
        def self.validate!(input, context:)
          Validators::DependencyFailedException.validate!(input, context: context) unless input.nil?
        end
      end

      class BadGatewayException
        def self.validate!(input, context:)
          Validators::BadGatewayException.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TextInputEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TextInputEvent, context: context)
        Hearth::Validator.validate_required!(input[:text], context: "#{context}[:text]")
        Hearth::Validator.validate_types!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate_types!(input[:client_timestamp_millis], ::Integer, context: "#{context}[:client_timestamp_millis]")
      end
    end

    class TextResponseEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TextResponseEvent, context: context)
        Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TranscriptEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TranscriptEvent, context: context)
        Hearth::Validator.validate_types!(input[:transcript], ::String, context: "#{context}[:transcript]")
        Hearth::Validator.validate_types!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Value
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Value, context: context)
        Hearth::Validator.validate_types!(input[:original_value], ::String, context: "#{context}[:original_value]")
        Hearth::Validator.validate_required!(input[:interpreted_value], context: "#{context}[:interpreted_value]")
        Hearth::Validator.validate_types!(input[:interpreted_value], ::String, context: "#{context}[:interpreted_value]")
        StringList.validate!(input[:resolved_values], context: "#{context}[:resolved_values]") unless input[:resolved_values].nil?
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Slot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
