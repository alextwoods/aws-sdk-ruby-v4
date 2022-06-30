# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SNS
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

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AuthorizationErrorException
    class AuthorizationErrorException
      def self.parse(http_resp)
        data = Types::AuthorizationErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CheckIfPhoneNumberIsOptedOut
    class CheckIfPhoneNumberIsOptedOut
      def self.parse(http_resp)
        data = Types::CheckIfPhoneNumberIsOptedOutOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CheckIfPhoneNumberIsOptedOutResult')
        xml.at('isOptedOut') do |node|
          data.is_opted_out = (node.text == 'true')
        end
        data
      end
    end

    # Error Parser for ThrottledException
    class ThrottledException
      def self.parse(http_resp)
        data = Types::ThrottledException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ConfirmSubscription
    class ConfirmSubscription
      def self.parse(http_resp)
        data = Types::ConfirmSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ConfirmSubscriptionResult')
        xml.at('SubscriptionArn') do |node|
          data.subscription_arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FilterPolicyLimitExceededException
    class FilterPolicyLimitExceededException
      def self.parse(http_resp)
        data = Types::FilterPolicyLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionLimitExceededException
    class SubscriptionLimitExceededException
      def self.parse(http_resp)
        data = Types::SubscriptionLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreatePlatformApplication
    class CreatePlatformApplication
      def self.parse(http_resp)
        data = Types::CreatePlatformApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreatePlatformApplicationResult')
        xml.at('PlatformApplicationArn') do |node|
          data.platform_application_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreatePlatformEndpoint
    class CreatePlatformEndpoint
      def self.parse(http_resp)
        data = Types::CreatePlatformEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreatePlatformEndpointResult')
        xml.at('EndpointArn') do |node|
          data.endpoint_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateSMSSandboxPhoneNumber
    class CreateSMSSandboxPhoneNumber
      def self.parse(http_resp)
        data = Types::CreateSMSSandboxPhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateSMSSandboxPhoneNumberResult')
        data
      end
    end

    # Error Parser for OptedOutException
    class OptedOutException
      def self.parse(http_resp)
        data = Types::OptedOutException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UserErrorException
    class UserErrorException
      def self.parse(http_resp)
        data = Types::UserErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTopic
    class CreateTopic
      def self.parse(http_resp)
        data = Types::CreateTopicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateTopicResult')
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSecurityException
    class InvalidSecurityException
      def self.parse(http_resp)
        data = Types::InvalidSecurityException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StaleTagException
    class StaleTagException
      def self.parse(http_resp)
        data = Types::StaleTagException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TagPolicyException
    class TagPolicyException
      def self.parse(http_resp)
        data = Types::TagPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TagLimitExceededException
    class TagLimitExceededException
      def self.parse(http_resp)
        data = Types::TagLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TopicLimitExceededException
    class TopicLimitExceededException
      def self.parse(http_resp)
        data = Types::TopicLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConcurrentAccessException
    class ConcurrentAccessException
      def self.parse(http_resp)
        data = Types::ConcurrentAccessException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteEndpointResult')
        data
      end
    end

    # Operation Parser for DeletePlatformApplication
    class DeletePlatformApplication
      def self.parse(http_resp)
        data = Types::DeletePlatformApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeletePlatformApplicationResult')
        data
      end
    end

    # Operation Parser for DeleteSMSSandboxPhoneNumber
    class DeleteSMSSandboxPhoneNumber
      def self.parse(http_resp)
        data = Types::DeleteSMSSandboxPhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSMSSandboxPhoneNumberResult')
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTopic
    class DeleteTopic
      def self.parse(http_resp)
        data = Types::DeleteTopicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteTopicResult')
        data
      end
    end

    # Operation Parser for GetEndpointAttributes
    class GetEndpointAttributes
      def self.parse(http_resp)
        data = Types::GetEndpointAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetEndpointAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::MapStringToString.parse(children)
        end
        data
      end
    end

    class MapStringToString
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetPlatformApplicationAttributes
    class GetPlatformApplicationAttributes
      def self.parse(http_resp)
        data = Types::GetPlatformApplicationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetPlatformApplicationAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::MapStringToString.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetSMSAttributes
    class GetSMSAttributes
      def self.parse(http_resp)
        data = Types::GetSMSAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSMSAttributesResult')
        xml.at('attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::MapStringToString.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetSMSSandboxAccountStatus
    class GetSMSSandboxAccountStatus
      def self.parse(http_resp)
        data = Types::GetSMSSandboxAccountStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSMSSandboxAccountStatusResult')
        xml.at('IsInSandbox') do |node|
          data.is_in_sandbox = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for GetSubscriptionAttributes
    class GetSubscriptionAttributes
      def self.parse(http_resp)
        data = Types::GetSubscriptionAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSubscriptionAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::SubscriptionAttributesMap.parse(children)
        end
        data
      end
    end

    class SubscriptionAttributesMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetTopicAttributes
    class GetTopicAttributes
      def self.parse(http_resp)
        data = Types::GetTopicAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetTopicAttributesResult')
        xml.at('Attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::TopicAttributesMap.parse(children)
        end
        data
      end
    end

    class TopicAttributesMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListEndpointsByPlatformApplication
    class ListEndpointsByPlatformApplication
      def self.parse(http_resp)
        data = Types::ListEndpointsByPlatformApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListEndpointsByPlatformApplicationResult')
        xml.at('Endpoints') do |node|
          children = node.children('member')
          data.endpoints = Parsers::ListOfEndpoints.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ListOfEndpoints
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Endpoint.parse(node)
        end
        data
      end
    end

    class Endpoint
      def self.parse(xml)
        data = Types::Endpoint.new
        xml.at('EndpointArn') do |node|
          data.endpoint_arn = (node.text || '')
        end
        xml.at('Attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::MapStringToString.parse(children)
        end
        return data
      end
    end

    # Operation Parser for ListOriginationNumbers
    class ListOriginationNumbers
      def self.parse(http_resp)
        data = Types::ListOriginationNumbersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListOriginationNumbersResult')
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('PhoneNumbers') do |node|
          children = node.children('member')
          data.phone_numbers = Parsers::PhoneNumberInformationList.parse(children)
        end
        data
      end
    end

    class PhoneNumberInformationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PhoneNumberInformation.parse(node)
        end
        data
      end
    end

    class PhoneNumberInformation
      def self.parse(xml)
        data = Types::PhoneNumberInformation.new
        xml.at('CreatedAt') do |node|
          data.created_at = Time.parse(node.text) if node.text
        end
        xml.at('PhoneNumber') do |node|
          data.phone_number = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Iso2CountryCode') do |node|
          data.iso2_country_code = (node.text || '')
        end
        xml.at('RouteType') do |node|
          data.route_type = (node.text || '')
        end
        xml.at('NumberCapabilities') do |node|
          children = node.children('member')
          data.number_capabilities = Parsers::NumberCapabilityList.parse(children)
        end
        return data
      end
    end

    class NumberCapabilityList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListPhoneNumbersOptedOut
    class ListPhoneNumbersOptedOut
      def self.parse(http_resp)
        data = Types::ListPhoneNumbersOptedOutOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPhoneNumbersOptedOutResult')
        xml.at('phoneNumbers') do |node|
          children = node.children('member')
          data.phone_numbers = Parsers::PhoneNumberList.parse(children)
        end
        xml.at('nextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PhoneNumberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListPlatformApplications
    class ListPlatformApplications
      def self.parse(http_resp)
        data = Types::ListPlatformApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPlatformApplicationsResult')
        xml.at('PlatformApplications') do |node|
          children = node.children('member')
          data.platform_applications = Parsers::ListOfPlatformApplications.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ListOfPlatformApplications
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PlatformApplication.parse(node)
        end
        data
      end
    end

    class PlatformApplication
      def self.parse(xml)
        data = Types::PlatformApplication.new
        xml.at('PlatformApplicationArn') do |node|
          data.platform_application_arn = (node.text || '')
        end
        xml.at('Attributes') do |node|
          children = node.children('entry')
          data.attributes = Parsers::MapStringToString.parse(children)
        end
        return data
      end
    end

    # Operation Parser for ListSMSSandboxPhoneNumbers
    class ListSMSSandboxPhoneNumbers
      def self.parse(http_resp)
        data = Types::ListSMSSandboxPhoneNumbersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSMSSandboxPhoneNumbersResult')
        xml.at('PhoneNumbers') do |node|
          children = node.children('member')
          data.phone_numbers = Parsers::SMSSandboxPhoneNumberList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SMSSandboxPhoneNumberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SMSSandboxPhoneNumber.parse(node)
        end
        data
      end
    end

    class SMSSandboxPhoneNumber
      def self.parse(xml)
        data = Types::SMSSandboxPhoneNumber.new
        xml.at('PhoneNumber') do |node|
          data.phone_number = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListSubscriptions
    class ListSubscriptions
      def self.parse(http_resp)
        data = Types::ListSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSubscriptionsResult')
        xml.at('Subscriptions') do |node|
          children = node.children('member')
          data.subscriptions = Parsers::SubscriptionsList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class SubscriptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Subscription.parse(node)
        end
        data
      end
    end

    class Subscription
      def self.parse(xml)
        data = Types::Subscription.new
        xml.at('SubscriptionArn') do |node|
          data.subscription_arn = (node.text || '')
        end
        xml.at('Owner') do |node|
          data.owner = (node.text || '')
        end
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListSubscriptionsByTopic
    class ListSubscriptionsByTopic
      def self.parse(http_resp)
        data = Types::ListSubscriptionsByTopicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListSubscriptionsByTopicResult')
        xml.at('Subscriptions') do |node|
          children = node.children('member')
          data.subscriptions = Parsers::SubscriptionsList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTagsForResourceResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListTopics
    class ListTopics
      def self.parse(http_resp)
        data = Types::ListTopicsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTopicsResult')
        xml.at('Topics') do |node|
          children = node.children('member')
          data.topics = Parsers::TopicsList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TopicsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Topic.parse(node)
        end
        data
      end
    end

    class Topic
      def self.parse(xml)
        data = Types::Topic.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for OptInPhoneNumber
    class OptInPhoneNumber
      def self.parse(http_resp)
        data = Types::OptInPhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('OptInPhoneNumberResult')
        data
      end
    end

    # Operation Parser for Publish
    class Publish
      def self.parse(http_resp)
        data = Types::PublishOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PublishResult')
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        xml.at('SequenceNumber') do |node|
          data.sequence_number = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KMSInvalidStateException
    class KMSInvalidStateException
      def self.parse(http_resp)
        data = Types::KMSInvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KMSNotFoundException
    class KMSNotFoundException
      def self.parse(http_resp)
        data = Types::KMSNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for PlatformApplicationDisabledException
    class PlatformApplicationDisabledException
      def self.parse(http_resp)
        data = Types::PlatformApplicationDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KMSOptInRequired
    class KMSOptInRequired
      def self.parse(http_resp)
        data = Types::KMSOptInRequired.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EndpointDisabledException
    class EndpointDisabledException
      def self.parse(http_resp)
        data = Types::EndpointDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KMSAccessDeniedException
    class KMSAccessDeniedException
      def self.parse(http_resp)
        data = Types::KMSAccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KMSThrottlingException
    class KMSThrottlingException
      def self.parse(http_resp)
        data = Types::KMSThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KMSDisabledException
    class KMSDisabledException
      def self.parse(http_resp)
        data = Types::KMSDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PublishBatch
    class PublishBatch
      def self.parse(http_resp)
        data = Types::PublishBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PublishBatchResult')
        xml.at('Successful') do |node|
          children = node.children('member')
          data.successful = Parsers::PublishBatchResultEntryList.parse(children)
        end
        xml.at('Failed') do |node|
          children = node.children('member')
          data.failed = Parsers::BatchResultErrorEntryList.parse(children)
        end
        data
      end
    end

    class BatchResultErrorEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::BatchResultErrorEntry.parse(node)
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
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('SenderFault') do |node|
          data.sender_fault = (node.text == 'true')
        end
        return data
      end
    end

    class PublishBatchResultEntryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PublishBatchResultEntry.parse(node)
        end
        data
      end
    end

    class PublishBatchResultEntry
      def self.parse(xml)
        data = Types::PublishBatchResultEntry.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        xml.at('SequenceNumber') do |node|
          data.sequence_number = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for BatchRequestTooLongException
    class BatchRequestTooLongException
      def self.parse(http_resp)
        data = Types::BatchRequestTooLongException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidBatchEntryIdException
    class InvalidBatchEntryIdException
      def self.parse(http_resp)
        data = Types::InvalidBatchEntryIdException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyEntriesInBatchRequestException
    class TooManyEntriesInBatchRequestException
      def self.parse(http_resp)
        data = Types::TooManyEntriesInBatchRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for BatchEntryIdsNotDistinctException
    class BatchEntryIdsNotDistinctException
      def self.parse(http_resp)
        data = Types::BatchEntryIdsNotDistinctException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EmptyBatchRequestException
    class EmptyBatchRequestException
      def self.parse(http_resp)
        data = Types::EmptyBatchRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
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

    # Operation Parser for SetEndpointAttributes
    class SetEndpointAttributes
      def self.parse(http_resp)
        data = Types::SetEndpointAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetEndpointAttributesResult')
        data
      end
    end

    # Operation Parser for SetPlatformApplicationAttributes
    class SetPlatformApplicationAttributes
      def self.parse(http_resp)
        data = Types::SetPlatformApplicationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetPlatformApplicationAttributesResult')
        data
      end
    end

    # Operation Parser for SetSMSAttributes
    class SetSMSAttributes
      def self.parse(http_resp)
        data = Types::SetSMSAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetSMSAttributesResult')
        data
      end
    end

    # Operation Parser for SetSubscriptionAttributes
    class SetSubscriptionAttributes
      def self.parse(http_resp)
        data = Types::SetSubscriptionAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetSubscriptionAttributesResult')
        data
      end
    end

    # Operation Parser for SetTopicAttributes
    class SetTopicAttributes
      def self.parse(http_resp)
        data = Types::SetTopicAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetTopicAttributesResult')
        data
      end
    end

    # Operation Parser for Subscribe
    class Subscribe
      def self.parse(http_resp)
        data = Types::SubscribeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SubscribeResult')
        xml.at('SubscriptionArn') do |node|
          data.subscription_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagResourceResult')
        data
      end
    end

    # Operation Parser for Unsubscribe
    class Unsubscribe
      def self.parse(http_resp)
        data = Types::UnsubscribeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UnsubscribeResult')
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagResourceResult')
        data
      end
    end

    # Operation Parser for VerifySMSSandboxPhoneNumber
    class VerifySMSSandboxPhoneNumber
      def self.parse(http_resp)
        data = Types::VerifySMSSandboxPhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('VerifySMSSandboxPhoneNumberResult')
        data
      end
    end

    # Error Parser for VerificationException
    class VerificationException
      def self.parse(http_resp)
        data = Types::VerificationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end
  end
end
