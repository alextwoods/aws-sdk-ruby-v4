# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexRuntimeService
  module Builders

    # Operation Builder for DeleteSession
    class DeleteSession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bot/%<botName>s/alias/%<botAlias>s/user/%<userId>s/session',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s),
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
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
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bot/%<botName>s/alias/%<botAlias>s/user/%<userId>s/session',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s),
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['checkpointLabelFilter'] = input[:checkpoint_label_filter].to_s unless input[:checkpoint_label_filter].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PostContent
    class PostContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bot/%<botName>s/alias/%<botAlias>s/user/%<userId>s/content',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s),
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:input_stream]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-lex-session-attributes'] = Base64::encode64(input[:session_attributes]).strip unless input[:session_attributes].nil? || input[:session_attributes].empty?
        http_req.headers['x-amz-lex-request-attributes'] = Base64::encode64(input[:request_attributes]).strip unless input[:request_attributes].nil? || input[:request_attributes].empty?
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['Accept'] = input[:accept] unless input[:accept].nil? || input[:accept].empty?
        http_req.headers['x-amz-lex-active-contexts'] = Base64::encode64(input[:active_contexts]).strip unless input[:active_contexts].nil? || input[:active_contexts].empty?
      end
    end

    # Operation Builder for PostText
    class PostText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bot/%<botName>s/alias/%<botAlias>s/user/%<userId>s/text',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s),
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sessionAttributes'] = Builders::StringMap.build(input[:session_attributes]) unless input[:session_attributes].nil?
        data['requestAttributes'] = Builders::StringMap.build(input[:request_attributes]) unless input[:request_attributes].nil?
        data['inputText'] = input[:input_text] unless input[:input_text].nil?
        data['activeContexts'] = Builders::ActiveContextsList.build(input[:active_contexts]) unless input[:active_contexts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['parameters'] = Builders::ActiveContextParametersMap.build(input[:parameters]) unless input[:parameters].nil?
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

    # Operation Builder for PutSession
    class PutSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bot/%<botName>s/alias/%<botAlias>s/user/%<userId>s/session',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s),
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sessionAttributes'] = Builders::StringMap.build(input[:session_attributes]) unless input[:session_attributes].nil?
        data['dialogAction'] = Builders::DialogAction.build(input[:dialog_action]) unless input[:dialog_action].nil?
        data['recentIntentSummaryView'] = Builders::IntentSummaryList.build(input[:recent_intent_summary_view]) unless input[:recent_intent_summary_view].nil?
        data['activeContexts'] = Builders::ActiveContextsList.build(input[:active_contexts]) unless input[:active_contexts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Accept'] = input[:accept] unless input[:accept].nil? || input[:accept].empty?
      end
    end

    # List Builder for IntentSummaryList
    class IntentSummaryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IntentSummary.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IntentSummary
    class IntentSummary
      def self.build(input)
        data = {}
        data['intentName'] = input[:intent_name] unless input[:intent_name].nil?
        data['checkpointLabel'] = input[:checkpoint_label] unless input[:checkpoint_label].nil?
        data['slots'] = Builders::StringMap.build(input[:slots]) unless input[:slots].nil?
        data['confirmationStatus'] = input[:confirmation_status] unless input[:confirmation_status].nil?
        data['dialogActionType'] = input[:dialog_action_type] unless input[:dialog_action_type].nil?
        data['fulfillmentState'] = input[:fulfillment_state] unless input[:fulfillment_state].nil?
        data['slotToElicit'] = input[:slot_to_elicit] unless input[:slot_to_elicit].nil?
        data
      end
    end

    # Structure Builder for DialogAction
    class DialogAction
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['intentName'] = input[:intent_name] unless input[:intent_name].nil?
        data['slots'] = Builders::StringMap.build(input[:slots]) unless input[:slots].nil?
        data['slotToElicit'] = input[:slot_to_elicit] unless input[:slot_to_elicit].nil?
        data['fulfillmentState'] = input[:fulfillment_state] unless input[:fulfillment_state].nil?
        data['message'] = input[:message] unless input[:message].nil?
        data['messageFormat'] = input[:message_format] unless input[:message_format].nil?
        data
      end
    end
  end
end
