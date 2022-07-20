# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SNS
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
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('AddPermissionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CheckIfPhoneNumberIsOptedOut
    class CheckIfPhoneNumberIsOptedOut
      def self.default(visited=[])
        {
          is_opted_out: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CheckIfPhoneNumberIsOptedOutResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('CheckIfPhoneNumberIsOptedOutResult')
        xml << Hearth::XML::Node.new('isOptedOut', stub[:is_opted_out].to_s) unless stub[:is_opted_out].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmSubscription
    class ConfirmSubscription
      def self.default(visited=[])
        {
          subscription_arn: 'subscription_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ConfirmSubscriptionResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ConfirmSubscriptionResult')
        xml << Hearth::XML::Node.new('SubscriptionArn', stub[:subscription_arn].to_s) unless stub[:subscription_arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePlatformApplication
    class CreatePlatformApplication
      def self.default(visited=[])
        {
          platform_application_arn: 'platform_application_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreatePlatformApplicationResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('CreatePlatformApplicationResult')
        xml << Hearth::XML::Node.new('PlatformApplicationArn', stub[:platform_application_arn].to_s) unless stub[:platform_application_arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePlatformEndpoint
    class CreatePlatformEndpoint
      def self.default(visited=[])
        {
          endpoint_arn: 'endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreatePlatformEndpointResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('CreatePlatformEndpointResult')
        xml << Hearth::XML::Node.new('EndpointArn', stub[:endpoint_arn].to_s) unless stub[:endpoint_arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSMSSandboxPhoneNumber
    class CreateSMSSandboxPhoneNumber
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateSMSSandboxPhoneNumberResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('CreateSMSSandboxPhoneNumberResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTopic
    class CreateTopic
      def self.default(visited=[])
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateTopicResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('CreateTopicResult')
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEndpoint
    class DeleteEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteEndpointResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('DeleteEndpointResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePlatformApplication
    class DeletePlatformApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeletePlatformApplicationResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('DeletePlatformApplicationResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSMSSandboxPhoneNumber
    class DeleteSMSSandboxPhoneNumber
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSMSSandboxPhoneNumberResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('DeleteSMSSandboxPhoneNumberResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTopic
    class DeleteTopic
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteTopicResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('DeleteTopicResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEndpointAttributes
    class GetEndpointAttributes
      def self.default(visited=[])
        {
          attributes: MapStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetEndpointAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('GetEndpointAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', MapStringToString.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for MapStringToString
    class MapStringToString
      def self.default(visited=[])
        return nil if visited.include?('MapStringToString')
        visited = visited + ['MapStringToString']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for GetPlatformApplicationAttributes
    class GetPlatformApplicationAttributes
      def self.default(visited=[])
        {
          attributes: MapStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetPlatformApplicationAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('GetPlatformApplicationAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', MapStringToString.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSMSAttributes
    class GetSMSAttributes
      def self.default(visited=[])
        {
          attributes: MapStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSMSAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('GetSMSAttributesResult')
        xml << Hearth::XML::Node.new('attributes', MapStringToString.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSMSSandboxAccountStatus
    class GetSMSSandboxAccountStatus
      def self.default(visited=[])
        {
          is_in_sandbox: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSMSSandboxAccountStatusResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('GetSMSSandboxAccountStatusResult')
        xml << Hearth::XML::Node.new('IsInSandbox', stub[:is_in_sandbox].to_s) unless stub[:is_in_sandbox].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSubscriptionAttributes
    class GetSubscriptionAttributes
      def self.default(visited=[])
        {
          attributes: SubscriptionAttributesMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSubscriptionAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('GetSubscriptionAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', SubscriptionAttributesMap.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for SubscriptionAttributesMap
    class SubscriptionAttributesMap
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionAttributesMap')
        visited = visited + ['SubscriptionAttributesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for GetTopicAttributes
    class GetTopicAttributes
      def self.default(visited=[])
        {
          attributes: TopicAttributesMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetTopicAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('GetTopicAttributesResult')
        xml << Hearth::XML::Node.new('Attributes', TopicAttributesMap.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for TopicAttributesMap
    class TopicAttributesMap
      def self.default(visited=[])
        return nil if visited.include?('TopicAttributesMap')
        visited = visited + ['TopicAttributesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for ListEndpointsByPlatformApplication
    class ListEndpointsByPlatformApplication
      def self.default(visited=[])
        {
          endpoints: ListOfEndpoints.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListEndpointsByPlatformApplicationResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListEndpointsByPlatformApplicationResult')
        xml << Hearth::XML::Node.new('Endpoints', ListOfEndpoints.stub('member', stub[:endpoints])) unless stub[:endpoints].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfEndpoints
    class ListOfEndpoints
      def self.default(visited=[])
        return nil if visited.include?('ListOfEndpoints')
        visited = visited + ['ListOfEndpoints']
        [
          Endpoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Endpoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          endpoint_arn: 'endpoint_arn',
          attributes: MapStringToString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Endpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EndpointArn', stub[:endpoint_arn].to_s) unless stub[:endpoint_arn].nil?
        xml << Hearth::XML::Node.new('Attributes', MapStringToString.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        xml
      end
    end

    # Operation Stubber for ListOriginationNumbers
    class ListOriginationNumbers
      def self.default(visited=[])
        {
          next_token: 'next_token',
          phone_numbers: PhoneNumberInformationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListOriginationNumbersResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListOriginationNumbersResult')
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('PhoneNumbers', PhoneNumberInformationList.stub('member', stub[:phone_numbers])) unless stub[:phone_numbers].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PhoneNumberInformationList
    class PhoneNumberInformationList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberInformationList')
        visited = visited + ['PhoneNumberInformationList']
        [
          PhoneNumberInformation.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PhoneNumberInformation.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PhoneNumberInformation
    class PhoneNumberInformation
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberInformation')
        visited = visited + ['PhoneNumberInformation']
        {
          created_at: Time.now,
          phone_number: 'phone_number',
          status: 'status',
          iso2_country_code: 'iso2_country_code',
          route_type: 'route_type',
          number_capabilities: NumberCapabilityList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PhoneNumberInformation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CreatedAt', Hearth::TimeHelper.to_date_time(stub[:created_at])) unless stub[:created_at].nil?
        xml << Hearth::XML::Node.new('PhoneNumber', stub[:phone_number].to_s) unless stub[:phone_number].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Iso2CountryCode', stub[:iso2_country_code].to_s) unless stub[:iso2_country_code].nil?
        xml << Hearth::XML::Node.new('RouteType', stub[:route_type].to_s) unless stub[:route_type].nil?
        xml << Hearth::XML::Node.new('NumberCapabilities', NumberCapabilityList.stub('member', stub[:number_capabilities])) unless stub[:number_capabilities].nil?
        xml
      end
    end

    # List Stubber for NumberCapabilityList
    class NumberCapabilityList
      def self.default(visited=[])
        return nil if visited.include?('NumberCapabilityList')
        visited = visited + ['NumberCapabilityList']
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

    # Operation Stubber for ListPhoneNumbersOptedOut
    class ListPhoneNumbersOptedOut
      def self.default(visited=[])
        {
          phone_numbers: PhoneNumberList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPhoneNumbersOptedOutResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListPhoneNumbersOptedOutResult')
        xml << Hearth::XML::Node.new('phoneNumbers', PhoneNumberList.stub('member', stub[:phone_numbers])) unless stub[:phone_numbers].nil?
        xml << Hearth::XML::Node.new('nextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PhoneNumberList
    class PhoneNumberList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberList')
        visited = visited + ['PhoneNumberList']
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

    # Operation Stubber for ListPlatformApplications
    class ListPlatformApplications
      def self.default(visited=[])
        {
          platform_applications: ListOfPlatformApplications.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPlatformApplicationsResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListPlatformApplicationsResult')
        xml << Hearth::XML::Node.new('PlatformApplications', ListOfPlatformApplications.stub('member', stub[:platform_applications])) unless stub[:platform_applications].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfPlatformApplications
    class ListOfPlatformApplications
      def self.default(visited=[])
        return nil if visited.include?('ListOfPlatformApplications')
        visited = visited + ['ListOfPlatformApplications']
        [
          PlatformApplication.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PlatformApplication.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PlatformApplication
    class PlatformApplication
      def self.default(visited=[])
        return nil if visited.include?('PlatformApplication')
        visited = visited + ['PlatformApplication']
        {
          platform_application_arn: 'platform_application_arn',
          attributes: MapStringToString.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PlatformApplication.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PlatformApplicationArn', stub[:platform_application_arn].to_s) unless stub[:platform_application_arn].nil?
        xml << Hearth::XML::Node.new('Attributes', MapStringToString.stub('entry', stub[:attributes])) unless stub[:attributes].nil?
        xml
      end
    end

    # Operation Stubber for ListSMSSandboxPhoneNumbers
    class ListSMSSandboxPhoneNumbers
      def self.default(visited=[])
        {
          phone_numbers: SMSSandboxPhoneNumberList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSMSSandboxPhoneNumbersResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListSMSSandboxPhoneNumbersResult')
        xml << Hearth::XML::Node.new('PhoneNumbers', SMSSandboxPhoneNumberList.stub('member', stub[:phone_numbers])) unless stub[:phone_numbers].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SMSSandboxPhoneNumberList
    class SMSSandboxPhoneNumberList
      def self.default(visited=[])
        return nil if visited.include?('SMSSandboxPhoneNumberList')
        visited = visited + ['SMSSandboxPhoneNumberList']
        [
          SMSSandboxPhoneNumber.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SMSSandboxPhoneNumber.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SMSSandboxPhoneNumber
    class SMSSandboxPhoneNumber
      def self.default(visited=[])
        return nil if visited.include?('SMSSandboxPhoneNumber')
        visited = visited + ['SMSSandboxPhoneNumber']
        {
          phone_number: 'phone_number',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SMSSandboxPhoneNumber.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PhoneNumber', stub[:phone_number].to_s) unless stub[:phone_number].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for ListSubscriptions
    class ListSubscriptions
      def self.default(visited=[])
        {
          subscriptions: SubscriptionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSubscriptionsResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListSubscriptionsResult')
        xml << Hearth::XML::Node.new('Subscriptions', SubscriptionsList.stub('member', stub[:subscriptions])) unless stub[:subscriptions].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SubscriptionsList
    class SubscriptionsList
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionsList')
        visited = visited + ['SubscriptionsList']
        [
          Subscription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Subscription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Subscription
    class Subscription
      def self.default(visited=[])
        return nil if visited.include?('Subscription')
        visited = visited + ['Subscription']
        {
          subscription_arn: 'subscription_arn',
          owner: 'owner',
          protocol: 'protocol',
          endpoint: 'endpoint',
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Subscription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SubscriptionArn', stub[:subscription_arn].to_s) unless stub[:subscription_arn].nil?
        xml << Hearth::XML::Node.new('Owner', stub[:owner].to_s) unless stub[:owner].nil?
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml
      end
    end

    # Operation Stubber for ListSubscriptionsByTopic
    class ListSubscriptionsByTopic
      def self.default(visited=[])
        {
          subscriptions: SubscriptionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSubscriptionsByTopicResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListSubscriptionsByTopicResult')
        xml << Hearth::XML::Node.new('Subscriptions', SubscriptionsList.stub('member', stub[:subscriptions])) unless stub[:subscriptions].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTagsForResourceResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListTagsForResourceResult')
        xml << Hearth::XML::Node.new('Tags', TagList.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for ListTopics
    class ListTopics
      def self.default(visited=[])
        {
          topics: TopicsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTopicsResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('ListTopicsResult')
        xml << Hearth::XML::Node.new('Topics', TopicsList.stub('member', stub[:topics])) unless stub[:topics].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TopicsList
    class TopicsList
      def self.default(visited=[])
        return nil if visited.include?('TopicsList')
        visited = visited + ['TopicsList']
        [
          Topic.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Topic.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Topic
    class Topic
      def self.default(visited=[])
        return nil if visited.include?('Topic')
        visited = visited + ['Topic']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Topic.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml
      end
    end

    # Operation Stubber for OptInPhoneNumber
    class OptInPhoneNumber
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('OptInPhoneNumberResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('OptInPhoneNumberResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for Publish
    class Publish
      def self.default(visited=[])
        {
          message_id: 'message_id',
          sequence_number: 'sequence_number',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PublishResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('PublishResult')
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        xml << Hearth::XML::Node.new('SequenceNumber', stub[:sequence_number].to_s) unless stub[:sequence_number].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PublishBatch
    class PublishBatch
      def self.default(visited=[])
        {
          successful: PublishBatchResultEntryList.default(visited),
          failed: BatchResultErrorEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PublishBatchResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('PublishBatchResult')
        xml << Hearth::XML::Node.new('Successful', PublishBatchResultEntryList.stub('member', stub[:successful])) unless stub[:successful].nil?
        xml << Hearth::XML::Node.new('Failed', BatchResultErrorEntryList.stub('member', stub[:failed])) unless stub[:failed].nil?
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
          code: 'code',
          message: 'message',
          sender_fault: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BatchResultErrorEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('SenderFault', stub[:sender_fault].to_s) unless stub[:sender_fault].nil?
        xml
      end
    end

    # List Stubber for PublishBatchResultEntryList
    class PublishBatchResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('PublishBatchResultEntryList')
        visited = visited + ['PublishBatchResultEntryList']
        [
          PublishBatchResultEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PublishBatchResultEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PublishBatchResultEntry
    class PublishBatchResultEntry
      def self.default(visited=[])
        return nil if visited.include?('PublishBatchResultEntry')
        visited = visited + ['PublishBatchResultEntry']
        {
          id: 'id',
          message_id: 'message_id',
          sequence_number: 'sequence_number',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PublishBatchResultEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        xml << Hearth::XML::Node.new('SequenceNumber', stub[:sequence_number].to_s) unless stub[:sequence_number].nil?
        xml
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
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('RemovePermissionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetEndpointAttributes
    class SetEndpointAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetEndpointAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('SetEndpointAttributesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetPlatformApplicationAttributes
    class SetPlatformApplicationAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetPlatformApplicationAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('SetPlatformApplicationAttributesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetSMSAttributes
    class SetSMSAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetSMSAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('SetSMSAttributesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetSubscriptionAttributes
    class SetSubscriptionAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetSubscriptionAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('SetSubscriptionAttributesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTopicAttributes
    class SetTopicAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetTopicAttributesResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('SetTopicAttributesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for Subscribe
    class Subscribe
      def self.default(visited=[])
        {
          subscription_arn: 'subscription_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SubscribeResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('SubscribeResult')
        xml << Hearth::XML::Node.new('SubscriptionArn', stub[:subscription_arn].to_s) unless stub[:subscription_arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagResourceResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('TagResourceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for Unsubscribe
    class Unsubscribe
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UnsubscribeResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('UnsubscribeResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagResourceResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('UntagResourceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifySMSSandboxPhoneNumber
    class VerifySMSSandboxPhoneNumber
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('VerifySMSSandboxPhoneNumberResponse')
        response.attributes['xmlns'] = 'http://sns.amazonaws.com/doc/2010-03-31/'
        xml = Hearth::XML::Node.new('VerifySMSSandboxPhoneNumberResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
