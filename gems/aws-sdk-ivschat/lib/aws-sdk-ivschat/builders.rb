# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Ivschat
  module Builders

    # Operation Builder for CreateChatToken
    class CreateChatToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateChatToken')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roomIdentifier'] = input[:room_identifier] unless input[:room_identifier].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['capabilities'] = ChatTokenCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        data['sessionDurationInMinutes'] = input[:session_duration_in_minutes] unless input[:session_duration_in_minutes].nil?
        data['attributes'] = ChatTokenAttributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ChatTokenAttributes
    class ChatTokenAttributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ChatTokenCapabilities
    class ChatTokenCapabilities
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRoom
    class CreateRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateRoom')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['maximumMessageRatePerSecond'] = input[:maximum_message_rate_per_second] unless input[:maximum_message_rate_per_second].nil?
        data['maximumMessageLength'] = input[:maximum_message_length] unless input[:maximum_message_length].nil?
        data['messageReviewHandler'] = MessageReviewHandler.build(input[:message_review_handler]) unless input[:message_review_handler].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MessageReviewHandler
    class MessageReviewHandler
      def self.build(input)
        data = {}
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['fallbackResult'] = input[:fallback_result] unless input[:fallback_result].nil?
        data
      end
    end

    # Operation Builder for DeleteMessage
    class DeleteMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteMessage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roomIdentifier'] = input[:room_identifier] unless input[:room_identifier].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRoom
    class DeleteRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteRoom')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisconnectUser
    class DisconnectUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DisconnectUser')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roomIdentifier'] = input[:room_identifier] unless input[:room_identifier].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRoom
    class GetRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetRoom')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRooms
    class ListRooms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListRooms')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['messageReviewHandlerUri'] = input[:message_review_handler_uri] unless input[:message_review_handler_uri].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SendEvent
    class SendEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/SendEvent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roomIdentifier'] = input[:room_identifier] unless input[:room_identifier].nil?
        data['eventName'] = input[:event_name] unless input[:event_name].nil?
        data['attributes'] = EventAttributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for EventAttributes
    class EventAttributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateRoom
    class UpdateRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateRoom')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identifier'] = input[:identifier] unless input[:identifier].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['maximumMessageRatePerSecond'] = input[:maximum_message_rate_per_second] unless input[:maximum_message_rate_per_second].nil?
        data['maximumMessageLength'] = input[:maximum_message_length] unless input[:maximum_message_length].nil?
        data['messageReviewHandler'] = MessageReviewHandler.build(input[:message_review_handler]) unless input[:message_review_handler].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
