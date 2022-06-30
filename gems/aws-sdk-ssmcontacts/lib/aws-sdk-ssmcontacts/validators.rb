# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMContacts
  module Validators

    class AcceptPageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptPageInput, context: context)
        Hearth::Validator.validate!(input[:page_id], ::String, context: "#{context}[:page_id]")
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
        Hearth::Validator.validate!(input[:accept_type], ::String, context: "#{context}[:accept_type]")
        Hearth::Validator.validate!(input[:note], ::String, context: "#{context}[:note]")
        Hearth::Validator.validate!(input[:accept_code], ::String, context: "#{context}[:accept_code]")
        Hearth::Validator.validate!(input[:accept_code_validation], ::String, context: "#{context}[:accept_code_validation]")
      end
    end

    class AcceptPageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptPageOutput, context: context)
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActivateContactChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateContactChannelInput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
        Hearth::Validator.validate!(input[:activation_code], ::String, context: "#{context}[:activation_code]")
      end
    end

    class ActivateContactChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateContactChannelOutput, context: context)
      end
    end

    class ChannelTargetInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelTargetInfo, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
        Hearth::Validator.validate!(input[:retry_interval_in_minutes], ::Integer, context: "#{context}[:retry_interval_in_minutes]")
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

    class Contact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Contact, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ContactChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactChannel, context: context)
        Hearth::Validator.validate!(input[:contact_channel_arn], ::String, context: "#{context}[:contact_channel_arn]")
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ContactChannelAddress.validate!(input[:delivery_address], context: "#{context}[:delivery_address]") unless input[:delivery_address].nil?
        Hearth::Validator.validate!(input[:activation_status], ::String, context: "#{context}[:activation_status]")
      end
    end

    class ContactChannelAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactChannelAddress, context: context)
        Hearth::Validator.validate!(input[:simple_address], ::String, context: "#{context}[:simple_address]")
      end
    end

    class ContactChannelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ContactChannel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContactTargetInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactTargetInfo, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:is_essential], ::TrueClass, ::FalseClass, context: "#{context}[:is_essential]")
      end
    end

    class ContactsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Contact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateContactChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactChannelInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ContactChannelAddress.validate!(input[:delivery_address], context: "#{context}[:delivery_address]") unless input[:delivery_address].nil?
        Hearth::Validator.validate!(input[:defer_activation], ::TrueClass, ::FalseClass, context: "#{context}[:defer_activation]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateContactChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactChannelOutput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_arn], ::String, context: "#{context}[:contact_channel_arn]")
      end
    end

    class CreateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactInput, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Plan.validate!(input[:plan], context: "#{context}[:plan]") unless input[:plan].nil?
        Validators::TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
      end
    end

    class DataEncryptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataEncryptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeactivateContactChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateContactChannelInput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
      end
    end

    class DeactivateContactChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateContactChannelOutput, context: context)
      end
    end

    class DeleteContactChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactChannelInput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
      end
    end

    class DeleteContactChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactChannelOutput, context: context)
      end
    end

    class DeleteContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class DeleteContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactOutput, context: context)
      end
    end

    class DescribeEngagementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngagementInput, context: context)
        Hearth::Validator.validate!(input[:engagement_id], ::String, context: "#{context}[:engagement_id]")
      end
    end

    class DescribeEngagementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngagementOutput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:engagement_arn], ::String, context: "#{context}[:engagement_arn]")
        Hearth::Validator.validate!(input[:sender], ::String, context: "#{context}[:sender]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:public_subject], ::String, context: "#{context}[:public_subject]")
        Hearth::Validator.validate!(input[:public_content], ::String, context: "#{context}[:public_content]")
        Hearth::Validator.validate!(input[:incident_id], ::String, context: "#{context}[:incident_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:stop_time], ::Time, context: "#{context}[:stop_time]")
      end
    end

    class DescribePageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePageInput, context: context)
        Hearth::Validator.validate!(input[:page_id], ::String, context: "#{context}[:page_id]")
      end
    end

    class DescribePageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePageOutput, context: context)
        Hearth::Validator.validate!(input[:page_arn], ::String, context: "#{context}[:page_arn]")
        Hearth::Validator.validate!(input[:engagement_arn], ::String, context: "#{context}[:engagement_arn]")
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:sender], ::String, context: "#{context}[:sender]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:public_subject], ::String, context: "#{context}[:public_subject]")
        Hearth::Validator.validate!(input[:public_content], ::String, context: "#{context}[:public_content]")
        Hearth::Validator.validate!(input[:incident_id], ::String, context: "#{context}[:incident_id]")
        Hearth::Validator.validate!(input[:sent_time], ::Time, context: "#{context}[:sent_time]")
        Hearth::Validator.validate!(input[:read_time], ::Time, context: "#{context}[:read_time]")
        Hearth::Validator.validate!(input[:delivery_time], ::Time, context: "#{context}[:delivery_time]")
      end
    end

    class Engagement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Engagement, context: context)
        Hearth::Validator.validate!(input[:engagement_arn], ::String, context: "#{context}[:engagement_arn]")
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:sender], ::String, context: "#{context}[:sender]")
        Hearth::Validator.validate!(input[:incident_id], ::String, context: "#{context}[:incident_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:stop_time], ::Time, context: "#{context}[:stop_time]")
      end
    end

    class EngagementsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Engagement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetContactChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactChannelInput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
      end
    end

    class GetContactChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactChannelOutput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:contact_channel_arn], ::String, context: "#{context}[:contact_channel_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ContactChannelAddress.validate!(input[:delivery_address], context: "#{context}[:delivery_address]") unless input[:delivery_address].nil?
        Hearth::Validator.validate!(input[:activation_status], ::String, context: "#{context}[:activation_status]")
      end
    end

    class GetContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
      end
    end

    class GetContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Plan.validate!(input[:plan], context: "#{context}[:plan]") unless input[:plan].nil?
      end
    end

    class GetContactPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactPolicyInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
      end
    end

    class GetContactPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListContactChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactChannelsInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListContactChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactChannelsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ContactChannelList.validate!(input[:contact_channels], context: "#{context}[:contact_channels]") unless input[:contact_channels].nil?
      end
    end

    class ListContactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:alias_prefix], ::String, context: "#{context}[:alias_prefix]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListContactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ContactsList.validate!(input[:contacts], context: "#{context}[:contacts]") unless input[:contacts].nil?
      end
    end

    class ListEngagementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEngagementsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:incident_id], ::String, context: "#{context}[:incident_id]")
        Validators::TimeRange.validate!(input[:time_range_value], context: "#{context}[:time_range_value]") unless input[:time_range_value].nil?
      end
    end

    class ListEngagementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEngagementsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::EngagementsList.validate!(input[:engagements], context: "#{context}[:engagements]") unless input[:engagements].nil?
      end
    end

    class ListPageReceiptsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPageReceiptsInput, context: context)
        Hearth::Validator.validate!(input[:page_id], ::String, context: "#{context}[:page_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPageReceiptsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPageReceiptsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ReceiptsList.validate!(input[:receipts], context: "#{context}[:receipts]") unless input[:receipts].nil?
      end
    end

    class ListPagesByContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPagesByContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPagesByContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPagesByContactOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PagesList.validate!(input[:pages], context: "#{context}[:pages]") unless input[:pages].nil?
      end
    end

    class ListPagesByEngagementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPagesByEngagementInput, context: context)
        Hearth::Validator.validate!(input[:engagement_id], ::String, context: "#{context}[:engagement_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPagesByEngagementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPagesByEngagementOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PagesList.validate!(input[:pages], context: "#{context}[:pages]") unless input[:pages].nil?
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
        Validators::TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Page
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Page, context: context)
        Hearth::Validator.validate!(input[:page_arn], ::String, context: "#{context}[:page_arn]")
        Hearth::Validator.validate!(input[:engagement_arn], ::String, context: "#{context}[:engagement_arn]")
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:sender], ::String, context: "#{context}[:sender]")
        Hearth::Validator.validate!(input[:incident_id], ::String, context: "#{context}[:incident_id]")
        Hearth::Validator.validate!(input[:sent_time], ::Time, context: "#{context}[:sent_time]")
        Hearth::Validator.validate!(input[:delivery_time], ::Time, context: "#{context}[:delivery_time]")
        Hearth::Validator.validate!(input[:read_time], ::Time, context: "#{context}[:read_time]")
      end
    end

    class PagesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Page.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Plan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Plan, context: context)
        Validators::StagesList.validate!(input[:stages], context: "#{context}[:stages]") unless input[:stages].nil?
      end
    end

    class PutContactPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutContactPolicyInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutContactPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutContactPolicyOutput, context: context)
      end
    end

    class Receipt
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Receipt, context: context)
        Hearth::Validator.validate!(input[:contact_channel_arn], ::String, context: "#{context}[:contact_channel_arn]")
        Hearth::Validator.validate!(input[:receipt_type], ::String, context: "#{context}[:receipt_type]")
        Hearth::Validator.validate!(input[:receipt_info], ::String, context: "#{context}[:receipt_info]")
        Hearth::Validator.validate!(input[:receipt_time], ::Time, context: "#{context}[:receipt_time]")
      end
    end

    class ReceiptsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Receipt.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class SendActivationCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendActivationCodeInput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
      end
    end

    class SendActivationCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendActivationCodeOutput, context: context)
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class Stage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stage, context: context)
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
        Validators::TargetsList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class StagesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Stage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartEngagementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEngagementInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:sender], ::String, context: "#{context}[:sender]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:public_subject], ::String, context: "#{context}[:public_subject]")
        Hearth::Validator.validate!(input[:public_content], ::String, context: "#{context}[:public_content]")
        Hearth::Validator.validate!(input[:incident_id], ::String, context: "#{context}[:incident_id]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class StartEngagementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEngagementOutput, context: context)
        Hearth::Validator.validate!(input[:engagement_arn], ::String, context: "#{context}[:engagement_arn]")
      end
    end

    class StopEngagementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEngagementInput, context: context)
        Hearth::Validator.validate!(input[:engagement_id], ::String, context: "#{context}[:engagement_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StopEngagementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEngagementOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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
        Validators::TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Target, context: context)
        Validators::ChannelTargetInfo.validate!(input[:channel_target_info], context: "#{context}[:channel_target_info]") unless input[:channel_target_info].nil?
        Validators::ContactTargetInfo.validate!(input[:contact_target_info], context: "#{context}[:contact_target_info]") unless input[:contact_target_info].nil?
      end
    end

    class TargetsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Target.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class TimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
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

    class UpdateContactChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactChannelInput, context: context)
        Hearth::Validator.validate!(input[:contact_channel_id], ::String, context: "#{context}[:contact_channel_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ContactChannelAddress.validate!(input[:delivery_address], context: "#{context}[:delivery_address]") unless input[:delivery_address].nil?
      end
    end

    class UpdateContactChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactChannelOutput, context: context)
      end
    end

    class UpdateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Validators::Plan.validate!(input[:plan], context: "#{context}[:plan]") unless input[:plan].nil?
      end
    end

    class UpdateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
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
