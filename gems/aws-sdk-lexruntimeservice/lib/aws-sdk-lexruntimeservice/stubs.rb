# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexRuntimeService
  module Stubs

    # Operation Stubber for DeleteSession
    class DeleteSession
      def self.default(visited=[])
        {
          bot_name: 'bot_name',
          bot_alias: 'bot_alias',
          user_id: 'user_id',
          session_id: 'session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['botAlias'] = stub[:bot_alias] unless stub[:bot_alias].nil?
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSession
    class GetSession
      def self.default(visited=[])
        {
          recent_intent_summary_view: IntentSummaryList.default(visited),
          session_attributes: StringMap.default(visited),
          session_id: 'session_id',
          dialog_action: DialogAction.default(visited),
          active_contexts: ActiveContextsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recentIntentSummaryView'] = Stubs::IntentSummaryList.stub(stub[:recent_intent_summary_view]) unless stub[:recent_intent_summary_view].nil?
        data['sessionAttributes'] = Stubs::StringMap.stub(stub[:session_attributes]) unless stub[:session_attributes].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['dialogAction'] = Stubs::DialogAction.stub(stub[:dialog_action]) unless stub[:dialog_action].nil?
        data['activeContexts'] = Stubs::ActiveContextsList.stub(stub[:active_contexts]) unless stub[:active_contexts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::ActiveContext.stub(element) unless element.nil?
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
          parameters: ActiveContextParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['timeToLive'] = Stubs::ActiveContextTimeToLive.stub(stub[:time_to_live]) unless stub[:time_to_live].nil?
        data['parameters'] = Stubs::ActiveContextParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
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

    # Structure Stubber for DialogAction
    class DialogAction
      def self.default(visited=[])
        return nil if visited.include?('DialogAction')
        visited = visited + ['DialogAction']
        {
          type: 'type',
          intent_name: 'intent_name',
          slots: StringMap.default(visited),
          slot_to_elicit: 'slot_to_elicit',
          fulfillment_state: 'fulfillment_state',
          message: 'message',
          message_format: 'message_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::DialogAction.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['slots'] = Stubs::StringMap.stub(stub[:slots]) unless stub[:slots].nil?
        data['slotToElicit'] = stub[:slot_to_elicit] unless stub[:slot_to_elicit].nil?
        data['fulfillmentState'] = stub[:fulfillment_state] unless stub[:fulfillment_state].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['messageFormat'] = stub[:message_format] unless stub[:message_format].nil?
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

    # List Stubber for IntentSummaryList
    class IntentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('IntentSummaryList')
        visited = visited + ['IntentSummaryList']
        [
          IntentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IntentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntentSummary
    class IntentSummary
      def self.default(visited=[])
        return nil if visited.include?('IntentSummary')
        visited = visited + ['IntentSummary']
        {
          intent_name: 'intent_name',
          checkpoint_label: 'checkpoint_label',
          slots: StringMap.default(visited),
          confirmation_status: 'confirmation_status',
          dialog_action_type: 'dialog_action_type',
          fulfillment_state: 'fulfillment_state',
          slot_to_elicit: 'slot_to_elicit',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentSummary.new
        data = {}
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['checkpointLabel'] = stub[:checkpoint_label] unless stub[:checkpoint_label].nil?
        data['slots'] = Stubs::StringMap.stub(stub[:slots]) unless stub[:slots].nil?
        data['confirmationStatus'] = stub[:confirmation_status] unless stub[:confirmation_status].nil?
        data['dialogActionType'] = stub[:dialog_action_type] unless stub[:dialog_action_type].nil?
        data['fulfillmentState'] = stub[:fulfillment_state] unless stub[:fulfillment_state].nil?
        data['slotToElicit'] = stub[:slot_to_elicit] unless stub[:slot_to_elicit].nil?
        data
      end
    end

    # Operation Stubber for PostContent
    class PostContent
      def self.default(visited=[])
        {
          content_type: 'content_type',
          intent_name: 'intent_name',
          nlu_intent_confidence: 'nlu_intent_confidence',
          alternative_intents: 'alternative_intents',
          slots: 'slots',
          session_attributes: 'session_attributes',
          sentiment_response: 'sentiment_response',
          message: 'message',
          encoded_message: 'encoded_message',
          message_format: 'message_format',
          dialog_state: 'dialog_state',
          slot_to_elicit: 'slot_to_elicit',
          input_transcript: 'input_transcript',
          encoded_input_transcript: 'encoded_input_transcript',
          audio_stream: 'audio_stream',
          bot_version: 'bot_version',
          session_id: 'session_id',
          active_contexts: 'active_contexts',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-amz-lex-intent-name'] = stub[:intent_name] unless stub[:intent_name].nil? || stub[:intent_name].empty?
        http_resp.headers['x-amz-lex-nlu-intent-confidence'] = ::Base64::encode64(stub[:nlu_intent_confidence]).strip unless stub[:nlu_intent_confidence].nil? || stub[:nlu_intent_confidence].empty?
        http_resp.headers['x-amz-lex-alternative-intents'] = ::Base64::encode64(stub[:alternative_intents]).strip unless stub[:alternative_intents].nil? || stub[:alternative_intents].empty?
        http_resp.headers['x-amz-lex-slots'] = ::Base64::encode64(stub[:slots]).strip unless stub[:slots].nil? || stub[:slots].empty?
        http_resp.headers['x-amz-lex-session-attributes'] = ::Base64::encode64(stub[:session_attributes]).strip unless stub[:session_attributes].nil? || stub[:session_attributes].empty?
        http_resp.headers['x-amz-lex-sentiment'] = stub[:sentiment_response] unless stub[:sentiment_response].nil? || stub[:sentiment_response].empty?
        http_resp.headers['x-amz-lex-message'] = stub[:message] unless stub[:message].nil? || stub[:message].empty?
        http_resp.headers['x-amz-lex-encoded-message'] = stub[:encoded_message] unless stub[:encoded_message].nil? || stub[:encoded_message].empty?
        http_resp.headers['x-amz-lex-message-format'] = stub[:message_format] unless stub[:message_format].nil? || stub[:message_format].empty?
        http_resp.headers['x-amz-lex-dialog-state'] = stub[:dialog_state] unless stub[:dialog_state].nil? || stub[:dialog_state].empty?
        http_resp.headers['x-amz-lex-slot-to-elicit'] = stub[:slot_to_elicit] unless stub[:slot_to_elicit].nil? || stub[:slot_to_elicit].empty?
        http_resp.headers['x-amz-lex-input-transcript'] = stub[:input_transcript] unless stub[:input_transcript].nil? || stub[:input_transcript].empty?
        http_resp.headers['x-amz-lex-encoded-input-transcript'] = stub[:encoded_input_transcript] unless stub[:encoded_input_transcript].nil? || stub[:encoded_input_transcript].empty?
        http_resp.headers['x-amz-lex-bot-version'] = stub[:bot_version] unless stub[:bot_version].nil? || stub[:bot_version].empty?
        http_resp.headers['x-amz-lex-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        http_resp.headers['x-amz-lex-active-contexts'] = ::Base64::encode64(stub[:active_contexts]).strip unless stub[:active_contexts].nil? || stub[:active_contexts].empty?
        IO.copy_stream(stub[:audio_stream], http_resp.body)
      end
    end

    # Operation Stubber for PostText
    class PostText
      def self.default(visited=[])
        {
          intent_name: 'intent_name',
          nlu_intent_confidence: IntentConfidence.default(visited),
          alternative_intents: IntentList.default(visited),
          slots: StringMap.default(visited),
          session_attributes: StringMap.default(visited),
          message: 'message',
          sentiment_response: SentimentResponse.default(visited),
          message_format: 'message_format',
          dialog_state: 'dialog_state',
          slot_to_elicit: 'slot_to_elicit',
          response_card: ResponseCard.default(visited),
          session_id: 'session_id',
          bot_version: 'bot_version',
          active_contexts: ActiveContextsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['nluIntentConfidence'] = Stubs::IntentConfidence.stub(stub[:nlu_intent_confidence]) unless stub[:nlu_intent_confidence].nil?
        data['alternativeIntents'] = Stubs::IntentList.stub(stub[:alternative_intents]) unless stub[:alternative_intents].nil?
        data['slots'] = Stubs::StringMap.stub(stub[:slots]) unless stub[:slots].nil?
        data['sessionAttributes'] = Stubs::StringMap.stub(stub[:session_attributes]) unless stub[:session_attributes].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['sentimentResponse'] = Stubs::SentimentResponse.stub(stub[:sentiment_response]) unless stub[:sentiment_response].nil?
        data['messageFormat'] = stub[:message_format] unless stub[:message_format].nil?
        data['dialogState'] = stub[:dialog_state] unless stub[:dialog_state].nil?
        data['slotToElicit'] = stub[:slot_to_elicit] unless stub[:slot_to_elicit].nil?
        data['responseCard'] = Stubs::ResponseCard.stub(stub[:response_card]) unless stub[:response_card].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['activeContexts'] = Stubs::ActiveContextsList.stub(stub[:active_contexts]) unless stub[:active_contexts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResponseCard
    class ResponseCard
      def self.default(visited=[])
        return nil if visited.include?('ResponseCard')
        visited = visited + ['ResponseCard']
        {
          version: 'version',
          content_type: 'content_type',
          generic_attachments: GenericAttachmentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseCard.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['genericAttachments'] = Stubs::GenericAttachmentList.stub(stub[:generic_attachments]) unless stub[:generic_attachments].nil?
        data
      end
    end

    # List Stubber for genericAttachmentList
    class GenericAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('GenericAttachmentList')
        visited = visited + ['GenericAttachmentList']
        [
          GenericAttachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GenericAttachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GenericAttachment
    class GenericAttachment
      def self.default(visited=[])
        return nil if visited.include?('GenericAttachment')
        visited = visited + ['GenericAttachment']
        {
          title: 'title',
          sub_title: 'sub_title',
          attachment_link_url: 'attachment_link_url',
          image_url: 'image_url',
          buttons: ListOfButtons.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GenericAttachment.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['subTitle'] = stub[:sub_title] unless stub[:sub_title].nil?
        data['attachmentLinkUrl'] = stub[:attachment_link_url] unless stub[:attachment_link_url].nil?
        data['imageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['buttons'] = Stubs::ListOfButtons.stub(stub[:buttons]) unless stub[:buttons].nil?
        data
      end
    end

    # List Stubber for listOfButtons
    class ListOfButtons
      def self.default(visited=[])
        return nil if visited.include?('ListOfButtons')
        visited = visited + ['ListOfButtons']
        [
          Button.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Button.stub(element) unless element.nil?
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

    # Structure Stubber for SentimentResponse
    class SentimentResponse
      def self.default(visited=[])
        return nil if visited.include?('SentimentResponse')
        visited = visited + ['SentimentResponse']
        {
          sentiment_label: 'sentiment_label',
          sentiment_score: 'sentiment_score',
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentResponse.new
        data = {}
        data['sentimentLabel'] = stub[:sentiment_label] unless stub[:sentiment_label].nil?
        data['sentimentScore'] = stub[:sentiment_score] unless stub[:sentiment_score].nil?
        data
      end
    end

    # List Stubber for IntentList
    class IntentList
      def self.default(visited=[])
        return nil if visited.include?('IntentList')
        visited = visited + ['IntentList']
        [
          PredictedIntent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PredictedIntent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PredictedIntent
    class PredictedIntent
      def self.default(visited=[])
        return nil if visited.include?('PredictedIntent')
        visited = visited + ['PredictedIntent']
        {
          intent_name: 'intent_name',
          nlu_intent_confidence: IntentConfidence.default(visited),
          slots: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictedIntent.new
        data = {}
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['nluIntentConfidence'] = Stubs::IntentConfidence.stub(stub[:nlu_intent_confidence]) unless stub[:nlu_intent_confidence].nil?
        data['slots'] = Stubs::StringMap.stub(stub[:slots]) unless stub[:slots].nil?
        data
      end
    end

    # Structure Stubber for IntentConfidence
    class IntentConfidence
      def self.default(visited=[])
        return nil if visited.include?('IntentConfidence')
        visited = visited + ['IntentConfidence']
        {
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentConfidence.new
        data = {}
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # Operation Stubber for PutSession
    class PutSession
      def self.default(visited=[])
        {
          content_type: 'content_type',
          intent_name: 'intent_name',
          slots: 'slots',
          session_attributes: 'session_attributes',
          message: 'message',
          encoded_message: 'encoded_message',
          message_format: 'message_format',
          dialog_state: 'dialog_state',
          slot_to_elicit: 'slot_to_elicit',
          audio_stream: 'audio_stream',
          session_id: 'session_id',
          active_contexts: 'active_contexts',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-amz-lex-intent-name'] = stub[:intent_name] unless stub[:intent_name].nil? || stub[:intent_name].empty?
        http_resp.headers['x-amz-lex-slots'] = ::Base64::encode64(stub[:slots]).strip unless stub[:slots].nil? || stub[:slots].empty?
        http_resp.headers['x-amz-lex-session-attributes'] = ::Base64::encode64(stub[:session_attributes]).strip unless stub[:session_attributes].nil? || stub[:session_attributes].empty?
        http_resp.headers['x-amz-lex-message'] = stub[:message] unless stub[:message].nil? || stub[:message].empty?
        http_resp.headers['x-amz-lex-encoded-message'] = stub[:encoded_message] unless stub[:encoded_message].nil? || stub[:encoded_message].empty?
        http_resp.headers['x-amz-lex-message-format'] = stub[:message_format] unless stub[:message_format].nil? || stub[:message_format].empty?
        http_resp.headers['x-amz-lex-dialog-state'] = stub[:dialog_state] unless stub[:dialog_state].nil? || stub[:dialog_state].empty?
        http_resp.headers['x-amz-lex-slot-to-elicit'] = stub[:slot_to_elicit] unless stub[:slot_to_elicit].nil? || stub[:slot_to_elicit].empty?
        http_resp.headers['x-amz-lex-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        http_resp.headers['x-amz-lex-active-contexts'] = ::Base64::encode64(stub[:active_contexts]).strip unless stub[:active_contexts].nil? || stub[:active_contexts].empty?
        IO.copy_stream(stub[:audio_stream], http_resp.body)
      end
    end
  end
end
