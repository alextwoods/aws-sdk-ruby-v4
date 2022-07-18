# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexRuntimeService
  module Parsers

    # Operation Parser for DeleteSession
    class DeleteSession
      def self.parse(http_resp)
        data = Types::DeleteSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_name = map['botName']
        data.bot_alias = map['botAlias']
        data.user_id = map['userId']
        data.session_id = map['sessionId']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetSession
    class GetSession
      def self.parse(http_resp)
        data = Types::GetSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recent_intent_summary_view = (Parsers::IntentSummaryList.parse(map['recentIntentSummaryView']) unless map['recentIntentSummaryView'].nil?)
        data.session_attributes = (Parsers::StringMap.parse(map['sessionAttributes']) unless map['sessionAttributes'].nil?)
        data.session_id = map['sessionId']
        data.dialog_action = (Parsers::DialogAction.parse(map['dialogAction']) unless map['dialogAction'].nil?)
        data.active_contexts = (Parsers::ActiveContextsList.parse(map['activeContexts']) unless map['activeContexts'].nil?)
        data
      end
    end

    class ActiveContextsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActiveContext.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActiveContext
      def self.parse(map)
        data = Types::ActiveContext.new
        data.name = map['name']
        data.time_to_live = (Parsers::ActiveContextTimeToLive.parse(map['timeToLive']) unless map['timeToLive'].nil?)
        data.parameters = (Parsers::ActiveContextParametersMap.parse(map['parameters']) unless map['parameters'].nil?)
        return data
      end
    end

    class ActiveContextParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ActiveContextTimeToLive
      def self.parse(map)
        data = Types::ActiveContextTimeToLive.new
        data.time_to_live_in_seconds = map['timeToLiveInSeconds']
        data.turns_to_live = map['turnsToLive']
        return data
      end
    end

    class DialogAction
      def self.parse(map)
        data = Types::DialogAction.new
        data.type = map['type']
        data.intent_name = map['intentName']
        data.slots = (Parsers::StringMap.parse(map['slots']) unless map['slots'].nil?)
        data.slot_to_elicit = map['slotToElicit']
        data.fulfillment_state = map['fulfillmentState']
        data.message = map['message'] || map['Message']
        data.message_format = map['messageFormat']
        return data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class IntentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IntentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntentSummary
      def self.parse(map)
        data = Types::IntentSummary.new
        data.intent_name = map['intentName']
        data.checkpoint_label = map['checkpointLabel']
        data.slots = (Parsers::StringMap.parse(map['slots']) unless map['slots'].nil?)
        data.confirmation_status = map['confirmationStatus']
        data.dialog_action_type = map['dialogActionType']
        data.fulfillment_state = map['fulfillmentState']
        data.slot_to_elicit = map['slotToElicit']
        return data
      end
    end

    # Operation Parser for PostContent
    class PostContent
      def self.parse(http_resp)
        data = Types::PostContentOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.intent_name = http_resp.headers['x-amz-lex-intent-name']
        data.nlu_intent_confidence = ::Base64::decode64(http_resp.headers['x-amz-lex-nlu-intent-confidence']).strip unless http_resp.headers['x-amz-lex-nlu-intent-confidence'].nil?
        data.alternative_intents = ::Base64::decode64(http_resp.headers['x-amz-lex-alternative-intents']).strip unless http_resp.headers['x-amz-lex-alternative-intents'].nil?
        data.slots = ::Base64::decode64(http_resp.headers['x-amz-lex-slots']).strip unless http_resp.headers['x-amz-lex-slots'].nil?
        data.session_attributes = ::Base64::decode64(http_resp.headers['x-amz-lex-session-attributes']).strip unless http_resp.headers['x-amz-lex-session-attributes'].nil?
        data.sentiment_response = http_resp.headers['x-amz-lex-sentiment']
        data.message = http_resp.headers['x-amz-lex-message']
        data.encoded_message = http_resp.headers['x-amz-lex-encoded-message']
        data.message_format = http_resp.headers['x-amz-lex-message-format']
        data.dialog_state = http_resp.headers['x-amz-lex-dialog-state']
        data.slot_to_elicit = http_resp.headers['x-amz-lex-slot-to-elicit']
        data.input_transcript = http_resp.headers['x-amz-lex-input-transcript']
        data.encoded_input_transcript = http_resp.headers['x-amz-lex-encoded-input-transcript']
        data.bot_version = http_resp.headers['x-amz-lex-bot-version']
        data.session_id = http_resp.headers['x-amz-lex-session-id']
        data.active_contexts = ::Base64::decode64(http_resp.headers['x-amz-lex-active-contexts']).strip unless http_resp.headers['x-amz-lex-active-contexts'].nil?
        data.audio_stream = http_resp.body
        data
      end
    end

    # Error Parser for UnsupportedMediaTypeException
    class UnsupportedMediaTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedMediaTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for DependencyFailedException
    class DependencyFailedException
      def self.parse(http_resp)
        data = Types::DependencyFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LoopDetectedException
    class LoopDetectedException
      def self.parse(http_resp)
        data = Types::LoopDetectedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RequestTimeoutException
    class RequestTimeoutException
      def self.parse(http_resp)
        data = Types::RequestTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotAcceptableException
    class NotAcceptableException
      def self.parse(http_resp)
        data = Types::NotAcceptableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadGatewayException
    class BadGatewayException
      def self.parse(http_resp)
        data = Types::BadGatewayException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PostText
    class PostText
      def self.parse(http_resp)
        data = Types::PostTextOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.intent_name = map['intentName']
        data.nlu_intent_confidence = (Parsers::IntentConfidence.parse(map['nluIntentConfidence']) unless map['nluIntentConfidence'].nil?)
        data.alternative_intents = (Parsers::IntentList.parse(map['alternativeIntents']) unless map['alternativeIntents'].nil?)
        data.slots = (Parsers::StringMap.parse(map['slots']) unless map['slots'].nil?)
        data.session_attributes = (Parsers::StringMap.parse(map['sessionAttributes']) unless map['sessionAttributes'].nil?)
        data.message = map['message'] || map['Message']
        data.sentiment_response = (Parsers::SentimentResponse.parse(map['sentimentResponse']) unless map['sentimentResponse'].nil?)
        data.message_format = map['messageFormat']
        data.dialog_state = map['dialogState']
        data.slot_to_elicit = map['slotToElicit']
        data.response_card = (Parsers::ResponseCard.parse(map['responseCard']) unless map['responseCard'].nil?)
        data.session_id = map['sessionId']
        data.bot_version = map['botVersion']
        data.active_contexts = (Parsers::ActiveContextsList.parse(map['activeContexts']) unless map['activeContexts'].nil?)
        data
      end
    end

    class ResponseCard
      def self.parse(map)
        data = Types::ResponseCard.new
        data.version = map['version']
        data.content_type = map['contentType']
        data.generic_attachments = (Parsers::GenericAttachmentList.parse(map['genericAttachments']) unless map['genericAttachments'].nil?)
        return data
      end
    end

    class GenericAttachmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GenericAttachment.parse(value) unless value.nil?
        end
        data
      end
    end

    class GenericAttachment
      def self.parse(map)
        data = Types::GenericAttachment.new
        data.title = map['title']
        data.sub_title = map['subTitle']
        data.attachment_link_url = map['attachmentLinkUrl']
        data.image_url = map['imageUrl']
        data.buttons = (Parsers::ListOfButtons.parse(map['buttons']) unless map['buttons'].nil?)
        return data
      end
    end

    class ListOfButtons
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Button.parse(value) unless value.nil?
        end
        data
      end
    end

    class Button
      def self.parse(map)
        data = Types::Button.new
        data.text = map['text']
        data.value = map['value']
        return data
      end
    end

    class SentimentResponse
      def self.parse(map)
        data = Types::SentimentResponse.new
        data.sentiment_label = map['sentimentLabel']
        data.sentiment_score = map['sentimentScore']
        return data
      end
    end

    class IntentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PredictedIntent.parse(value) unless value.nil?
        end
        data
      end
    end

    class PredictedIntent
      def self.parse(map)
        data = Types::PredictedIntent.new
        data.intent_name = map['intentName']
        data.nlu_intent_confidence = (Parsers::IntentConfidence.parse(map['nluIntentConfidence']) unless map['nluIntentConfidence'].nil?)
        data.slots = (Parsers::StringMap.parse(map['slots']) unless map['slots'].nil?)
        return data
      end
    end

    class IntentConfidence
      def self.parse(map)
        data = Types::IntentConfidence.new
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        return data
      end
    end

    # Operation Parser for PutSession
    class PutSession
      def self.parse(http_resp)
        data = Types::PutSessionOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.intent_name = http_resp.headers['x-amz-lex-intent-name']
        data.slots = ::Base64::decode64(http_resp.headers['x-amz-lex-slots']).strip unless http_resp.headers['x-amz-lex-slots'].nil?
        data.session_attributes = ::Base64::decode64(http_resp.headers['x-amz-lex-session-attributes']).strip unless http_resp.headers['x-amz-lex-session-attributes'].nil?
        data.message = http_resp.headers['x-amz-lex-message']
        data.encoded_message = http_resp.headers['x-amz-lex-encoded-message']
        data.message_format = http_resp.headers['x-amz-lex-message-format']
        data.dialog_state = http_resp.headers['x-amz-lex-dialog-state']
        data.slot_to_elicit = http_resp.headers['x-amz-lex-slot-to-elicit']
        data.session_id = http_resp.headers['x-amz-lex-session-id']
        data.active_contexts = ::Base64::decode64(http_resp.headers['x-amz-lex-active-contexts']).strip unless http_resp.headers['x-amz-lex-active-contexts'].nil?
        data.audio_stream = http_resp.body
        data
      end
    end
  end
end
