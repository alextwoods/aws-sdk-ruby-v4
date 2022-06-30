# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::PersonalizeEvents
  module Builders

    # Operation Builder for PutEvents
    class PutEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/events')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['trackingId'] = input[:tracking_id] unless input[:tracking_id].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['sessionId'] = input[:session_id] unless input[:session_id].nil?
        data['eventList'] = Builders::EventList.build(input[:event_list]) unless input[:event_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EventList
    class EventList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Event.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Event
    class Event
      def self.build(input)
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventType'] = input[:event_type] unless input[:event_type].nil?
        data['eventValue'] = Hearth::NumberHelper.serialize(input[:event_value]) unless input[:event_value].nil?
        data['itemId'] = input[:item_id] unless input[:item_id].nil?
        data['properties'] = input[:properties] unless input[:properties].nil?
        data['sentAt'] = Hearth::TimeHelper.to_epoch_seconds(input[:sent_at]).to_i unless input[:sent_at].nil?
        data['recommendationId'] = input[:recommendation_id] unless input[:recommendation_id].nil?
        data['impression'] = Builders::Impression.build(input[:impression]) unless input[:impression].nil?
        data
      end
    end

    # List Builder for Impression
    class Impression
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutItems
    class PutItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/items')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['items'] = Builders::ItemList.build(input[:items]) unless input[:items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ItemList
    class ItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Item.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Item
    class Item
      def self.build(input)
        data = {}
        data['itemId'] = input[:item_id] unless input[:item_id].nil?
        data['properties'] = input[:properties] unless input[:properties].nil?
        data
      end
    end

    # Operation Builder for PutUsers
    class PutUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/users')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['users'] = Builders::UserList.build(input[:users]) unless input[:users].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserList
    class UserList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::User.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for User
    class User
      def self.build(input)
        data = {}
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['properties'] = input[:properties] unless input[:properties].nil?
        data
      end
    end
  end
end
