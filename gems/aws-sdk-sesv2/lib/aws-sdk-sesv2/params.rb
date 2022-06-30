# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SESv2
  module Params

    module AccountDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountDetails, context: context)
        type = Types::AccountDetails.new
        type.mail_type = params[:mail_type]
        type.website_url = params[:website_url]
        type.contact_language = params[:contact_language]
        type.use_case_description = params[:use_case_description]
        type.additional_contact_email_addresses = AdditionalContactEmailAddresses.build(params[:additional_contact_email_addresses], context: "#{context}[:additional_contact_email_addresses]") unless params[:additional_contact_email_addresses].nil?
        type.review_details = ReviewDetails.build(params[:review_details], context: "#{context}[:review_details]") unless params[:review_details].nil?
        type
      end
    end

    module AccountSuspendedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSuspendedException, context: context)
        type = Types::AccountSuspendedException.new
        type.message = params[:message]
        type
      end
    end

    module AdditionalContactEmailAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BlacklistEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlacklistEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BlacklistEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlacklistEntry, context: context)
        type = Types::BlacklistEntry.new
        type.rbl_name = params[:rbl_name]
        type.listing_time = params[:listing_time]
        type.description = params[:description]
        type
      end
    end

    module BlacklistItemNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BlacklistReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BlacklistEntries.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Body
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Body, context: context)
        type = Types::Body.new
        type.text = Content.build(params[:text], context: "#{context}[:text]") unless params[:text].nil?
        type.html = Content.build(params[:html], context: "#{context}[:html]") unless params[:html].nil?
        type
      end
    end

    module BulkEmailContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkEmailContent, context: context)
        type = Types::BulkEmailContent.new
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type
      end
    end

    module BulkEmailEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkEmailEntry, context: context)
        type = Types::BulkEmailEntry.new
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.replacement_tags = MessageTagList.build(params[:replacement_tags], context: "#{context}[:replacement_tags]") unless params[:replacement_tags].nil?
        type.replacement_email_content = ReplacementEmailContent.build(params[:replacement_email_content], context: "#{context}[:replacement_email_content]") unless params[:replacement_email_content].nil?
        type
      end
    end

    module BulkEmailEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BulkEmailEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BulkEmailEntryResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkEmailEntryResult, context: context)
        type = Types::BulkEmailEntryResult.new
        type.status = params[:status]
        type.error = params[:error]
        type.message_id = params[:message_id]
        type
      end
    end

    module BulkEmailEntryResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BulkEmailEntryResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchDestination, context: context)
        type = Types::CloudWatchDestination.new
        type.dimension_configurations = CloudWatchDimensionConfigurations.build(params[:dimension_configurations], context: "#{context}[:dimension_configurations]") unless params[:dimension_configurations].nil?
        type
      end
    end

    module CloudWatchDimensionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchDimensionConfiguration, context: context)
        type = Types::CloudWatchDimensionConfiguration.new
        type.dimension_name = params[:dimension_name]
        type.dimension_value_source = params[:dimension_value_source]
        type.default_dimension_value = params[:default_dimension_value]
        type
      end
    end

    module CloudWatchDimensionConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchDimensionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConfigurationSetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module Contact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Contact, context: context)
        type = Types::Contact.new
        type.email_address = params[:email_address]
        type.topic_preferences = TopicPreferenceList.build(params[:topic_preferences], context: "#{context}[:topic_preferences]") unless params[:topic_preferences].nil?
        type.topic_default_preferences = TopicPreferenceList.build(params[:topic_default_preferences], context: "#{context}[:topic_default_preferences]") unless params[:topic_default_preferences].nil?
        type.unsubscribe_all = params[:unsubscribe_all]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ContactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactList, context: context)
        type = Types::ContactList.new
        type.contact_list_name = params[:contact_list_name]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ContactListDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactListDestination, context: context)
        type = Types::ContactListDestination.new
        type.contact_list_name = params[:contact_list_name]
        type.contact_list_import_action = params[:contact_list_import_action]
        type
      end
    end

    module Content
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Content, context: context)
        type = Types::Content.new
        type.data = params[:data]
        type.charset = params[:charset]
        type
      end
    end

    module CreateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetEventDestinationInput, context: context)
        type = Types::CreateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.event_destination = EventDestinationDefinition.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module CreateConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetEventDestinationOutput, context: context)
        type = Types::CreateConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module CreateConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetInput, context: context)
        type = Types::CreateConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type.delivery_options = DeliveryOptions.build(params[:delivery_options], context: "#{context}[:delivery_options]") unless params[:delivery_options].nil?
        type.reputation_options = ReputationOptions.build(params[:reputation_options], context: "#{context}[:reputation_options]") unless params[:reputation_options].nil?
        type.sending_options = SendingOptions.build(params[:sending_options], context: "#{context}[:sending_options]") unless params[:sending_options].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.suppression_options = SuppressionOptions.build(params[:suppression_options], context: "#{context}[:suppression_options]") unless params[:suppression_options].nil?
        type
      end
    end

    module CreateConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetOutput, context: context)
        type = Types::CreateConfigurationSetOutput.new
        type
      end
    end

    module CreateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactInput, context: context)
        type = Types::CreateContactInput.new
        type.contact_list_name = params[:contact_list_name]
        type.email_address = params[:email_address]
        type.topic_preferences = TopicPreferenceList.build(params[:topic_preferences], context: "#{context}[:topic_preferences]") unless params[:topic_preferences].nil?
        type.unsubscribe_all = params[:unsubscribe_all]
        type.attributes_data = params[:attributes_data]
        type
      end
    end

    module CreateContactListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactListInput, context: context)
        type = Types::CreateContactListInput.new
        type.contact_list_name = params[:contact_list_name]
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateContactListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactListOutput, context: context)
        type = Types::CreateContactListOutput.new
        type
      end
    end

    module CreateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactOutput, context: context)
        type = Types::CreateContactOutput.new
        type
      end
    end

    module CreateCustomVerificationEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomVerificationEmailTemplateInput, context: context)
        type = Types::CreateCustomVerificationEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.from_email_address = params[:from_email_address]
        type.template_subject = params[:template_subject]
        type.template_content = params[:template_content]
        type.success_redirection_url = params[:success_redirection_url]
        type.failure_redirection_url = params[:failure_redirection_url]
        type
      end
    end

    module CreateCustomVerificationEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomVerificationEmailTemplateOutput, context: context)
        type = Types::CreateCustomVerificationEmailTemplateOutput.new
        type
      end
    end

    module CreateDedicatedIpPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDedicatedIpPoolInput, context: context)
        type = Types::CreateDedicatedIpPoolInput.new
        type.pool_name = params[:pool_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDedicatedIpPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDedicatedIpPoolOutput, context: context)
        type = Types::CreateDedicatedIpPoolOutput.new
        type
      end
    end

    module CreateDeliverabilityTestReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeliverabilityTestReportInput, context: context)
        type = Types::CreateDeliverabilityTestReportInput.new
        type.report_name = params[:report_name]
        type.from_email_address = params[:from_email_address]
        type.content = EmailContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeliverabilityTestReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeliverabilityTestReportOutput, context: context)
        type = Types::CreateDeliverabilityTestReportOutput.new
        type.report_id = params[:report_id]
        type.deliverability_test_status = params[:deliverability_test_status]
        type
      end
    end

    module CreateEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailIdentityInput, context: context)
        type = Types::CreateEmailIdentityInput.new
        type.email_identity = params[:email_identity]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.dkim_signing_attributes = DkimSigningAttributes.build(params[:dkim_signing_attributes], context: "#{context}[:dkim_signing_attributes]") unless params[:dkim_signing_attributes].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module CreateEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailIdentityOutput, context: context)
        type = Types::CreateEmailIdentityOutput.new
        type.identity_type = params[:identity_type]
        type.verified_for_sending_status = params[:verified_for_sending_status]
        type.dkim_attributes = DkimAttributes.build(params[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless params[:dkim_attributes].nil?
        type
      end
    end

    module CreateEmailIdentityPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailIdentityPolicyInput, context: context)
        type = Types::CreateEmailIdentityPolicyInput.new
        type.email_identity = params[:email_identity]
        type.policy_name = params[:policy_name]
        type.policy = params[:policy]
        type
      end
    end

    module CreateEmailIdentityPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailIdentityPolicyOutput, context: context)
        type = Types::CreateEmailIdentityPolicyOutput.new
        type
      end
    end

    module CreateEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailTemplateInput, context: context)
        type = Types::CreateEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.template_content = EmailTemplateContent.build(params[:template_content], context: "#{context}[:template_content]") unless params[:template_content].nil?
        type
      end
    end

    module CreateEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailTemplateOutput, context: context)
        type = Types::CreateEmailTemplateOutput.new
        type
      end
    end

    module CreateImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImportJobInput, context: context)
        type = Types::CreateImportJobInput.new
        type.import_destination = ImportDestination.build(params[:import_destination], context: "#{context}[:import_destination]") unless params[:import_destination].nil?
        type.import_data_source = ImportDataSource.build(params[:import_data_source], context: "#{context}[:import_data_source]") unless params[:import_data_source].nil?
        type
      end
    end

    module CreateImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImportJobOutput, context: context)
        type = Types::CreateImportJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CustomVerificationEmailTemplateMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVerificationEmailTemplateMetadata, context: context)
        type = Types::CustomVerificationEmailTemplateMetadata.new
        type.template_name = params[:template_name]
        type.from_email_address = params[:from_email_address]
        type.template_subject = params[:template_subject]
        type.success_redirection_url = params[:success_redirection_url]
        type.failure_redirection_url = params[:failure_redirection_url]
        type
      end
    end

    module CustomVerificationEmailTemplatesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomVerificationEmailTemplateMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DailyVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DailyVolume, context: context)
        type = Types::DailyVolume.new
        type.start_date = params[:start_date]
        type.volume_statistics = VolumeStatistics.build(params[:volume_statistics], context: "#{context}[:volume_statistics]") unless params[:volume_statistics].nil?
        type.domain_isp_placements = DomainIspPlacements.build(params[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless params[:domain_isp_placements].nil?
        type
      end
    end

    module DailyVolumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DailyVolume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DedicatedIp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DedicatedIp, context: context)
        type = Types::DedicatedIp.new
        type.ip = params[:ip]
        type.warmup_status = params[:warmup_status]
        type.warmup_percentage = params[:warmup_percentage]
        type.pool_name = params[:pool_name]
        type
      end
    end

    module DedicatedIpList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DedicatedIp.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetEventDestinationInput, context: context)
        type = Types::DeleteConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type
      end
    end

    module DeleteConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetEventDestinationOutput, context: context)
        type = Types::DeleteConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module DeleteConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetInput, context: context)
        type = Types::DeleteConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module DeleteConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetOutput, context: context)
        type = Types::DeleteConfigurationSetOutput.new
        type
      end
    end

    module DeleteContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactInput, context: context)
        type = Types::DeleteContactInput.new
        type.contact_list_name = params[:contact_list_name]
        type.email_address = params[:email_address]
        type
      end
    end

    module DeleteContactListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactListInput, context: context)
        type = Types::DeleteContactListInput.new
        type.contact_list_name = params[:contact_list_name]
        type
      end
    end

    module DeleteContactListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactListOutput, context: context)
        type = Types::DeleteContactListOutput.new
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

    module DeleteCustomVerificationEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomVerificationEmailTemplateInput, context: context)
        type = Types::DeleteCustomVerificationEmailTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module DeleteCustomVerificationEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomVerificationEmailTemplateOutput, context: context)
        type = Types::DeleteCustomVerificationEmailTemplateOutput.new
        type
      end
    end

    module DeleteDedicatedIpPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDedicatedIpPoolInput, context: context)
        type = Types::DeleteDedicatedIpPoolInput.new
        type.pool_name = params[:pool_name]
        type
      end
    end

    module DeleteDedicatedIpPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDedicatedIpPoolOutput, context: context)
        type = Types::DeleteDedicatedIpPoolOutput.new
        type
      end
    end

    module DeleteEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailIdentityInput, context: context)
        type = Types::DeleteEmailIdentityInput.new
        type.email_identity = params[:email_identity]
        type
      end
    end

    module DeleteEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailIdentityOutput, context: context)
        type = Types::DeleteEmailIdentityOutput.new
        type
      end
    end

    module DeleteEmailIdentityPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailIdentityPolicyInput, context: context)
        type = Types::DeleteEmailIdentityPolicyInput.new
        type.email_identity = params[:email_identity]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteEmailIdentityPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailIdentityPolicyOutput, context: context)
        type = Types::DeleteEmailIdentityPolicyOutput.new
        type
      end
    end

    module DeleteEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailTemplateInput, context: context)
        type = Types::DeleteEmailTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module DeleteEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailTemplateOutput, context: context)
        type = Types::DeleteEmailTemplateOutput.new
        type
      end
    end

    module DeleteSuppressedDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSuppressedDestinationInput, context: context)
        type = Types::DeleteSuppressedDestinationInput.new
        type.email_address = params[:email_address]
        type
      end
    end

    module DeleteSuppressedDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSuppressedDestinationOutput, context: context)
        type = Types::DeleteSuppressedDestinationOutput.new
        type
      end
    end

    module DeliverabilityTestReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliverabilityTestReport, context: context)
        type = Types::DeliverabilityTestReport.new
        type.report_id = params[:report_id]
        type.report_name = params[:report_name]
        type.subject = params[:subject]
        type.from_email_address = params[:from_email_address]
        type.create_date = params[:create_date]
        type.deliverability_test_status = params[:deliverability_test_status]
        type
      end
    end

    module DeliverabilityTestReports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeliverabilityTestReport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeliveryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryOptions, context: context)
        type = Types::DeliveryOptions.new
        type.tls_policy = params[:tls_policy]
        type.sending_pool_name = params[:sending_pool_name]
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.to_addresses = EmailAddressList.build(params[:to_addresses], context: "#{context}[:to_addresses]") unless params[:to_addresses].nil?
        type.cc_addresses = EmailAddressList.build(params[:cc_addresses], context: "#{context}[:cc_addresses]") unless params[:cc_addresses].nil?
        type.bcc_addresses = EmailAddressList.build(params[:bcc_addresses], context: "#{context}[:bcc_addresses]") unless params[:bcc_addresses].nil?
        type
      end
    end

    module DkimAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DkimAttributes, context: context)
        type = Types::DkimAttributes.new
        type.signing_enabled = params[:signing_enabled]
        type.status = params[:status]
        type.tokens = DnsTokenList.build(params[:tokens], context: "#{context}[:tokens]") unless params[:tokens].nil?
        type.signing_attributes_origin = params[:signing_attributes_origin]
        type.next_signing_key_length = params[:next_signing_key_length]
        type.current_signing_key_length = params[:current_signing_key_length]
        type.last_key_generation_timestamp = params[:last_key_generation_timestamp]
        type
      end
    end

    module DkimSigningAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DkimSigningAttributes, context: context)
        type = Types::DkimSigningAttributes.new
        type.domain_signing_selector = params[:domain_signing_selector]
        type.domain_signing_private_key = params[:domain_signing_private_key]
        type.next_signing_key_length = params[:next_signing_key_length]
        type
      end
    end

    module DnsTokenList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainDeliverabilityCampaign
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDeliverabilityCampaign, context: context)
        type = Types::DomainDeliverabilityCampaign.new
        type.campaign_id = params[:campaign_id]
        type.image_url = params[:image_url]
        type.subject = params[:subject]
        type.from_address = params[:from_address]
        type.sending_ips = IpList.build(params[:sending_ips], context: "#{context}[:sending_ips]") unless params[:sending_ips].nil?
        type.first_seen_date_time = params[:first_seen_date_time]
        type.last_seen_date_time = params[:last_seen_date_time]
        type.inbox_count = params[:inbox_count]
        type.spam_count = params[:spam_count]
        type.read_rate = params[:read_rate]
        type.delete_rate = params[:delete_rate]
        type.read_delete_rate = params[:read_delete_rate]
        type.projected_volume = params[:projected_volume]
        type.esps = Esps.build(params[:esps], context: "#{context}[:esps]") unless params[:esps].nil?
        type
      end
    end

    module DomainDeliverabilityCampaignList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainDeliverabilityCampaign.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainDeliverabilityTrackingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDeliverabilityTrackingOption, context: context)
        type = Types::DomainDeliverabilityTrackingOption.new
        type.domain = params[:domain]
        type.subscription_start_date = params[:subscription_start_date]
        type.inbox_placement_tracking_option = InboxPlacementTrackingOption.build(params[:inbox_placement_tracking_option], context: "#{context}[:inbox_placement_tracking_option]") unless params[:inbox_placement_tracking_option].nil?
        type
      end
    end

    module DomainDeliverabilityTrackingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainDeliverabilityTrackingOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainIspPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainIspPlacement, context: context)
        type = Types::DomainIspPlacement.new
        type.isp_name = params[:isp_name]
        type.inbox_raw_count = params[:inbox_raw_count]
        type.spam_raw_count = params[:spam_raw_count]
        type.inbox_percentage = params[:inbox_percentage]
        type.spam_percentage = params[:spam_percentage]
        type
      end
    end

    module DomainIspPlacements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainIspPlacement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EmailAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EmailContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailContent, context: context)
        type = Types::EmailContent.new
        type.simple = Message.build(params[:simple], context: "#{context}[:simple]") unless params[:simple].nil?
        type.raw = RawMessage.build(params[:raw], context: "#{context}[:raw]") unless params[:raw].nil?
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type
      end
    end

    module EmailTemplateContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailTemplateContent, context: context)
        type = Types::EmailTemplateContent.new
        type.subject = params[:subject]
        type.text = params[:text]
        type.html = params[:html]
        type
      end
    end

    module EmailTemplateMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailTemplateMetadata, context: context)
        type = Types::EmailTemplateMetadata.new
        type.template_name = params[:template_name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module EmailTemplateMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EmailTemplateMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Esps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestination, context: context)
        type = Types::EventDestination.new
        type.name = params[:name]
        type.enabled = params[:enabled]
        type.matching_event_types = EventTypes.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.cloud_watch_destination = CloudWatchDestination.build(params[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless params[:cloud_watch_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type.pinpoint_destination = PinpointDestination.build(params[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless params[:pinpoint_destination].nil?
        type
      end
    end

    module EventDestinationDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestinationDefinition, context: context)
        type = Types::EventDestinationDefinition.new
        type.enabled = params[:enabled]
        type.matching_event_types = EventTypes.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.cloud_watch_destination = CloudWatchDestination.build(params[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless params[:cloud_watch_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type.pinpoint_destination = PinpointDestination.build(params[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless params[:pinpoint_destination].nil?
        type
      end
    end

    module EventDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FailureInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureInfo, context: context)
        type = Types::FailureInfo.new
        type.failed_records_s3_url = params[:failed_records_s3_url]
        type.error_message = params[:error_message]
        type
      end
    end

    module GetAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountInput, context: context)
        type = Types::GetAccountInput.new
        type
      end
    end

    module GetAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountOutput, context: context)
        type = Types::GetAccountOutput.new
        type.dedicated_ip_auto_warmup_enabled = params[:dedicated_ip_auto_warmup_enabled]
        type.enforcement_status = params[:enforcement_status]
        type.production_access_enabled = params[:production_access_enabled]
        type.send_quota = SendQuota.build(params[:send_quota], context: "#{context}[:send_quota]") unless params[:send_quota].nil?
        type.sending_enabled = params[:sending_enabled]
        type.suppression_attributes = SuppressionAttributes.build(params[:suppression_attributes], context: "#{context}[:suppression_attributes]") unless params[:suppression_attributes].nil?
        type.details = AccountDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module GetBlacklistReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlacklistReportsInput, context: context)
        type = Types::GetBlacklistReportsInput.new
        type.blacklist_item_names = BlacklistItemNames.build(params[:blacklist_item_names], context: "#{context}[:blacklist_item_names]") unless params[:blacklist_item_names].nil?
        type
      end
    end

    module GetBlacklistReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlacklistReportsOutput, context: context)
        type = Types::GetBlacklistReportsOutput.new
        type.blacklist_report = BlacklistReport.build(params[:blacklist_report], context: "#{context}[:blacklist_report]") unless params[:blacklist_report].nil?
        type
      end
    end

    module GetConfigurationSetEventDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetEventDestinationsInput, context: context)
        type = Types::GetConfigurationSetEventDestinationsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module GetConfigurationSetEventDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetEventDestinationsOutput, context: context)
        type = Types::GetConfigurationSetEventDestinationsOutput.new
        type.event_destinations = EventDestinations.build(params[:event_destinations], context: "#{context}[:event_destinations]") unless params[:event_destinations].nil?
        type
      end
    end

    module GetConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetInput, context: context)
        type = Types::GetConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module GetConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetOutput, context: context)
        type = Types::GetConfigurationSetOutput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type.delivery_options = DeliveryOptions.build(params[:delivery_options], context: "#{context}[:delivery_options]") unless params[:delivery_options].nil?
        type.reputation_options = ReputationOptions.build(params[:reputation_options], context: "#{context}[:reputation_options]") unless params[:reputation_options].nil?
        type.sending_options = SendingOptions.build(params[:sending_options], context: "#{context}[:sending_options]") unless params[:sending_options].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.suppression_options = SuppressionOptions.build(params[:suppression_options], context: "#{context}[:suppression_options]") unless params[:suppression_options].nil?
        type
      end
    end

    module GetContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactInput, context: context)
        type = Types::GetContactInput.new
        type.contact_list_name = params[:contact_list_name]
        type.email_address = params[:email_address]
        type
      end
    end

    module GetContactListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactListInput, context: context)
        type = Types::GetContactListInput.new
        type.contact_list_name = params[:contact_list_name]
        type
      end
    end

    module GetContactListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactListOutput, context: context)
        type = Types::GetContactListOutput.new
        type.contact_list_name = params[:contact_list_name]
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.description = params[:description]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactOutput, context: context)
        type = Types::GetContactOutput.new
        type.contact_list_name = params[:contact_list_name]
        type.email_address = params[:email_address]
        type.topic_preferences = TopicPreferenceList.build(params[:topic_preferences], context: "#{context}[:topic_preferences]") unless params[:topic_preferences].nil?
        type.topic_default_preferences = TopicPreferenceList.build(params[:topic_default_preferences], context: "#{context}[:topic_default_preferences]") unless params[:topic_default_preferences].nil?
        type.unsubscribe_all = params[:unsubscribe_all]
        type.attributes_data = params[:attributes_data]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module GetCustomVerificationEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomVerificationEmailTemplateInput, context: context)
        type = Types::GetCustomVerificationEmailTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module GetCustomVerificationEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomVerificationEmailTemplateOutput, context: context)
        type = Types::GetCustomVerificationEmailTemplateOutput.new
        type.template_name = params[:template_name]
        type.from_email_address = params[:from_email_address]
        type.template_subject = params[:template_subject]
        type.template_content = params[:template_content]
        type.success_redirection_url = params[:success_redirection_url]
        type.failure_redirection_url = params[:failure_redirection_url]
        type
      end
    end

    module GetDedicatedIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpInput, context: context)
        type = Types::GetDedicatedIpInput.new
        type.ip = params[:ip]
        type
      end
    end

    module GetDedicatedIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpOutput, context: context)
        type = Types::GetDedicatedIpOutput.new
        type.dedicated_ip = DedicatedIp.build(params[:dedicated_ip], context: "#{context}[:dedicated_ip]") unless params[:dedicated_ip].nil?
        type
      end
    end

    module GetDedicatedIpsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpsInput, context: context)
        type = Types::GetDedicatedIpsInput.new
        type.pool_name = params[:pool_name]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module GetDedicatedIpsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpsOutput, context: context)
        type = Types::GetDedicatedIpsOutput.new
        type.dedicated_ips = DedicatedIpList.build(params[:dedicated_ips], context: "#{context}[:dedicated_ips]") unless params[:dedicated_ips].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDeliverabilityDashboardOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityDashboardOptionsInput, context: context)
        type = Types::GetDeliverabilityDashboardOptionsInput.new
        type
      end
    end

    module GetDeliverabilityDashboardOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityDashboardOptionsOutput, context: context)
        type = Types::GetDeliverabilityDashboardOptionsOutput.new
        type.dashboard_enabled = params[:dashboard_enabled]
        type.subscription_expiry_date = params[:subscription_expiry_date]
        type.account_status = params[:account_status]
        type.active_subscribed_domains = DomainDeliverabilityTrackingOptions.build(params[:active_subscribed_domains], context: "#{context}[:active_subscribed_domains]") unless params[:active_subscribed_domains].nil?
        type.pending_expiration_subscribed_domains = DomainDeliverabilityTrackingOptions.build(params[:pending_expiration_subscribed_domains], context: "#{context}[:pending_expiration_subscribed_domains]") unless params[:pending_expiration_subscribed_domains].nil?
        type
      end
    end

    module GetDeliverabilityTestReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityTestReportInput, context: context)
        type = Types::GetDeliverabilityTestReportInput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module GetDeliverabilityTestReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityTestReportOutput, context: context)
        type = Types::GetDeliverabilityTestReportOutput.new
        type.deliverability_test_report = DeliverabilityTestReport.build(params[:deliverability_test_report], context: "#{context}[:deliverability_test_report]") unless params[:deliverability_test_report].nil?
        type.overall_placement = PlacementStatistics.build(params[:overall_placement], context: "#{context}[:overall_placement]") unless params[:overall_placement].nil?
        type.isp_placements = IspPlacements.build(params[:isp_placements], context: "#{context}[:isp_placements]") unless params[:isp_placements].nil?
        type.message = params[:message]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDomainDeliverabilityCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainDeliverabilityCampaignInput, context: context)
        type = Types::GetDomainDeliverabilityCampaignInput.new
        type.campaign_id = params[:campaign_id]
        type
      end
    end

    module GetDomainDeliverabilityCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainDeliverabilityCampaignOutput, context: context)
        type = Types::GetDomainDeliverabilityCampaignOutput.new
        type.domain_deliverability_campaign = DomainDeliverabilityCampaign.build(params[:domain_deliverability_campaign], context: "#{context}[:domain_deliverability_campaign]") unless params[:domain_deliverability_campaign].nil?
        type
      end
    end

    module GetDomainStatisticsReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainStatisticsReportInput, context: context)
        type = Types::GetDomainStatisticsReportInput.new
        type.domain = params[:domain]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type
      end
    end

    module GetDomainStatisticsReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainStatisticsReportOutput, context: context)
        type = Types::GetDomainStatisticsReportOutput.new
        type.overall_volume = OverallVolume.build(params[:overall_volume], context: "#{context}[:overall_volume]") unless params[:overall_volume].nil?
        type.daily_volumes = DailyVolumes.build(params[:daily_volumes], context: "#{context}[:daily_volumes]") unless params[:daily_volumes].nil?
        type
      end
    end

    module GetEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailIdentityInput, context: context)
        type = Types::GetEmailIdentityInput.new
        type.email_identity = params[:email_identity]
        type
      end
    end

    module GetEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailIdentityOutput, context: context)
        type = Types::GetEmailIdentityOutput.new
        type.identity_type = params[:identity_type]
        type.feedback_forwarding_status = params[:feedback_forwarding_status]
        type.verified_for_sending_status = params[:verified_for_sending_status]
        type.dkim_attributes = DkimAttributes.build(params[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless params[:dkim_attributes].nil?
        type.mail_from_attributes = MailFromAttributes.build(params[:mail_from_attributes], context: "#{context}[:mail_from_attributes]") unless params[:mail_from_attributes].nil?
        type.policies = PolicyMap.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module GetEmailIdentityPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailIdentityPoliciesInput, context: context)
        type = Types::GetEmailIdentityPoliciesInput.new
        type.email_identity = params[:email_identity]
        type
      end
    end

    module GetEmailIdentityPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailIdentityPoliciesOutput, context: context)
        type = Types::GetEmailIdentityPoliciesOutput.new
        type.policies = PolicyMap.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module GetEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailTemplateInput, context: context)
        type = Types::GetEmailTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module GetEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailTemplateOutput, context: context)
        type = Types::GetEmailTemplateOutput.new
        type.template_name = params[:template_name]
        type.template_content = EmailTemplateContent.build(params[:template_content], context: "#{context}[:template_content]") unless params[:template_content].nil?
        type
      end
    end

    module GetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportJobInput, context: context)
        type = Types::GetImportJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportJobOutput, context: context)
        type = Types::GetImportJobOutput.new
        type.job_id = params[:job_id]
        type.import_destination = ImportDestination.build(params[:import_destination], context: "#{context}[:import_destination]") unless params[:import_destination].nil?
        type.import_data_source = ImportDataSource.build(params[:import_data_source], context: "#{context}[:import_data_source]") unless params[:import_data_source].nil?
        type.failure_info = FailureInfo.build(params[:failure_info], context: "#{context}[:failure_info]") unless params[:failure_info].nil?
        type.job_status = params[:job_status]
        type.created_timestamp = params[:created_timestamp]
        type.completed_timestamp = params[:completed_timestamp]
        type.processed_records_count = params[:processed_records_count]
        type.failed_records_count = params[:failed_records_count]
        type
      end
    end

    module GetSuppressedDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuppressedDestinationInput, context: context)
        type = Types::GetSuppressedDestinationInput.new
        type.email_address = params[:email_address]
        type
      end
    end

    module GetSuppressedDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuppressedDestinationOutput, context: context)
        type = Types::GetSuppressedDestinationOutput.new
        type.suppressed_destination = SuppressedDestination.build(params[:suppressed_destination], context: "#{context}[:suppressed_destination]") unless params[:suppressed_destination].nil?
        type
      end
    end

    module IdentityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityInfo, context: context)
        type = Types::IdentityInfo.new
        type.identity_type = params[:identity_type]
        type.identity_name = params[:identity_name]
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module IdentityInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportDataSource, context: context)
        type = Types::ImportDataSource.new
        type.s3_url = params[:s3_url]
        type.data_format = params[:data_format]
        type
      end
    end

    module ImportDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportDestination, context: context)
        type = Types::ImportDestination.new
        type.suppression_list_destination = SuppressionListDestination.build(params[:suppression_list_destination], context: "#{context}[:suppression_list_destination]") unless params[:suppression_list_destination].nil?
        type.contact_list_destination = ContactListDestination.build(params[:contact_list_destination], context: "#{context}[:contact_list_destination]") unless params[:contact_list_destination].nil?
        type
      end
    end

    module ImportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobSummary, context: context)
        type = Types::ImportJobSummary.new
        type.job_id = params[:job_id]
        type.import_destination = ImportDestination.build(params[:import_destination], context: "#{context}[:import_destination]") unless params[:import_destination].nil?
        type.job_status = params[:job_status]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module ImportJobSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InboxPlacementTrackingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InboxPlacementTrackingOption, context: context)
        type = Types::InboxPlacementTrackingOption.new
        type.global = params[:global]
        type.tracked_isps = IspNameList.build(params[:tracked_isps], context: "#{context}[:tracked_isps]") unless params[:tracked_isps].nil?
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module IpList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IspNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IspPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IspPlacement, context: context)
        type = Types::IspPlacement.new
        type.isp_name = params[:isp_name]
        type.placement_statistics = PlacementStatistics.build(params[:placement_statistics], context: "#{context}[:placement_statistics]") unless params[:placement_statistics].nil?
        type
      end
    end

    module IspPlacements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IspPlacement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KinesisFirehoseDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseDestination, context: context)
        type = Types::KinesisFirehoseDestination.new
        type.iam_role_arn = params[:iam_role_arn]
        type.delivery_stream_arn = params[:delivery_stream_arn]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListConfigurationSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsInput, context: context)
        type = Types::ListConfigurationSetsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListConfigurationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsOutput, context: context)
        type = Types::ListConfigurationSetsOutput.new
        type.configuration_sets = ConfigurationSetNameList.build(params[:configuration_sets], context: "#{context}[:configuration_sets]") unless params[:configuration_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactListsInput, context: context)
        type = Types::ListContactListsInput.new
        type.page_size = params[:page_size]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactListsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactListsOutput, context: context)
        type = Types::ListContactListsOutput.new
        type.contact_lists = ListOfContactLists.build(params[:contact_lists], context: "#{context}[:contact_lists]") unless params[:contact_lists].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsFilter, context: context)
        type = Types::ListContactsFilter.new
        type.filtered_status = params[:filtered_status]
        type.topic_filter = TopicFilter.build(params[:topic_filter], context: "#{context}[:topic_filter]") unless params[:topic_filter].nil?
        type
      end
    end

    module ListContactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsInput, context: context)
        type = Types::ListContactsInput.new
        type.contact_list_name = params[:contact_list_name]
        type.filter = ListContactsFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.page_size = params[:page_size]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContactsOutput, context: context)
        type = Types::ListContactsOutput.new
        type.contacts = ListOfContacts.build(params[:contacts], context: "#{context}[:contacts]") unless params[:contacts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomVerificationEmailTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomVerificationEmailTemplatesInput, context: context)
        type = Types::ListCustomVerificationEmailTemplatesInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListCustomVerificationEmailTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomVerificationEmailTemplatesOutput, context: context)
        type = Types::ListCustomVerificationEmailTemplatesOutput.new
        type.custom_verification_email_templates = CustomVerificationEmailTemplatesList.build(params[:custom_verification_email_templates], context: "#{context}[:custom_verification_email_templates]") unless params[:custom_verification_email_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDedicatedIpPoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDedicatedIpPoolsInput, context: context)
        type = Types::ListDedicatedIpPoolsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListDedicatedIpPoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDedicatedIpPoolsOutput, context: context)
        type = Types::ListDedicatedIpPoolsOutput.new
        type.dedicated_ip_pools = ListOfDedicatedIpPools.build(params[:dedicated_ip_pools], context: "#{context}[:dedicated_ip_pools]") unless params[:dedicated_ip_pools].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeliverabilityTestReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeliverabilityTestReportsInput, context: context)
        type = Types::ListDeliverabilityTestReportsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListDeliverabilityTestReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeliverabilityTestReportsOutput, context: context)
        type = Types::ListDeliverabilityTestReportsOutput.new
        type.deliverability_test_reports = DeliverabilityTestReports.build(params[:deliverability_test_reports], context: "#{context}[:deliverability_test_reports]") unless params[:deliverability_test_reports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainDeliverabilityCampaignsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainDeliverabilityCampaignsInput, context: context)
        type = Types::ListDomainDeliverabilityCampaignsInput.new
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.subscribed_domain = params[:subscribed_domain]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListDomainDeliverabilityCampaignsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainDeliverabilityCampaignsOutput, context: context)
        type = Types::ListDomainDeliverabilityCampaignsOutput.new
        type.domain_deliverability_campaigns = DomainDeliverabilityCampaignList.build(params[:domain_deliverability_campaigns], context: "#{context}[:domain_deliverability_campaigns]") unless params[:domain_deliverability_campaigns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEmailIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEmailIdentitiesInput, context: context)
        type = Types::ListEmailIdentitiesInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListEmailIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEmailIdentitiesOutput, context: context)
        type = Types::ListEmailIdentitiesOutput.new
        type.email_identities = IdentityInfoList.build(params[:email_identities], context: "#{context}[:email_identities]") unless params[:email_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEmailTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEmailTemplatesInput, context: context)
        type = Types::ListEmailTemplatesInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListEmailTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEmailTemplatesOutput, context: context)
        type = Types::ListEmailTemplatesOutput.new
        type.templates_metadata = EmailTemplateMetadataList.build(params[:templates_metadata], context: "#{context}[:templates_metadata]") unless params[:templates_metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportJobsInput, context: context)
        type = Types::ListImportJobsInput.new
        type.import_destination_type = params[:import_destination_type]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportJobsOutput, context: context)
        type = Types::ListImportJobsOutput.new
        type.import_jobs = ImportJobSummaryList.build(params[:import_jobs], context: "#{context}[:import_jobs]") unless params[:import_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagementOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagementOptions, context: context)
        type = Types::ListManagementOptions.new
        type.contact_list_name = params[:contact_list_name]
        type.topic_name = params[:topic_name]
        type
      end
    end

    module ListOfContactLists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfContacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Contact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDedicatedIpPools
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListSuppressedDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuppressedDestinationsInput, context: context)
        type = Types::ListSuppressedDestinationsInput.new
        type.reasons = SuppressionListReasons.build(params[:reasons], context: "#{context}[:reasons]") unless params[:reasons].nil?
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListSuppressedDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuppressedDestinationsOutput, context: context)
        type = Types::ListSuppressedDestinationsOutput.new
        type.suppressed_destination_summaries = SuppressedDestinationSummaries.build(params[:suppressed_destination_summaries], context: "#{context}[:suppressed_destination_summaries]") unless params[:suppressed_destination_summaries].nil?
        type.next_token = params[:next_token]
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MailFromAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailFromAttributes, context: context)
        type = Types::MailFromAttributes.new
        type.mail_from_domain = params[:mail_from_domain]
        type.mail_from_domain_status = params[:mail_from_domain_status]
        type.behavior_on_mx_failure = params[:behavior_on_mx_failure]
        type
      end
    end

    module MailFromDomainNotVerifiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailFromDomainNotVerifiedException, context: context)
        type = Types::MailFromDomainNotVerifiedException.new
        type.message = params[:message]
        type
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.subject = Content.build(params[:subject], context: "#{context}[:subject]") unless params[:subject].nil?
        type.body = Body.build(params[:body], context: "#{context}[:body]") unless params[:body].nil?
        type
      end
    end

    module MessageRejected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageRejected, context: context)
        type = Types::MessageRejected.new
        type.message = params[:message]
        type
      end
    end

    module MessageTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageTag, context: context)
        type = Types::MessageTag.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module MessageTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MessageTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OverallVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverallVolume, context: context)
        type = Types::OverallVolume.new
        type.volume_statistics = VolumeStatistics.build(params[:volume_statistics], context: "#{context}[:volume_statistics]") unless params[:volume_statistics].nil?
        type.read_rate_percent = params[:read_rate_percent]
        type.domain_isp_placements = DomainIspPlacements.build(params[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless params[:domain_isp_placements].nil?
        type
      end
    end

    module PinpointDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PinpointDestination, context: context)
        type = Types::PinpointDestination.new
        type.application_arn = params[:application_arn]
        type
      end
    end

    module PlacementStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementStatistics, context: context)
        type = Types::PlacementStatistics.new
        type.inbox_percentage = params[:inbox_percentage]
        type.spam_percentage = params[:spam_percentage]
        type.missing_percentage = params[:missing_percentage]
        type.spf_percentage = params[:spf_percentage]
        type.dkim_percentage = params[:dkim_percentage]
        type
      end
    end

    module PolicyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PutAccountDedicatedIpWarmupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountDedicatedIpWarmupAttributesInput, context: context)
        type = Types::PutAccountDedicatedIpWarmupAttributesInput.new
        type.auto_warmup_enabled = params[:auto_warmup_enabled]
        type
      end
    end

    module PutAccountDedicatedIpWarmupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountDedicatedIpWarmupAttributesOutput, context: context)
        type = Types::PutAccountDedicatedIpWarmupAttributesOutput.new
        type
      end
    end

    module PutAccountDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountDetailsInput, context: context)
        type = Types::PutAccountDetailsInput.new
        type.mail_type = params[:mail_type]
        type.website_url = params[:website_url]
        type.contact_language = params[:contact_language]
        type.use_case_description = params[:use_case_description]
        type.additional_contact_email_addresses = AdditionalContactEmailAddresses.build(params[:additional_contact_email_addresses], context: "#{context}[:additional_contact_email_addresses]") unless params[:additional_contact_email_addresses].nil?
        type.production_access_enabled = params[:production_access_enabled]
        type
      end
    end

    module PutAccountDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountDetailsOutput, context: context)
        type = Types::PutAccountDetailsOutput.new
        type
      end
    end

    module PutAccountSendingAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSendingAttributesInput, context: context)
        type = Types::PutAccountSendingAttributesInput.new
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module PutAccountSendingAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSendingAttributesOutput, context: context)
        type = Types::PutAccountSendingAttributesOutput.new
        type
      end
    end

    module PutAccountSuppressionAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSuppressionAttributesInput, context: context)
        type = Types::PutAccountSuppressionAttributesInput.new
        type.suppressed_reasons = SuppressionListReasons.build(params[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless params[:suppressed_reasons].nil?
        type
      end
    end

    module PutAccountSuppressionAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSuppressionAttributesOutput, context: context)
        type = Types::PutAccountSuppressionAttributesOutput.new
        type
      end
    end

    module PutConfigurationSetDeliveryOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetDeliveryOptionsInput, context: context)
        type = Types::PutConfigurationSetDeliveryOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tls_policy = params[:tls_policy]
        type.sending_pool_name = params[:sending_pool_name]
        type
      end
    end

    module PutConfigurationSetDeliveryOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetDeliveryOptionsOutput, context: context)
        type = Types::PutConfigurationSetDeliveryOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetReputationOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetReputationOptionsInput, context: context)
        type = Types::PutConfigurationSetReputationOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.reputation_metrics_enabled = params[:reputation_metrics_enabled]
        type
      end
    end

    module PutConfigurationSetReputationOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetReputationOptionsOutput, context: context)
        type = Types::PutConfigurationSetReputationOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetSendingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetSendingOptionsInput, context: context)
        type = Types::PutConfigurationSetSendingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module PutConfigurationSetSendingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetSendingOptionsOutput, context: context)
        type = Types::PutConfigurationSetSendingOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetSuppressionOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetSuppressionOptionsInput, context: context)
        type = Types::PutConfigurationSetSuppressionOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.suppressed_reasons = SuppressionListReasons.build(params[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless params[:suppressed_reasons].nil?
        type
      end
    end

    module PutConfigurationSetSuppressionOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetSuppressionOptionsOutput, context: context)
        type = Types::PutConfigurationSetSuppressionOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetTrackingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetTrackingOptionsInput, context: context)
        type = Types::PutConfigurationSetTrackingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.custom_redirect_domain = params[:custom_redirect_domain]
        type
      end
    end

    module PutConfigurationSetTrackingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetTrackingOptionsOutput, context: context)
        type = Types::PutConfigurationSetTrackingOptionsOutput.new
        type
      end
    end

    module PutDedicatedIpInPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpInPoolInput, context: context)
        type = Types::PutDedicatedIpInPoolInput.new
        type.ip = params[:ip]
        type.destination_pool_name = params[:destination_pool_name]
        type
      end
    end

    module PutDedicatedIpInPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpInPoolOutput, context: context)
        type = Types::PutDedicatedIpInPoolOutput.new
        type
      end
    end

    module PutDedicatedIpWarmupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpWarmupAttributesInput, context: context)
        type = Types::PutDedicatedIpWarmupAttributesInput.new
        type.ip = params[:ip]
        type.warmup_percentage = params[:warmup_percentage]
        type
      end
    end

    module PutDedicatedIpWarmupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpWarmupAttributesOutput, context: context)
        type = Types::PutDedicatedIpWarmupAttributesOutput.new
        type
      end
    end

    module PutDeliverabilityDashboardOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDeliverabilityDashboardOptionInput, context: context)
        type = Types::PutDeliverabilityDashboardOptionInput.new
        type.dashboard_enabled = params[:dashboard_enabled]
        type.subscribed_domains = DomainDeliverabilityTrackingOptions.build(params[:subscribed_domains], context: "#{context}[:subscribed_domains]") unless params[:subscribed_domains].nil?
        type
      end
    end

    module PutDeliverabilityDashboardOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDeliverabilityDashboardOptionOutput, context: context)
        type = Types::PutDeliverabilityDashboardOptionOutput.new
        type
      end
    end

    module PutEmailIdentityConfigurationSetAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityConfigurationSetAttributesInput, context: context)
        type = Types::PutEmailIdentityConfigurationSetAttributesInput.new
        type.email_identity = params[:email_identity]
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module PutEmailIdentityConfigurationSetAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityConfigurationSetAttributesOutput, context: context)
        type = Types::PutEmailIdentityConfigurationSetAttributesOutput.new
        type
      end
    end

    module PutEmailIdentityDkimAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityDkimAttributesInput, context: context)
        type = Types::PutEmailIdentityDkimAttributesInput.new
        type.email_identity = params[:email_identity]
        type.signing_enabled = params[:signing_enabled]
        type
      end
    end

    module PutEmailIdentityDkimAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityDkimAttributesOutput, context: context)
        type = Types::PutEmailIdentityDkimAttributesOutput.new
        type
      end
    end

    module PutEmailIdentityDkimSigningAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityDkimSigningAttributesInput, context: context)
        type = Types::PutEmailIdentityDkimSigningAttributesInput.new
        type.email_identity = params[:email_identity]
        type.signing_attributes_origin = params[:signing_attributes_origin]
        type.signing_attributes = DkimSigningAttributes.build(params[:signing_attributes], context: "#{context}[:signing_attributes]") unless params[:signing_attributes].nil?
        type
      end
    end

    module PutEmailIdentityDkimSigningAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityDkimSigningAttributesOutput, context: context)
        type = Types::PutEmailIdentityDkimSigningAttributesOutput.new
        type.dkim_status = params[:dkim_status]
        type.dkim_tokens = DnsTokenList.build(params[:dkim_tokens], context: "#{context}[:dkim_tokens]") unless params[:dkim_tokens].nil?
        type
      end
    end

    module PutEmailIdentityFeedbackAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityFeedbackAttributesInput, context: context)
        type = Types::PutEmailIdentityFeedbackAttributesInput.new
        type.email_identity = params[:email_identity]
        type.email_forwarding_enabled = params[:email_forwarding_enabled]
        type
      end
    end

    module PutEmailIdentityFeedbackAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityFeedbackAttributesOutput, context: context)
        type = Types::PutEmailIdentityFeedbackAttributesOutput.new
        type
      end
    end

    module PutEmailIdentityMailFromAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityMailFromAttributesInput, context: context)
        type = Types::PutEmailIdentityMailFromAttributesInput.new
        type.email_identity = params[:email_identity]
        type.mail_from_domain = params[:mail_from_domain]
        type.behavior_on_mx_failure = params[:behavior_on_mx_failure]
        type
      end
    end

    module PutEmailIdentityMailFromAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityMailFromAttributesOutput, context: context)
        type = Types::PutEmailIdentityMailFromAttributesOutput.new
        type
      end
    end

    module PutSuppressedDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSuppressedDestinationInput, context: context)
        type = Types::PutSuppressedDestinationInput.new
        type.email_address = params[:email_address]
        type.reason = params[:reason]
        type
      end
    end

    module PutSuppressedDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSuppressedDestinationOutput, context: context)
        type = Types::PutSuppressedDestinationOutput.new
        type
      end
    end

    module RawMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RawMessage, context: context)
        type = Types::RawMessage.new
        type.data = params[:data]
        type
      end
    end

    module ReplacementEmailContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplacementEmailContent, context: context)
        type = Types::ReplacementEmailContent.new
        type.replacement_template = ReplacementTemplate.build(params[:replacement_template], context: "#{context}[:replacement_template]") unless params[:replacement_template].nil?
        type
      end
    end

    module ReplacementTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplacementTemplate, context: context)
        type = Types::ReplacementTemplate.new
        type.replacement_template_data = params[:replacement_template_data]
        type
      end
    end

    module ReputationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReputationOptions, context: context)
        type = Types::ReputationOptions.new
        type.reputation_metrics_enabled = params[:reputation_metrics_enabled]
        type.last_fresh_start = params[:last_fresh_start]
        type
      end
    end

    module ReviewDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReviewDetails, context: context)
        type = Types::ReviewDetails.new
        type.status = params[:status]
        type.case_id = params[:case_id]
        type
      end
    end

    module SendBulkEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBulkEmailInput, context: context)
        type = Types::SendBulkEmailInput.new
        type.from_email_address = params[:from_email_address]
        type.from_email_address_identity_arn = params[:from_email_address_identity_arn]
        type.reply_to_addresses = EmailAddressList.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.feedback_forwarding_email_address = params[:feedback_forwarding_email_address]
        type.feedback_forwarding_email_address_identity_arn = params[:feedback_forwarding_email_address_identity_arn]
        type.default_email_tags = MessageTagList.build(params[:default_email_tags], context: "#{context}[:default_email_tags]") unless params[:default_email_tags].nil?
        type.default_content = BulkEmailContent.build(params[:default_content], context: "#{context}[:default_content]") unless params[:default_content].nil?
        type.bulk_email_entries = BulkEmailEntryList.build(params[:bulk_email_entries], context: "#{context}[:bulk_email_entries]") unless params[:bulk_email_entries].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module SendBulkEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBulkEmailOutput, context: context)
        type = Types::SendBulkEmailOutput.new
        type.bulk_email_entry_results = BulkEmailEntryResultList.build(params[:bulk_email_entry_results], context: "#{context}[:bulk_email_entry_results]") unless params[:bulk_email_entry_results].nil?
        type
      end
    end

    module SendCustomVerificationEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendCustomVerificationEmailInput, context: context)
        type = Types::SendCustomVerificationEmailInput.new
        type.email_address = params[:email_address]
        type.template_name = params[:template_name]
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module SendCustomVerificationEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendCustomVerificationEmailOutput, context: context)
        type = Types::SendCustomVerificationEmailOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEmailInput, context: context)
        type = Types::SendEmailInput.new
        type.from_email_address = params[:from_email_address]
        type.from_email_address_identity_arn = params[:from_email_address_identity_arn]
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.reply_to_addresses = EmailAddressList.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.feedback_forwarding_email_address = params[:feedback_forwarding_email_address]
        type.feedback_forwarding_email_address_identity_arn = params[:feedback_forwarding_email_address_identity_arn]
        type.content = EmailContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.email_tags = MessageTagList.build(params[:email_tags], context: "#{context}[:email_tags]") unless params[:email_tags].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type.list_management_options = ListManagementOptions.build(params[:list_management_options], context: "#{context}[:list_management_options]") unless params[:list_management_options].nil?
        type
      end
    end

    module SendEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEmailOutput, context: context)
        type = Types::SendEmailOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendQuota, context: context)
        type = Types::SendQuota.new
        type.max24_hour_send = params[:max24_hour_send]
        type.max_send_rate = params[:max_send_rate]
        type.sent_last24_hours = params[:sent_last24_hours]
        type
      end
    end

    module SendingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendingOptions, context: context)
        type = Types::SendingOptions.new
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module SendingPausedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendingPausedException, context: context)
        type = Types::SendingPausedException.new
        type.message = params[:message]
        type
      end
    end

    module SnsDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnsDestination, context: context)
        type = Types::SnsDestination.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module SuppressedDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuppressedDestination, context: context)
        type = Types::SuppressedDestination.new
        type.email_address = params[:email_address]
        type.reason = params[:reason]
        type.last_update_time = params[:last_update_time]
        type.attributes = SuppressedDestinationAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SuppressedDestinationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuppressedDestinationAttributes, context: context)
        type = Types::SuppressedDestinationAttributes.new
        type.message_id = params[:message_id]
        type.feedback_id = params[:feedback_id]
        type
      end
    end

    module SuppressedDestinationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuppressedDestinationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SuppressedDestinationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuppressedDestinationSummary, context: context)
        type = Types::SuppressedDestinationSummary.new
        type.email_address = params[:email_address]
        type.reason = params[:reason]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module SuppressionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuppressionAttributes, context: context)
        type = Types::SuppressionAttributes.new
        type.suppressed_reasons = SuppressionListReasons.build(params[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless params[:suppressed_reasons].nil?
        type
      end
    end

    module SuppressionListDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuppressionListDestination, context: context)
        type = Types::SuppressionListDestination.new
        type.suppression_list_import_action = params[:suppression_list_import_action]
        type
      end
    end

    module SuppressionListReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SuppressionOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuppressionOptions, context: context)
        type = Types::SuppressionOptions.new
        type.suppressed_reasons = SuppressionListReasons.build(params[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless params[:suppressed_reasons].nil?
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Template
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Template, context: context)
        type = Types::Template.new
        type.template_name = params[:template_name]
        type.template_arn = params[:template_arn]
        type.template_data = params[:template_data]
        type
      end
    end

    module TestRenderEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRenderEmailTemplateInput, context: context)
        type = Types::TestRenderEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.template_data = params[:template_data]
        type
      end
    end

    module TestRenderEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRenderEmailTemplateOutput, context: context)
        type = Types::TestRenderEmailTemplateOutput.new
        type.rendered_template = params[:rendered_template]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module Topic
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Topic, context: context)
        type = Types::Topic.new
        type.topic_name = params[:topic_name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.default_subscription_status = params[:default_subscription_status]
        type
      end
    end

    module TopicFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicFilter, context: context)
        type = Types::TopicFilter.new
        type.topic_name = params[:topic_name]
        type.use_default_if_preference_unavailable = params[:use_default_if_preference_unavailable]
        type
      end
    end

    module TopicPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicPreference, context: context)
        type = Types::TopicPreference.new
        type.topic_name = params[:topic_name]
        type.subscription_status = params[:subscription_status]
        type
      end
    end

    module TopicPreferenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TopicPreference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Topics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Topic.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrackingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackingOptions, context: context)
        type = Types::TrackingOptions.new
        type.custom_redirect_domain = params[:custom_redirect_domain]
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

    module UpdateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.event_destination = EventDestinationDefinition.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module UpdateConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module UpdateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactInput, context: context)
        type = Types::UpdateContactInput.new
        type.contact_list_name = params[:contact_list_name]
        type.email_address = params[:email_address]
        type.topic_preferences = TopicPreferenceList.build(params[:topic_preferences], context: "#{context}[:topic_preferences]") unless params[:topic_preferences].nil?
        type.unsubscribe_all = params[:unsubscribe_all]
        type.attributes_data = params[:attributes_data]
        type
      end
    end

    module UpdateContactListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactListInput, context: context)
        type = Types::UpdateContactListInput.new
        type.contact_list_name = params[:contact_list_name]
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.description = params[:description]
        type
      end
    end

    module UpdateContactListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactListOutput, context: context)
        type = Types::UpdateContactListOutput.new
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

    module UpdateCustomVerificationEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomVerificationEmailTemplateInput, context: context)
        type = Types::UpdateCustomVerificationEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.from_email_address = params[:from_email_address]
        type.template_subject = params[:template_subject]
        type.template_content = params[:template_content]
        type.success_redirection_url = params[:success_redirection_url]
        type.failure_redirection_url = params[:failure_redirection_url]
        type
      end
    end

    module UpdateCustomVerificationEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomVerificationEmailTemplateOutput, context: context)
        type = Types::UpdateCustomVerificationEmailTemplateOutput.new
        type
      end
    end

    module UpdateEmailIdentityPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailIdentityPolicyInput, context: context)
        type = Types::UpdateEmailIdentityPolicyInput.new
        type.email_identity = params[:email_identity]
        type.policy_name = params[:policy_name]
        type.policy = params[:policy]
        type
      end
    end

    module UpdateEmailIdentityPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailIdentityPolicyOutput, context: context)
        type = Types::UpdateEmailIdentityPolicyOutput.new
        type
      end
    end

    module UpdateEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailTemplateInput, context: context)
        type = Types::UpdateEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.template_content = EmailTemplateContent.build(params[:template_content], context: "#{context}[:template_content]") unless params[:template_content].nil?
        type
      end
    end

    module UpdateEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailTemplateOutput, context: context)
        type = Types::UpdateEmailTemplateOutput.new
        type
      end
    end

    module VolumeStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeStatistics, context: context)
        type = Types::VolumeStatistics.new
        type.inbox_raw_count = params[:inbox_raw_count]
        type.spam_raw_count = params[:spam_raw_count]
        type.projected_inbox = params[:projected_inbox]
        type.projected_spam = params[:projected_spam]
        type
      end
    end

  end
end
