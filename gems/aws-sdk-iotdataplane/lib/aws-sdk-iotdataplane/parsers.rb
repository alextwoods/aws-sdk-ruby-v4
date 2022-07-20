# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTDataPlane
  module Parsers

    # Operation Parser for DeleteThingShadow
    class DeleteThingShadow
      def self.parse(http_resp)
        data = Types::DeleteThingShadowOutput.new
        payload = http_resp.body.read
        data.payload = payload unless payload.empty?
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MethodNotAllowedException
    class MethodNotAllowedException
      def self.parse(http_resp)
        data = Types::MethodNotAllowedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnsupportedDocumentEncodingException
    class UnsupportedDocumentEncodingException
      def self.parse(http_resp)
        data = Types::UnsupportedDocumentEncodingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetRetainedMessage
    class GetRetainedMessage
      def self.parse(http_resp)
        data = Types::GetRetainedMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.topic = map['topic']
        data.payload = Base64::decode64(map['payload']) unless map['payload'].nil?
        data.qos = map['qos']
        data.last_modified_time = map['lastModifiedTime']
        data
      end
    end

    # Operation Parser for GetThingShadow
    class GetThingShadow
      def self.parse(http_resp)
        data = Types::GetThingShadowOutput.new
        payload = http_resp.body.read
        data.payload = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for ListNamedShadowsForThing
    class ListNamedShadowsForThing
      def self.parse(http_resp)
        data = Types::ListNamedShadowsForThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.results = (Parsers::NamedShadowList.parse(map['results']) unless map['results'].nil?)
        data.next_token = map['nextToken']
        data.timestamp = map['timestamp']
        data
      end
    end

    class NamedShadowList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRetainedMessages
    class ListRetainedMessages
      def self.parse(http_resp)
        data = Types::ListRetainedMessagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.retained_topics = (Parsers::RetainedMessageList.parse(map['retainedTopics']) unless map['retainedTopics'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RetainedMessageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RetainedMessageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RetainedMessageSummary
      def self.parse(map)
        data = Types::RetainedMessageSummary.new
        data.topic = map['topic']
        data.payload_size = map['payloadSize']
        data.qos = map['qos']
        data.last_modified_time = map['lastModifiedTime']
        return data
      end
    end

    # Operation Parser for Publish
    class Publish
      def self.parse(http_resp)
        data = Types::PublishOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateThingShadow
    class UpdateThingShadow
      def self.parse(http_resp)
        data = Types::UpdateThingShadowOutput.new
        payload = http_resp.body.read
        data.payload = payload unless payload.empty?
        data
      end
    end

    # Error Parser for RequestEntityTooLargeException
    class RequestEntityTooLargeException
      def self.parse(http_resp)
        data = Types::RequestEntityTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
