# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SQS
  module Parsers

    # Operation Parser for AddPermission
    class AddPermission
      def self.parse(http_resp)
        data = Types::AddPermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddPermissionResult')
        data
      end
    end

    # Error Parser for OverLimit
    class OverLimit
      def self.parse(http_resp)
        data = Types::OverLimit.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for ChangeMessageVisibility
    class ChangeMessageVisibility
      def self.parse(http_resp)
        data = Types::ChangeMessageVisibilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ChangeMessageVisibilityResult')
        data
      end
    end

    # Error Parser for MessageNotInflight
    class MessageNotInflight
      def self.parse(http_resp)
        data = Types::MessageNotInflight.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Error Parser for ReceiptHandleIsInvalid
    class ReceiptHandleIsInvalid
      def self.parse(http_resp)
        data = Types::ReceiptHandleIsInvalid.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for ChangeMessageVisibilityBatch
    class ChangeMessageVisibilityBatch
      def self.parse(http_resp)
        data = Types::ChangeMessageVisibilityBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ChangeMessageVisibilityBatchResult')
        xml.children('ChangeMessageVisibilityBatchResultEntry') do |children|
          data.successful = ChangeMessageVisibilityBatchResultEntryList.parse(children)
        end
        xml.children('BatchResultErrorEntry') do |children|
          data.failed = BatchResultErrorEntryList.parse(children)
        end
        data
      end
    end

    class BatchResultErrorEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << BatchResultErrorEntry.parse(node)
        end
        data
      end
    end

    class BatchResultErrorEntry
      def self.parse(xml)
        data = Types::BatchResultErrorEntry.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('SenderFault') do |node|
          data.sender_fault = (node.text == 'true')
        end
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class ChangeMessageVisibilityBatchResultEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ChangeMessageVisibilityBatchResultEntry.parse(node)
        end
        data
      end
    end

    class ChangeMessageVisibilityBatchResultEntry
      def self.parse(xml)
        data = Types::ChangeMessageVisibilityBatchResultEntry.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for EmptyBatchRequest
    class EmptyBatchRequest
      def self.parse(http_resp)
        data = Types::EmptyBatchRequest.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Error Parser for TooManyEntriesInBatchRequest
    class TooManyEntriesInBatchRequest
      def self.parse(http_resp)
        data = Types::TooManyEntriesInBatchRequest.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Error Parser for InvalidBatchEntryId
    class InvalidBatchEntryId
      def self.parse(http_resp)
        data = Types::InvalidBatchEntryId.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Error Parser for BatchEntryIdsNotDistinct
    class BatchEntryIdsNotDistinct
      def self.parse(http_resp)
        data = Types::BatchEntryIdsNotDistinct.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for CreateQueue
    class CreateQueue
      def self.parse(http_resp)
        data = Types::CreateQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateQueueResult')
        xml.at('QueueUrl') do |node|
          data.queue_url = (node.text || '')
        end
        data
      end
    end

    # Error Parser for QueueNameExists
    class QueueNameExists
      def self.parse(http_resp)
        data = Types::QueueNameExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Error Parser for QueueDeletedRecently
    class QueueDeletedRecently
      def self.parse(http_resp)
        data = Types::QueueDeletedRecently.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for DeleteMessage
    class DeleteMessage
      def self.parse(http_resp)
        data = Types::DeleteMessageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteMessageResult')
        data
      end
    end

    # Error Parser for InvalidIdFormat
    class InvalidIdFormat
      def self.parse(http_resp)
        data = Types::InvalidIdFormat.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for DeleteMessageBatch
    class DeleteMessageBatch
      def self.parse(http_resp)
        data = Types::DeleteMessageBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteMessageBatchResult')
        xml.children('DeleteMessageBatchResultEntry') do |children|
          data.successful = DeleteMessageBatchResultEntryList.parse(children)
        end
        xml.children('BatchResultErrorEntry') do |children|
          data.failed = BatchResultErrorEntryList.parse(children)
        end
        data
      end
    end

    class DeleteMessageBatchResultEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DeleteMessageBatchResultEntry.parse(node)
        end
        data
      end
    end

    class DeleteMessageBatchResultEntry
      def self.parse(xml)
        data = Types::DeleteMessageBatchResultEntry.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeleteQueue
    class DeleteQueue
      def self.parse(http_resp)
        data = Types::DeleteQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteQueueResult')
        data
      end
    end

    # Operation Parser for GetQueueAttributes
    class GetQueueAttributes
      def self.parse(http_resp)
        data = Types::GetQueueAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetQueueAttributesResult')
        xml.children('Attribute') do |children|
          data.attributes = QueueAttributeMap.parse(children)
        end
        data
      end
    end

    class QueueAttributeMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('Name').text
          node = entry_node.at('Value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidAttributeName
    class InvalidAttributeName
      def self.parse(http_resp)
        data = Types::InvalidAttributeName.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for GetQueueUrl
    class GetQueueUrl
      def self.parse(http_resp)
        data = Types::GetQueueUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetQueueUrlResult')
        xml.at('QueueUrl') do |node|
          data.queue_url = (node.text || '')
        end
        data
      end
    end

    # Error Parser for QueueDoesNotExist
    class QueueDoesNotExist
      def self.parse(http_resp)
        data = Types::QueueDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for ListDeadLetterSourceQueues
    class ListDeadLetterSourceQueues
      def self.parse(http_resp)
        data = Types::ListDeadLetterSourceQueuesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListDeadLetterSourceQueuesResult')
        xml.children('QueueUrl') do |children|
          data.queue_urls = QueueUrlList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class QueueUrlList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListQueueTags
    class ListQueueTags
      def self.parse(http_resp)
        data = Types::ListQueueTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListQueueTagsResult')
        xml.children('Tag') do |children|
          data.tags = TagMap.parse(children)
        end
        data
      end
    end

    class TagMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('Key').text
          node = entry_node.at('Value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListQueues
    class ListQueues
      def self.parse(http_resp)
        data = Types::ListQueuesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListQueuesResult')
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.children('QueueUrl') do |children|
          data.queue_urls = QueueUrlList.parse(children)
        end
        data
      end
    end

    # Operation Parser for PurgeQueue
    class PurgeQueue
      def self.parse(http_resp)
        data = Types::PurgeQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PurgeQueueResult')
        data
      end
    end

    # Error Parser for PurgeQueueInProgress
    class PurgeQueueInProgress
      def self.parse(http_resp)
        data = Types::PurgeQueueInProgress.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for ReceiveMessage
    class ReceiveMessage
      def self.parse(http_resp)
        data = Types::ReceiveMessageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ReceiveMessageResult')
        xml.children('Message') do |children|
          data.messages = MessageList.parse(children)
        end
        data
      end
    end

    class MessageList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Message.parse(node)
        end
        data
      end
    end

    class Message
      def self.parse(xml)
        data = Types::Message.new
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        xml.at('ReceiptHandle') do |node|
          data.receipt_handle = (node.text || '')
        end
        xml.at('MD5OfBody') do |node|
          data.md5_of_body = (node.text || '')
        end
        xml.at('Body') do |node|
          data.body = (node.text || '')
        end
        xml.children('Attribute') do |children|
          data.attributes = MessageSystemAttributeMap.parse(children)
        end
        xml.at('MD5OfMessageAttributes') do |node|
          data.md5_of_message_attributes = (node.text || '')
        end
        xml.children('MessageAttribute') do |children|
          data.message_attributes = MessageBodyAttributeMap.parse(children)
        end
        return data
      end
    end

    class MessageBodyAttributeMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('Name').text
          node = entry_node.at('Value')
          data[key] = MessageAttributeValue.parse(node)
        end
        data
      end
    end

    class MessageAttributeValue
      def self.parse(xml)
        data = Types::MessageAttributeValue.new
        xml.at('StringValue') do |node|
          data.string_value = (node.text || '')
        end
        xml.at('BinaryValue') do |node|
          data.binary_value = ((::Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        xml.children('StringListValue') do |children|
          data.string_list_values = StringList.parse(children)
        end
        xml.children('BinaryListValue') do |children|
          data.binary_list_values = BinaryList.parse(children)
        end
        xml.at('DataType') do |node|
          data.data_type = (node.text || '')
        end
        return data
      end
    end

    class BinaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ((::Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        data
      end
    end

    class StringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MessageSystemAttributeMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('Name').text
          node = entry_node.at('Value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RemovePermission
    class RemovePermission
      def self.parse(http_resp)
        data = Types::RemovePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RemovePermissionResult')
        data
      end
    end

    # Operation Parser for SendMessage
    class SendMessage
      def self.parse(http_resp)
        data = Types::SendMessageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendMessageResult')
        xml.at('MD5OfMessageBody') do |node|
          data.md5_of_message_body = (node.text || '')
        end
        xml.at('MD5OfMessageAttributes') do |node|
          data.md5_of_message_attributes = (node.text || '')
        end
        xml.at('MD5OfMessageSystemAttributes') do |node|
          data.md5_of_message_system_attributes = (node.text || '')
        end
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        xml.at('SequenceNumber') do |node|
          data.sequence_number = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnsupportedOperation
    class UnsupportedOperation
      def self.parse(http_resp)
        data = Types::UnsupportedOperation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Error Parser for InvalidMessageContents
    class InvalidMessageContents
      def self.parse(http_resp)
        data = Types::InvalidMessageContents.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for SendMessageBatch
    class SendMessageBatch
      def self.parse(http_resp)
        data = Types::SendMessageBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendMessageBatchResult')
        xml.children('SendMessageBatchResultEntry') do |children|
          data.successful = SendMessageBatchResultEntryList.parse(children)
        end
        xml.children('BatchResultErrorEntry') do |children|
          data.failed = BatchResultErrorEntryList.parse(children)
        end
        data
      end
    end

    class SendMessageBatchResultEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << SendMessageBatchResultEntry.parse(node)
        end
        data
      end
    end

    class SendMessageBatchResultEntry
      def self.parse(xml)
        data = Types::SendMessageBatchResultEntry.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        xml.at('MD5OfMessageBody') do |node|
          data.md5_of_message_body = (node.text || '')
        end
        xml.at('MD5OfMessageAttributes') do |node|
          data.md5_of_message_attributes = (node.text || '')
        end
        xml.at('MD5OfMessageSystemAttributes') do |node|
          data.md5_of_message_system_attributes = (node.text || '')
        end
        xml.at('SequenceNumber') do |node|
          data.sequence_number = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for BatchRequestTooLong
    class BatchRequestTooLong
      def self.parse(http_resp)
        data = Types::BatchRequestTooLong.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        data
      end
    end

    # Operation Parser for SetQueueAttributes
    class SetQueueAttributes
      def self.parse(http_resp)
        data = Types::SetQueueAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetQueueAttributesResult')
        data
      end
    end

    # Operation Parser for TagQueue
    class TagQueue
      def self.parse(http_resp)
        data = Types::TagQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagQueueResult')
        data
      end
    end

    # Operation Parser for UntagQueue
    class UntagQueue
      def self.parse(http_resp)
        data = Types::UntagQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagQueueResult')
        data
      end
    end
  end
end
