# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::LexRuntimeV2
  # @api private
  module Builders

    class ActiveContext
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['timeToLive'] = ActiveContextTimeToLive.build(input[:time_to_live]) unless input[:time_to_live].nil?
        data['contextAttributes'] = ActiveContextParametersMap.build(input[:context_attributes]) unless input[:context_attributes].nil?
        data
      end
    end

    class ActiveContextParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ActiveContextTimeToLive
      def self.build(input)
        data = {}
        data['timeToLiveInSeconds'] = input[:time_to_live_in_seconds] unless input[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = input[:turns_to_live] unless input[:turns_to_live].nil?
        data
      end
    end

    class ActiveContextsList
      def self.build(input)
        data = []
        input.each do |element|
          data << ActiveContext.build(element) unless element.nil?
        end
        data
      end
    end

    class AudioInputEvent
      def self.build(input)
        data = {}
        data['audioChunk'] = ::Base64::strict_encode64(input[:audio_chunk]).strip unless input[:audio_chunk].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['clientTimestampMillis'] = input[:client_timestamp_millis] unless input[:client_timestamp_millis].nil?
        data
      end
    end

    class Button
      def self.build(input)
        data = {}
        data['text'] = input[:text] unless input[:text].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    class ButtonsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Button.build(element) unless element.nil?
        end
        data
      end
    end

    class ConfigurationEvent
      def self.build(input)
        data = {}
        data['requestAttributes'] = StringMap.build(input[:request_attributes]) unless input[:request_attributes].nil?
        data['responseContentType'] = input[:response_content_type] unless input[:response_content_type].nil?
        data['sessionState'] = SessionState.build(input[:session_state]) unless input[:session_state].nil?
        data['welcomeMessages'] = Messages.build(input[:welcome_messages]) unless input[:welcome_messages].nil?
        data['disablePlayback'] = input[:disable_playback] unless input[:disable_playback].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['clientTimestampMillis'] = input[:client_timestamp_millis] unless input[:client_timestamp_millis].nil?
        data
      end
    end

    class DTMFInputEvent
      def self.build(input)
        data = {}
        data['inputCharacter'] = input[:input_character] unless input[:input_character].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['clientTimestampMillis'] = input[:client_timestamp_millis] unless input[:client_timestamp_millis].nil?
        data
      end
    end

    class DeleteSession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
      end
    end

    class DialogAction
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['slotToElicit'] = input[:slot_to_elicit] unless input[:slot_to_elicit].nil?
        data['slotElicitationStyle'] = input[:slot_elicitation_style] unless input[:slot_elicitation_style].nil?
        data['subSlotToElicit'] = ElicitSubSlot.build(input[:sub_slot_to_elicit]) unless input[:sub_slot_to_elicit].nil?
        data
      end
    end

    class DisconnectionEvent
      def self.build(input)
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['clientTimestampMillis'] = input[:client_timestamp_millis] unless input[:client_timestamp_millis].nil?
        data
      end
    end

    class ElicitSubSlot
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['subSlotToElicit'] = ElicitSubSlot.build(input[:sub_slot_to_elicit]) unless input[:sub_slot_to_elicit].nil?
        data
      end
    end

    class GetSession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
      end
    end

    class ImageResponseCard
      def self.build(input)
        data = {}
        data['title'] = input[:title] unless input[:title].nil?
        data['subtitle'] = input[:subtitle] unless input[:subtitle].nil?
        data['imageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['buttons'] = ButtonsList.build(input[:buttons]) unless input[:buttons].nil?
        data
      end
    end

    class Intent
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['slots'] = Slots.build(input[:slots]) unless input[:slots].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data['confirmationState'] = input[:confirmation_state] unless input[:confirmation_state].nil?
        data
      end
    end

    class Message
      def self.build(input)
        data = {}
        data['content'] = input[:content] unless input[:content].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['imageResponseCard'] = ImageResponseCard.build(input[:image_response_card]) unless input[:image_response_card].nil?
        data
      end
    end

    class Messages
      def self.build(input)
        data = []
        input.each do |element|
          data << Message.build(element) unless element.nil?
        end
        data
      end
    end

    class PlaybackCompletionEvent
      def self.build(input)
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['clientTimestampMillis'] = input[:client_timestamp_millis] unless input[:client_timestamp_millis].nil?
        data
      end
    end

    class PutSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['messages'] = Messages.build(input[:messages]) unless input[:messages].nil?
        data['sessionState'] = SessionState.build(input[:session_state]) unless input[:session_state].nil?
        data['requestAttributes'] = StringMap.build(input[:request_attributes]) unless input[:request_attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['ResponseContentType'] = input[:response_content_type] unless input[:response_content_type].nil? || input[:response_content_type].empty?
      end
    end

    class RecognizeText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s/text',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['text'] = input[:text] unless input[:text].nil?
        data['sessionState'] = SessionState.build(input[:session_state]) unless input[:session_state].nil?
        data['requestAttributes'] = StringMap.build(input[:request_attributes]) unless input[:request_attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class RecognizeUtterance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s/utterance',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        http_req.body = input[:input_stream]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-lex-session-state'] = input[:session_state] unless input[:session_state].nil? || input[:session_state].empty?
        http_req.headers['x-amz-lex-request-attributes'] = input[:request_attributes] unless input[:request_attributes].nil? || input[:request_attributes].empty?
        http_req.headers['Content-Type'] = input[:request_content_type] unless input[:request_content_type].nil? || input[:request_content_type].empty?
        http_req.headers['Response-Content-Type'] = input[:response_content_type] unless input[:response_content_type].nil? || input[:response_content_type].empty?
      end
    end

    class RuntimeHintDetails
      def self.build(input)
        data = {}
        data['runtimeHintValues'] = RuntimeHintValuesList.build(input[:runtime_hint_values]) unless input[:runtime_hint_values].nil?
        data['subSlotHints'] = SlotHintsSlotMap.build(input[:sub_slot_hints]) unless input[:sub_slot_hints].nil?
        data
      end
    end

    class RuntimeHintValue
      def self.build(input)
        data = {}
        data['phrase'] = input[:phrase] unless input[:phrase].nil?
        data
      end
    end

    class RuntimeHintValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << RuntimeHintValue.build(element) unless element.nil?
        end
        data
      end
    end

    class RuntimeHints
      def self.build(input)
        data = {}
        data['slotHints'] = SlotHintsIntentMap.build(input[:slot_hints]) unless input[:slot_hints].nil?
        data
      end
    end

    class SessionState
      def self.build(input)
        data = {}
        data['dialogAction'] = DialogAction.build(input[:dialog_action]) unless input[:dialog_action].nil?
        data['intent'] = Intent.build(input[:intent]) unless input[:intent].nil?
        data['activeContexts'] = ActiveContextsList.build(input[:active_contexts]) unless input[:active_contexts].nil?
        data['sessionAttributes'] = StringMap.build(input[:session_attributes]) unless input[:session_attributes].nil?
        data['originatingRequestId'] = input[:originating_request_id] unless input[:originating_request_id].nil?
        data['runtimeHints'] = RuntimeHints.build(input[:runtime_hints]) unless input[:runtime_hints].nil?
        data
      end
    end

    class Slot
      def self.build(input)
        data = {}
        data['value'] = Value.build(input[:value]) unless input[:value].nil?
        data['shape'] = input[:shape] unless input[:shape].nil?
        data['values'] = Values.build(input[:member_values]) unless input[:member_values].nil?
        data['subSlots'] = Slots.build(input[:sub_slots]) unless input[:sub_slots].nil?
        data
      end
    end

    class SlotHintsIntentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = SlotHintsSlotMap.build(value) unless value.nil?
        end
        data
      end
    end

    class SlotHintsSlotMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = RuntimeHintDetails.build(value) unless value.nil?
        end
        data
      end
    end

    class Slots
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Slot.build(value) unless value.nil?
        end
        data
      end
    end

    class StartConversation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s/conversation',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        http_req.headers['Content-Type'] = 'application/vnd.amazon.eventstream'
        http_req.headers['Accept'] = 'application/vnd.amazon.eventstream'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-lex-conversation-mode'] = input[:conversation_mode] unless input[:conversation_mode].nil? || input[:conversation_mode].empty?
      end
    end

    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class StringMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TextInputEvent
      def self.build(input)
        data = {}
        data['text'] = input[:text] unless input[:text].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['clientTimestampMillis'] = input[:client_timestamp_millis] unless input[:client_timestamp_millis].nil?
        data
      end
    end

    class Value
      def self.build(input)
        data = {}
        data['originalValue'] = input[:original_value] unless input[:original_value].nil?
        data['interpretedValue'] = input[:interpreted_value] unless input[:interpreted_value].nil?
        data['resolvedValues'] = StringList.build(input[:resolved_values]) unless input[:resolved_values].nil?
        data
      end
    end

    class Values
      def self.build(input)
        data = []
        input.each do |element|
          data << Slot.build(element) unless element.nil?
        end
        data
      end
    end

    module EventStream
      class AudioInputEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'AudioInputEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['audioChunk'] = ::Base64::strict_encode64(payload_input[:audio_chunk]).strip unless payload_input[:audio_chunk].nil?
          data['contentType'] = payload_input[:content_type] unless payload_input[:content_type].nil?
          data['eventId'] = payload_input[:event_id] unless payload_input[:event_id].nil?
          data['clientTimestampMillis'] = payload_input[:client_timestamp_millis] unless payload_input[:client_timestamp_millis].nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
      class ConfigurationEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'ConfigurationEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['requestAttributes'] = StringMap.build(payload_input[:request_attributes]) unless payload_input[:request_attributes].nil?
          data['responseContentType'] = payload_input[:response_content_type] unless payload_input[:response_content_type].nil?
          data['sessionState'] = SessionState.build(payload_input[:session_state]) unless payload_input[:session_state].nil?
          data['welcomeMessages'] = Messages.build(payload_input[:welcome_messages]) unless payload_input[:welcome_messages].nil?
          data['disablePlayback'] = payload_input[:disable_playback] unless payload_input[:disable_playback].nil?
          data['eventId'] = payload_input[:event_id] unless payload_input[:event_id].nil?
          data['clientTimestampMillis'] = payload_input[:client_timestamp_millis] unless payload_input[:client_timestamp_millis].nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
      class DTMFInputEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'DTMFInputEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['inputCharacter'] = payload_input[:input_character] unless payload_input[:input_character].nil?
          data['eventId'] = payload_input[:event_id] unless payload_input[:event_id].nil?
          data['clientTimestampMillis'] = payload_input[:client_timestamp_millis] unless payload_input[:client_timestamp_millis].nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
      class DisconnectionEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'DisconnectionEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['eventId'] = payload_input[:event_id] unless payload_input[:event_id].nil?
          data['clientTimestampMillis'] = payload_input[:client_timestamp_millis] unless payload_input[:client_timestamp_millis].nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
      class PlaybackCompletionEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'PlaybackCompletionEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['eventId'] = payload_input[:event_id] unless payload_input[:event_id].nil?
          data['clientTimestampMillis'] = payload_input[:client_timestamp_millis] unless payload_input[:client_timestamp_millis].nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
      class TextInputEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'TextInputEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['text'] = payload_input[:text] unless payload_input[:text].nil?
          data['eventId'] = payload_input[:event_id] unless payload_input[:event_id].nil?
          data['clientTimestampMillis'] = payload_input[:client_timestamp_millis] unless payload_input[:client_timestamp_millis].nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
    end
  end
end
