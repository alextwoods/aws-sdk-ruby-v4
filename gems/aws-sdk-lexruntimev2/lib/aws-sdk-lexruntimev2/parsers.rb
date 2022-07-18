# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  module Parsers

    # Operation Parser for DeleteSession
    class DeleteSession
      def self.parse(http_resp)
        data = Types::DeleteSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot_id = map['botId']
        data.bot_alias_id = map['botAliasId']
        data.locale_id = map['localeId']
        data.session_id = map['sessionId']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
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

    # Operation Parser for GetSession
    class GetSession
      def self.parse(http_resp)
        data = Types::GetSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session_id = map['sessionId']
        data.messages = (Parsers::Messages.parse(map['messages']) unless map['messages'].nil?)
        data.interpretations = (Parsers::Interpretations.parse(map['interpretations']) unless map['interpretations'].nil?)
        data.session_state = (Parsers::SessionState.parse(map['sessionState']) unless map['sessionState'].nil?)
        data
      end
    end

    class SessionState
      def self.parse(map)
        data = Types::SessionState.new
        data.dialog_action = (Parsers::DialogAction.parse(map['dialogAction']) unless map['dialogAction'].nil?)
        data.intent = (Parsers::Intent.parse(map['intent']) unless map['intent'].nil?)
        data.active_contexts = (Parsers::ActiveContextsList.parse(map['activeContexts']) unless map['activeContexts'].nil?)
        data.session_attributes = (Parsers::StringMap.parse(map['sessionAttributes']) unless map['sessionAttributes'].nil?)
        data.originating_request_id = map['originatingRequestId']
        data.runtime_hints = (Parsers::RuntimeHints.parse(map['runtimeHints']) unless map['runtimeHints'].nil?)
        return data
      end
    end

    class RuntimeHints
      def self.parse(map)
        data = Types::RuntimeHints.new
        data.slot_hints = (Parsers::SlotHintsIntentMap.parse(map['slotHints']) unless map['slotHints'].nil?)
        return data
      end
    end

    class SlotHintsIntentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::SlotHintsSlotMap.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotHintsSlotMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::RuntimeHintDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuntimeHintDetails
      def self.parse(map)
        data = Types::RuntimeHintDetails.new
        data.runtime_hint_values = (Parsers::RuntimeHintValuesList.parse(map['runtimeHintValues']) unless map['runtimeHintValues'].nil?)
        return data
      end
    end

    class RuntimeHintValuesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuntimeHintValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuntimeHintValue
      def self.parse(map)
        data = Types::RuntimeHintValue.new
        data.phrase = map['phrase']
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
        data.context_attributes = (Parsers::ActiveContextParametersMap.parse(map['contextAttributes']) unless map['contextAttributes'].nil?)
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

    class Intent
      def self.parse(map)
        data = Types::Intent.new
        data.name = map['name']
        data.slots = (Parsers::Slots.parse(map['slots']) unless map['slots'].nil?)
        data.state = map['state']
        data.confirmation_state = map['confirmationState']
        return data
      end
    end

    class Slots
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Slot.parse(value) unless value.nil?
        end
        data
      end
    end

    class Slot
      def self.parse(map)
        data = Types::Slot.new
        data.value = (Parsers::Value.parse(map['value']) unless map['value'].nil?)
        data.shape = map['shape']
        data.values = (Parsers::Values.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class Values
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Slot.parse(value) unless value.nil?
        end
        data
      end
    end

    class Value
      def self.parse(map)
        data = Types::Value.new
        data.original_value = map['originalValue']
        data.interpreted_value = map['interpretedValue']
        data.resolved_values = (Parsers::StringList.parse(map['resolvedValues']) unless map['resolvedValues'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DialogAction
      def self.parse(map)
        data = Types::DialogAction.new
        data.type = map['type']
        data.slot_to_elicit = map['slotToElicit']
        data.slot_elicitation_style = map['slotElicitationStyle']
        return data
      end
    end

    class Interpretations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Interpretation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Interpretation
      def self.parse(map)
        data = Types::Interpretation.new
        data.nlu_confidence = (Parsers::ConfidenceScore.parse(map['nluConfidence']) unless map['nluConfidence'].nil?)
        data.sentiment_response = (Parsers::SentimentResponse.parse(map['sentimentResponse']) unless map['sentimentResponse'].nil?)
        data.intent = (Parsers::Intent.parse(map['intent']) unless map['intent'].nil?)
        return data
      end
    end

    class SentimentResponse
      def self.parse(map)
        data = Types::SentimentResponse.new
        data.sentiment = map['sentiment']
        data.sentiment_score = (Parsers::SentimentScore.parse(map['sentimentScore']) unless map['sentimentScore'].nil?)
        return data
      end
    end

    class SentimentScore
      def self.parse(map)
        data = Types::SentimentScore.new
        data.positive = Hearth::NumberHelper.deserialize(map['positive'])
        data.negative = Hearth::NumberHelper.deserialize(map['negative'])
        data.neutral = Hearth::NumberHelper.deserialize(map['neutral'])
        data.mixed = Hearth::NumberHelper.deserialize(map['mixed'])
        return data
      end
    end

    class ConfidenceScore
      def self.parse(map)
        data = Types::ConfidenceScore.new
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        return data
      end
    end

    class Messages
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Message.parse(value) unless value.nil?
        end
        data
      end
    end

    class Message
      def self.parse(map)
        data = Types::Message.new
        data.content = map['content']
        data.content_type = map['contentType']
        data.image_response_card = (Parsers::ImageResponseCard.parse(map['imageResponseCard']) unless map['imageResponseCard'].nil?)
        return data
      end
    end

    class ImageResponseCard
      def self.parse(map)
        data = Types::ImageResponseCard.new
        data.title = map['title']
        data.subtitle = map['subtitle']
        data.image_url = map['imageUrl']
        data.buttons = (Parsers::ButtonsList.parse(map['buttons']) unless map['buttons'].nil?)
        return data
      end
    end

    class ButtonsList
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

    # Operation Parser for PutSession
    class PutSession
      def self.parse(http_resp)
        data = Types::PutSessionOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.messages = http_resp.headers['x-amz-lex-messages']
        data.session_state = http_resp.headers['x-amz-lex-session-state']
        data.request_attributes = http_resp.headers['x-amz-lex-request-attributes']
        data.session_id = http_resp.headers['x-amz-lex-session-id']
        data.audio_stream = http_resp.body
        data
      end
    end

    # Error Parser for BadGatewayException
    class BadGatewayException
      def self.parse(http_resp)
        data = Types::BadGatewayException.new
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
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for RecognizeText
    class RecognizeText
      def self.parse(http_resp)
        data = Types::RecognizeTextOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.messages = (Parsers::Messages.parse(map['messages']) unless map['messages'].nil?)
        data.session_state = (Parsers::SessionState.parse(map['sessionState']) unless map['sessionState'].nil?)
        data.interpretations = (Parsers::Interpretations.parse(map['interpretations']) unless map['interpretations'].nil?)
        data.request_attributes = (Parsers::StringMap.parse(map['requestAttributes']) unless map['requestAttributes'].nil?)
        data.session_id = map['sessionId']
        data
      end
    end

    # Operation Parser for RecognizeUtterance
    class RecognizeUtterance
      def self.parse(http_resp)
        data = Types::RecognizeUtteranceOutput.new
        data.input_mode = http_resp.headers['x-amz-lex-input-mode']
        data.content_type = http_resp.headers['Content-Type']
        data.messages = http_resp.headers['x-amz-lex-messages']
        data.interpretations = http_resp.headers['x-amz-lex-interpretations']
        data.session_state = http_resp.headers['x-amz-lex-session-state']
        data.request_attributes = http_resp.headers['x-amz-lex-request-attributes']
        data.session_id = http_resp.headers['x-amz-lex-session-id']
        data.input_transcript = http_resp.headers['x-amz-lex-input-transcript']
        data.audio_stream = http_resp.body
        data
      end
    end
  end
end
