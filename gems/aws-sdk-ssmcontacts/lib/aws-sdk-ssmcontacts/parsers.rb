# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMContacts
  module Parsers

    # Operation Parser for AcceptPage
    class AcceptPage
      def self.parse(http_resp)
        data = Types::AcceptPageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.retry_after_seconds = map['RetryAfterSeconds']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data.retry_after_seconds = map['RetryAfterSeconds']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ActivateContactChannel
    class ActivateContactChannel
      def self.parse(http_resp)
        data = Types::ActivateContactChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateContact
    class CreateContact
      def self.parse(http_resp)
        data = Types::CreateContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_arn = map['ContactArn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for DataEncryptionException
    class DataEncryptionException
      def self.parse(http_resp)
        data = Types::DataEncryptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Operation Parser for CreateContactChannel
    class CreateContactChannel
      def self.parse(http_resp)
        data = Types::CreateContactChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_channel_arn = map['ContactChannelArn']
        data
      end
    end

    # Operation Parser for DeactivateContactChannel
    class DeactivateContactChannel
      def self.parse(http_resp)
        data = Types::DeactivateContactChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteContact
    class DeleteContact
      def self.parse(http_resp)
        data = Types::DeleteContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteContactChannel
    class DeleteContactChannel
      def self.parse(http_resp)
        data = Types::DeleteContactChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeEngagement
    class DescribeEngagement
      def self.parse(http_resp)
        data = Types::DescribeEngagementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_arn = map['ContactArn']
        data.engagement_arn = map['EngagementArn']
        data.sender = map['Sender']
        data.subject = map['Subject']
        data.content = map['Content']
        data.public_subject = map['PublicSubject']
        data.public_content = map['PublicContent']
        data.incident_id = map['IncidentId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.stop_time = Time.at(map['StopTime'].to_i) if map['StopTime']
        data
      end
    end

    # Operation Parser for DescribePage
    class DescribePage
      def self.parse(http_resp)
        data = Types::DescribePageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.page_arn = map['PageArn']
        data.engagement_arn = map['EngagementArn']
        data.contact_arn = map['ContactArn']
        data.sender = map['Sender']
        data.subject = map['Subject']
        data.content = map['Content']
        data.public_subject = map['PublicSubject']
        data.public_content = map['PublicContent']
        data.incident_id = map['IncidentId']
        data.sent_time = Time.at(map['SentTime'].to_i) if map['SentTime']
        data.read_time = Time.at(map['ReadTime'].to_i) if map['ReadTime']
        data.delivery_time = Time.at(map['DeliveryTime'].to_i) if map['DeliveryTime']
        data
      end
    end

    # Operation Parser for GetContact
    class GetContact
      def self.parse(http_resp)
        data = Types::GetContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_arn = map['ContactArn']
        data.alias = map['Alias']
        data.display_name = map['DisplayName']
        data.type = map['Type']
        data.plan = (Parsers::Plan.parse(map['Plan']) unless map['Plan'].nil?)
        data
      end
    end

    class Plan
      def self.parse(map)
        data = Types::Plan.new
        data.stages = (Parsers::StagesList.parse(map['Stages']) unless map['Stages'].nil?)
        return data
      end
    end

    class StagesList
      def self.parse(list)
        list.map do |value|
          Parsers::Stage.parse(value) unless value.nil?
        end
      end
    end

    class Stage
      def self.parse(map)
        data = Types::Stage.new
        data.duration_in_minutes = map['DurationInMinutes']
        data.targets = (Parsers::TargetsList.parse(map['Targets']) unless map['Targets'].nil?)
        return data
      end
    end

    class TargetsList
      def self.parse(list)
        list.map do |value|
          Parsers::Target.parse(value) unless value.nil?
        end
      end
    end

    class Target
      def self.parse(map)
        data = Types::Target.new
        data.channel_target_info = (Parsers::ChannelTargetInfo.parse(map['ChannelTargetInfo']) unless map['ChannelTargetInfo'].nil?)
        data.contact_target_info = (Parsers::ContactTargetInfo.parse(map['ContactTargetInfo']) unless map['ContactTargetInfo'].nil?)
        return data
      end
    end

    class ContactTargetInfo
      def self.parse(map)
        data = Types::ContactTargetInfo.new
        data.contact_id = map['ContactId']
        data.is_essential = map['IsEssential']
        return data
      end
    end

    class ChannelTargetInfo
      def self.parse(map)
        data = Types::ChannelTargetInfo.new
        data.contact_channel_id = map['ContactChannelId']
        data.retry_interval_in_minutes = map['RetryIntervalInMinutes']
        return data
      end
    end

    # Operation Parser for GetContactChannel
    class GetContactChannel
      def self.parse(http_resp)
        data = Types::GetContactChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_arn = map['ContactArn']
        data.contact_channel_arn = map['ContactChannelArn']
        data.name = map['Name']
        data.type = map['Type']
        data.delivery_address = (Parsers::ContactChannelAddress.parse(map['DeliveryAddress']) unless map['DeliveryAddress'].nil?)
        data.activation_status = map['ActivationStatus']
        data
      end
    end

    class ContactChannelAddress
      def self.parse(map)
        data = Types::ContactChannelAddress.new
        data.simple_address = map['SimpleAddress']
        return data
      end
    end

    # Operation Parser for GetContactPolicy
    class GetContactPolicy
      def self.parse(http_resp)
        data = Types::GetContactPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_arn = map['ContactArn']
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for ListContactChannels
    class ListContactChannels
      def self.parse(http_resp)
        data = Types::ListContactChannelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.contact_channels = (Parsers::ContactChannelList.parse(map['ContactChannels']) unless map['ContactChannels'].nil?)
        data
      end
    end

    class ContactChannelList
      def self.parse(list)
        list.map do |value|
          Parsers::ContactChannel.parse(value) unless value.nil?
        end
      end
    end

    class ContactChannel
      def self.parse(map)
        data = Types::ContactChannel.new
        data.contact_channel_arn = map['ContactChannelArn']
        data.contact_arn = map['ContactArn']
        data.name = map['Name']
        data.type = map['Type']
        data.delivery_address = (Parsers::ContactChannelAddress.parse(map['DeliveryAddress']) unless map['DeliveryAddress'].nil?)
        data.activation_status = map['ActivationStatus']
        return data
      end
    end

    # Operation Parser for ListContacts
    class ListContacts
      def self.parse(http_resp)
        data = Types::ListContactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.contacts = (Parsers::ContactsList.parse(map['Contacts']) unless map['Contacts'].nil?)
        data
      end
    end

    class ContactsList
      def self.parse(list)
        list.map do |value|
          Parsers::Contact.parse(value) unless value.nil?
        end
      end
    end

    class Contact
      def self.parse(map)
        data = Types::Contact.new
        data.contact_arn = map['ContactArn']
        data.alias = map['Alias']
        data.display_name = map['DisplayName']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListEngagements
    class ListEngagements
      def self.parse(http_resp)
        data = Types::ListEngagementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.engagements = (Parsers::EngagementsList.parse(map['Engagements']) unless map['Engagements'].nil?)
        data
      end
    end

    class EngagementsList
      def self.parse(list)
        list.map do |value|
          Parsers::Engagement.parse(value) unless value.nil?
        end
      end
    end

    class Engagement
      def self.parse(map)
        data = Types::Engagement.new
        data.engagement_arn = map['EngagementArn']
        data.contact_arn = map['ContactArn']
        data.sender = map['Sender']
        data.incident_id = map['IncidentId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.stop_time = Time.at(map['StopTime'].to_i) if map['StopTime']
        return data
      end
    end

    # Operation Parser for ListPageReceipts
    class ListPageReceipts
      def self.parse(http_resp)
        data = Types::ListPageReceiptsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.receipts = (Parsers::ReceiptsList.parse(map['Receipts']) unless map['Receipts'].nil?)
        data
      end
    end

    class ReceiptsList
      def self.parse(list)
        list.map do |value|
          Parsers::Receipt.parse(value) unless value.nil?
        end
      end
    end

    class Receipt
      def self.parse(map)
        data = Types::Receipt.new
        data.contact_channel_arn = map['ContactChannelArn']
        data.receipt_type = map['ReceiptType']
        data.receipt_info = map['ReceiptInfo']
        data.receipt_time = Time.at(map['ReceiptTime'].to_i) if map['ReceiptTime']
        return data
      end
    end

    # Operation Parser for ListPagesByContact
    class ListPagesByContact
      def self.parse(http_resp)
        data = Types::ListPagesByContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.pages = (Parsers::PagesList.parse(map['Pages']) unless map['Pages'].nil?)
        data
      end
    end

    class PagesList
      def self.parse(list)
        list.map do |value|
          Parsers::Page.parse(value) unless value.nil?
        end
      end
    end

    class Page
      def self.parse(map)
        data = Types::Page.new
        data.page_arn = map['PageArn']
        data.engagement_arn = map['EngagementArn']
        data.contact_arn = map['ContactArn']
        data.sender = map['Sender']
        data.incident_id = map['IncidentId']
        data.sent_time = Time.at(map['SentTime'].to_i) if map['SentTime']
        data.delivery_time = Time.at(map['DeliveryTime'].to_i) if map['DeliveryTime']
        data.read_time = Time.at(map['ReadTime'].to_i) if map['ReadTime']
        return data
      end
    end

    # Operation Parser for ListPagesByEngagement
    class ListPagesByEngagement
      def self.parse(http_resp)
        data = Types::ListPagesByEngagementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.pages = (Parsers::PagesList.parse(map['Pages']) unless map['Pages'].nil?)
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagsList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagsList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PutContactPolicy
    class PutContactPolicy
      def self.parse(http_resp)
        data = Types::PutContactPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SendActivationCode
    class SendActivationCode
      def self.parse(http_resp)
        data = Types::SendActivationCodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartEngagement
    class StartEngagement
      def self.parse(http_resp)
        data = Types::StartEngagementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.engagement_arn = map['EngagementArn']
        data
      end
    end

    # Operation Parser for StopEngagement
    class StopEngagement
      def self.parse(http_resp)
        data = Types::StopEngagementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateContact
    class UpdateContact
      def self.parse(http_resp)
        data = Types::UpdateContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateContactChannel
    class UpdateContactChannel
      def self.parse(http_resp)
        data = Types::UpdateContactChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
