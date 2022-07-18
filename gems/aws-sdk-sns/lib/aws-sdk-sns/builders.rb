# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SNS
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
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        Builders::DelegatesList.build(input[:aws_account_id], params, context: context + 'AWSAccountId' + '.member') unless input[:aws_account_id].nil?
        Builders::ActionsList.build(input[:action_name], params, context: context + 'ActionName' + '.member') unless input[:action_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ActionsList
    class ActionsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for DelegatesList
    class DelegatesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CheckIfPhoneNumberIsOptedOut
    class CheckIfPhoneNumberIsOptedOut
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CheckIfPhoneNumberIsOptedOut'
        params['Version'] = '2010-03-31'
        params[context + 'phoneNumber'] = input[:phone_number].to_s unless input[:phone_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ConfirmSubscription
    class ConfirmSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ConfirmSubscription'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'Token'] = input[:token].to_s unless input[:token].nil?
        params[context + 'AuthenticateOnUnsubscribe'] = input[:authenticate_on_unsubscribe].to_s unless input[:authenticate_on_unsubscribe].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreatePlatformApplication
    class CreatePlatformApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePlatformApplication'
        params['Version'] = '2010-03-31'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Platform'] = input[:platform].to_s unless input[:platform].nil?
        Builders::MapStringToString.build(input[:attributes], params, context: context + 'Attributes' + '.entry') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Map Builder for MapStringToString
    class MapStringToString
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.key"] = key
          params[context + ".#{index+1}.value"] = value.to_s unless value.nil?
        end
      end
    end

    # Operation Builder for CreatePlatformEndpoint
    class CreatePlatformEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePlatformEndpoint'
        params['Version'] = '2010-03-31'
        params[context + 'PlatformApplicationArn'] = input[:platform_application_arn].to_s unless input[:platform_application_arn].nil?
        params[context + 'Token'] = input[:token].to_s unless input[:token].nil?
        params[context + 'CustomUserData'] = input[:custom_user_data].to_s unless input[:custom_user_data].nil?
        Builders::MapStringToString.build(input[:attributes], params, context: context + 'Attributes' + '.entry') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSMSSandboxPhoneNumber
    class CreateSMSSandboxPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSMSSandboxPhoneNumber'
        params['Version'] = '2010-03-31'
        params[context + 'PhoneNumber'] = input[:phone_number].to_s unless input[:phone_number].nil?
        params[context + 'LanguageCode'] = input[:language_code].to_s unless input[:language_code].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTopic
    class CreateTopic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTopic'
        params['Version'] = '2010-03-31'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::TopicAttributesMap.build(input[:attributes], params, context: context + 'Attributes' + '.entry') unless input[:attributes].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Map Builder for TopicAttributesMap
    class TopicAttributesMap
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.key"] = key
          params[context + ".#{index+1}.value"] = value.to_s unless value.nil?
        end
      end
    end

    # Operation Builder for DeleteEndpoint
    class DeleteEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteEndpoint'
        params['Version'] = '2010-03-31'
        params[context + 'EndpointArn'] = input[:endpoint_arn].to_s unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePlatformApplication
    class DeletePlatformApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePlatformApplication'
        params['Version'] = '2010-03-31'
        params[context + 'PlatformApplicationArn'] = input[:platform_application_arn].to_s unless input[:platform_application_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSMSSandboxPhoneNumber
    class DeleteSMSSandboxPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSMSSandboxPhoneNumber'
        params['Version'] = '2010-03-31'
        params[context + 'PhoneNumber'] = input[:phone_number].to_s unless input[:phone_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTopic
    class DeleteTopic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTopic'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetEndpointAttributes
    class GetEndpointAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetEndpointAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'EndpointArn'] = input[:endpoint_arn].to_s unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetPlatformApplicationAttributes
    class GetPlatformApplicationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetPlatformApplicationAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'PlatformApplicationArn'] = input[:platform_application_arn].to_s unless input[:platform_application_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSMSAttributes
    class GetSMSAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSMSAttributes'
        params['Version'] = '2010-03-31'
        Builders::ListString.build(input[:attributes], params, context: context + 'attributes' + '.member') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ListString
    class ListString
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetSMSSandboxAccountStatus
    class GetSMSSandboxAccountStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSMSSandboxAccountStatus'
        params['Version'] = '2010-03-31'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSubscriptionAttributes
    class GetSubscriptionAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSubscriptionAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'SubscriptionArn'] = input[:subscription_arn].to_s unless input[:subscription_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTopicAttributes
    class GetTopicAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTopicAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListEndpointsByPlatformApplication
    class ListEndpointsByPlatformApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListEndpointsByPlatformApplication'
        params['Version'] = '2010-03-31'
        params[context + 'PlatformApplicationArn'] = input[:platform_application_arn].to_s unless input[:platform_application_arn].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListOriginationNumbers
    class ListOriginationNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListOriginationNumbers'
        params['Version'] = '2010-03-31'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListPhoneNumbersOptedOut
    class ListPhoneNumbersOptedOut
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPhoneNumbersOptedOut'
        params['Version'] = '2010-03-31'
        params[context + 'nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListPlatformApplications
    class ListPlatformApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPlatformApplications'
        params['Version'] = '2010-03-31'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSMSSandboxPhoneNumbers
    class ListSMSSandboxPhoneNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSMSSandboxPhoneNumbers'
        params['Version'] = '2010-03-31'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSubscriptions
    class ListSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSubscriptions'
        params['Version'] = '2010-03-31'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSubscriptionsByTopic
    class ListSubscriptionsByTopic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSubscriptionsByTopic'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTagsForResource'
        params['Version'] = '2010-03-31'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListTopics
    class ListTopics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTopics'
        params['Version'] = '2010-03-31'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for OptInPhoneNumber
    class OptInPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'OptInPhoneNumber'
        params['Version'] = '2010-03-31'
        params[context + 'phoneNumber'] = input[:phone_number].to_s unless input[:phone_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for Publish
    class Publish
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'Publish'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'TargetArn'] = input[:target_arn].to_s unless input[:target_arn].nil?
        params[context + 'PhoneNumber'] = input[:phone_number].to_s unless input[:phone_number].nil?
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Subject'] = input[:subject].to_s unless input[:subject].nil?
        params[context + 'MessageStructure'] = input[:message_structure].to_s unless input[:message_structure].nil?
        Builders::MessageAttributeMap.build(input[:message_attributes], params, context: context + 'MessageAttributes' + '.entry') unless input[:message_attributes].nil?
        params[context + 'MessageDeduplicationId'] = input[:message_deduplication_id].to_s unless input[:message_deduplication_id].nil?
        params[context + 'MessageGroupId'] = input[:message_group_id].to_s unless input[:message_group_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Map Builder for MessageAttributeMap
    class MessageAttributeMap
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
        params[context + 'DataType'] = input[:data_type].to_s unless input[:data_type].nil?
        params[context + 'StringValue'] = input[:string_value].to_s unless input[:string_value].nil?
        params[context + 'BinaryValue'] = Base64::encode64(input[:binary_value]).strip unless input[:binary_value].nil?
      end
    end

    # Operation Builder for PublishBatch
    class PublishBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PublishBatch'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        Builders::PublishBatchRequestEntryList.build(input[:publish_batch_request_entries], params, context: context + 'PublishBatchRequestEntries' + '.member') unless input[:publish_batch_request_entries].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PublishBatchRequestEntryList
    class PublishBatchRequestEntryList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PublishBatchRequestEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PublishBatchRequestEntry
    class PublishBatchRequestEntry
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Subject'] = input[:subject].to_s unless input[:subject].nil?
        params[context + 'MessageStructure'] = input[:message_structure].to_s unless input[:message_structure].nil?
        Builders::MessageAttributeMap.build(input[:message_attributes], params, context: context + 'MessageAttributes' + '.entry') unless input[:message_attributes].nil?
        params[context + 'MessageDeduplicationId'] = input[:message_deduplication_id].to_s unless input[:message_deduplication_id].nil?
        params[context + 'MessageGroupId'] = input[:message_group_id].to_s unless input[:message_group_id].nil?
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
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetEndpointAttributes
    class SetEndpointAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetEndpointAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'EndpointArn'] = input[:endpoint_arn].to_s unless input[:endpoint_arn].nil?
        Builders::MapStringToString.build(input[:attributes], params, context: context + 'Attributes' + '.entry') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetPlatformApplicationAttributes
    class SetPlatformApplicationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetPlatformApplicationAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'PlatformApplicationArn'] = input[:platform_application_arn].to_s unless input[:platform_application_arn].nil?
        Builders::MapStringToString.build(input[:attributes], params, context: context + 'Attributes' + '.entry') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetSMSAttributes
    class SetSMSAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetSMSAttributes'
        params['Version'] = '2010-03-31'
        Builders::MapStringToString.build(input[:attributes], params, context: context + 'attributes' + '.entry') unless input[:attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetSubscriptionAttributes
    class SetSubscriptionAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetSubscriptionAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'SubscriptionArn'] = input[:subscription_arn].to_s unless input[:subscription_arn].nil?
        params[context + 'AttributeName'] = input[:attribute_name].to_s unless input[:attribute_name].nil?
        params[context + 'AttributeValue'] = input[:attribute_value].to_s unless input[:attribute_value].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetTopicAttributes
    class SetTopicAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetTopicAttributes'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'AttributeName'] = input[:attribute_name].to_s unless input[:attribute_name].nil?
        params[context + 'AttributeValue'] = input[:attribute_value].to_s unless input[:attribute_value].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for Subscribe
    class Subscribe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'Subscribe'
        params['Version'] = '2010-03-31'
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'Endpoint'] = input[:endpoint].to_s unless input[:endpoint].nil?
        Builders::SubscriptionAttributesMap.build(input[:attributes], params, context: context + 'Attributes' + '.entry') unless input[:attributes].nil?
        params[context + 'ReturnSubscriptionArn'] = input[:return_subscription_arn].to_s unless input[:return_subscription_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Map Builder for SubscriptionAttributesMap
    class SubscriptionAttributesMap
      def self.build(input, params, context: '')
        input.each_with_index do |(key, value), index|
          params[context + ".#{index+1}.key"] = key
          params[context + ".#{index+1}.value"] = value.to_s unless value.nil?
        end
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagResource'
        params['Version'] = '2010-03-31'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for Unsubscribe
    class Unsubscribe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'Unsubscribe'
        params['Version'] = '2010-03-31'
        params[context + 'SubscriptionArn'] = input[:subscription_arn].to_s unless input[:subscription_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagResource'
        params['Version'] = '2010-03-31'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        Builders::TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
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

    # Operation Builder for VerifySMSSandboxPhoneNumber
    class VerifySMSSandboxPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'VerifySMSSandboxPhoneNumber'
        params['Version'] = '2010-03-31'
        params[context + 'PhoneNumber'] = input[:phone_number].to_s unless input[:phone_number].nil?
        params[context + 'OneTimePassword'] = input[:one_time_password].to_s unless input[:one_time_password].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
