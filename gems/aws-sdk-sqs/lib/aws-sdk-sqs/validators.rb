# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SQS
  # @api private
  module Validators

    class AWSAccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ActionNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddPermissionInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:label], context: "#{context}[:label]")
        Hearth::Validator.validate_types!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate_required!(input[:aws_account_ids], context: "#{context}[:aws_account_ids]")
        AWSAccountIdList.validate!(input[:aws_account_ids], context: "#{context}[:aws_account_ids]") unless input[:aws_account_ids].nil?
        Hearth::Validator.validate_required!(input[:actions], context: "#{context}[:actions]")
        ActionNameList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class AddPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddPermissionOutput, context: context)
      end
    end

    class AttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchEntryIdsNotDistinct
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BatchEntryIdsNotDistinct, context: context)
      end
    end

    class BatchRequestTooLong
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BatchRequestTooLong, context: context)
      end
    end

    class BatchResultErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BatchResultErrorEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:sender_fault], context: "#{context}[:sender_fault]")
        Hearth::Validator.validate_types!(input[:sender_fault], ::TrueClass, ::FalseClass, context: "#{context}[:sender_fault]")
        Hearth::Validator.validate_required!(input[:code], context: "#{context}[:code]")
        Hearth::Validator.validate_types!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchResultErrorEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchResultErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BinaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ChangeMessageVisibilityBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChangeMessageVisibilityBatchInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:entries], context: "#{context}[:entries]")
        ChangeMessageVisibilityBatchRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class ChangeMessageVisibilityBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChangeMessageVisibilityBatchOutput, context: context)
        Hearth::Validator.validate_required!(input[:successful], context: "#{context}[:successful]")
        ChangeMessageVisibilityBatchResultEntryList.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
        Hearth::Validator.validate_required!(input[:failed], context: "#{context}[:failed]")
        BatchResultErrorEntryList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
      end
    end

    class ChangeMessageVisibilityBatchRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChangeMessageVisibilityBatchRequestEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:receipt_handle], context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_types!(input[:receipt_handle], ::String, context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_types!(input[:visibility_timeout], ::Integer, context: "#{context}[:visibility_timeout]")
      end
    end

    class ChangeMessageVisibilityBatchRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeMessageVisibilityBatchRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeMessageVisibilityBatchResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChangeMessageVisibilityBatchResultEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ChangeMessageVisibilityBatchResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeMessageVisibilityBatchResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeMessageVisibilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChangeMessageVisibilityInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:receipt_handle], context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_types!(input[:receipt_handle], ::String, context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_required!(input[:visibility_timeout], context: "#{context}[:visibility_timeout]")
        Hearth::Validator.validate_types!(input[:visibility_timeout], ::Integer, context: "#{context}[:visibility_timeout]")
      end
    end

    class ChangeMessageVisibilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ChangeMessageVisibilityOutput, context: context)
      end
    end

    class CreateQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateQueueInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_name], context: "#{context}[:queue_name]")
        Hearth::Validator.validate_types!(input[:queue_name], ::String, context: "#{context}[:queue_name]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        QueueAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreateQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateQueueOutput, context: context)
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
      end
    end

    class DeleteMessageBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMessageBatchInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:entries], context: "#{context}[:entries]")
        DeleteMessageBatchRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class DeleteMessageBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMessageBatchOutput, context: context)
        Hearth::Validator.validate_required!(input[:successful], context: "#{context}[:successful]")
        DeleteMessageBatchResultEntryList.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
        Hearth::Validator.validate_required!(input[:failed], context: "#{context}[:failed]")
        BatchResultErrorEntryList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
      end
    end

    class DeleteMessageBatchRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMessageBatchRequestEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:receipt_handle], context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_types!(input[:receipt_handle], ::String, context: "#{context}[:receipt_handle]")
      end
    end

    class DeleteMessageBatchRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeleteMessageBatchRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteMessageBatchResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMessageBatchResultEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteMessageBatchResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeleteMessageBatchResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMessageInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:receipt_handle], context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_types!(input[:receipt_handle], ::String, context: "#{context}[:receipt_handle]")
      end
    end

    class DeleteMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMessageOutput, context: context)
      end
    end

    class DeleteQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteQueueInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
      end
    end

    class DeleteQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteQueueOutput, context: context)
      end
    end

    class EmptyBatchRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EmptyBatchRequest, context: context)
      end
    end

    class GetQueueAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetQueueAttributesInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class GetQueueAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetQueueAttributesOutput, context: context)
        QueueAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetQueueUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetQueueUrlInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_name], context: "#{context}[:queue_name]")
        Hearth::Validator.validate_types!(input[:queue_name], ::String, context: "#{context}[:queue_name]")
        Hearth::Validator.validate_types!(input[:queue_owner_aws_account_id], ::String, context: "#{context}[:queue_owner_aws_account_id]")
      end
    end

    class GetQueueUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetQueueUrlOutput, context: context)
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
      end
    end

    class InvalidAttributeName
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidAttributeName, context: context)
      end
    end

    class InvalidBatchEntryId
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidBatchEntryId, context: context)
      end
    end

    class InvalidIdFormat
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidIdFormat, context: context)
      end
    end

    class InvalidMessageContents
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidMessageContents, context: context)
      end
    end

    class ListDeadLetterSourceQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDeadLetterSourceQueuesInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDeadLetterSourceQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDeadLetterSourceQueuesOutput, context: context)
        Hearth::Validator.validate_required!(input[:queue_urls], context: "#{context}[:queue_urls]")
        QueueUrlList.validate!(input[:queue_urls], context: "#{context}[:queue_urls]") unless input[:queue_urls].nil?
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListQueueTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListQueueTagsInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
      end
    end

    class ListQueueTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListQueueTagsOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListQueuesInput, context: context)
        Hearth::Validator.validate_types!(input[:queue_name_prefix], ::String, context: "#{context}[:queue_name_prefix]")
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListQueuesOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        QueueUrlList.validate!(input[:queue_urls], context: "#{context}[:queue_urls]") unless input[:queue_urls].nil?
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Message, context: context)
        Hearth::Validator.validate_types!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate_types!(input[:receipt_handle], ::String, context: "#{context}[:receipt_handle]")
        Hearth::Validator.validate_types!(input[:md5_of_body], ::String, context: "#{context}[:md5_of_body]")
        Hearth::Validator.validate_types!(input[:body], ::String, context: "#{context}[:body]")
        MessageSystemAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate_types!(input[:md5_of_message_attributes], ::String, context: "#{context}[:md5_of_message_attributes]")
        MessageBodyAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
      end
    end

    class MessageAttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MessageAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MessageAttributeValue, context: context)
        Hearth::Validator.validate_types!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate_types!(input[:binary_value], ::String, context: "#{context}[:binary_value]")
        StringList.validate!(input[:string_list_values], context: "#{context}[:string_list_values]") unless input[:string_list_values].nil?
        BinaryList.validate!(input[:binary_list_values], context: "#{context}[:binary_list_values]") unless input[:binary_list_values].nil?
        Hearth::Validator.validate_required!(input[:data_type], context: "#{context}[:data_type]")
        Hearth::Validator.validate_types!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class MessageBodyAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          MessageAttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MessageBodySystemAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          MessageSystemAttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MessageNotInflight
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MessageNotInflight, context: context)
      end
    end

    class MessageSystemAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MessageSystemAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MessageSystemAttributeValue, context: context)
        Hearth::Validator.validate_types!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate_types!(input[:binary_value], ::String, context: "#{context}[:binary_value]")
        StringList.validate!(input[:string_list_values], context: "#{context}[:string_list_values]") unless input[:string_list_values].nil?
        BinaryList.validate!(input[:binary_list_values], context: "#{context}[:binary_list_values]") unless input[:binary_list_values].nil?
        Hearth::Validator.validate_required!(input[:data_type], context: "#{context}[:data_type]")
        Hearth::Validator.validate_types!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class OverLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OverLimit, context: context)
      end
    end

    class PurgeQueueInProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PurgeQueueInProgress, context: context)
      end
    end

    class PurgeQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PurgeQueueInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
      end
    end

    class PurgeQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PurgeQueueOutput, context: context)
      end
    end

    class QueueAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class QueueDeletedRecently
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::QueueDeletedRecently, context: context)
      end
    end

    class QueueDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::QueueDoesNotExist, context: context)
      end
    end

    class QueueNameExists
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::QueueNameExists, context: context)
      end
    end

    class QueueUrlList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReceiptHandleIsInvalid
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReceiptHandleIsInvalid, context: context)
      end
    end

    class ReceiveMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReceiveMessageInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
        MessageAttributeNameList.validate!(input[:message_attribute_names], context: "#{context}[:message_attribute_names]") unless input[:message_attribute_names].nil?
        Hearth::Validator.validate_types!(input[:max_number_of_messages], ::Integer, context: "#{context}[:max_number_of_messages]")
        Hearth::Validator.validate_types!(input[:visibility_timeout], ::Integer, context: "#{context}[:visibility_timeout]")
        Hearth::Validator.validate_types!(input[:wait_time_seconds], ::Integer, context: "#{context}[:wait_time_seconds]")
        Hearth::Validator.validate_types!(input[:receive_request_attempt_id], ::String, context: "#{context}[:receive_request_attempt_id]")
      end
    end

    class ReceiveMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReceiveMessageOutput, context: context)
        MessageList.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class RemovePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemovePermissionInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:label], context: "#{context}[:label]")
        Hearth::Validator.validate_types!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class RemovePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemovePermissionOutput, context: context)
      end
    end

    class SendMessageBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SendMessageBatchInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:entries], context: "#{context}[:entries]")
        SendMessageBatchRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class SendMessageBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SendMessageBatchOutput, context: context)
        Hearth::Validator.validate_required!(input[:successful], context: "#{context}[:successful]")
        SendMessageBatchResultEntryList.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
        Hearth::Validator.validate_required!(input[:failed], context: "#{context}[:failed]")
        BatchResultErrorEntryList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
      end
    end

    class SendMessageBatchRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SendMessageBatchRequestEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:message_body], context: "#{context}[:message_body]")
        Hearth::Validator.validate_types!(input[:message_body], ::String, context: "#{context}[:message_body]")
        Hearth::Validator.validate_types!(input[:delay_seconds], ::Integer, context: "#{context}[:delay_seconds]")
        MessageBodyAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
        MessageBodySystemAttributeMap.validate!(input[:message_system_attributes], context: "#{context}[:message_system_attributes]") unless input[:message_system_attributes].nil?
        Hearth::Validator.validate_types!(input[:message_deduplication_id], ::String, context: "#{context}[:message_deduplication_id]")
        Hearth::Validator.validate_types!(input[:message_group_id], ::String, context: "#{context}[:message_group_id]")
      end
    end

    class SendMessageBatchRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SendMessageBatchRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendMessageBatchResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SendMessageBatchResultEntry, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:message_id], context: "#{context}[:message_id]")
        Hearth::Validator.validate_types!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate_required!(input[:md5_of_message_body], context: "#{context}[:md5_of_message_body]")
        Hearth::Validator.validate_types!(input[:md5_of_message_body], ::String, context: "#{context}[:md5_of_message_body]")
        Hearth::Validator.validate_types!(input[:md5_of_message_attributes], ::String, context: "#{context}[:md5_of_message_attributes]")
        Hearth::Validator.validate_types!(input[:md5_of_message_system_attributes], ::String, context: "#{context}[:md5_of_message_system_attributes]")
        Hearth::Validator.validate_types!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
      end
    end

    class SendMessageBatchResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SendMessageBatchResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SendMessageInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:message_body], context: "#{context}[:message_body]")
        Hearth::Validator.validate_types!(input[:message_body], ::String, context: "#{context}[:message_body]")
        Hearth::Validator.validate_types!(input[:delay_seconds], ::Integer, context: "#{context}[:delay_seconds]")
        MessageBodyAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
        MessageBodySystemAttributeMap.validate!(input[:message_system_attributes], context: "#{context}[:message_system_attributes]") unless input[:message_system_attributes].nil?
        Hearth::Validator.validate_types!(input[:message_deduplication_id], ::String, context: "#{context}[:message_deduplication_id]")
        Hearth::Validator.validate_types!(input[:message_group_id], ::String, context: "#{context}[:message_group_id]")
      end
    end

    class SendMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SendMessageOutput, context: context)
        Hearth::Validator.validate_types!(input[:md5_of_message_body], ::String, context: "#{context}[:md5_of_message_body]")
        Hearth::Validator.validate_types!(input[:md5_of_message_attributes], ::String, context: "#{context}[:md5_of_message_attributes]")
        Hearth::Validator.validate_types!(input[:md5_of_message_system_attributes], ::String, context: "#{context}[:md5_of_message_system_attributes]")
        Hearth::Validator.validate_types!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate_types!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
      end
    end

    class SetQueueAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SetQueueAttributesInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:attributes], context: "#{context}[:attributes]")
        QueueAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SetQueueAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SetQueueAttributesOutput, context: context)
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagQueueInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:tags], context: "#{context}[:tags]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagQueueOutput, context: context)
      end
    end

    class TooManyEntriesInBatchRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TooManyEntriesInBatchRequest, context: context)
      end
    end

    class UnsupportedOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UnsupportedOperation, context: context)
      end
    end

    class UntagQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagQueueInput, context: context)
        Hearth::Validator.validate_required!(input[:queue_url], context: "#{context}[:queue_url]")
        Hearth::Validator.validate_types!(input[:queue_url], ::String, context: "#{context}[:queue_url]")
        Hearth::Validator.validate_required!(input[:tag_keys], context: "#{context}[:tag_keys]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagQueueOutput, context: context)
      end
    end

  end
end
