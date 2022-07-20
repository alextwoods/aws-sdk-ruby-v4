# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivschat
  module Parsers

    # Operation Parser for CreateChatToken
    class CreateChatToken
      def self.parse(http_resp)
        data = Types::CreateChatTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.token = map['token']
        data.token_expiration_time = Time.parse(map['tokenExpirationTime']) if map['tokenExpirationTime']
        data.session_expiration_time = Time.parse(map['sessionExpirationTime']) if map['sessionExpirationTime']
        data
      end
    end

    # Error Parser for PendingVerification
    class PendingVerification
      def self.parse(http_resp)
        data = Types::PendingVerification.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CreateRoom
    class CreateRoom
      def self.parse(http_resp)
        data = Types::CreateRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.create_time = Time.parse(map['createTime']) if map['createTime']
        data.update_time = Time.parse(map['updateTime']) if map['updateTime']
        data.maximum_message_rate_per_second = map['maximumMessageRatePerSecond']
        data.maximum_message_length = map['maximumMessageLength']
        data.message_review_handler = (MessageReviewHandler.parse(map['messageReviewHandler']) unless map['messageReviewHandler'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MessageReviewHandler
      def self.parse(map)
        data = Types::MessageReviewHandler.new
        data.uri = map['uri']
        data.fallback_result = map['fallbackResult']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.limit = map['limit']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for DeleteMessage
    class DeleteMessage
      def self.parse(http_resp)
        data = Types::DeleteMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.limit = map['limit']
        data
      end
    end

    # Operation Parser for DeleteRoom
    class DeleteRoom
      def self.parse(http_resp)
        data = Types::DeleteRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisconnectUser
    class DisconnectUser
      def self.parse(http_resp)
        data = Types::DisconnectUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetRoom
    class GetRoom
      def self.parse(http_resp)
        data = Types::GetRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.create_time = Time.parse(map['createTime']) if map['createTime']
        data.update_time = Time.parse(map['updateTime']) if map['updateTime']
        data.maximum_message_rate_per_second = map['maximumMessageRatePerSecond']
        data.maximum_message_length = map['maximumMessageLength']
        data.message_review_handler = (MessageReviewHandler.parse(map['messageReviewHandler']) unless map['messageReviewHandler'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListRooms
    class ListRooms
      def self.parse(http_resp)
        data = Types::ListRoomsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rooms = (RoomList.parse(map['rooms']) unless map['rooms'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RoomList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RoomSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RoomSummary
      def self.parse(map)
        data = Types::RoomSummary.new
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.message_review_handler = (MessageReviewHandler.parse(map['messageReviewHandler']) unless map['messageReviewHandler'].nil?)
        data.create_time = Time.parse(map['createTime']) if map['createTime']
        data.update_time = Time.parse(map['updateTime']) if map['updateTime']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for SendEvent
    class SendEvent
      def self.parse(http_resp)
        data = Types::SendEventOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRoom
    class UpdateRoom
      def self.parse(http_resp)
        data = Types::UpdateRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.create_time = Time.parse(map['createTime']) if map['createTime']
        data.update_time = Time.parse(map['updateTime']) if map['updateTime']
        data.maximum_message_rate_per_second = map['maximumMessageRatePerSecond']
        data.maximum_message_length = map['maximumMessageLength']
        data.message_review_handler = (MessageReviewHandler.parse(map['messageReviewHandler']) unless map['messageReviewHandler'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end
  end
end
