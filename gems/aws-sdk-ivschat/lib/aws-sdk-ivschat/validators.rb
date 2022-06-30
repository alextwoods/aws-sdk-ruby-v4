# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivschat
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ChatTokenAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ChatTokenCapabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateChatTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChatTokenInput, context: context)
        Hearth::Validator.validate!(input[:room_identifier], ::String, context: "#{context}[:room_identifier]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Validators::ChatTokenCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:session_duration_in_minutes], ::Integer, context: "#{context}[:session_duration_in_minutes]")
        Validators::ChatTokenAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreateChatTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChatTokenOutput, context: context)
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:token_expiration_time], ::Time, context: "#{context}[:token_expiration_time]")
        Hearth::Validator.validate!(input[:session_expiration_time], ::Time, context: "#{context}[:session_expiration_time]")
      end
    end

    class CreateRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:maximum_message_rate_per_second], ::Integer, context: "#{context}[:maximum_message_rate_per_second]")
        Hearth::Validator.validate!(input[:maximum_message_length], ::Integer, context: "#{context}[:maximum_message_length]")
        Validators::MessageReviewHandler.validate!(input[:message_review_handler], context: "#{context}[:message_review_handler]") unless input[:message_review_handler].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:maximum_message_rate_per_second], ::Integer, context: "#{context}[:maximum_message_rate_per_second]")
        Hearth::Validator.validate!(input[:maximum_message_length], ::Integer, context: "#{context}[:maximum_message_length]")
        Validators::MessageReviewHandler.validate!(input[:message_review_handler], context: "#{context}[:message_review_handler]") unless input[:message_review_handler].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMessageInput, context: context)
        Hearth::Validator.validate!(input[:room_identifier], ::String, context: "#{context}[:room_identifier]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class DeleteMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMessageOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DeleteRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomOutput, context: context)
      end
    end

    class DisconnectUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectUserInput, context: context)
        Hearth::Validator.validate!(input[:room_identifier], ::String, context: "#{context}[:room_identifier]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class DisconnectUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectUserOutput, context: context)
      end
    end

    class EventAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class GetRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:maximum_message_rate_per_second], ::Integer, context: "#{context}[:maximum_message_rate_per_second]")
        Hearth::Validator.validate!(input[:maximum_message_length], ::Integer, context: "#{context}[:maximum_message_length]")
        Validators::MessageReviewHandler.validate!(input[:message_review_handler], context: "#{context}[:message_review_handler]") unless input[:message_review_handler].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListRoomsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoomsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:message_review_handler_uri], ::String, context: "#{context}[:message_review_handler_uri]")
      end
    end

    class ListRoomsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoomsOutput, context: context)
        Validators::RoomList.validate!(input[:rooms], context: "#{context}[:rooms]") unless input[:rooms].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MessageReviewHandler
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageReviewHandler, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:fallback_result], ::String, context: "#{context}[:fallback_result]")
      end
    end

    class PendingVerification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingVerification, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RoomList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RoomSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoomSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoomSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::MessageReviewHandler.validate!(input[:message_review_handler], context: "#{context}[:message_review_handler]") unless input[:message_review_handler].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SendEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEventInput, context: context)
        Hearth::Validator.validate!(input[:room_identifier], ::String, context: "#{context}[:room_identifier]")
        Hearth::Validator.validate!(input[:event_name], ::String, context: "#{context}[:event_name]")
        Validators::EventAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SendEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEventOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:maximum_message_rate_per_second], ::Integer, context: "#{context}[:maximum_message_rate_per_second]")
        Hearth::Validator.validate!(input[:maximum_message_length], ::Integer, context: "#{context}[:maximum_message_length]")
        Validators::MessageReviewHandler.validate!(input[:message_review_handler], context: "#{context}[:message_review_handler]") unless input[:message_review_handler].nil?
      end
    end

    class UpdateRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:maximum_message_rate_per_second], ::Integer, context: "#{context}[:maximum_message_rate_per_second]")
        Hearth::Validator.validate!(input[:maximum_message_length], ::Integer, context: "#{context}[:maximum_message_length]")
        Validators::MessageReviewHandler.validate!(input[:message_review_handler], context: "#{context}[:message_review_handler]") unless input[:message_review_handler].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
