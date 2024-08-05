# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  # @api private
  module Parsers

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class ActiveContext
      def self.parse(map)
        data = Types::ActiveContext.new
        data.name = map['name'] unless map['name'].nil?
        data.time_to_live = ActiveContextTimeToLive.parse(map['timeToLive']) unless map['timeToLive'].nil?
        data.context_attributes = ActiveContextParametersMap.parse(map['contextAttributes']) unless map['contextAttributes'].nil?
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
        data.time_to_live_in_seconds = map['timeToLiveInSeconds'] unless map['timeToLiveInSeconds'].nil?
        data.turns_to_live = map['turnsToLive'] unless map['turnsToLive'].nil?
        return data
      end
    end

    class ActiveContextsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ActiveContext.parse(value) unless value.nil?
        end
        data
      end
    end

    class AudioResponseEvent
      def self.parse(map)
        data = Types::AudioResponseEvent.new
        data.audio_chunk = Base64::decode64(map['audioChunk']) unless map['audioChunk'].nil?
        data.content_type = map['contentType'] unless map['contentType'].nil?
        data.event_id = map['eventId'] unless map['eventId'].nil?
        return data
      end
    end

    # Error Parser for BadGatewayException
    class BadGatewayException
      def self.parse(http_resp)
        data = Types::BadGatewayException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class Button
      def self.parse(map)
        data = Types::Button.new
        data.text = map['text'] unless map['text'].nil?
        data.value = map['value'] unless map['value'].nil?
        return data
      end
    end

    class ButtonsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Button.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConfidenceScore
      def self.parse(map)
        data = Types::ConfidenceScore.new
        data.score = Hearth::NumberHelper.deserialize(map['score']) unless map['score'].nil?
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class DeleteSession
      def self.parse(http_resp)
        data = Types::DeleteSessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.bot_id = map['botId'] unless map['botId'].nil?
        data.bot_alias_id = map['botAliasId'] unless map['botAliasId'].nil?
        data.locale_id = map['localeId'] unless map['localeId'].nil?
        data.session_id = map['sessionId'] unless map['sessionId'].nil?
        data
      end
    end

    # Error Parser for DependencyFailedException
    class DependencyFailedException
      def self.parse(http_resp)
        data = Types::DependencyFailedException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class DialogAction
      def self.parse(map)
        data = Types::DialogAction.new
        data.type = map['type'] unless map['type'].nil?
        data.slot_to_elicit = map['slotToElicit'] unless map['slotToElicit'].nil?
        data.slot_elicitation_style = map['slotElicitationStyle'] unless map['slotElicitationStyle'].nil?
        data.sub_slot_to_elicit = ElicitSubSlot.parse(map['subSlotToElicit']) unless map['subSlotToElicit'].nil?
        return data
      end
    end

    class ElicitSubSlot
      def self.parse(map)
        data = Types::ElicitSubSlot.new
        data.name = map['name'] unless map['name'].nil?
        data.sub_slot_to_elicit = ElicitSubSlot.parse(map['subSlotToElicit']) unless map['subSlotToElicit'].nil?
        return data
      end
    end

    class GetSession
      def self.parse(http_resp)
        data = Types::GetSessionOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.session_id = map['sessionId'] unless map['sessionId'].nil?
        data.messages = Messages.parse(map['messages']) unless map['messages'].nil?
        data.interpretations = Interpretations.parse(map['interpretations']) unless map['interpretations'].nil?
        data.session_state = SessionState.parse(map['sessionState']) unless map['sessionState'].nil?
        data
      end
    end

    class HeartbeatEvent
      def self.parse(map)
        data = Types::HeartbeatEvent.new
        data.event_id = map['eventId'] unless map['eventId'].nil?
        return data
      end
    end

    class ImageResponseCard
      def self.parse(map)
        data = Types::ImageResponseCard.new
        data.title = map['title'] unless map['title'].nil?
        data.subtitle = map['subtitle'] unless map['subtitle'].nil?
        data.image_url = map['imageUrl'] unless map['imageUrl'].nil?
        data.buttons = ButtonsList.parse(map['buttons']) unless map['buttons'].nil?
        return data
      end
    end

    class Intent
      def self.parse(map)
        data = Types::Intent.new
        data.name = map['name'] unless map['name'].nil?
        data.slots = Slots.parse(map['slots']) unless map['slots'].nil?
        data.state = map['state'] unless map['state'].nil?
        data.confirmation_state = map['confirmationState'] unless map['confirmationState'].nil?
        return data
      end
    end

    class IntentResultEvent
      def self.parse(map)
        data = Types::IntentResultEvent.new
        data.input_mode = map['inputMode'] unless map['inputMode'].nil?
        data.interpretations = Interpretations.parse(map['interpretations']) unless map['interpretations'].nil?
        data.session_state = SessionState.parse(map['sessionState']) unless map['sessionState'].nil?
        data.request_attributes = StringMap.parse(map['requestAttributes']) unless map['requestAttributes'].nil?
        data.session_id = map['sessionId'] unless map['sessionId'].nil?
        data.event_id = map['eventId'] unless map['eventId'].nil?
        data.recognized_bot_member = RecognizedBotMember.parse(map['recognizedBotMember']) unless map['recognizedBotMember'].nil?
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class Interpretation
      def self.parse(map)
        data = Types::Interpretation.new
        data.nlu_confidence = ConfidenceScore.parse(map['nluConfidence']) unless map['nluConfidence'].nil?
        data.sentiment_response = SentimentResponse.parse(map['sentimentResponse']) unless map['sentimentResponse'].nil?
        data.intent = Intent.parse(map['intent']) unless map['intent'].nil?
        data.interpretation_source = map['interpretationSource'] unless map['interpretationSource'].nil?
        return data
      end
    end

    class Interpretations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Interpretation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Message
      def self.parse(map)
        data = Types::Message.new
        data.content = map['content'] unless map['content'].nil?
        data.content_type = map['contentType'] unless map['contentType'].nil?
        data.image_response_card = ImageResponseCard.parse(map['imageResponseCard']) unless map['imageResponseCard'].nil?
        return data
      end
    end

    class Messages
      def self.parse(list)
        data = []
        list.map do |value|
          data << Message.parse(value) unless value.nil?
        end
        data
      end
    end

    class PlaybackInterruptionEvent
      def self.parse(map)
        data = Types::PlaybackInterruptionEvent.new
        data.event_reason = map['eventReason'] unless map['eventReason'].nil?
        data.caused_by_event_id = map['causedByEventId'] unless map['causedByEventId'].nil?
        data.event_id = map['eventId'] unless map['eventId'].nil?
        return data
      end
    end

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

    class RecognizeText
      def self.parse(http_resp)
        data = Types::RecognizeTextOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.messages = Messages.parse(map['messages']) unless map['messages'].nil?
        data.session_state = SessionState.parse(map['sessionState']) unless map['sessionState'].nil?
        data.interpretations = Interpretations.parse(map['interpretations']) unless map['interpretations'].nil?
        data.request_attributes = StringMap.parse(map['requestAttributes']) unless map['requestAttributes'].nil?
        data.session_id = map['sessionId'] unless map['sessionId'].nil?
        data.recognized_bot_member = RecognizedBotMember.parse(map['recognizedBotMember']) unless map['recognizedBotMember'].nil?
        data
      end
    end

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
        data.recognized_bot_member = http_resp.headers['x-amz-lex-recognized-bot-member']
        data.audio_stream = http_resp.body
        data
      end
    end

    class RecognizedBotMember
      def self.parse(map)
        data = Types::RecognizedBotMember.new
        data.bot_id = map['botId'] unless map['botId'].nil?
        data.bot_name = map['botName'] unless map['botName'].nil?
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class RuntimeHintDetails
      def self.parse(map)
        data = Types::RuntimeHintDetails.new
        data.runtime_hint_values = RuntimeHintValuesList.parse(map['runtimeHintValues']) unless map['runtimeHintValues'].nil?
        data.sub_slot_hints = SlotHintsSlotMap.parse(map['subSlotHints']) unless map['subSlotHints'].nil?
        return data
      end
    end

    class RuntimeHintValue
      def self.parse(map)
        data = Types::RuntimeHintValue.new
        data.phrase = map['phrase'] unless map['phrase'].nil?
        return data
      end
    end

    class RuntimeHintValuesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RuntimeHintValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuntimeHints
      def self.parse(map)
        data = Types::RuntimeHints.new
        data.slot_hints = SlotHintsIntentMap.parse(map['slotHints']) unless map['slotHints'].nil?
        return data
      end
    end

    class SentimentResponse
      def self.parse(map)
        data = Types::SentimentResponse.new
        data.sentiment = map['sentiment'] unless map['sentiment'].nil?
        data.sentiment_score = SentimentScore.parse(map['sentimentScore']) unless map['sentimentScore'].nil?
        return data
      end
    end

    class SentimentScore
      def self.parse(map)
        data = Types::SentimentScore.new
        data.positive = Hearth::NumberHelper.deserialize(map['positive']) unless map['positive'].nil?
        data.negative = Hearth::NumberHelper.deserialize(map['negative']) unless map['negative'].nil?
        data.neutral = Hearth::NumberHelper.deserialize(map['neutral']) unless map['neutral'].nil?
        data.mixed = Hearth::NumberHelper.deserialize(map['mixed']) unless map['mixed'].nil?
        return data
      end
    end

    class SessionState
      def self.parse(map)
        data = Types::SessionState.new
        data.dialog_action = DialogAction.parse(map['dialogAction']) unless map['dialogAction'].nil?
        data.intent = Intent.parse(map['intent']) unless map['intent'].nil?
        data.active_contexts = ActiveContextsList.parse(map['activeContexts']) unless map['activeContexts'].nil?
        data.session_attributes = StringMap.parse(map['sessionAttributes']) unless map['sessionAttributes'].nil?
        data.originating_request_id = map['originatingRequestId'] unless map['originatingRequestId'].nil?
        data.runtime_hints = RuntimeHints.parse(map['runtimeHints']) unless map['runtimeHints'].nil?
        return data
      end
    end

    class Slot
      def self.parse(map)
        data = Types::Slot.new
        data.value = Value.parse(map['value']) unless map['value'].nil?
        data.shape = map['shape'] unless map['shape'].nil?
        data.values = Values.parse(map['values']) unless map['values'].nil?
        data.sub_slots = Slots.parse(map['subSlots']) unless map['subSlots'].nil?
        return data
      end
    end

    class SlotHintsIntentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = SlotHintsSlotMap.parse(value) unless value.nil?
        end
        data
      end
    end

    class SlotHintsSlotMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = RuntimeHintDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class Slots
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Slot.parse(value) unless value.nil?
        end
        data
      end
    end

    class StartConversation
      def self.parse(http_resp)
        data = Types::StartConversationOutput.new
        data.response_event_stream = http_resp.body
        data
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

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TextResponseEvent
      def self.parse(map)
        data = Types::TextResponseEvent.new
        data.messages = Messages.parse(map['messages']) unless map['messages'].nil?
        data.event_id = map['eventId'] unless map['eventId'].nil?
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class TranscriptEvent
      def self.parse(map)
        data = Types::TranscriptEvent.new
        data.transcript = map['transcript'] unless map['transcript'].nil?
        data.event_id = map['eventId'] unless map['eventId'].nil?
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        data
      end
    end

    class Value
      def self.parse(map)
        data = Types::Value.new
        data.original_value = map['originalValue'] unless map['originalValue'].nil?
        data.interpreted_value = map['interpretedValue'] unless map['interpretedValue'].nil?
        data.resolved_values = StringList.parse(map['resolvedValues']) unless map['resolvedValues'].nil?
        return data
      end
    end

    class Values
      def self.parse(list)
        data = []
        list.map do |value|
          data << Slot.parse(value) unless value.nil?
        end
        data
      end
    end

    module EventStream

      class AccessDeniedException
        def self.parse(message)
          data = Types::AccessDeniedException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class AudioResponseEvent
        def self.parse(message)
          data = Types::AudioResponseEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.audio_chunk = Base64::decode64(map['audioChunk']) unless map['audioChunk'].nil?
          data.content_type = map['contentType'] unless map['contentType'].nil?
          data.event_id = map['eventId'] unless map['eventId'].nil?
          data
        end
      end

      class BadGatewayException
        def self.parse(message)
          data = Types::BadGatewayException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class ConflictException
        def self.parse(message)
          data = Types::ConflictException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class DependencyFailedException
        def self.parse(message)
          data = Types::DependencyFailedException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class HeartbeatEvent
        def self.parse(message)
          data = Types::HeartbeatEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.event_id = map['eventId'] unless map['eventId'].nil?
          data
        end
      end

      class IntentResultEvent
        def self.parse(message)
          data = Types::IntentResultEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.input_mode = map['inputMode'] unless map['inputMode'].nil?
          data.interpretations = Interpretations.parse(map['interpretations']) unless map['interpretations'].nil?
          data.session_state = SessionState.parse(map['sessionState']) unless map['sessionState'].nil?
          data.request_attributes = StringMap.parse(map['requestAttributes']) unless map['requestAttributes'].nil?
          data.session_id = map['sessionId'] unless map['sessionId'].nil?
          data.event_id = map['eventId'] unless map['eventId'].nil?
          data.recognized_bot_member = RecognizedBotMember.parse(map['recognizedBotMember']) unless map['recognizedBotMember'].nil?
          data
        end
      end

      class InternalServerException
        def self.parse(message)
          data = Types::InternalServerException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class PlaybackInterruptionEvent
        def self.parse(message)
          data = Types::PlaybackInterruptionEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.event_reason = map['eventReason'] unless map['eventReason'].nil?
          data.caused_by_event_id = map['causedByEventId'] unless map['causedByEventId'].nil?
          data.event_id = map['eventId'] unless map['eventId'].nil?
          data
        end
      end

      class ResourceNotFoundException
        def self.parse(message)
          data = Types::ResourceNotFoundException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class StartConversationInitialResponse
        def self.parse(message)
          data = Types::StartConversationOutput.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.response_event_stream = StartConversationResponseEventStream.parse(map['responseEventStream']) unless map['responseEventStream'].nil?
          data
        end
      end

      class TextResponseEvent
        def self.parse(message)
          data = Types::TextResponseEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.messages = Messages.parse(map['messages']) unless map['messages'].nil?
          data.event_id = map['eventId'] unless map['eventId'].nil?
          data
        end
      end

      class ThrottlingException
        def self.parse(message)
          data = Types::ThrottlingException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end

      class TranscriptEvent
        def self.parse(message)
          data = Types::TranscriptEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript = map['transcript'] unless map['transcript'].nil?
          data.event_id = map['eventId'] unless map['eventId'].nil?
          data
        end
      end

      class ValidationException
        def self.parse(message)
          data = Types::ValidationException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
          data
        end
      end
    end
  end
end
