# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTDataPlane
  module Stubs

    # Operation Stubber for DeleteThingShadow
    class DeleteThingShadow
      def self.default(visited=[])
        {
          payload: 'payload',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:payload] || '')
      end
    end

    # Operation Stubber for GetRetainedMessage
    class GetRetainedMessage
      def self.default(visited=[])
        {
          topic: 'topic',
          payload: 'payload',
          qos: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['topic'] = stub[:topic] unless stub[:topic].nil?
        data['payload'] = Base64::encode64(stub[:payload]) unless stub[:payload].nil?
        data['qos'] = stub[:qos] unless stub[:qos].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetThingShadow
    class GetThingShadow
      def self.default(visited=[])
        {
          payload: 'payload',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:payload] || '')
      end
    end

    # Operation Stubber for ListNamedShadowsForThing
    class ListNamedShadowsForThing
      def self.default(visited=[])
        {
          results: NamedShadowList.default(visited),
          next_token: 'next_token',
          timestamp: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['results'] = Stubs::NamedShadowList.stub(stub[:results]) unless stub[:results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NamedShadowList
    class NamedShadowList
      def self.default(visited=[])
        return nil if visited.include?('NamedShadowList')
        visited = visited + ['NamedShadowList']
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

    # Operation Stubber for ListRetainedMessages
    class ListRetainedMessages
      def self.default(visited=[])
        {
          retained_topics: RetainedMessageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['retainedTopics'] = Stubs::RetainedMessageList.stub(stub[:retained_topics]) unless stub[:retained_topics].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RetainedMessageList
    class RetainedMessageList
      def self.default(visited=[])
        return nil if visited.include?('RetainedMessageList')
        visited = visited + ['RetainedMessageList']
        [
          RetainedMessageSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RetainedMessageSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RetainedMessageSummary
    class RetainedMessageSummary
      def self.default(visited=[])
        return nil if visited.include?('RetainedMessageSummary')
        visited = visited + ['RetainedMessageSummary']
        {
          topic: 'topic',
          payload_size: 1,
          qos: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetainedMessageSummary.new
        data = {}
        data['topic'] = stub[:topic] unless stub[:topic].nil?
        data['payloadSize'] = stub[:payload_size] unless stub[:payload_size].nil?
        data['qos'] = stub[:qos] unless stub[:qos].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for Publish
    class Publish
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateThingShadow
    class UpdateThingShadow
      def self.default(visited=[])
        {
          payload: 'payload',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:payload] || '')
      end
    end
  end
end
