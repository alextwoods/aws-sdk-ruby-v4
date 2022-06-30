# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexRuntimeV2
  module Builders

    # Operation Builder for DeleteSession
    class DeleteSession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSession
    class GetSession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutSession
    class PutSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['messages'] = Builders::Messages.build(input[:messages]) unless input[:messages].nil?
        data['sessionState'] = Builders::SessionState.build(input[:session_state]) unless input[:session_state].nil?
        data['requestAttributes'] = Builders::StringMap.build(input[:request_attributes]) unless input[:request_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['ResponseContentType'] = input[:response_content_type] unless input[:response_content_type].nil? || input[:response_content_type].empty?
      end
    end

    # Map Builder for StringMap
    class StringMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SessionState
    class SessionState
      def self.build(input)
        data = {}
        data['dialogAction'] = Builders::DialogAction.build(input[:dialog_action]) unless input[:dialog_action].nil?
        data['intent'] = Builders::Intent.build(input[:intent]) unless input[:intent].nil?
        data['activeContexts'] = Builders::ActiveContextsList.build(input[:active_contexts]) unless input[:active_contexts].nil?
        data['sessionAttributes'] = Builders::StringMap.build(input[:session_attributes]) unless input[:session_attributes].nil?
        data['originatingRequestId'] = input[:originating_request_id] unless input[:originating_request_id].nil?
        data['runtimeHints'] = Builders::RuntimeHints.build(input[:runtime_hints]) unless input[:runtime_hints].nil?
        data
      end
    end

    # Structure Builder for RuntimeHints
    class RuntimeHints
      def self.build(input)
        data = {}
        data['slotHints'] = Builders::SlotHintsIntentMap.build(input[:slot_hints]) unless input[:slot_hints].nil?
        data
      end
    end

    # Map Builder for SlotHintsIntentMap
    class SlotHintsIntentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::SlotHintsSlotMap.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for SlotHintsSlotMap
    class SlotHintsSlotMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::RuntimeHintDetails.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for RuntimeHintDetails
    class RuntimeHintDetails
      def self.build(input)
        data = {}
        data['runtimeHintValues'] = Builders::RuntimeHintValuesList.build(input[:runtime_hint_values]) unless input[:runtime_hint_values].nil?
        data
      end
    end

    # List Builder for RuntimeHintValuesList
    class RuntimeHintValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuntimeHintValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuntimeHintValue
    class RuntimeHintValue
      def self.build(input)
        data = {}
        data['phrase'] = input[:phrase] unless input[:phrase].nil?
        data
      end
    end

    # List Builder for ActiveContextsList
    class ActiveContextsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ActiveContext.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActiveContext
    class ActiveContext
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['timeToLive'] = Builders::ActiveContextTimeToLive.build(input[:time_to_live]) unless input[:time_to_live].nil?
        data['contextAttributes'] = Builders::ActiveContextParametersMap.build(input[:context_attributes]) unless input[:context_attributes].nil?
        data
      end
    end

    # Map Builder for ActiveContextParametersMap
    class ActiveContextParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ActiveContextTimeToLive
    class ActiveContextTimeToLive
      def self.build(input)
        data = {}
        data['timeToLiveInSeconds'] = input[:time_to_live_in_seconds] unless input[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = input[:turns_to_live] unless input[:turns_to_live].nil?
        data
      end
    end

    # Structure Builder for Intent
    class Intent
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['slots'] = Builders::Slots.build(input[:slots]) unless input[:slots].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data['confirmationState'] = input[:confirmation_state] unless input[:confirmation_state].nil?
        data
      end
    end

    # Map Builder for Slots
    class Slots
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Slot.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Slot
    class Slot
      def self.build(input)
        data = {}
        data['value'] = Builders::Value.build(input[:value]) unless input[:value].nil?
        data['shape'] = input[:shape] unless input[:shape].nil?
        data['values'] = Builders::Values.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for Values
    class Values
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Slot.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Value
    class Value
      def self.build(input)
        data = {}
        data['originalValue'] = input[:original_value] unless input[:original_value].nil?
        data['interpretedValue'] = input[:interpreted_value] unless input[:interpreted_value].nil?
        data['resolvedValues'] = Builders::StringList.build(input[:resolved_values]) unless input[:resolved_values].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DialogAction
    class DialogAction
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['slotToElicit'] = input[:slot_to_elicit] unless input[:slot_to_elicit].nil?
        data['slotElicitationStyle'] = input[:slot_elicitation_style] unless input[:slot_elicitation_style].nil?
        data
      end
    end

    # List Builder for Messages
    class Messages
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Message.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['content'] = input[:content] unless input[:content].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['imageResponseCard'] = Builders::ImageResponseCard.build(input[:image_response_card]) unless input[:image_response_card].nil?
        data
      end
    end

    # Structure Builder for ImageResponseCard
    class ImageResponseCard
      def self.build(input)
        data = {}
        data['title'] = input[:title] unless input[:title].nil?
        data['subtitle'] = input[:subtitle] unless input[:subtitle].nil?
        data['imageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['buttons'] = Builders::ButtonsList.build(input[:buttons]) unless input[:buttons].nil?
        data
      end
    end

    # List Builder for ButtonsList
    class ButtonsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Button.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Button
    class Button
      def self.build(input)
        data = {}
        data['text'] = input[:text] unless input[:text].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for RecognizeText
    class RecognizeText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s/text',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['text'] = input[:text] unless input[:text].nil?
        data['sessionState'] = Builders::SessionState.build(input[:session_state]) unless input[:session_state].nil?
        data['requestAttributes'] = Builders::StringMap.build(input[:request_attributes]) unless input[:request_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RecognizeUtterance
    class RecognizeUtterance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        if input[:bot_alias_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias_id cannot be nil or empty."
        end
        if input[:locale_id].to_s.empty?
          raise ArgumentError, "HTTP label :locale_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botId>s/botAliases/%<botAliasId>s/botLocales/%<localeId>s/sessions/%<sessionId>s/utterance',
            botId: Hearth::HTTP.uri_escape(input[:bot_id].to_s),
            botAliasId: Hearth::HTTP.uri_escape(input[:bot_alias_id].to_s),
            localeId: Hearth::HTTP.uri_escape(input[:locale_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:input_stream]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-lex-session-state'] = input[:session_state] unless input[:session_state].nil? || input[:session_state].empty?
        http_req.headers['x-amz-lex-request-attributes'] = input[:request_attributes] unless input[:request_attributes].nil? || input[:request_attributes].empty?
        http_req.headers['Content-Type'] = input[:request_content_type] unless input[:request_content_type].nil? || input[:request_content_type].empty?
        http_req.headers['Response-Content-Type'] = input[:response_content_type] unless input[:response_content_type].nil? || input[:response_content_type].empty?
      end
    end
  end
end
