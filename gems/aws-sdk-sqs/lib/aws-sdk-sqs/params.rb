# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SQS
  # @api private
  module Params

    module AWSAccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ActionNameList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AddPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::AddPermissionInput, context: context)
        type = Types::AddPermissionInput.new
        type.queue_url = params[:queue_url]
        type.label = params[:label]
        type.aws_account_ids = AWSAccountIdList.build(params[:aws_account_ids], context: "#{context}[:aws_account_ids]") unless params[:aws_account_ids].nil?
        type.actions = ActionNameList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module AddPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::AddPermissionOutput, context: context)
        type = Types::AddPermissionOutput.new
        type
      end
    end

    module AttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchEntryIdsNotDistinct
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchEntryIdsNotDistinct, context: context)
        type = Types::BatchEntryIdsNotDistinct.new
        type
      end
    end

    module BatchRequestTooLong
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchRequestTooLong, context: context)
        type = Types::BatchRequestTooLong.new
        type
      end
    end

    module BatchResultErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchResultErrorEntry, context: context)
        type = Types::BatchResultErrorEntry.new
        type.id = params[:id]
        type.sender_fault = params.fetch(:sender_fault, false)
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BatchResultErrorEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchResultErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BinaryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ChangeMessageVisibilityBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChangeMessageVisibilityBatchInput, context: context)
        type = Types::ChangeMessageVisibilityBatchInput.new
        type.queue_url = params[:queue_url]
        type.entries = ChangeMessageVisibilityBatchRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module ChangeMessageVisibilityBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChangeMessageVisibilityBatchOutput, context: context)
        type = Types::ChangeMessageVisibilityBatchOutput.new
        type.successful = ChangeMessageVisibilityBatchResultEntryList.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type.failed = BatchResultErrorEntryList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type
      end
    end

    module ChangeMessageVisibilityBatchRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChangeMessageVisibilityBatchRequestEntry, context: context)
        type = Types::ChangeMessageVisibilityBatchRequestEntry.new
        type.id = params[:id]
        type.receipt_handle = params[:receipt_handle]
        type.visibility_timeout = params[:visibility_timeout]
        type
      end
    end

    module ChangeMessageVisibilityBatchRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeMessageVisibilityBatchRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeMessageVisibilityBatchResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChangeMessageVisibilityBatchResultEntry, context: context)
        type = Types::ChangeMessageVisibilityBatchResultEntry.new
        type.id = params[:id]
        type
      end
    end

    module ChangeMessageVisibilityBatchResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeMessageVisibilityBatchResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeMessageVisibilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChangeMessageVisibilityInput, context: context)
        type = Types::ChangeMessageVisibilityInput.new
        type.queue_url = params[:queue_url]
        type.receipt_handle = params[:receipt_handle]
        type.visibility_timeout = params.fetch(:visibility_timeout, 0)
        type
      end
    end

    module ChangeMessageVisibilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ChangeMessageVisibilityOutput, context: context)
        type = Types::ChangeMessageVisibilityOutput.new
        type
      end
    end

    module CreateQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateQueueInput, context: context)
        type = Types::CreateQueueInput.new
        type.queue_name = params[:queue_name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.attributes = QueueAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreateQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateQueueOutput, context: context)
        type = Types::CreateQueueOutput.new
        type.queue_url = params[:queue_url]
        type
      end
    end

    module DeleteMessageBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMessageBatchInput, context: context)
        type = Types::DeleteMessageBatchInput.new
        type.queue_url = params[:queue_url]
        type.entries = DeleteMessageBatchRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module DeleteMessageBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMessageBatchOutput, context: context)
        type = Types::DeleteMessageBatchOutput.new
        type.successful = DeleteMessageBatchResultEntryList.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type.failed = BatchResultErrorEntryList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type
      end
    end

    module DeleteMessageBatchRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMessageBatchRequestEntry, context: context)
        type = Types::DeleteMessageBatchRequestEntry.new
        type.id = params[:id]
        type.receipt_handle = params[:receipt_handle]
        type
      end
    end

    module DeleteMessageBatchRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteMessageBatchRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteMessageBatchResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMessageBatchResultEntry, context: context)
        type = Types::DeleteMessageBatchResultEntry.new
        type.id = params[:id]
        type
      end
    end

    module DeleteMessageBatchResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteMessageBatchResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMessageInput, context: context)
        type = Types::DeleteMessageInput.new
        type.queue_url = params[:queue_url]
        type.receipt_handle = params[:receipt_handle]
        type
      end
    end

    module DeleteMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMessageOutput, context: context)
        type = Types::DeleteMessageOutput.new
        type
      end
    end

    module DeleteQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteQueueInput, context: context)
        type = Types::DeleteQueueInput.new
        type.queue_url = params[:queue_url]
        type
      end
    end

    module DeleteQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteQueueOutput, context: context)
        type = Types::DeleteQueueOutput.new
        type
      end
    end

    module EmptyBatchRequest
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::EmptyBatchRequest, context: context)
        type = Types::EmptyBatchRequest.new
        type
      end
    end

    module GetQueueAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetQueueAttributesInput, context: context)
        type = Types::GetQueueAttributesInput.new
        type.queue_url = params[:queue_url]
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module GetQueueAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetQueueAttributesOutput, context: context)
        type = Types::GetQueueAttributesOutput.new
        type.attributes = QueueAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetQueueUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetQueueUrlInput, context: context)
        type = Types::GetQueueUrlInput.new
        type.queue_name = params[:queue_name]
        type.queue_owner_aws_account_id = params[:queue_owner_aws_account_id]
        type
      end
    end

    module GetQueueUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetQueueUrlOutput, context: context)
        type = Types::GetQueueUrlOutput.new
        type.queue_url = params[:queue_url]
        type
      end
    end

    module InvalidAttributeName
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidAttributeName, context: context)
        type = Types::InvalidAttributeName.new
        type
      end
    end

    module InvalidBatchEntryId
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidBatchEntryId, context: context)
        type = Types::InvalidBatchEntryId.new
        type
      end
    end

    module InvalidIdFormat
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidIdFormat, context: context)
        type = Types::InvalidIdFormat.new
        type
      end
    end

    module InvalidMessageContents
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidMessageContents, context: context)
        type = Types::InvalidMessageContents.new
        type
      end
    end

    module ListDeadLetterSourceQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDeadLetterSourceQueuesInput, context: context)
        type = Types::ListDeadLetterSourceQueuesInput.new
        type.queue_url = params[:queue_url]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDeadLetterSourceQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDeadLetterSourceQueuesOutput, context: context)
        type = Types::ListDeadLetterSourceQueuesOutput.new
        type.queue_urls = QueueUrlList.build(params[:queue_urls], context: "#{context}[:queue_urls]") unless params[:queue_urls].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListQueueTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListQueueTagsInput, context: context)
        type = Types::ListQueueTagsInput.new
        type.queue_url = params[:queue_url]
        type
      end
    end

    module ListQueueTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListQueueTagsOutput, context: context)
        type = Types::ListQueueTagsOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListQueuesInput, context: context)
        type = Types::ListQueuesInput.new
        type.queue_name_prefix = params[:queue_name_prefix]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListQueuesOutput, context: context)
        type = Types::ListQueuesOutput.new
        type.next_token = params[:next_token]
        type.queue_urls = QueueUrlList.build(params[:queue_urls], context: "#{context}[:queue_urls]") unless params[:queue_urls].nil?
        type
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.message_id = params[:message_id]
        type.receipt_handle = params[:receipt_handle]
        type.md5_of_body = params[:md5_of_body]
        type.body = params[:body]
        type.attributes = MessageSystemAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.md5_of_message_attributes = params[:md5_of_message_attributes]
        type.message_attributes = MessageBodyAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type
      end
    end

    module MessageAttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MessageAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::MessageAttributeValue, context: context)
        type = Types::MessageAttributeValue.new
        type.string_value = params[:string_value]
        type.binary_value = params[:binary_value]
        type.string_list_values = StringList.build(params[:string_list_values], context: "#{context}[:string_list_values]") unless params[:string_list_values].nil?
        type.binary_list_values = BinaryList.build(params[:binary_list_values], context: "#{context}[:binary_list_values]") unless params[:binary_list_values].nil?
        type.data_type = params[:data_type]
        type
      end
    end

    module MessageBodyAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MessageAttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MessageBodySystemAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MessageSystemAttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MessageList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MessageNotInflight
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::MessageNotInflight, context: context)
        type = Types::MessageNotInflight.new
        type
      end
    end

    module MessageSystemAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MessageSystemAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::MessageSystemAttributeValue, context: context)
        type = Types::MessageSystemAttributeValue.new
        type.string_value = params[:string_value]
        type.binary_value = params[:binary_value]
        type.string_list_values = StringList.build(params[:string_list_values], context: "#{context}[:string_list_values]") unless params[:string_list_values].nil?
        type.binary_list_values = BinaryList.build(params[:binary_list_values], context: "#{context}[:binary_list_values]") unless params[:binary_list_values].nil?
        type.data_type = params[:data_type]
        type
      end
    end

    module OverLimit
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::OverLimit, context: context)
        type = Types::OverLimit.new
        type
      end
    end

    module PurgeQueueInProgress
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::PurgeQueueInProgress, context: context)
        type = Types::PurgeQueueInProgress.new
        type
      end
    end

    module PurgeQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::PurgeQueueInput, context: context)
        type = Types::PurgeQueueInput.new
        type.queue_url = params[:queue_url]
        type
      end
    end

    module PurgeQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::PurgeQueueOutput, context: context)
        type = Types::PurgeQueueOutput.new
        type
      end
    end

    module QueueAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module QueueDeletedRecently
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueueDeletedRecently, context: context)
        type = Types::QueueDeletedRecently.new
        type
      end
    end

    module QueueDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueueDoesNotExist, context: context)
        type = Types::QueueDoesNotExist.new
        type
      end
    end

    module QueueNameExists
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueueNameExists, context: context)
        type = Types::QueueNameExists.new
        type
      end
    end

    module QueueUrlList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReceiptHandleIsInvalid
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReceiptHandleIsInvalid, context: context)
        type = Types::ReceiptHandleIsInvalid.new
        type
      end
    end

    module ReceiveMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReceiveMessageInput, context: context)
        type = Types::ReceiveMessageInput.new
        type.queue_url = params[:queue_url]
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type.message_attribute_names = MessageAttributeNameList.build(params[:message_attribute_names], context: "#{context}[:message_attribute_names]") unless params[:message_attribute_names].nil?
        type.max_number_of_messages = params[:max_number_of_messages]
        type.visibility_timeout = params[:visibility_timeout]
        type.wait_time_seconds = params[:wait_time_seconds]
        type.receive_request_attempt_id = params[:receive_request_attempt_id]
        type
      end
    end

    module ReceiveMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReceiveMessageOutput, context: context)
        type = Types::ReceiveMessageOutput.new
        type.messages = MessageList.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module RemovePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::RemovePermissionInput, context: context)
        type = Types::RemovePermissionInput.new
        type.queue_url = params[:queue_url]
        type.label = params[:label]
        type
      end
    end

    module RemovePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::RemovePermissionOutput, context: context)
        type = Types::RemovePermissionOutput.new
        type
      end
    end

    module SendMessageBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SendMessageBatchInput, context: context)
        type = Types::SendMessageBatchInput.new
        type.queue_url = params[:queue_url]
        type.entries = SendMessageBatchRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module SendMessageBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SendMessageBatchOutput, context: context)
        type = Types::SendMessageBatchOutput.new
        type.successful = SendMessageBatchResultEntryList.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type.failed = BatchResultErrorEntryList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type
      end
    end

    module SendMessageBatchRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SendMessageBatchRequestEntry, context: context)
        type = Types::SendMessageBatchRequestEntry.new
        type.id = params[:id]
        type.message_body = params[:message_body]
        type.delay_seconds = params[:delay_seconds]
        type.message_attributes = MessageBodyAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type.message_system_attributes = MessageBodySystemAttributeMap.build(params[:message_system_attributes], context: "#{context}[:message_system_attributes]") unless params[:message_system_attributes].nil?
        type.message_deduplication_id = params[:message_deduplication_id]
        type.message_group_id = params[:message_group_id]
        type
      end
    end

    module SendMessageBatchRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SendMessageBatchRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendMessageBatchResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SendMessageBatchResultEntry, context: context)
        type = Types::SendMessageBatchResultEntry.new
        type.id = params[:id]
        type.message_id = params[:message_id]
        type.md5_of_message_body = params[:md5_of_message_body]
        type.md5_of_message_attributes = params[:md5_of_message_attributes]
        type.md5_of_message_system_attributes = params[:md5_of_message_system_attributes]
        type.sequence_number = params[:sequence_number]
        type
      end
    end

    module SendMessageBatchResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SendMessageBatchResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SendMessageInput, context: context)
        type = Types::SendMessageInput.new
        type.queue_url = params[:queue_url]
        type.message_body = params[:message_body]
        type.delay_seconds = params[:delay_seconds]
        type.message_attributes = MessageBodyAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type.message_system_attributes = MessageBodySystemAttributeMap.build(params[:message_system_attributes], context: "#{context}[:message_system_attributes]") unless params[:message_system_attributes].nil?
        type.message_deduplication_id = params[:message_deduplication_id]
        type.message_group_id = params[:message_group_id]
        type
      end
    end

    module SendMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SendMessageOutput, context: context)
        type = Types::SendMessageOutput.new
        type.md5_of_message_body = params[:md5_of_message_body]
        type.md5_of_message_attributes = params[:md5_of_message_attributes]
        type.md5_of_message_system_attributes = params[:md5_of_message_system_attributes]
        type.message_id = params[:message_id]
        type.sequence_number = params[:sequence_number]
        type
      end
    end

    module SetQueueAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SetQueueAttributesInput, context: context)
        type = Types::SetQueueAttributesInput.new
        type.queue_url = params[:queue_url]
        type.attributes = QueueAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SetQueueAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::SetQueueAttributesOutput, context: context)
        type = Types::SetQueueAttributesOutput.new
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagQueueInput, context: context)
        type = Types::TagQueueInput.new
        type.queue_url = params[:queue_url]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagQueueOutput, context: context)
        type = Types::TagQueueOutput.new
        type
      end
    end

    module TooManyEntriesInBatchRequest
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::TooManyEntriesInBatchRequest, context: context)
        type = Types::TooManyEntriesInBatchRequest.new
        type
      end
    end

    module UnsupportedOperation
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::UnsupportedOperation, context: context)
        type = Types::UnsupportedOperation.new
        type
      end
    end

    module UntagQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagQueueInput, context: context)
        type = Types::UntagQueueInput.new
        type.queue_url = params[:queue_url]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagQueueOutput, context: context)
        type = Types::UntagQueueOutput.new
        type
      end
    end

  end
end
