# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivschat
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ChatTokenAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ChatTokenCapabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateChatTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChatTokenInput, context: context)
        type = Types::CreateChatTokenInput.new
        type.room_identifier = params[:room_identifier]
        type.user_id = params[:user_id]
        type.capabilities = ChatTokenCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.session_duration_in_minutes = params[:session_duration_in_minutes]
        type.attributes = ChatTokenAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreateChatTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChatTokenOutput, context: context)
        type = Types::CreateChatTokenOutput.new
        type.token = params[:token]
        type.token_expiration_time = params[:token_expiration_time]
        type.session_expiration_time = params[:session_expiration_time]
        type
      end
    end

    module CreateRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomInput, context: context)
        type = Types::CreateRoomInput.new
        type.name = params[:name]
        type.maximum_message_rate_per_second = params[:maximum_message_rate_per_second]
        type.maximum_message_length = params[:maximum_message_length]
        type.message_review_handler = MessageReviewHandler.build(params[:message_review_handler], context: "#{context}[:message_review_handler]") unless params[:message_review_handler].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomOutput, context: context)
        type = Types::CreateRoomOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.maximum_message_rate_per_second = params[:maximum_message_rate_per_second]
        type.maximum_message_length = params[:maximum_message_length]
        type.message_review_handler = MessageReviewHandler.build(params[:message_review_handler], context: "#{context}[:message_review_handler]") unless params[:message_review_handler].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMessageInput, context: context)
        type = Types::DeleteMessageInput.new
        type.room_identifier = params[:room_identifier]
        type.id = params[:id]
        type.reason = params[:reason]
        type
      end
    end

    module DeleteMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMessageOutput, context: context)
        type = Types::DeleteMessageOutput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomInput, context: context)
        type = Types::DeleteRoomInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module DeleteRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomOutput, context: context)
        type = Types::DeleteRoomOutput.new
        type
      end
    end

    module DisconnectUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectUserInput, context: context)
        type = Types::DisconnectUserInput.new
        type.room_identifier = params[:room_identifier]
        type.user_id = params[:user_id]
        type.reason = params[:reason]
        type
      end
    end

    module DisconnectUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectUserOutput, context: context)
        type = Types::DisconnectUserOutput.new
        type
      end
    end

    module EventAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomInput, context: context)
        type = Types::GetRoomInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module GetRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomOutput, context: context)
        type = Types::GetRoomOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.maximum_message_rate_per_second = params[:maximum_message_rate_per_second]
        type.maximum_message_length = params[:maximum_message_length]
        type.message_review_handler = MessageReviewHandler.build(params[:message_review_handler], context: "#{context}[:message_review_handler]") unless params[:message_review_handler].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListRoomsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoomsInput, context: context)
        type = Types::ListRoomsInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.message_review_handler_uri = params[:message_review_handler_uri]
        type
      end
    end

    module ListRoomsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoomsOutput, context: context)
        type = Types::ListRoomsOutput.new
        type.rooms = RoomList.build(params[:rooms], context: "#{context}[:rooms]") unless params[:rooms].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MessageReviewHandler
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageReviewHandler, context: context)
        type = Types::MessageReviewHandler.new
        type.uri = params[:uri]
        type.fallback_result = params[:fallback_result]
        type
      end
    end

    module PendingVerification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingVerification, context: context)
        type = Types::PendingVerification.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RoomList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoomSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoomSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoomSummary, context: context)
        type = Types::RoomSummary.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.message_review_handler = MessageReviewHandler.build(params[:message_review_handler], context: "#{context}[:message_review_handler]") unless params[:message_review_handler].nil?
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SendEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEventInput, context: context)
        type = Types::SendEventInput.new
        type.room_identifier = params[:room_identifier]
        type.event_name = params[:event_name]
        type.attributes = EventAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SendEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEventOutput, context: context)
        type = Types::SendEventOutput.new
        type.id = params[:id]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.limit = params[:limit]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.limit = params[:limit]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomInput, context: context)
        type = Types::UpdateRoomInput.new
        type.identifier = params[:identifier]
        type.name = params[:name]
        type.maximum_message_rate_per_second = params[:maximum_message_rate_per_second]
        type.maximum_message_length = params[:maximum_message_length]
        type.message_review_handler = MessageReviewHandler.build(params[:message_review_handler], context: "#{context}[:message_review_handler]") unless params[:message_review_handler].nil?
        type
      end
    end

    module UpdateRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomOutput, context: context)
        type = Types::UpdateRoomOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.maximum_message_rate_per_second = params[:maximum_message_rate_per_second]
        type.maximum_message_length = params[:maximum_message_length]
        type.message_review_handler = MessageReviewHandler.build(params[:message_review_handler], context: "#{context}[:message_review_handler]") unless params[:message_review_handler].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
