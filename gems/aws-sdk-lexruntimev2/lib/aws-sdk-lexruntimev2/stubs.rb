# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::LexRuntimeV2
  module Stubs

    # Operation Stubber for DeleteSession
    class DeleteSession
      def self.default(visited=[])
        {
          bot_id: 'bot_id',
          bot_alias_id: 'bot_alias_id',
          locale_id: 'locale_id',
          session_id: 'session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['botAliasId'] = stub[:bot_alias_id] unless stub[:bot_alias_id].nil?
        data['localeId'] = stub[:locale_id] unless stub[:locale_id].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSession
    class GetSession
      def self.default(visited=[])
        {
          session_id: 'session_id',
          messages: Messages.default(visited),
          interpretations: Interpretations.default(visited),
          session_state: SessionState.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['messages'] = Messages.stub(stub[:messages]) unless stub[:messages].nil?
        data['interpretations'] = Interpretations.stub(stub[:interpretations]) unless stub[:interpretations].nil?
        data['sessionState'] = SessionState.stub(stub[:session_state]) unless stub[:session_state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SessionState
    class SessionState
      def self.default(visited=[])
        return nil if visited.include?('SessionState')
        visited = visited + ['SessionState']
        {
          dialog_action: DialogAction.default(visited),
          intent: Intent.default(visited),
          active_contexts: ActiveContextsList.default(visited),
          session_attributes: StringMap.default(visited),
          originating_request_id: 'originating_request_id',
          runtime_hints: RuntimeHints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionState.new
        data = {}
        data['dialogAction'] = DialogAction.stub(stub[:dialog_action]) unless stub[:dialog_action].nil?
        data['intent'] = Intent.stub(stub[:intent]) unless stub[:intent].nil?
        data['activeContexts'] = ActiveContextsList.stub(stub[:active_contexts]) unless stub[:active_contexts].nil?
        data['sessionAttributes'] = StringMap.stub(stub[:session_attributes]) unless stub[:session_attributes].nil?
        data['originatingRequestId'] = stub[:originating_request_id] unless stub[:originating_request_id].nil?
        data['runtimeHints'] = RuntimeHints.stub(stub[:runtime_hints]) unless stub[:runtime_hints].nil?
        data
      end
    end

    # Structure Stubber for RuntimeHints
    class RuntimeHints
      def self.default(visited=[])
        return nil if visited.include?('RuntimeHints')
        visited = visited + ['RuntimeHints']
        {
          slot_hints: SlotHintsIntentMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimeHints.new
        data = {}
        data['slotHints'] = SlotHintsIntentMap.stub(stub[:slot_hints]) unless stub[:slot_hints].nil?
        data
      end
    end

    # Map Stubber for SlotHintsIntentMap
    class SlotHintsIntentMap
      def self.default(visited=[])
        return nil if visited.include?('SlotHintsIntentMap')
        visited = visited + ['SlotHintsIntentMap']
        {
          test_key: SlotHintsSlotMap.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = SlotHintsSlotMap.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for SlotHintsSlotMap
    class SlotHintsSlotMap
      def self.default(visited=[])
        return nil if visited.include?('SlotHintsSlotMap')
        visited = visited + ['SlotHintsSlotMap']
        {
          test_key: RuntimeHintDetails.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = RuntimeHintDetails.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RuntimeHintDetails
    class RuntimeHintDetails
      def self.default(visited=[])
        return nil if visited.include?('RuntimeHintDetails')
        visited = visited + ['RuntimeHintDetails']
        {
          runtime_hint_values: RuntimeHintValuesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimeHintDetails.new
        data = {}
        data['runtimeHintValues'] = RuntimeHintValuesList.stub(stub[:runtime_hint_values]) unless stub[:runtime_hint_values].nil?
        data
      end
    end

    # List Stubber for RuntimeHintValuesList
    class RuntimeHintValuesList
      def self.default(visited=[])
        return nil if visited.include?('RuntimeHintValuesList')
        visited = visited + ['RuntimeHintValuesList']
        [
          RuntimeHintValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuntimeHintValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuntimeHintValue
    class RuntimeHintValue
      def self.default(visited=[])
        return nil if visited.include?('RuntimeHintValue')
        visited = visited + ['RuntimeHintValue']
        {
          phrase: 'phrase',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimeHintValue.new
        data = {}
        data['phrase'] = stub[:phrase] unless stub[:phrase].nil?
        data
      end
    end

    # Map Stubber for StringMap
    class StringMap
      def self.default(visited=[])
        return nil if visited.include?('StringMap')
        visited = visited + ['StringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ActiveContextsList
    class ActiveContextsList
      def self.default(visited=[])
        return nil if visited.include?('ActiveContextsList')
        visited = visited + ['ActiveContextsList']
        [
          ActiveContext.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ActiveContext.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActiveContext
    class ActiveContext
      def self.default(visited=[])
        return nil if visited.include?('ActiveContext')
        visited = visited + ['ActiveContext']
        {
          name: 'name',
          time_to_live: ActiveContextTimeToLive.default(visited),
          context_attributes: ActiveContextParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['timeToLive'] = ActiveContextTimeToLive.stub(stub[:time_to_live]) unless stub[:time_to_live].nil?
        data['contextAttributes'] = ActiveContextParametersMap.stub(stub[:context_attributes]) unless stub[:context_attributes].nil?
        data
      end
    end

    # Map Stubber for ActiveContextParametersMap
    class ActiveContextParametersMap
      def self.default(visited=[])
        return nil if visited.include?('ActiveContextParametersMap')
        visited = visited + ['ActiveContextParametersMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ActiveContextTimeToLive
    class ActiveContextTimeToLive
      def self.default(visited=[])
        return nil if visited.include?('ActiveContextTimeToLive')
        visited = visited + ['ActiveContextTimeToLive']
        {
          time_to_live_in_seconds: 1,
          turns_to_live: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveContextTimeToLive.new
        data = {}
        data['timeToLiveInSeconds'] = stub[:time_to_live_in_seconds] unless stub[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = stub[:turns_to_live] unless stub[:turns_to_live].nil?
        data
      end
    end

    # Structure Stubber for Intent
    class Intent
      def self.default(visited=[])
        return nil if visited.include?('Intent')
        visited = visited + ['Intent']
        {
          name: 'name',
          slots: Slots.default(visited),
          state: 'state',
          confirmation_state: 'confirmation_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Intent.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['slots'] = Slots.stub(stub[:slots]) unless stub[:slots].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['confirmationState'] = stub[:confirmation_state] unless stub[:confirmation_state].nil?
        data
      end
    end

    # Map Stubber for Slots
    class Slots
      def self.default(visited=[])
        return nil if visited.include?('Slots')
        visited = visited + ['Slots']
        {
          test_key: Slot.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Slot.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Slot
    class Slot
      def self.default(visited=[])
        return nil if visited.include?('Slot')
        visited = visited + ['Slot']
        {
          value: Value.default(visited),
          shape: 'shape',
          values: Values.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Slot.new
        data = {}
        data['value'] = Value.stub(stub[:value]) unless stub[:value].nil?
        data['shape'] = stub[:shape] unless stub[:shape].nil?
        data['values'] = Values.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for Values
    class Values
      def self.default(visited=[])
        return nil if visited.include?('Values')
        visited = visited + ['Values']
        [
          Slot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Slot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Value
    class Value
      def self.default(visited=[])
        return nil if visited.include?('Value')
        visited = visited + ['Value']
        {
          original_value: 'original_value',
          interpreted_value: 'interpreted_value',
          resolved_values: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Value.new
        data = {}
        data['originalValue'] = stub[:original_value] unless stub[:original_value].nil?
        data['interpretedValue'] = stub[:interpreted_value] unless stub[:interpreted_value].nil?
        data['resolvedValues'] = StringList.stub(stub[:resolved_values]) unless stub[:resolved_values].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DialogAction
    class DialogAction
      def self.default(visited=[])
        return nil if visited.include?('DialogAction')
        visited = visited + ['DialogAction']
        {
          type: 'type',
          slot_to_elicit: 'slot_to_elicit',
          slot_elicitation_style: 'slot_elicitation_style',
        }
      end

      def self.stub(stub)
        stub ||= Types::DialogAction.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['slotToElicit'] = stub[:slot_to_elicit] unless stub[:slot_to_elicit].nil?
        data['slotElicitationStyle'] = stub[:slot_elicitation_style] unless stub[:slot_elicitation_style].nil?
        data
      end
    end

    # List Stubber for Interpretations
    class Interpretations
      def self.default(visited=[])
        return nil if visited.include?('Interpretations')
        visited = visited + ['Interpretations']
        [
          Interpretation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Interpretation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Interpretation
    class Interpretation
      def self.default(visited=[])
        return nil if visited.include?('Interpretation')
        visited = visited + ['Interpretation']
        {
          nlu_confidence: ConfidenceScore.default(visited),
          sentiment_response: SentimentResponse.default(visited),
          intent: Intent.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Interpretation.new
        data = {}
        data['nluConfidence'] = ConfidenceScore.stub(stub[:nlu_confidence]) unless stub[:nlu_confidence].nil?
        data['sentimentResponse'] = SentimentResponse.stub(stub[:sentiment_response]) unless stub[:sentiment_response].nil?
        data['intent'] = Intent.stub(stub[:intent]) unless stub[:intent].nil?
        data
      end
    end

    # Structure Stubber for SentimentResponse
    class SentimentResponse
      def self.default(visited=[])
        return nil if visited.include?('SentimentResponse')
        visited = visited + ['SentimentResponse']
        {
          sentiment: 'sentiment',
          sentiment_score: SentimentScore.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentResponse.new
        data = {}
        data['sentiment'] = stub[:sentiment] unless stub[:sentiment].nil?
        data['sentimentScore'] = SentimentScore.stub(stub[:sentiment_score]) unless stub[:sentiment_score].nil?
        data
      end
    end

    # Structure Stubber for SentimentScore
    class SentimentScore
      def self.default(visited=[])
        return nil if visited.include?('SentimentScore')
        visited = visited + ['SentimentScore']
        {
          positive: 1.0,
          negative: 1.0,
          neutral: 1.0,
          mixed: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentScore.new
        data = {}
        data['positive'] = Hearth::NumberHelper.serialize(stub[:positive])
        data['negative'] = Hearth::NumberHelper.serialize(stub[:negative])
        data['neutral'] = Hearth::NumberHelper.serialize(stub[:neutral])
        data['mixed'] = Hearth::NumberHelper.serialize(stub[:mixed])
        data
      end
    end

    # Structure Stubber for ConfidenceScore
    class ConfidenceScore
      def self.default(visited=[])
        return nil if visited.include?('ConfidenceScore')
        visited = visited + ['ConfidenceScore']
        {
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfidenceScore.new
        data = {}
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for Messages
    class Messages
      def self.default(visited=[])
        return nil if visited.include?('Messages')
        visited = visited + ['Messages']
        [
          Message.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Message.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Message
    class Message
      def self.default(visited=[])
        return nil if visited.include?('Message')
        visited = visited + ['Message']
        {
          content: 'content',
          content_type: 'content_type',
          image_response_card: ImageResponseCard.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Message.new
        data = {}
        data['content'] = stub[:content] unless stub[:content].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['imageResponseCard'] = ImageResponseCard.stub(stub[:image_response_card]) unless stub[:image_response_card].nil?
        data
      end
    end

    # Structure Stubber for ImageResponseCard
    class ImageResponseCard
      def self.default(visited=[])
        return nil if visited.include?('ImageResponseCard')
        visited = visited + ['ImageResponseCard']
        {
          title: 'title',
          subtitle: 'subtitle',
          image_url: 'image_url',
          buttons: ButtonsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageResponseCard.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['subtitle'] = stub[:subtitle] unless stub[:subtitle].nil?
        data['imageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['buttons'] = ButtonsList.stub(stub[:buttons]) unless stub[:buttons].nil?
        data
      end
    end

    # List Stubber for ButtonsList
    class ButtonsList
      def self.default(visited=[])
        return nil if visited.include?('ButtonsList')
        visited = visited + ['ButtonsList']
        [
          Button.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Button.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Button
    class Button
      def self.default(visited=[])
        return nil if visited.include?('Button')
        visited = visited + ['Button']
        {
          text: 'text',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Button.new
        data = {}
        data['text'] = stub[:text] unless stub[:text].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutSession
    class PutSession
      def self.default(visited=[])
        {
          content_type: 'content_type',
          messages: 'messages',
          session_state: 'session_state',
          request_attributes: 'request_attributes',
          session_id: 'session_id',
          audio_stream: 'audio_stream',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-amz-lex-messages'] = stub[:messages] unless stub[:messages].nil? || stub[:messages].empty?
        http_resp.headers['x-amz-lex-session-state'] = stub[:session_state] unless stub[:session_state].nil? || stub[:session_state].empty?
        http_resp.headers['x-amz-lex-request-attributes'] = stub[:request_attributes] unless stub[:request_attributes].nil? || stub[:request_attributes].empty?
        http_resp.headers['x-amz-lex-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        IO.copy_stream(stub[:audio_stream], http_resp.body)
      end
    end

    # Operation Stubber for RecognizeText
    class RecognizeText
      def self.default(visited=[])
        {
          messages: Messages.default(visited),
          session_state: SessionState.default(visited),
          interpretations: Interpretations.default(visited),
          request_attributes: StringMap.default(visited),
          session_id: 'session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['messages'] = Messages.stub(stub[:messages]) unless stub[:messages].nil?
        data['sessionState'] = SessionState.stub(stub[:session_state]) unless stub[:session_state].nil?
        data['interpretations'] = Interpretations.stub(stub[:interpretations]) unless stub[:interpretations].nil?
        data['requestAttributes'] = StringMap.stub(stub[:request_attributes]) unless stub[:request_attributes].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RecognizeUtterance
    class RecognizeUtterance
      def self.default(visited=[])
        {
          input_mode: 'input_mode',
          content_type: 'content_type',
          messages: 'messages',
          interpretations: 'interpretations',
          session_state: 'session_state',
          request_attributes: 'request_attributes',
          session_id: 'session_id',
          input_transcript: 'input_transcript',
          audio_stream: 'audio_stream',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-lex-input-mode'] = stub[:input_mode] unless stub[:input_mode].nil? || stub[:input_mode].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-amz-lex-messages'] = stub[:messages] unless stub[:messages].nil? || stub[:messages].empty?
        http_resp.headers['x-amz-lex-interpretations'] = stub[:interpretations] unless stub[:interpretations].nil? || stub[:interpretations].empty?
        http_resp.headers['x-amz-lex-session-state'] = stub[:session_state] unless stub[:session_state].nil? || stub[:session_state].empty?
        http_resp.headers['x-amz-lex-request-attributes'] = stub[:request_attributes] unless stub[:request_attributes].nil? || stub[:request_attributes].empty?
        http_resp.headers['x-amz-lex-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        http_resp.headers['x-amz-lex-input-transcript'] = stub[:input_transcript] unless stub[:input_transcript].nil? || stub[:input_transcript].empty?
        IO.copy_stream(stub[:audio_stream], http_resp.body)
      end
    end

    # Operation Stubber for StartConversation
    class StartConversation
      def self.default(visited=[])
        {
          response_event_stream: StartConversationResponseEventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        IO.copy_stream(stub[:response_event_stream], http_resp.body)
      end
    end

    # Union Stubber for StartConversationResponseEventStream
    class StartConversationResponseEventStream
      def self.default(visited=[])
        return nil if visited.include?('StartConversationResponseEventStream')
        visited = visited + ['StartConversationResponseEventStream']
        {
          playback_interruption_event: PlaybackInterruptionEvent.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::StartConversationResponseEventStream::PlaybackInterruptionEvent
          data['PlaybackInterruptionEvent'] = (PlaybackInterruptionEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::TranscriptEvent
          data['TranscriptEvent'] = (TranscriptEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::IntentResultEvent
          data['IntentResultEvent'] = (IntentResultEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::TextResponseEvent
          data['TextResponseEvent'] = (TextResponseEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::AudioResponseEvent
          data['AudioResponseEvent'] = (AudioResponseEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::HeartbeatEvent
          data['HeartbeatEvent'] = (HeartbeatEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::AccessDeniedException
          data['AccessDeniedException'] = (AccessDeniedException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::ResourceNotFoundException
          data['ResourceNotFoundException'] = (ResourceNotFoundException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::ValidationException
          data['ValidationException'] = (ValidationException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::ThrottlingException
          data['ThrottlingException'] = (ThrottlingException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::InternalServerException
          data['InternalServerException'] = (InternalServerException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::ConflictException
          data['ConflictException'] = (ConflictException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::DependencyFailedException
          data['DependencyFailedException'] = (DependencyFailedException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StartConversationResponseEventStream::BadGatewayException
          data['BadGatewayException'] = (BadGatewayException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::StartConversationResponseEventStream"
        end

        data
      end
    end

    # Structure Stubber for BadGatewayException
    class BadGatewayException
      def self.default(visited=[])
        return nil if visited.include?('BadGatewayException')
        visited = visited + ['BadGatewayException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BadGatewayException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for DependencyFailedException
    class DependencyFailedException
      def self.default(visited=[])
        return nil if visited.include?('DependencyFailedException')
        visited = visited + ['DependencyFailedException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DependencyFailedException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ConflictException
    class ConflictException
      def self.default(visited=[])
        return nil if visited.include?('ConflictException')
        visited = visited + ['ConflictException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConflictException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for InternalServerException
    class InternalServerException
      def self.default(visited=[])
        return nil if visited.include?('InternalServerException')
        visited = visited + ['InternalServerException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InternalServerException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ThrottlingException
    class ThrottlingException
      def self.default(visited=[])
        return nil if visited.include?('ThrottlingException')
        visited = visited + ['ThrottlingException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThrottlingException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ValidationException
    class ValidationException
      def self.default(visited=[])
        return nil if visited.include?('ValidationException')
        visited = visited + ['ValidationException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ResourceNotFoundException
    class ResourceNotFoundException
      def self.default(visited=[])
        return nil if visited.include?('ResourceNotFoundException')
        visited = visited + ['ResourceNotFoundException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceNotFoundException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for AccessDeniedException
    class AccessDeniedException
      def self.default(visited=[])
        return nil if visited.include?('AccessDeniedException')
        visited = visited + ['AccessDeniedException']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessDeniedException.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for HeartbeatEvent
    class HeartbeatEvent
      def self.default(visited=[])
        return nil if visited.include?('HeartbeatEvent')
        visited = visited + ['HeartbeatEvent']
        {
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::HeartbeatEvent.new
        data = {}
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end

    # Structure Stubber for AudioResponseEvent
    class AudioResponseEvent
      def self.default(visited=[])
        return nil if visited.include?('AudioResponseEvent')
        visited = visited + ['AudioResponseEvent']
        {
          audio_chunk: 'audio_chunk',
          content_type: 'content_type',
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioResponseEvent.new
        data = {}
        data['audioChunk'] = ::Base64::encode64(stub[:audio_chunk]) unless stub[:audio_chunk].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end

    # Structure Stubber for TextResponseEvent
    class TextResponseEvent
      def self.default(visited=[])
        return nil if visited.include?('TextResponseEvent')
        visited = visited + ['TextResponseEvent']
        {
          messages: Messages.default(visited),
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TextResponseEvent.new
        data = {}
        data['messages'] = Messages.stub(stub[:messages]) unless stub[:messages].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end

    # Structure Stubber for IntentResultEvent
    class IntentResultEvent
      def self.default(visited=[])
        return nil if visited.include?('IntentResultEvent')
        visited = visited + ['IntentResultEvent']
        {
          input_mode: 'input_mode',
          interpretations: Interpretations.default(visited),
          session_state: SessionState.default(visited),
          request_attributes: StringMap.default(visited),
          session_id: 'session_id',
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentResultEvent.new
        data = {}
        data['inputMode'] = stub[:input_mode] unless stub[:input_mode].nil?
        data['interpretations'] = Interpretations.stub(stub[:interpretations]) unless stub[:interpretations].nil?
        data['sessionState'] = SessionState.stub(stub[:session_state]) unless stub[:session_state].nil?
        data['requestAttributes'] = StringMap.stub(stub[:request_attributes]) unless stub[:request_attributes].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end

    # Structure Stubber for TranscriptEvent
    class TranscriptEvent
      def self.default(visited=[])
        return nil if visited.include?('TranscriptEvent')
        visited = visited + ['TranscriptEvent']
        {
          transcript: 'transcript',
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptEvent.new
        data = {}
        data['transcript'] = stub[:transcript] unless stub[:transcript].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end

    # Structure Stubber for PlaybackInterruptionEvent
    class PlaybackInterruptionEvent
      def self.default(visited=[])
        return nil if visited.include?('PlaybackInterruptionEvent')
        visited = visited + ['PlaybackInterruptionEvent']
        {
          event_reason: 'event_reason',
          caused_by_event_id: 'caused_by_event_id',
          event_id: 'event_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlaybackInterruptionEvent.new
        data = {}
        data['eventReason'] = stub[:event_reason] unless stub[:event_reason].nil?
        data['causedByEventId'] = stub[:caused_by_event_id] unless stub[:caused_by_event_id].nil?
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data
      end
    end
  end
end
