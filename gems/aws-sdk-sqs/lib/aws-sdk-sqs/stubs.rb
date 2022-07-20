# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::SQS
  module Stubs

    # Operation Stubber for AddPermission
    class AddPermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddPermissionResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('AddPermissionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ChangeMessageVisibility
    class ChangeMessageVisibility
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ChangeMessageVisibilityResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('ChangeMessageVisibilityResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ChangeMessageVisibilityBatch
    class ChangeMessageVisibilityBatch
      def self.default(visited=[])
        {
          successful: ChangeMessageVisibilityBatchResultEntryList.default(visited),
          failed: BatchResultErrorEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ChangeMessageVisibilityBatchResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('ChangeMessageVisibilityBatchResult')
        xml << ChangeMessageVisibilityBatchResultEntryList.stub('ChangeMessageVisibilityBatchResultEntry', stub[:successful]) unless stub[:successful].nil?
        xml << BatchResultErrorEntryList.stub('BatchResultErrorEntry', stub[:failed]) unless stub[:failed].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for BatchResultErrorEntryList
    class BatchResultErrorEntryList
      def self.default(visited=[])
        return nil if visited.include?('BatchResultErrorEntryList')
        visited = visited + ['BatchResultErrorEntryList']
        [
          BatchResultErrorEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << BatchResultErrorEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for BatchResultErrorEntry
    class BatchResultErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchResultErrorEntry')
        visited = visited + ['BatchResultErrorEntry']
        {
          id: 'id',
          sender_fault: false,
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BatchResultErrorEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('SenderFault', stub[:sender_fault].to_s) unless stub[:sender_fault].nil?
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml
      end
    end

    # List Stubber for ChangeMessageVisibilityBatchResultEntryList
    class ChangeMessageVisibilityBatchResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('ChangeMessageVisibilityBatchResultEntryList')
        visited = visited + ['ChangeMessageVisibilityBatchResultEntryList']
        [
          ChangeMessageVisibilityBatchResultEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ChangeMessageVisibilityBatchResultEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ChangeMessageVisibilityBatchResultEntry
    class ChangeMessageVisibilityBatchResultEntry
      def self.default(visited=[])
        return nil if visited.include?('ChangeMessageVisibilityBatchResultEntry')
        visited = visited + ['ChangeMessageVisibilityBatchResultEntry']
        {
          id: 'id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ChangeMessageVisibilityBatchResultEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml
      end
    end

    # Operation Stubber for CreateQueue
    class CreateQueue
      def self.default(visited=[])
        {
          queue_url: 'queue_url',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateQueueResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('CreateQueueResult')
        xml << Hearth::XML::Node.new('QueueUrl', stub[:queue_url].to_s) unless stub[:queue_url].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMessage
    class DeleteMessage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteMessageResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('DeleteMessageResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMessageBatch
    class DeleteMessageBatch
      def self.default(visited=[])
        {
          successful: DeleteMessageBatchResultEntryList.default(visited),
          failed: BatchResultErrorEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteMessageBatchResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('DeleteMessageBatchResult')
        xml << DeleteMessageBatchResultEntryList.stub('DeleteMessageBatchResultEntry', stub[:successful]) unless stub[:successful].nil?
        xml << BatchResultErrorEntryList.stub('BatchResultErrorEntry', stub[:failed]) unless stub[:failed].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DeleteMessageBatchResultEntryList
    class DeleteMessageBatchResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('DeleteMessageBatchResultEntryList')
        visited = visited + ['DeleteMessageBatchResultEntryList']
        [
          DeleteMessageBatchResultEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DeleteMessageBatchResultEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DeleteMessageBatchResultEntry
    class DeleteMessageBatchResultEntry
      def self.default(visited=[])
        return nil if visited.include?('DeleteMessageBatchResultEntry')
        visited = visited + ['DeleteMessageBatchResultEntry']
        {
          id: 'id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeleteMessageBatchResultEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml
      end
    end

    # Operation Stubber for DeleteQueue
    class DeleteQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteQueueResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('DeleteQueueResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetQueueAttributes
    class GetQueueAttributes
      def self.default(visited=[])
        {
          attributes: QueueAttributeMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetQueueAttributesResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('GetQueueAttributesResult')
        xml << QueueAttributeMap.stub('Attribute', stub[:attributes]) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for QueueAttributeMap
    class QueueAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('QueueAttributeMap')
        visited = visited + ['QueueAttributeMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('Name', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('Value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for GetQueueUrl
    class GetQueueUrl
      def self.default(visited=[])
        {
          queue_url: 'queue_url',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetQueueUrlResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('GetQueueUrlResult')
        xml << Hearth::XML::Node.new('QueueUrl', stub[:queue_url].to_s) unless stub[:queue_url].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDeadLetterSourceQueues
    class ListDeadLetterSourceQueues
      def self.default(visited=[])
        {
          queue_urls: QueueUrlList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListDeadLetterSourceQueuesResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('ListDeadLetterSourceQueuesResult')
        xml << QueueUrlList.stub('QueueUrl', stub[:queue_urls]) unless stub[:queue_urls].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for QueueUrlList
    class QueueUrlList
      def self.default(visited=[])
        return nil if visited.include?('QueueUrlList')
        visited = visited + ['QueueUrlList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListQueueTags
    class ListQueueTags
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListQueueTagsResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('ListQueueTagsResult')
        xml << TagMap.stub('Tag', stub[:tags]) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('Key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('Value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for ListQueues
    class ListQueues
      def self.default(visited=[])
        {
          next_token: 'next_token',
          queue_urls: QueueUrlList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListQueuesResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('ListQueuesResult')
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << QueueUrlList.stub('QueueUrl', stub[:queue_urls]) unless stub[:queue_urls].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PurgeQueue
    class PurgeQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PurgeQueueResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('PurgeQueueResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReceiveMessage
    class ReceiveMessage
      def self.default(visited=[])
        {
          messages: MessageList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ReceiveMessageResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('ReceiveMessageResult')
        xml << MessageList.stub('Message', stub[:messages]) unless stub[:messages].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for MessageList
    class MessageList
      def self.default(visited=[])
        return nil if visited.include?('MessageList')
        visited = visited + ['MessageList']
        [
          Message.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Message.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Message
    class Message
      def self.default(visited=[])
        return nil if visited.include?('Message')
        visited = visited + ['Message']
        {
          message_id: 'message_id',
          receipt_handle: 'receipt_handle',
          md5_of_body: 'md5_of_body',
          body: 'body',
          attributes: MessageSystemAttributeMap.default(visited),
          md5_of_message_attributes: 'md5_of_message_attributes',
          message_attributes: MessageBodyAttributeMap.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Message.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        xml << Hearth::XML::Node.new('ReceiptHandle', stub[:receipt_handle].to_s) unless stub[:receipt_handle].nil?
        xml << Hearth::XML::Node.new('MD5OfBody', stub[:md5_of_body].to_s) unless stub[:md5_of_body].nil?
        xml << Hearth::XML::Node.new('Body', stub[:body].to_s) unless stub[:body].nil?
        xml << MessageSystemAttributeMap.stub('Attribute', stub[:attributes]) unless stub[:attributes].nil?
        xml << Hearth::XML::Node.new('MD5OfMessageAttributes', stub[:md5_of_message_attributes].to_s) unless stub[:md5_of_message_attributes].nil?
        xml << MessageBodyAttributeMap.stub('MessageAttribute', stub[:message_attributes]) unless stub[:message_attributes].nil?
        xml
      end
    end

    # Map Stubber for MessageBodyAttributeMap
    class MessageBodyAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('MessageBodyAttributeMap')
        visited = visited + ['MessageBodyAttributeMap']
        {
          test_key: MessageAttributeValue.default(visited)
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('Name', key.to_s) unless key.nil?
          xml << MessageAttributeValue.stub('Value', value) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for MessageAttributeValue
    class MessageAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('MessageAttributeValue')
        visited = visited + ['MessageAttributeValue']
        {
          string_value: 'string_value',
          binary_value: 'binary_value',
          string_list_values: StringList.default(visited),
          binary_list_values: BinaryList.default(visited),
          data_type: 'data_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MessageAttributeValue.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StringValue', stub[:string_value].to_s) unless stub[:string_value].nil?
        xml << Hearth::XML::Node.new('BinaryValue', ::Base64::encode64(stub[:binary_value]).strip) unless stub[:binary_value].nil?
        xml << StringList.stub('StringListValue', stub[:string_list_values]) unless stub[:string_list_values].nil?
        xml << BinaryList.stub('BinaryListValue', stub[:binary_list_values]) unless stub[:binary_list_values].nil?
        xml << Hearth::XML::Node.new('DataType', stub[:data_type].to_s) unless stub[:data_type].nil?
        xml
      end
    end

    # List Stubber for BinaryList
    class BinaryList
      def self.default(visited=[])
        return nil if visited.include?('BinaryList')
        visited = visited + ['BinaryList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, ::Base64::encode64(element).strip) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Map Stubber for MessageSystemAttributeMap
    class MessageSystemAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('MessageSystemAttributeMap')
        visited = visited + ['MessageSystemAttributeMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('Name', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('Value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for RemovePermission
    class RemovePermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemovePermissionResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('RemovePermissionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendMessage
    class SendMessage
      def self.default(visited=[])
        {
          md5_of_message_body: 'md5_of_message_body',
          md5_of_message_attributes: 'md5_of_message_attributes',
          md5_of_message_system_attributes: 'md5_of_message_system_attributes',
          message_id: 'message_id',
          sequence_number: 'sequence_number',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendMessageResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('SendMessageResult')
        xml << Hearth::XML::Node.new('MD5OfMessageBody', stub[:md5_of_message_body].to_s) unless stub[:md5_of_message_body].nil?
        xml << Hearth::XML::Node.new('MD5OfMessageAttributes', stub[:md5_of_message_attributes].to_s) unless stub[:md5_of_message_attributes].nil?
        xml << Hearth::XML::Node.new('MD5OfMessageSystemAttributes', stub[:md5_of_message_system_attributes].to_s) unless stub[:md5_of_message_system_attributes].nil?
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        xml << Hearth::XML::Node.new('SequenceNumber', stub[:sequence_number].to_s) unless stub[:sequence_number].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendMessageBatch
    class SendMessageBatch
      def self.default(visited=[])
        {
          successful: SendMessageBatchResultEntryList.default(visited),
          failed: BatchResultErrorEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendMessageBatchResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('SendMessageBatchResult')
        xml << SendMessageBatchResultEntryList.stub('SendMessageBatchResultEntry', stub[:successful]) unless stub[:successful].nil?
        xml << BatchResultErrorEntryList.stub('BatchResultErrorEntry', stub[:failed]) unless stub[:failed].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SendMessageBatchResultEntryList
    class SendMessageBatchResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('SendMessageBatchResultEntryList')
        visited = visited + ['SendMessageBatchResultEntryList']
        [
          SendMessageBatchResultEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SendMessageBatchResultEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SendMessageBatchResultEntry
    class SendMessageBatchResultEntry
      def self.default(visited=[])
        return nil if visited.include?('SendMessageBatchResultEntry')
        visited = visited + ['SendMessageBatchResultEntry']
        {
          id: 'id',
          message_id: 'message_id',
          md5_of_message_body: 'md5_of_message_body',
          md5_of_message_attributes: 'md5_of_message_attributes',
          md5_of_message_system_attributes: 'md5_of_message_system_attributes',
          sequence_number: 'sequence_number',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SendMessageBatchResultEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        xml << Hearth::XML::Node.new('MD5OfMessageBody', stub[:md5_of_message_body].to_s) unless stub[:md5_of_message_body].nil?
        xml << Hearth::XML::Node.new('MD5OfMessageAttributes', stub[:md5_of_message_attributes].to_s) unless stub[:md5_of_message_attributes].nil?
        xml << Hearth::XML::Node.new('MD5OfMessageSystemAttributes', stub[:md5_of_message_system_attributes].to_s) unless stub[:md5_of_message_system_attributes].nil?
        xml << Hearth::XML::Node.new('SequenceNumber', stub[:sequence_number].to_s) unless stub[:sequence_number].nil?
        xml
      end
    end

    # Operation Stubber for SetQueueAttributes
    class SetQueueAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetQueueAttributesResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('SetQueueAttributesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagQueue
    class TagQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagQueueResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('TagQueueResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagQueue
    class UntagQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagQueueResponse')
        response.attributes['xmlns'] = 'http://queue.amazonaws.com/doc/2012-11-05/'
        xml = Hearth::XML::Node.new('UntagQueueResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
