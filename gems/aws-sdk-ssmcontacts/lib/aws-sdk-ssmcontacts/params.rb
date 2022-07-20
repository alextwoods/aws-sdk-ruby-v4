# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SSMContacts
  module Params

    module AcceptPageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptPageInput, context: context)
        type = Types::AcceptPageInput.new
        type.page_id = params[:page_id]
        type.contact_channel_id = params[:contact_channel_id]
        type.accept_type = params[:accept_type]
        type.note = params[:note]
        type.accept_code = params[:accept_code]
        type.accept_code_validation = params[:accept_code_validation]
        type
      end
    end

    module AcceptPageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptPageOutput, context: context)
        type = Types::AcceptPageOutput.new
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ActivateContactChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateContactChannelInput, context: context)
        type = Types::ActivateContactChannelInput.new
        type.contact_channel_id = params[:contact_channel_id]
        type.activation_code = params[:activation_code]
        type
      end
    end

    module ActivateContactChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateContactChannelOutput, context: context)
        type = Types::ActivateContactChannelOutput.new
        type
      end
    end

    module ChannelTargetInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelTargetInfo, context: context)
        type = Types::ChannelTargetInfo.new
        type.contact_channel_id = params[:contact_channel_id]
        type.retry_interval_in_minutes = params[:retry_interval_in_minutes]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module Contact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Contact, context: context)
        type = Types::Contact.new
        type.contact_arn = params[:contact_arn]
        type.alias = params[:alias]
        type.display_name = params[:display_name]
        type.type = params[:type]
        type
      end
    end

    module ContactChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactChannel, context: context)
        type = Types::ContactChannel.new
        type.contact_channel_arn = params[:contact_channel_arn]
        type.contact_arn = params[:contact_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.delivery_address = ContactChannelAddress.build(params[:delivery_address], context: "#{context}[:delivery_address]") unless params[:delivery_address].nil?
        type.activation_status = params[:activation_status]
        type
      end
    end

    module ContactChannelAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactChannelAddress, context: context)
        type = Types::ContactChannelAddress.new
        type.simple_address = params[:simple_address]
        type
      end
    end

    module ContactChannelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactChannel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContactTargetInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactTargetInfo, context: context)
        type = Types::ContactTargetInfo.new
        type.contact_id = params[:contact_id]
        type.is_essential = params[:is_essential]
        type
      end
    end

    module ContactsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Contact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateContactChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactChannelInput, context: context)
        type = Types::CreateContactChannelInput.new
        type.contact_id = params[:contact_id]
        type.name = params[:name]
        type.type = params[:type]
        type.delivery_address = ContactChannelAddress.build(params[:delivery_address], context: "#{context}[:delivery_address]") unless params[:delivery_address].nil?
        type.defer_activation = params[:defer_activation]
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateContactChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactChannelOutput, context: context)
        type = Types::CreateContactChannelOutput.new
        type.contact_channel_arn = params[:contact_channel_arn]
        type
      end
    end

    module CreateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactInput, context: context)
        type = Types::CreateContactInput.new
        type.alias = params[:alias]
        type.display_name = params[:display_name]
        type.type = params[:type]
        type.plan = Plan.build(params[:plan], context: "#{context}[:plan]") unless params[:plan].nil?
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactOutput, context: context)
        type = Types::CreateContactOutput.new
        type.contact_arn = params[:contact_arn]
        type
      end
    end

    module DataEncryptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataEncryptionException, context: context)
        type = Types::DataEncryptionException.new
        type.message = params[:message]
        type
      end
    end

    module DeactivateContactChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateContactChannelInput, context: context)
        type = Types::DeactivateContactChannelInput.new
        type.contact_channel_id = params[:contact_channel_id]
        type
      end
    end

    module DeactivateContactChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateContactChannelOutput, context: context)
        type = Types::DeactivateContactChannelOutput.new
        type
      end
    end

    module DeleteContactChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactChannelInput, context: context)
        type = Types::DeleteContactChannelInput.new
        type.contact_channel_id = params[:contact_channel_id]
        type
      end
    end

    module DeleteContactChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactChannelOutput, context: context)
        type = Types::DeleteContactChannelOutput.new
        type
      end
    end

    module DeleteContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactInput, context: context)
        type = Types::DeleteContactInput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module DeleteContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactOutput, context: context)
        type = Types::DeleteContactOutput.new
        type
      end
    end

    module DescribeEngagementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngagementInput, context: context)
        type = Types::DescribeEngagementInput.new
        type.engagement_id = params[:engagement_id]
        type
      end
    end

    module DescribeEngagementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngagementOutput, context: context)
        type = Types::DescribeEngagementOutput.new
        type.contact_arn = params[:contact_arn]
        type.engagement_arn = params[:engagement_arn]
        type.sender = params[:sender]
        type.subject = params[:subject]
        type.content = params[:content]
        type.public_subject = params[:public_subject]
        type.public_content = params[:public_content]
        type.incident_id = params[:incident_id]
        type.start_time = params[:start_time]
        type.stop_time = params[:stop_time]
        type
      end
    end

    module DescribePageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePageInput, context: context)
        type = Types::DescribePageInput.new
        type.page_id = params[:page_id]
        type
      end
    end

    module DescribePageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePageOutput, context: context)
        type = Types::DescribePageOutput.new
        type.page_arn = params[:page_arn]
        type.engagement_arn = params[:engagement_arn]
        type.contact_arn = params[:contact_arn]
        type.sender = params[:sender]
        type.subject = params[:subject]
        type.content = params[:content]
        type.public_subject = params[:public_subject]
        type.public_content = params[:public_content]
        type.incident_id = params[:incident_id]
        type.sent_time = params[:sent_time]
        type.read_time = params[:read_time]
        type.delivery_time = params[:delivery_time]
        type
      end
    end

    module Engagement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Engagement, context: context)
        type = Types::Engagement.new
        type.engagement_arn = params[:engagement_arn]
        type.contact_arn = params[:contact_arn]
        type.sender = params[:sender]
        type.incident_id = params[:incident_id]
        type.start_time = params[:start_time]
        type.stop_time = params[:stop_time]
        type
      end
    end

    module EngagementsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Engagement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetContactChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactChannelInput, context: context)
        type = Types::GetContactChannelInput.new
        type.contact_channel_id = params[:contact_channel_id]
        type
      end
    end

    module GetContactChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactChannelOutput, context: context)
        type = Types::GetContactChannelOutput.new
        type.contact_arn = params[:contact_arn]
        type.contact_channel_arn = params[:contact_channel_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.delivery_address = ContactChannelAddress.build(params[:delivery_address], context: "#{context}[:delivery_address]") unless params[:delivery_address].nil?
        type.activation_status = params[:activation_status]
        type
      end
    end

    module GetContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactInput, context: context)
        type = Types::GetContactInput.new
        type.contact_id = params[:contact_id]
        type
      end
    end

    module GetContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactOutput, context: context)
        type = Types::GetContactOutput.new
        type.contact_arn = params[:contact_arn]
        type.alias = params[:alias]
        type.display_name = params[:display_name]
        type.type = params[:type]
        type.plan = Plan.build(params[:plan], context: "#{context}[:plan]") unless params[:plan].nil?
        type
      end
    end

    module GetContactPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactPolicyInput, context: context)
        type = Types::GetContactPolicyInput.new
        type.contact_arn = params[:contact_arn]
        type
      end
    end

    module GetContactPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactPolicyOutput, context: context)
        type = Types::GetContactPolicyOutput.new
        type.contact_arn = params[:contact_arn]
        type.policy = params[:policy]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListContactChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactChannelsInput, context: context)
        type = Types::ListContactChannelsInput.new
        type.contact_id = params[:contact_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListContactChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactChannelsOutput, context: context)
        type = Types::ListContactChannelsOutput.new
        type.next_token = params[:next_token]
        type.contact_channels = ContactChannelList.build(params[:contact_channels], context: "#{context}[:contact_channels]") unless params[:contact_channels].nil?
        type
      end
    end

    module ListContactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsInput, context: context)
        type = Types::ListContactsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.alias_prefix = params[:alias_prefix]
        type.type = params[:type]
        type
      end
    end

    module ListContactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsOutput, context: context)
        type = Types::ListContactsOutput.new
        type.next_token = params[:next_token]
        type.contacts = ContactsList.build(params[:contacts], context: "#{context}[:contacts]") unless params[:contacts].nil?
        type
      end
    end

    module ListEngagementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEngagementsInput, context: context)
        type = Types::ListEngagementsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.incident_id = params[:incident_id]
        type.time_range_value = TimeRange.build(params[:time_range_value], context: "#{context}[:time_range_value]") unless params[:time_range_value].nil?
        type
      end
    end

    module ListEngagementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEngagementsOutput, context: context)
        type = Types::ListEngagementsOutput.new
        type.next_token = params[:next_token]
        type.engagements = EngagementsList.build(params[:engagements], context: "#{context}[:engagements]") unless params[:engagements].nil?
        type
      end
    end

    module ListPageReceiptsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPageReceiptsInput, context: context)
        type = Types::ListPageReceiptsInput.new
        type.page_id = params[:page_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPageReceiptsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPageReceiptsOutput, context: context)
        type = Types::ListPageReceiptsOutput.new
        type.next_token = params[:next_token]
        type.receipts = ReceiptsList.build(params[:receipts], context: "#{context}[:receipts]") unless params[:receipts].nil?
        type
      end
    end

    module ListPagesByContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPagesByContactInput, context: context)
        type = Types::ListPagesByContactInput.new
        type.contact_id = params[:contact_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPagesByContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPagesByContactOutput, context: context)
        type = Types::ListPagesByContactOutput.new
        type.next_token = params[:next_token]
        type.pages = PagesList.build(params[:pages], context: "#{context}[:pages]") unless params[:pages].nil?
        type
      end
    end

    module ListPagesByEngagementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPagesByEngagementInput, context: context)
        type = Types::ListPagesByEngagementInput.new
        type.engagement_id = params[:engagement_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPagesByEngagementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPagesByEngagementOutput, context: context)
        type = Types::ListPagesByEngagementOutput.new
        type.next_token = params[:next_token]
        type.pages = PagesList.build(params[:pages], context: "#{context}[:pages]") unless params[:pages].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Page
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Page, context: context)
        type = Types::Page.new
        type.page_arn = params[:page_arn]
        type.engagement_arn = params[:engagement_arn]
        type.contact_arn = params[:contact_arn]
        type.sender = params[:sender]
        type.incident_id = params[:incident_id]
        type.sent_time = params[:sent_time]
        type.delivery_time = params[:delivery_time]
        type.read_time = params[:read_time]
        type
      end
    end

    module PagesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Page.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Plan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Plan, context: context)
        type = Types::Plan.new
        type.stages = StagesList.build(params[:stages], context: "#{context}[:stages]") unless params[:stages].nil?
        type
      end
    end

    module PutContactPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutContactPolicyInput, context: context)
        type = Types::PutContactPolicyInput.new
        type.contact_arn = params[:contact_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutContactPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutContactPolicyOutput, context: context)
        type = Types::PutContactPolicyOutput.new
        type
      end
    end

    module Receipt
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Receipt, context: context)
        type = Types::Receipt.new
        type.contact_channel_arn = params[:contact_channel_arn]
        type.receipt_type = params[:receipt_type]
        type.receipt_info = params[:receipt_info]
        type.receipt_time = params[:receipt_time]
        type
      end
    end

    module ReceiptsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Receipt.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SendActivationCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendActivationCodeInput, context: context)
        type = Types::SendActivationCodeInput.new
        type.contact_channel_id = params[:contact_channel_id]
        type
      end
    end

    module SendActivationCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendActivationCodeOutput, context: context)
        type = Types::SendActivationCodeOutput.new
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module Stage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stage, context: context)
        type = Types::Stage.new
        type.duration_in_minutes = params[:duration_in_minutes]
        type.targets = TargetsList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module StagesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartEngagementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEngagementInput, context: context)
        type = Types::StartEngagementInput.new
        type.contact_id = params[:contact_id]
        type.sender = params[:sender]
        type.subject = params[:subject]
        type.content = params[:content]
        type.public_subject = params[:public_subject]
        type.public_content = params[:public_content]
        type.incident_id = params[:incident_id]
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type
      end
    end

    module StartEngagementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEngagementOutput, context: context)
        type = Types::StartEngagementOutput.new
        type.engagement_arn = params[:engagement_arn]
        type
      end
    end

    module StopEngagementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEngagementInput, context: context)
        type = Types::StopEngagementInput.new
        type.engagement_id = params[:engagement_id]
        type.reason = params[:reason]
        type
      end
    end

    module StopEngagementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEngagementOutput, context: context)
        type = Types::StopEngagementOutput.new
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Target, context: context)
        type = Types::Target.new
        type.channel_target_info = ChannelTargetInfo.build(params[:channel_target_info], context: "#{context}[:channel_target_info]") unless params[:channel_target_info].nil?
        type.contact_target_info = ContactTargetInfo.build(params[:contact_target_info], context: "#{context}[:contact_target_info]") unless params[:contact_target_info].nil?
        type
      end
    end

    module TargetsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Target.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module TimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeRange, context: context)
        type = Types::TimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateContactChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactChannelInput, context: context)
        type = Types::UpdateContactChannelInput.new
        type.contact_channel_id = params[:contact_channel_id]
        type.name = params[:name]
        type.delivery_address = ContactChannelAddress.build(params[:delivery_address], context: "#{context}[:delivery_address]") unless params[:delivery_address].nil?
        type
      end
    end

    module UpdateContactChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactChannelOutput, context: context)
        type = Types::UpdateContactChannelOutput.new
        type
      end
    end

    module UpdateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactInput, context: context)
        type = Types::UpdateContactInput.new
        type.contact_id = params[:contact_id]
        type.display_name = params[:display_name]
        type.plan = Plan.build(params[:plan], context: "#{context}[:plan]") unless params[:plan].nil?
        type
      end
    end

    module UpdateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactOutput, context: context)
        type = Types::UpdateContactOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
