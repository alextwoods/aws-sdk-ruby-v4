# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeService
  module Validators

    class ActiveContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveContext, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ActiveContextTimeToLive.validate!(input[:time_to_live], context: "#{context}[:time_to_live]") unless input[:time_to_live].nil?
        ActiveContextParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ActiveContextParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ActiveContextTimeToLive
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveContextTimeToLive, context: context)
        Hearth::Validator.validate!(input[:time_to_live_in_seconds], ::Integer, context: "#{context}[:time_to_live_in_seconds]")
        Hearth::Validator.validate!(input[:turns_to_live], ::Integer, context: "#{context}[:turns_to_live]")
      end
    end

    class ActiveContextsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActiveContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadGatewayException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadGatewayException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Button
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Button, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSessionInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSessionOutput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class DependencyFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DialogAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DialogAction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        StringMap.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Hearth::Validator.validate!(input[:slot_to_elicit], ::String, context: "#{context}[:slot_to_elicit]")
        Hearth::Validator.validate!(input[:fulfillment_state], ::String, context: "#{context}[:fulfillment_state]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
      end
    end

    class GenericAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenericAttachment, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:sub_title], ::String, context: "#{context}[:sub_title]")
        Hearth::Validator.validate!(input[:attachment_link_url], ::String, context: "#{context}[:attachment_link_url]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        ListOfButtons.validate!(input[:buttons], context: "#{context}[:buttons]") unless input[:buttons].nil?
      end
    end

    class GetSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:checkpoint_label_filter], ::String, context: "#{context}[:checkpoint_label_filter]")
      end
    end

    class GetSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionOutput, context: context)
        IntentSummaryList.validate!(input[:recent_intent_summary_view], context: "#{context}[:recent_intent_summary_view]") unless input[:recent_intent_summary_view].nil?
        StringMap.validate!(input[:session_attributes], context: "#{context}[:session_attributes]") unless input[:session_attributes].nil?
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        DialogAction.validate!(input[:dialog_action], context: "#{context}[:dialog_action]") unless input[:dialog_action].nil?
        ActiveContextsList.validate!(input[:active_contexts], context: "#{context}[:active_contexts]") unless input[:active_contexts].nil?
      end
    end

    class IntentConfidence
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentConfidence, context: context)
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class IntentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PredictedIntent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntentSummary, context: context)
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:checkpoint_label], ::String, context: "#{context}[:checkpoint_label]")
        StringMap.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        Hearth::Validator.validate!(input[:confirmation_status], ::String, context: "#{context}[:confirmation_status]")
        Hearth::Validator.validate!(input[:dialog_action_type], ::String, context: "#{context}[:dialog_action_type]")
        Hearth::Validator.validate!(input[:fulfillment_state], ::String, context: "#{context}[:fulfillment_state]")
        Hearth::Validator.validate!(input[:slot_to_elicit], ::String, context: "#{context}[:slot_to_elicit]")
      end
    end

    class IntentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LoopDetectedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoopDetectedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotAcceptableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAcceptableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PostContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostContentInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:session_attributes], ::String, context: "#{context}[:session_attributes]")
        Hearth::Validator.validate!(input[:request_attributes], ::String, context: "#{context}[:request_attributes]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
        unless input[:input_stream].respond_to?(:read) || input[:input_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:input_stream].class}"
        end
        Hearth::Validator.validate!(input[:active_contexts], ::String, context: "#{context}[:active_contexts]")
      end
    end

    class PostContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostContentOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:nlu_intent_confidence], ::String, context: "#{context}[:nlu_intent_confidence]")
        Hearth::Validator.validate!(input[:alternative_intents], ::String, context: "#{context}[:alternative_intents]")
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
        Hearth::Validator.validate!(input[:session_attributes], ::String, context: "#{context}[:session_attributes]")
        Hearth::Validator.validate!(input[:sentiment_response], ::String, context: "#{context}[:sentiment_response]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:encoded_message], ::String, context: "#{context}[:encoded_message]")
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
        Hearth::Validator.validate!(input[:dialog_state], ::String, context: "#{context}[:dialog_state]")
        Hearth::Validator.validate!(input[:slot_to_elicit], ::String, context: "#{context}[:slot_to_elicit]")
        Hearth::Validator.validate!(input[:input_transcript], ::String, context: "#{context}[:input_transcript]")
        Hearth::Validator.validate!(input[:encoded_input_transcript], ::String, context: "#{context}[:encoded_input_transcript]")
        unless input[:audio_stream].respond_to?(:read) || input[:audio_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:audio_stream].class}"
        end
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:active_contexts], ::String, context: "#{context}[:active_contexts]")
      end
    end

    class PostTextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostTextInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        StringMap.validate!(input[:session_attributes], context: "#{context}[:session_attributes]") unless input[:session_attributes].nil?
        StringMap.validate!(input[:request_attributes], context: "#{context}[:request_attributes]") unless input[:request_attributes].nil?
        Hearth::Validator.validate!(input[:input_text], ::String, context: "#{context}[:input_text]")
        ActiveContextsList.validate!(input[:active_contexts], context: "#{context}[:active_contexts]") unless input[:active_contexts].nil?
      end
    end

    class PostTextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostTextOutput, context: context)
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        IntentConfidence.validate!(input[:nlu_intent_confidence], context: "#{context}[:nlu_intent_confidence]") unless input[:nlu_intent_confidence].nil?
        IntentList.validate!(input[:alternative_intents], context: "#{context}[:alternative_intents]") unless input[:alternative_intents].nil?
        StringMap.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
        StringMap.validate!(input[:session_attributes], context: "#{context}[:session_attributes]") unless input[:session_attributes].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        SentimentResponse.validate!(input[:sentiment_response], context: "#{context}[:sentiment_response]") unless input[:sentiment_response].nil?
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
        Hearth::Validator.validate!(input[:dialog_state], ::String, context: "#{context}[:dialog_state]")
        Hearth::Validator.validate!(input[:slot_to_elicit], ::String, context: "#{context}[:slot_to_elicit]")
        ResponseCard.validate!(input[:response_card], context: "#{context}[:response_card]") unless input[:response_card].nil?
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:bot_version], ::String, context: "#{context}[:bot_version]")
        ActiveContextsList.validate!(input[:active_contexts], context: "#{context}[:active_contexts]") unless input[:active_contexts].nil?
      end
    end

    class PredictedIntent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictedIntent, context: context)
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        IntentConfidence.validate!(input[:nlu_intent_confidence], context: "#{context}[:nlu_intent_confidence]") unless input[:nlu_intent_confidence].nil?
        StringMap.validate!(input[:slots], context: "#{context}[:slots]") unless input[:slots].nil?
      end
    end

    class PutSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSessionInput, context: context)
        Hearth::Validator.validate!(input[:bot_name], ::String, context: "#{context}[:bot_name]")
        Hearth::Validator.validate!(input[:bot_alias], ::String, context: "#{context}[:bot_alias]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        StringMap.validate!(input[:session_attributes], context: "#{context}[:session_attributes]") unless input[:session_attributes].nil?
        DialogAction.validate!(input[:dialog_action], context: "#{context}[:dialog_action]") unless input[:dialog_action].nil?
        IntentSummaryList.validate!(input[:recent_intent_summary_view], context: "#{context}[:recent_intent_summary_view]") unless input[:recent_intent_summary_view].nil?
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
        ActiveContextsList.validate!(input[:active_contexts], context: "#{context}[:active_contexts]") unless input[:active_contexts].nil?
      end
    end

    class PutSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSessionOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:intent_name], ::String, context: "#{context}[:intent_name]")
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
        Hearth::Validator.validate!(input[:session_attributes], ::String, context: "#{context}[:session_attributes]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:encoded_message], ::String, context: "#{context}[:encoded_message]")
        Hearth::Validator.validate!(input[:message_format], ::String, context: "#{context}[:message_format]")
        Hearth::Validator.validate!(input[:dialog_state], ::String, context: "#{context}[:dialog_state]")
        Hearth::Validator.validate!(input[:slot_to_elicit], ::String, context: "#{context}[:slot_to_elicit]")
        unless input[:audio_stream].respond_to?(:read) || input[:audio_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:audio_stream].class}"
        end
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:active_contexts], ::String, context: "#{context}[:active_contexts]")
      end
    end

    class RequestTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResponseCard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseCard, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        GenericAttachmentList.validate!(input[:generic_attachments], context: "#{context}[:generic_attachments]") unless input[:generic_attachments].nil?
      end
    end

    class SentimentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SentimentResponse, context: context)
        Hearth::Validator.validate!(input[:sentiment_label], ::String, context: "#{context}[:sentiment_label]")
        Hearth::Validator.validate!(input[:sentiment_score], ::String, context: "#{context}[:sentiment_score]")
      end
    end

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UnsupportedMediaTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedMediaTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GenericAttachmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GenericAttachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfButtons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Button.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
