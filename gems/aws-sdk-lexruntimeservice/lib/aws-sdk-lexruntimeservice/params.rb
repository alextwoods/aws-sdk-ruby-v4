# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeService
  module Params

    module ActiveContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveContext, context: context)
        type = Types::ActiveContext.new
        type.name = params[:name]
        type.time_to_live = ActiveContextTimeToLive.build(params[:time_to_live], context: "#{context}[:time_to_live]") unless params[:time_to_live].nil?
        type.parameters = ActiveContextParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
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

    module BadGatewayException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadGatewayException, context: context)
        type = Types::BadGatewayException.new
        type.message = params[:message]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
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

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSessionInput, context: context)
        type = Types::DeleteSessionInput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.user_id = params[:user_id]
        type
      end
    end

    module DeleteSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSessionOutput, context: context)
        type = Types::DeleteSessionOutput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.user_id = params[:user_id]
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
        type.intent_name = params[:intent_name]
        type.slots = StringMap.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.slot_to_elicit = params[:slot_to_elicit]
        type.fulfillment_state = params[:fulfillment_state]
        type.message = params[:message]
        type.message_format = params[:message_format]
        type
      end
    end

    module GenericAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenericAttachment, context: context)
        type = Types::GenericAttachment.new
        type.title = params[:title]
        type.sub_title = params[:sub_title]
        type.attachment_link_url = params[:attachment_link_url]
        type.image_url = params[:image_url]
        type.buttons = ListOfButtons.build(params[:buttons], context: "#{context}[:buttons]") unless params[:buttons].nil?
        type
      end
    end

    module GetSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionInput, context: context)
        type = Types::GetSessionInput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.user_id = params[:user_id]
        type.checkpoint_label_filter = params[:checkpoint_label_filter]
        type
      end
    end

    module GetSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionOutput, context: context)
        type = Types::GetSessionOutput.new
        type.recent_intent_summary_view = IntentSummaryList.build(params[:recent_intent_summary_view], context: "#{context}[:recent_intent_summary_view]") unless params[:recent_intent_summary_view].nil?
        type.session_attributes = StringMap.build(params[:session_attributes], context: "#{context}[:session_attributes]") unless params[:session_attributes].nil?
        type.session_id = params[:session_id]
        type.dialog_action = DialogAction.build(params[:dialog_action], context: "#{context}[:dialog_action]") unless params[:dialog_action].nil?
        type.active_contexts = ActiveContextsList.build(params[:active_contexts], context: "#{context}[:active_contexts]") unless params[:active_contexts].nil?
        type
      end
    end

    module IntentConfidence
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentConfidence, context: context)
        type = Types::IntentConfidence.new
        type.score = params[:score]
        type
      end
    end

    module IntentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictedIntent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntentSummary, context: context)
        type = Types::IntentSummary.new
        type.intent_name = params[:intent_name]
        type.checkpoint_label = params[:checkpoint_label]
        type.slots = StringMap.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.confirmation_status = params[:confirmation_status]
        type.dialog_action_type = params[:dialog_action_type]
        type.fulfillment_state = params[:fulfillment_state]
        type.slot_to_elicit = params[:slot_to_elicit]
        type
      end
    end

    module IntentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module LoopDetectedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoopDetectedException, context: context)
        type = Types::LoopDetectedException.new
        type.message = params[:message]
        type
      end
    end

    module NotAcceptableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAcceptableException, context: context)
        type = Types::NotAcceptableException.new
        type.message = params[:message]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PostContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostContentInput, context: context)
        type = Types::PostContentInput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.user_id = params[:user_id]
        type.session_attributes = params[:session_attributes]
        type.request_attributes = params[:request_attributes]
        type.content_type = params[:content_type]
        type.accept = params[:accept]
        io = params[:input_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.input_stream = io
        type.active_contexts = params[:active_contexts]
        type
      end
    end

    module PostContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostContentOutput, context: context)
        type = Types::PostContentOutput.new
        type.content_type = params[:content_type]
        type.intent_name = params[:intent_name]
        type.nlu_intent_confidence = params[:nlu_intent_confidence]
        type.alternative_intents = params[:alternative_intents]
        type.slots = params[:slots]
        type.session_attributes = params[:session_attributes]
        type.sentiment_response = params[:sentiment_response]
        type.message = params[:message]
        type.encoded_message = params[:encoded_message]
        type.message_format = params[:message_format]
        type.dialog_state = params[:dialog_state]
        type.slot_to_elicit = params[:slot_to_elicit]
        type.input_transcript = params[:input_transcript]
        type.encoded_input_transcript = params[:encoded_input_transcript]
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type.bot_version = params[:bot_version]
        type.session_id = params[:session_id]
        type.active_contexts = params[:active_contexts]
        type
      end
    end

    module PostTextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostTextInput, context: context)
        type = Types::PostTextInput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.user_id = params[:user_id]
        type.session_attributes = StringMap.build(params[:session_attributes], context: "#{context}[:session_attributes]") unless params[:session_attributes].nil?
        type.request_attributes = StringMap.build(params[:request_attributes], context: "#{context}[:request_attributes]") unless params[:request_attributes].nil?
        type.input_text = params[:input_text]
        type.active_contexts = ActiveContextsList.build(params[:active_contexts], context: "#{context}[:active_contexts]") unless params[:active_contexts].nil?
        type
      end
    end

    module PostTextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostTextOutput, context: context)
        type = Types::PostTextOutput.new
        type.intent_name = params[:intent_name]
        type.nlu_intent_confidence = IntentConfidence.build(params[:nlu_intent_confidence], context: "#{context}[:nlu_intent_confidence]") unless params[:nlu_intent_confidence].nil?
        type.alternative_intents = IntentList.build(params[:alternative_intents], context: "#{context}[:alternative_intents]") unless params[:alternative_intents].nil?
        type.slots = StringMap.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type.session_attributes = StringMap.build(params[:session_attributes], context: "#{context}[:session_attributes]") unless params[:session_attributes].nil?
        type.message = params[:message]
        type.sentiment_response = SentimentResponse.build(params[:sentiment_response], context: "#{context}[:sentiment_response]") unless params[:sentiment_response].nil?
        type.message_format = params[:message_format]
        type.dialog_state = params[:dialog_state]
        type.slot_to_elicit = params[:slot_to_elicit]
        type.response_card = ResponseCard.build(params[:response_card], context: "#{context}[:response_card]") unless params[:response_card].nil?
        type.session_id = params[:session_id]
        type.bot_version = params[:bot_version]
        type.active_contexts = ActiveContextsList.build(params[:active_contexts], context: "#{context}[:active_contexts]") unless params[:active_contexts].nil?
        type
      end
    end

    module PredictedIntent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictedIntent, context: context)
        type = Types::PredictedIntent.new
        type.intent_name = params[:intent_name]
        type.nlu_intent_confidence = IntentConfidence.build(params[:nlu_intent_confidence], context: "#{context}[:nlu_intent_confidence]") unless params[:nlu_intent_confidence].nil?
        type.slots = StringMap.build(params[:slots], context: "#{context}[:slots]") unless params[:slots].nil?
        type
      end
    end

    module PutSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSessionInput, context: context)
        type = Types::PutSessionInput.new
        type.bot_name = params[:bot_name]
        type.bot_alias = params[:bot_alias]
        type.user_id = params[:user_id]
        type.session_attributes = StringMap.build(params[:session_attributes], context: "#{context}[:session_attributes]") unless params[:session_attributes].nil?
        type.dialog_action = DialogAction.build(params[:dialog_action], context: "#{context}[:dialog_action]") unless params[:dialog_action].nil?
        type.recent_intent_summary_view = IntentSummaryList.build(params[:recent_intent_summary_view], context: "#{context}[:recent_intent_summary_view]") unless params[:recent_intent_summary_view].nil?
        type.accept = params[:accept]
        type.active_contexts = ActiveContextsList.build(params[:active_contexts], context: "#{context}[:active_contexts]") unless params[:active_contexts].nil?
        type
      end
    end

    module PutSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSessionOutput, context: context)
        type = Types::PutSessionOutput.new
        type.content_type = params[:content_type]
        type.intent_name = params[:intent_name]
        type.slots = params[:slots]
        type.session_attributes = params[:session_attributes]
        type.message = params[:message]
        type.encoded_message = params[:encoded_message]
        type.message_format = params[:message_format]
        type.dialog_state = params[:dialog_state]
        type.slot_to_elicit = params[:slot_to_elicit]
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type.session_id = params[:session_id]
        type.active_contexts = params[:active_contexts]
        type
      end
    end

    module RequestTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestTimeoutException, context: context)
        type = Types::RequestTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module ResponseCard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseCard, context: context)
        type = Types::ResponseCard.new
        type.version = params[:version]
        type.content_type = params[:content_type]
        type.generic_attachments = GenericAttachmentList.build(params[:generic_attachments], context: "#{context}[:generic_attachments]") unless params[:generic_attachments].nil?
        type
      end
    end

    module SentimentResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentResponse, context: context)
        type = Types::SentimentResponse.new
        type.sentiment_label = params[:sentiment_label]
        type.sentiment_score = params[:sentiment_score]
        type
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

    module UnsupportedMediaTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedMediaTypeException, context: context)
        type = Types::UnsupportedMediaTypeException.new
        type.message = params[:message]
        type
      end
    end

    module GenericAttachmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GenericAttachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfButtons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Button.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
