# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivschat
  module Stubs

    # Operation Stubber for CreateChatToken
    class CreateChatToken
      def self.default(visited=[])
        {
          token: 'token',
          token_expiration_time: Time.now,
          session_expiration_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['token'] = stub[:token] unless stub[:token].nil?
        data['tokenExpirationTime'] = Hearth::TimeHelper.to_date_time(stub[:token_expiration_time]) unless stub[:token_expiration_time].nil?
        data['sessionExpirationTime'] = Hearth::TimeHelper.to_date_time(stub[:session_expiration_time]) unless stub[:session_expiration_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRoom
    class CreateRoom
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          create_time: Time.now,
          update_time: Time.now,
          maximum_message_rate_per_second: 1,
          maximum_message_length: 1,
          message_review_handler: MessageReviewHandler.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['maximumMessageRatePerSecond'] = stub[:maximum_message_rate_per_second] unless stub[:maximum_message_rate_per_second].nil?
        data['maximumMessageLength'] = stub[:maximum_message_length] unless stub[:maximum_message_length].nil?
        data['messageReviewHandler'] = Stubs::MessageReviewHandler.stub(stub[:message_review_handler]) unless stub[:message_review_handler].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Structure Stubber for MessageReviewHandler
    class MessageReviewHandler
      def self.default(visited=[])
        return nil if visited.include?('MessageReviewHandler')
        visited = visited + ['MessageReviewHandler']
        {
          uri: 'uri',
          fallback_result: 'fallback_result',
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageReviewHandler.new
        data = {}
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['fallbackResult'] = stub[:fallback_result] unless stub[:fallback_result].nil?
        data
      end
    end

    # Operation Stubber for DeleteMessage
    class DeleteMessage
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRoom
    class DeleteRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DisconnectUser
    class DisconnectUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRoom
    class GetRoom
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          create_time: Time.now,
          update_time: Time.now,
          maximum_message_rate_per_second: 1,
          maximum_message_length: 1,
          message_review_handler: MessageReviewHandler.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['maximumMessageRatePerSecond'] = stub[:maximum_message_rate_per_second] unless stub[:maximum_message_rate_per_second].nil?
        data['maximumMessageLength'] = stub[:maximum_message_length] unless stub[:maximum_message_length].nil?
        data['messageReviewHandler'] = Stubs::MessageReviewHandler.stub(stub[:message_review_handler]) unless stub[:message_review_handler].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListRooms
    class ListRooms
      def self.default(visited=[])
        {
          rooms: RoomList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['rooms'] = Stubs::RoomList.stub(stub[:rooms]) unless stub[:rooms].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoomList
    class RoomList
      def self.default(visited=[])
        return nil if visited.include?('RoomList')
        visited = visited + ['RoomList']
        [
          RoomSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RoomSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RoomSummary
    class RoomSummary
      def self.default(visited=[])
        return nil if visited.include?('RoomSummary')
        visited = visited + ['RoomSummary']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          message_review_handler: MessageReviewHandler.default(visited),
          create_time: Time.now,
          update_time: Time.now,
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RoomSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['messageReviewHandler'] = Stubs::MessageReviewHandler.stub(stub[:message_review_handler]) unless stub[:message_review_handler].nil?
        data['createTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendEvent
    class SendEvent
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoom
    class UpdateRoom
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          create_time: Time.now,
          update_time: Time.now,
          maximum_message_rate_per_second: 1,
          maximum_message_length: 1,
          message_review_handler: MessageReviewHandler.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['maximumMessageRatePerSecond'] = stub[:maximum_message_rate_per_second] unless stub[:maximum_message_rate_per_second].nil?
        data['maximumMessageLength'] = stub[:maximum_message_length] unless stub[:maximum_message_length].nil?
        data['messageReviewHandler'] = Stubs::MessageReviewHandler.stub(stub[:message_review_handler]) unless stub[:message_review_handler].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
