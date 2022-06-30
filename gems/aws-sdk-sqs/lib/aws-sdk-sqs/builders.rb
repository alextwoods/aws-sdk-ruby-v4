# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SQS
  module Builders

    # Operation Builder for AddPermission
    class AddPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddPermission'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        Builders::AWSAccountIdList.build(input[:aws_account_ids], params, context: context + 'AWSAccountId') unless input[:aws_account_ids].nil?
        Builders::ActionNameList.build(input[:actions], params, context: context + 'ActionName') unless input[:actions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ActionNameList
    class ActionNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AWSAccountIdList
    class AWSAccountIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ChangeMessageVisibility
    class ChangeMessageVisibility
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ChangeMessageVisibility'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        params[context + 'ReceiptHandle'] = input[:receipt_handle].to_s unless input[:receipt_handle].nil?
        params[context + 'VisibilityTimeout'] = input[:visibility_timeout].to_s unless input[:visibility_timeout].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ChangeMessageVisibilityBatch
    class ChangeMessageVisibilityBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ChangeMessageVisibilityBatch'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::ChangeMessageVisibilityBatchRequestEntryList.build(input[:entries], params, context: context + 'ChangeMessageVisibilityBatchRequestEntry') unless input[:entries].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ChangeMessageVisibilityBatchRequestEntryList
    class ChangeMessageVisibilityBatchRequestEntryList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ChangeMessageVisibilityBatchRequestEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ChangeMessageVisibilityBatchRequestEntry
    class ChangeMessageVisibilityBatchRequestEntry
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'ReceiptHandle'] = input[:receipt_handle].to_s unless input[:receipt_handle].nil?
        params[context + 'VisibilityTimeout'] = input[:visibility_timeout].to_s unless input[:visibility_timeout].nil?
      end
    end

    # Operation Builder for CreateQueue
    class CreateQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateQueue'
        params['Version'] = '2012-11-05'
        params[context + 'QueueName'] = input[:queue_name].to_s unless input[:queue_name].nil?
        Builders::TagMap.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
        Builders::QueueAttributeMap.build(input[:attributes], params, context: context + 'Attribute') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Map Builder for QueueAttributeMap
    class QueueAttributeMap
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.Name"] = key
          params[context + ".#{index+1}.Value"] = value.to_s unless value.nil?
        end
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.Key"] = key
          params[context + ".#{index+1}.Value"] = value.to_s unless value.nil?
        end
      end
    end

    # Operation Builder for DeleteMessage
    class DeleteMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteMessage'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        params[context + 'ReceiptHandle'] = input[:receipt_handle].to_s unless input[:receipt_handle].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteMessageBatch
    class DeleteMessageBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteMessageBatch'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::DeleteMessageBatchRequestEntryList.build(input[:entries], params, context: context + 'DeleteMessageBatchRequestEntry') unless input[:entries].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for DeleteMessageBatchRequestEntryList
    class DeleteMessageBatchRequestEntryList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::DeleteMessageBatchRequestEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for DeleteMessageBatchRequestEntry
    class DeleteMessageBatchRequestEntry
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'ReceiptHandle'] = input[:receipt_handle].to_s unless input[:receipt_handle].nil?
      end
    end

    # Operation Builder for DeleteQueue
    class DeleteQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteQueue'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetQueueAttributes
    class GetQueueAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetQueueAttributes'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::AttributeNameList.build(input[:attribute_names], params, context: context + 'AttributeName') unless input[:attribute_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AttributeNameList
    class AttributeNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetQueueUrl
    class GetQueueUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetQueueUrl'
        params['Version'] = '2012-11-05'
        params[context + 'QueueName'] = input[:queue_name].to_s unless input[:queue_name].nil?
        params[context + 'QueueOwnerAWSAccountId'] = input[:queue_owner_aws_account_id].to_s unless input[:queue_owner_aws_account_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListDeadLetterSourceQueues
    class ListDeadLetterSourceQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListDeadLetterSourceQueues'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListQueueTags
    class ListQueueTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListQueueTags'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListQueues
    class ListQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListQueues'
        params['Version'] = '2012-11-05'
        params[context + 'QueueNamePrefix'] = input[:queue_name_prefix].to_s unless input[:queue_name_prefix].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PurgeQueue
    class PurgeQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurgeQueue'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReceiveMessage
    class ReceiveMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReceiveMessage'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::AttributeNameList.build(input[:attribute_names], params, context: context + 'AttributeName') unless input[:attribute_names].nil?
        Builders::MessageAttributeNameList.build(input[:message_attribute_names], params, context: context + 'MessageAttributeName') unless input[:message_attribute_names].nil?
        params[context + 'MaxNumberOfMessages'] = input[:max_number_of_messages].to_s unless input[:max_number_of_messages].nil?
        params[context + 'VisibilityTimeout'] = input[:visibility_timeout].to_s unless input[:visibility_timeout].nil?
        params[context + 'WaitTimeSeconds'] = input[:wait_time_seconds].to_s unless input[:wait_time_seconds].nil?
        params[context + 'ReceiveRequestAttemptId'] = input[:receive_request_attempt_id].to_s unless input[:receive_request_attempt_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for MessageAttributeNameList
    class MessageAttributeNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for RemovePermission
    class RemovePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemovePermission'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SendMessage
    class SendMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendMessage'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        params[context + 'MessageBody'] = input[:message_body].to_s unless input[:message_body].nil?
        params[context + 'DelaySeconds'] = input[:delay_seconds].to_s unless input[:delay_seconds].nil?
        Builders::MessageBodyAttributeMap.build(input[:message_attributes], params, context: context + 'MessageAttribute') unless input[:message_attributes].nil?
        Builders::MessageBodySystemAttributeMap.build(input[:message_system_attributes], params, context: context + 'MessageSystemAttribute') unless input[:message_system_attributes].nil?
        params[context + 'MessageDeduplicationId'] = input[:message_deduplication_id].to_s unless input[:message_deduplication_id].nil?
        params[context + 'MessageGroupId'] = input[:message_group_id].to_s unless input[:message_group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Map Builder for MessageBodySystemAttributeMap
    class MessageBodySystemAttributeMap
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.Name"] = key
          Builders::MessageSystemAttributeValue.build(value, params, context: context + ".#{index+1}.Value" + '.') unless value.nil?
        end
      end
    end

    # Structure Builder for MessageSystemAttributeValue
    class MessageSystemAttributeValue
      def self.build(input, params, context: nil)
        params[context + 'StringValue'] = input[:string_value].to_s unless input[:string_value].nil?
        params[context + 'BinaryValue'] = Base64::encode64(input[:binary_value]).strip unless input[:binary_value].nil?
        Builders::StringList.build(input[:string_list_values], params, context: context + 'StringListValue') unless input[:string_list_values].nil?
        Builders::BinaryList.build(input[:binary_list_values], params, context: context + 'BinaryListValue') unless input[:binary_list_values].nil?
        params[context + 'DataType'] = input[:data_type].to_s unless input[:data_type].nil?
      end
    end

    # List Builder for BinaryList
    class BinaryList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = Base64::encode64(element).strip unless element.nil?
        end
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Map Builder for MessageBodyAttributeMap
    class MessageBodyAttributeMap
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.Name"] = key
          Builders::MessageAttributeValue.build(value, params, context: context + ".#{index+1}.Value" + '.') unless value.nil?
        end
      end
    end

    # Structure Builder for MessageAttributeValue
    class MessageAttributeValue
      def self.build(input, params, context: nil)
        params[context + 'StringValue'] = input[:string_value].to_s unless input[:string_value].nil?
        params[context + 'BinaryValue'] = Base64::encode64(input[:binary_value]).strip unless input[:binary_value].nil?
        Builders::StringList.build(input[:string_list_values], params, context: context + 'StringListValue') unless input[:string_list_values].nil?
        Builders::BinaryList.build(input[:binary_list_values], params, context: context + 'BinaryListValue') unless input[:binary_list_values].nil?
        params[context + 'DataType'] = input[:data_type].to_s unless input[:data_type].nil?
      end
    end

    # Operation Builder for SendMessageBatch
    class SendMessageBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendMessageBatch'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::SendMessageBatchRequestEntryList.build(input[:entries], params, context: context + 'SendMessageBatchRequestEntry') unless input[:entries].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SendMessageBatchRequestEntryList
    class SendMessageBatchRequestEntryList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::SendMessageBatchRequestEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SendMessageBatchRequestEntry
    class SendMessageBatchRequestEntry
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'MessageBody'] = input[:message_body].to_s unless input[:message_body].nil?
        params[context + 'DelaySeconds'] = input[:delay_seconds].to_s unless input[:delay_seconds].nil?
        Builders::MessageBodyAttributeMap.build(input[:message_attributes], params, context: context + 'MessageAttribute') unless input[:message_attributes].nil?
        Builders::MessageBodySystemAttributeMap.build(input[:message_system_attributes], params, context: context + 'MessageSystemAttribute') unless input[:message_system_attributes].nil?
        params[context + 'MessageDeduplicationId'] = input[:message_deduplication_id].to_s unless input[:message_deduplication_id].nil?
        params[context + 'MessageGroupId'] = input[:message_group_id].to_s unless input[:message_group_id].nil?
      end
    end

    # Operation Builder for SetQueueAttributes
    class SetQueueAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetQueueAttributes'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::QueueAttributeMap.build(input[:attributes], params, context: context + 'Attribute') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagQueue
    class TagQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagQueue'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::TagMap.build(input[:tags], params, context: context + 'Tag') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagQueue
    class UntagQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagQueue'
        params['Version'] = '2012-11-05'
        params[context + 'QueueUrl'] = input[:queue_url].to_s unless input[:queue_url].nil?
        Builders::TagKeyList.build(input[:tag_keys], params, context: context + 'TagKey') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end
  end
end
