# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SESv2
  module Validators

    class AccountDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountDetails, context: context)
        Hearth::Validator.validate!(input[:mail_type], ::String, context: "#{context}[:mail_type]")
        Hearth::Validator.validate!(input[:website_url], ::String, context: "#{context}[:website_url]")
        Hearth::Validator.validate!(input[:contact_language], ::String, context: "#{context}[:contact_language]")
        Hearth::Validator.validate!(input[:use_case_description], ::String, context: "#{context}[:use_case_description]")
        Validators::AdditionalContactEmailAddresses.validate!(input[:additional_contact_email_addresses], context: "#{context}[:additional_contact_email_addresses]") unless input[:additional_contact_email_addresses].nil?
        Validators::ReviewDetails.validate!(input[:review_details], context: "#{context}[:review_details]") unless input[:review_details].nil?
      end
    end

    class AccountSuspendedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSuspendedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AdditionalContactEmailAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BlacklistEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BlacklistEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BlacklistEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlacklistEntry, context: context)
        Hearth::Validator.validate!(input[:rbl_name], ::String, context: "#{context}[:rbl_name]")
        Hearth::Validator.validate!(input[:listing_time], ::Time, context: "#{context}[:listing_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class BlacklistItemNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BlacklistReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::BlacklistEntries.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Body
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Body, context: context)
        Validators::Content.validate!(input[:text], context: "#{context}[:text]") unless input[:text].nil?
        Validators::Content.validate!(input[:html], context: "#{context}[:html]") unless input[:html].nil?
      end
    end

    class BulkEmailContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkEmailContent, context: context)
        Validators::Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
      end
    end

    class BulkEmailEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkEmailEntry, context: context)
        Validators::Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Validators::MessageTagList.validate!(input[:replacement_tags], context: "#{context}[:replacement_tags]") unless input[:replacement_tags].nil?
        Validators::ReplacementEmailContent.validate!(input[:replacement_email_content], context: "#{context}[:replacement_email_content]") unless input[:replacement_email_content].nil?
      end
    end

    class BulkEmailEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BulkEmailEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BulkEmailEntryResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkEmailEntryResult, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class BulkEmailEntryResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BulkEmailEntryResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchDestination, context: context)
        Validators::CloudWatchDimensionConfigurations.validate!(input[:dimension_configurations], context: "#{context}[:dimension_configurations]") unless input[:dimension_configurations].nil?
      end
    end

    class CloudWatchDimensionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchDimensionConfiguration, context: context)
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:dimension_value_source], ::String, context: "#{context}[:dimension_value_source]")
        Hearth::Validator.validate!(input[:default_dimension_value], ::String, context: "#{context}[:default_dimension_value]")
      end
    end

    class CloudWatchDimensionConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchDimensionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationSetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Contact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Contact, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Validators::TopicPreferenceList.validate!(input[:topic_preferences], context: "#{context}[:topic_preferences]") unless input[:topic_preferences].nil?
        Validators::TopicPreferenceList.validate!(input[:topic_default_preferences], context: "#{context}[:topic_default_preferences]") unless input[:topic_default_preferences].nil?
        Hearth::Validator.validate!(input[:unsubscribe_all], ::TrueClass, ::FalseClass, context: "#{context}[:unsubscribe_all]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ContactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactList, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ContactListDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactListDestination, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:contact_list_import_action], ::String, context: "#{context}[:contact_list_import_action]")
      end
    end

    class Content
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Content, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:charset], ::String, context: "#{context}[:charset]")
      end
    end

    class CreateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Validators::EventDestinationDefinition.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class CreateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class CreateConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
        Validators::DeliveryOptions.validate!(input[:delivery_options], context: "#{context}[:delivery_options]") unless input[:delivery_options].nil?
        Validators::ReputationOptions.validate!(input[:reputation_options], context: "#{context}[:reputation_options]") unless input[:reputation_options].nil?
        Validators::SendingOptions.validate!(input[:sending_options], context: "#{context}[:sending_options]") unless input[:sending_options].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::SuppressionOptions.validate!(input[:suppression_options], context: "#{context}[:suppression_options]") unless input[:suppression_options].nil?
      end
    end

    class CreateConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetOutput, context: context)
      end
    end

    class CreateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Validators::TopicPreferenceList.validate!(input[:topic_preferences], context: "#{context}[:topic_preferences]") unless input[:topic_preferences].nil?
        Hearth::Validator.validate!(input[:unsubscribe_all], ::TrueClass, ::FalseClass, context: "#{context}[:unsubscribe_all]")
        Hearth::Validator.validate!(input[:attributes_data], ::String, context: "#{context}[:attributes_data]")
      end
    end

    class CreateContactListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactListInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateContactListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactListOutput, context: context)
      end
    end

    class CreateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactOutput, context: context)
      end
    end

    class CreateCustomVerificationEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomVerificationEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:template_subject], ::String, context: "#{context}[:template_subject]")
        Hearth::Validator.validate!(input[:template_content], ::String, context: "#{context}[:template_content]")
        Hearth::Validator.validate!(input[:success_redirection_url], ::String, context: "#{context}[:success_redirection_url]")
        Hearth::Validator.validate!(input[:failure_redirection_url], ::String, context: "#{context}[:failure_redirection_url]")
      end
    end

    class CreateCustomVerificationEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomVerificationEmailTemplateOutput, context: context)
      end
    end

    class CreateDedicatedIpPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDedicatedIpPoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDedicatedIpPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDedicatedIpPoolOutput, context: context)
      end
    end

    class CreateDeliverabilityTestReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeliverabilityTestReportInput, context: context)
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Validators::EmailContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeliverabilityTestReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeliverabilityTestReportOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:deliverability_test_status], ::String, context: "#{context}[:deliverability_test_status]")
      end
    end

    class CreateEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::DkimSigningAttributes.validate!(input[:dkim_signing_attributes], context: "#{context}[:dkim_signing_attributes]") unless input[:dkim_signing_attributes].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class CreateEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:verified_for_sending_status], ::TrueClass, ::FalseClass, context: "#{context}[:verified_for_sending_status]")
        Validators::DkimAttributes.validate!(input[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless input[:dkim_attributes].nil?
      end
    end

    class CreateEmailIdentityPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailIdentityPolicyInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class CreateEmailIdentityPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailIdentityPolicyOutput, context: context)
      end
    end

    class CreateEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Validators::EmailTemplateContent.validate!(input[:template_content], context: "#{context}[:template_content]") unless input[:template_content].nil?
      end
    end

    class CreateEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailTemplateOutput, context: context)
      end
    end

    class CreateImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImportJobInput, context: context)
        Validators::ImportDestination.validate!(input[:import_destination], context: "#{context}[:import_destination]") unless input[:import_destination].nil?
        Validators::ImportDataSource.validate!(input[:import_data_source], context: "#{context}[:import_data_source]") unless input[:import_data_source].nil?
      end
    end

    class CreateImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CustomVerificationEmailTemplateMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVerificationEmailTemplateMetadata, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:template_subject], ::String, context: "#{context}[:template_subject]")
        Hearth::Validator.validate!(input[:success_redirection_url], ::String, context: "#{context}[:success_redirection_url]")
        Hearth::Validator.validate!(input[:failure_redirection_url], ::String, context: "#{context}[:failure_redirection_url]")
      end
    end

    class CustomVerificationEmailTemplatesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomVerificationEmailTemplateMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DailyVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DailyVolume, context: context)
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Validators::VolumeStatistics.validate!(input[:volume_statistics], context: "#{context}[:volume_statistics]") unless input[:volume_statistics].nil?
        Validators::DomainIspPlacements.validate!(input[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless input[:domain_isp_placements].nil?
      end
    end

    class DailyVolumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DailyVolume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DedicatedIp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DedicatedIp, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:warmup_status], ::String, context: "#{context}[:warmup_status]")
        Hearth::Validator.validate!(input[:warmup_percentage], ::Integer, context: "#{context}[:warmup_percentage]")
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
      end
    end

    class DedicatedIpList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DedicatedIp.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
      end
    end

    class DeleteConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class DeleteConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class DeleteConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetOutput, context: context)
      end
    end

    class DeleteContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class DeleteContactListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactListInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
      end
    end

    class DeleteContactListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactListOutput, context: context)
      end
    end

    class DeleteContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactOutput, context: context)
      end
    end

    class DeleteCustomVerificationEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomVerificationEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class DeleteCustomVerificationEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomVerificationEmailTemplateOutput, context: context)
      end
    end

    class DeleteDedicatedIpPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDedicatedIpPoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
      end
    end

    class DeleteDedicatedIpPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDedicatedIpPoolOutput, context: context)
      end
    end

    class DeleteEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
      end
    end

    class DeleteEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailIdentityOutput, context: context)
      end
    end

    class DeleteEmailIdentityPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailIdentityPolicyInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteEmailIdentityPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailIdentityPolicyOutput, context: context)
      end
    end

    class DeleteEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class DeleteEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailTemplateOutput, context: context)
      end
    end

    class DeleteSuppressedDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSuppressedDestinationInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class DeleteSuppressedDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSuppressedDestinationOutput, context: context)
      end
    end

    class DeliverabilityTestReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliverabilityTestReport, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:deliverability_test_status], ::String, context: "#{context}[:deliverability_test_status]")
      end
    end

    class DeliverabilityTestReports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeliverabilityTestReport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeliveryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryOptions, context: context)
        Hearth::Validator.validate!(input[:tls_policy], ::String, context: "#{context}[:tls_policy]")
        Hearth::Validator.validate!(input[:sending_pool_name], ::String, context: "#{context}[:sending_pool_name]")
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Validators::EmailAddressList.validate!(input[:to_addresses], context: "#{context}[:to_addresses]") unless input[:to_addresses].nil?
        Validators::EmailAddressList.validate!(input[:cc_addresses], context: "#{context}[:cc_addresses]") unless input[:cc_addresses].nil?
        Validators::EmailAddressList.validate!(input[:bcc_addresses], context: "#{context}[:bcc_addresses]") unless input[:bcc_addresses].nil?
      end
    end

    class DkimAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DkimAttributes, context: context)
        Hearth::Validator.validate!(input[:signing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:signing_enabled]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DnsTokenList.validate!(input[:tokens], context: "#{context}[:tokens]") unless input[:tokens].nil?
        Hearth::Validator.validate!(input[:signing_attributes_origin], ::String, context: "#{context}[:signing_attributes_origin]")
        Hearth::Validator.validate!(input[:next_signing_key_length], ::String, context: "#{context}[:next_signing_key_length]")
        Hearth::Validator.validate!(input[:current_signing_key_length], ::String, context: "#{context}[:current_signing_key_length]")
        Hearth::Validator.validate!(input[:last_key_generation_timestamp], ::Time, context: "#{context}[:last_key_generation_timestamp]")
      end
    end

    class DkimSigningAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DkimSigningAttributes, context: context)
        Hearth::Validator.validate!(input[:domain_signing_selector], ::String, context: "#{context}[:domain_signing_selector]")
        Hearth::Validator.validate!(input[:domain_signing_private_key], ::String, context: "#{context}[:domain_signing_private_key]")
        Hearth::Validator.validate!(input[:next_signing_key_length], ::String, context: "#{context}[:next_signing_key_length]")
      end
    end

    class DnsTokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainDeliverabilityCampaign
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDeliverabilityCampaign, context: context)
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
        Validators::IpList.validate!(input[:sending_ips], context: "#{context}[:sending_ips]") unless input[:sending_ips].nil?
        Hearth::Validator.validate!(input[:first_seen_date_time], ::Time, context: "#{context}[:first_seen_date_time]")
        Hearth::Validator.validate!(input[:last_seen_date_time], ::Time, context: "#{context}[:last_seen_date_time]")
        Hearth::Validator.validate!(input[:inbox_count], ::Integer, context: "#{context}[:inbox_count]")
        Hearth::Validator.validate!(input[:spam_count], ::Integer, context: "#{context}[:spam_count]")
        Hearth::Validator.validate!(input[:read_rate], ::Float, context: "#{context}[:read_rate]")
        Hearth::Validator.validate!(input[:delete_rate], ::Float, context: "#{context}[:delete_rate]")
        Hearth::Validator.validate!(input[:read_delete_rate], ::Float, context: "#{context}[:read_delete_rate]")
        Hearth::Validator.validate!(input[:projected_volume], ::Integer, context: "#{context}[:projected_volume]")
        Validators::Esps.validate!(input[:esps], context: "#{context}[:esps]") unless input[:esps].nil?
      end
    end

    class DomainDeliverabilityCampaignList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainDeliverabilityCampaign.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainDeliverabilityTrackingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDeliverabilityTrackingOption, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:subscription_start_date], ::Time, context: "#{context}[:subscription_start_date]")
        Validators::InboxPlacementTrackingOption.validate!(input[:inbox_placement_tracking_option], context: "#{context}[:inbox_placement_tracking_option]") unless input[:inbox_placement_tracking_option].nil?
      end
    end

    class DomainDeliverabilityTrackingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainDeliverabilityTrackingOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainIspPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainIspPlacement, context: context)
        Hearth::Validator.validate!(input[:isp_name], ::String, context: "#{context}[:isp_name]")
        Hearth::Validator.validate!(input[:inbox_raw_count], ::Integer, context: "#{context}[:inbox_raw_count]")
        Hearth::Validator.validate!(input[:spam_raw_count], ::Integer, context: "#{context}[:spam_raw_count]")
        Hearth::Validator.validate!(input[:inbox_percentage], ::Float, context: "#{context}[:inbox_percentage]")
        Hearth::Validator.validate!(input[:spam_percentage], ::Float, context: "#{context}[:spam_percentage]")
      end
    end

    class DomainIspPlacements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainIspPlacement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EmailAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EmailContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailContent, context: context)
        Validators::Message.validate!(input[:simple], context: "#{context}[:simple]") unless input[:simple].nil?
        Validators::RawMessage.validate!(input[:raw], context: "#{context}[:raw]") unless input[:raw].nil?
        Validators::Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
      end
    end

    class EmailTemplateContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailTemplateContent, context: context)
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:html], ::String, context: "#{context}[:html]")
      end
    end

    class EmailTemplateMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailTemplateMetadata, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class EmailTemplateMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EmailTemplateMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Esps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestination, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        Validators::KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        Validators::CloudWatchDestination.validate!(input[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless input[:cloud_watch_destination].nil?
        Validators::SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
        Validators::PinpointDestination.validate!(input[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless input[:pinpoint_destination].nil?
      end
    end

    class EventDestinationDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestinationDefinition, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        Validators::KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        Validators::CloudWatchDestination.validate!(input[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless input[:cloud_watch_destination].nil?
        Validators::SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
        Validators::PinpointDestination.validate!(input[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless input[:pinpoint_destination].nil?
      end
    end

    class EventDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FailureInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureInfo, context: context)
        Hearth::Validator.validate!(input[:failed_records_s3_url], ::String, context: "#{context}[:failed_records_s3_url]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class GetAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountInput, context: context)
      end
    end

    class GetAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountOutput, context: context)
        Hearth::Validator.validate!(input[:dedicated_ip_auto_warmup_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dedicated_ip_auto_warmup_enabled]")
        Hearth::Validator.validate!(input[:enforcement_status], ::String, context: "#{context}[:enforcement_status]")
        Hearth::Validator.validate!(input[:production_access_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:production_access_enabled]")
        Validators::SendQuota.validate!(input[:send_quota], context: "#{context}[:send_quota]") unless input[:send_quota].nil?
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
        Validators::SuppressionAttributes.validate!(input[:suppression_attributes], context: "#{context}[:suppression_attributes]") unless input[:suppression_attributes].nil?
        Validators::AccountDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class GetBlacklistReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlacklistReportsInput, context: context)
        Validators::BlacklistItemNames.validate!(input[:blacklist_item_names], context: "#{context}[:blacklist_item_names]") unless input[:blacklist_item_names].nil?
      end
    end

    class GetBlacklistReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlacklistReportsOutput, context: context)
        Validators::BlacklistReport.validate!(input[:blacklist_report], context: "#{context}[:blacklist_report]") unless input[:blacklist_report].nil?
      end
    end

    class GetConfigurationSetEventDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetEventDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class GetConfigurationSetEventDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetEventDestinationsOutput, context: context)
        Validators::EventDestinations.validate!(input[:event_destinations], context: "#{context}[:event_destinations]") unless input[:event_destinations].nil?
      end
    end

    class GetConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class GetConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
        Validators::DeliveryOptions.validate!(input[:delivery_options], context: "#{context}[:delivery_options]") unless input[:delivery_options].nil?
        Validators::ReputationOptions.validate!(input[:reputation_options], context: "#{context}[:reputation_options]") unless input[:reputation_options].nil?
        Validators::SendingOptions.validate!(input[:sending_options], context: "#{context}[:sending_options]") unless input[:sending_options].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::SuppressionOptions.validate!(input[:suppression_options], context: "#{context}[:suppression_options]") unless input[:suppression_options].nil?
      end
    end

    class GetContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class GetContactListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactListInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
      end
    end

    class GetContactListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactListOutput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Validators::TopicPreferenceList.validate!(input[:topic_preferences], context: "#{context}[:topic_preferences]") unless input[:topic_preferences].nil?
        Validators::TopicPreferenceList.validate!(input[:topic_default_preferences], context: "#{context}[:topic_default_preferences]") unless input[:topic_default_preferences].nil?
        Hearth::Validator.validate!(input[:unsubscribe_all], ::TrueClass, ::FalseClass, context: "#{context}[:unsubscribe_all]")
        Hearth::Validator.validate!(input[:attributes_data], ::String, context: "#{context}[:attributes_data]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class GetCustomVerificationEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomVerificationEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class GetCustomVerificationEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomVerificationEmailTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:template_subject], ::String, context: "#{context}[:template_subject]")
        Hearth::Validator.validate!(input[:template_content], ::String, context: "#{context}[:template_content]")
        Hearth::Validator.validate!(input[:success_redirection_url], ::String, context: "#{context}[:success_redirection_url]")
        Hearth::Validator.validate!(input[:failure_redirection_url], ::String, context: "#{context}[:failure_redirection_url]")
      end
    end

    class GetDedicatedIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpInput, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
      end
    end

    class GetDedicatedIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpOutput, context: context)
        Validators::DedicatedIp.validate!(input[:dedicated_ip], context: "#{context}[:dedicated_ip]") unless input[:dedicated_ip].nil?
      end
    end

    class GetDedicatedIpsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpsInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class GetDedicatedIpsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpsOutput, context: context)
        Validators::DedicatedIpList.validate!(input[:dedicated_ips], context: "#{context}[:dedicated_ips]") unless input[:dedicated_ips].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDeliverabilityDashboardOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityDashboardOptionsInput, context: context)
      end
    end

    class GetDeliverabilityDashboardOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityDashboardOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dashboard_enabled]")
        Hearth::Validator.validate!(input[:subscription_expiry_date], ::Time, context: "#{context}[:subscription_expiry_date]")
        Hearth::Validator.validate!(input[:account_status], ::String, context: "#{context}[:account_status]")
        Validators::DomainDeliverabilityTrackingOptions.validate!(input[:active_subscribed_domains], context: "#{context}[:active_subscribed_domains]") unless input[:active_subscribed_domains].nil?
        Validators::DomainDeliverabilityTrackingOptions.validate!(input[:pending_expiration_subscribed_domains], context: "#{context}[:pending_expiration_subscribed_domains]") unless input[:pending_expiration_subscribed_domains].nil?
      end
    end

    class GetDeliverabilityTestReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityTestReportInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class GetDeliverabilityTestReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityTestReportOutput, context: context)
        Validators::DeliverabilityTestReport.validate!(input[:deliverability_test_report], context: "#{context}[:deliverability_test_report]") unless input[:deliverability_test_report].nil?
        Validators::PlacementStatistics.validate!(input[:overall_placement], context: "#{context}[:overall_placement]") unless input[:overall_placement].nil?
        Validators::IspPlacements.validate!(input[:isp_placements], context: "#{context}[:isp_placements]") unless input[:isp_placements].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDomainDeliverabilityCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainDeliverabilityCampaignInput, context: context)
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
      end
    end

    class GetDomainDeliverabilityCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainDeliverabilityCampaignOutput, context: context)
        Validators::DomainDeliverabilityCampaign.validate!(input[:domain_deliverability_campaign], context: "#{context}[:domain_deliverability_campaign]") unless input[:domain_deliverability_campaign].nil?
      end
    end

    class GetDomainStatisticsReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainStatisticsReportInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
      end
    end

    class GetDomainStatisticsReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainStatisticsReportOutput, context: context)
        Validators::OverallVolume.validate!(input[:overall_volume], context: "#{context}[:overall_volume]") unless input[:overall_volume].nil?
        Validators::DailyVolumes.validate!(input[:daily_volumes], context: "#{context}[:daily_volumes]") unless input[:daily_volumes].nil?
      end
    end

    class GetEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
      end
    end

    class GetEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:feedback_forwarding_status], ::TrueClass, ::FalseClass, context: "#{context}[:feedback_forwarding_status]")
        Hearth::Validator.validate!(input[:verified_for_sending_status], ::TrueClass, ::FalseClass, context: "#{context}[:verified_for_sending_status]")
        Validators::DkimAttributes.validate!(input[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless input[:dkim_attributes].nil?
        Validators::MailFromAttributes.validate!(input[:mail_from_attributes], context: "#{context}[:mail_from_attributes]") unless input[:mail_from_attributes].nil?
        Validators::PolicyMap.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class GetEmailIdentityPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailIdentityPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
      end
    end

    class GetEmailIdentityPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailIdentityPoliciesOutput, context: context)
        Validators::PolicyMap.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class GetEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class GetEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Validators::EmailTemplateContent.validate!(input[:template_content], context: "#{context}[:template_content]") unless input[:template_content].nil?
      end
    end

    class GetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Validators::ImportDestination.validate!(input[:import_destination], context: "#{context}[:import_destination]") unless input[:import_destination].nil?
        Validators::ImportDataSource.validate!(input[:import_data_source], context: "#{context}[:import_data_source]") unless input[:import_data_source].nil?
        Validators::FailureInfo.validate!(input[:failure_info], context: "#{context}[:failure_info]") unless input[:failure_info].nil?
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:completed_timestamp], ::Time, context: "#{context}[:completed_timestamp]")
        Hearth::Validator.validate!(input[:processed_records_count], ::Integer, context: "#{context}[:processed_records_count]")
        Hearth::Validator.validate!(input[:failed_records_count], ::Integer, context: "#{context}[:failed_records_count]")
      end
    end

    class GetSuppressedDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuppressedDestinationInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class GetSuppressedDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuppressedDestinationOutput, context: context)
        Validators::SuppressedDestination.validate!(input[:suppressed_destination], context: "#{context}[:suppressed_destination]") unless input[:suppressed_destination].nil?
      end
    end

    class IdentityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityInfo, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class IdentityInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IdentityInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportDataSource, context: context)
        Hearth::Validator.validate!(input[:s3_url], ::String, context: "#{context}[:s3_url]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
      end
    end

    class ImportDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportDestination, context: context)
        Validators::SuppressionListDestination.validate!(input[:suppression_list_destination], context: "#{context}[:suppression_list_destination]") unless input[:suppression_list_destination].nil?
        Validators::ContactListDestination.validate!(input[:contact_list_destination], context: "#{context}[:contact_list_destination]") unless input[:contact_list_destination].nil?
      end
    end

    class ImportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobSummary, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Validators::ImportDestination.validate!(input[:import_destination], context: "#{context}[:import_destination]") unless input[:import_destination].nil?
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class ImportJobSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InboxPlacementTrackingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InboxPlacementTrackingOption, context: context)
        Hearth::Validator.validate!(input[:global], ::TrueClass, ::FalseClass, context: "#{context}[:global]")
        Validators::IspNameList.validate!(input[:tracked_isps], context: "#{context}[:tracked_isps]") unless input[:tracked_isps].nil?
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IpList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IspNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IspPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IspPlacement, context: context)
        Hearth::Validator.validate!(input[:isp_name], ::String, context: "#{context}[:isp_name]")
        Validators::PlacementStatistics.validate!(input[:placement_statistics], context: "#{context}[:placement_statistics]") unless input[:placement_statistics].nil?
      end
    end

    class IspPlacements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IspPlacement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KinesisFirehoseDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseDestination, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListConfigurationSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListConfigurationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsOutput, context: context)
        Validators::ConfigurationSetNameList.validate!(input[:configuration_sets], context: "#{context}[:configuration_sets]") unless input[:configuration_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactListsInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactListsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactListsOutput, context: context)
        Validators::ListOfContactLists.validate!(input[:contact_lists], context: "#{context}[:contact_lists]") unless input[:contact_lists].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsFilter, context: context)
        Hearth::Validator.validate!(input[:filtered_status], ::String, context: "#{context}[:filtered_status]")
        Validators::TopicFilter.validate!(input[:topic_filter], context: "#{context}[:topic_filter]") unless input[:topic_filter].nil?
      end
    end

    class ListContactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Validators::ListContactsFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContactsOutput, context: context)
        Validators::ListOfContacts.validate!(input[:contacts], context: "#{context}[:contacts]") unless input[:contacts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomVerificationEmailTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomVerificationEmailTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListCustomVerificationEmailTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomVerificationEmailTemplatesOutput, context: context)
        Validators::CustomVerificationEmailTemplatesList.validate!(input[:custom_verification_email_templates], context: "#{context}[:custom_verification_email_templates]") unless input[:custom_verification_email_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDedicatedIpPoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDedicatedIpPoolsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListDedicatedIpPoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDedicatedIpPoolsOutput, context: context)
        Validators::ListOfDedicatedIpPools.validate!(input[:dedicated_ip_pools], context: "#{context}[:dedicated_ip_pools]") unless input[:dedicated_ip_pools].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeliverabilityTestReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeliverabilityTestReportsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListDeliverabilityTestReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeliverabilityTestReportsOutput, context: context)
        Validators::DeliverabilityTestReports.validate!(input[:deliverability_test_reports], context: "#{context}[:deliverability_test_reports]") unless input[:deliverability_test_reports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainDeliverabilityCampaignsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainDeliverabilityCampaignsInput, context: context)
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:subscribed_domain], ::String, context: "#{context}[:subscribed_domain]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListDomainDeliverabilityCampaignsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainDeliverabilityCampaignsOutput, context: context)
        Validators::DomainDeliverabilityCampaignList.validate!(input[:domain_deliverability_campaigns], context: "#{context}[:domain_deliverability_campaigns]") unless input[:domain_deliverability_campaigns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEmailIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEmailIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListEmailIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEmailIdentitiesOutput, context: context)
        Validators::IdentityInfoList.validate!(input[:email_identities], context: "#{context}[:email_identities]") unless input[:email_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEmailTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEmailTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListEmailTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEmailTemplatesOutput, context: context)
        Validators::EmailTemplateMetadataList.validate!(input[:templates_metadata], context: "#{context}[:templates_metadata]") unless input[:templates_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:import_destination_type], ::String, context: "#{context}[:import_destination_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportJobsOutput, context: context)
        Validators::ImportJobSummaryList.validate!(input[:import_jobs], context: "#{context}[:import_jobs]") unless input[:import_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagementOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagementOptions, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
      end
    end

    class ListOfContactLists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ContactList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfContacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Contact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDedicatedIpPools
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListSuppressedDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuppressedDestinationsInput, context: context)
        Validators::SuppressionListReasons.validate!(input[:reasons], context: "#{context}[:reasons]") unless input[:reasons].nil?
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListSuppressedDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuppressedDestinationsOutput, context: context)
        Validators::SuppressedDestinationSummaries.validate!(input[:suppressed_destination_summaries], context: "#{context}[:suppressed_destination_summaries]") unless input[:suppressed_destination_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MailFromAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailFromAttributes, context: context)
        Hearth::Validator.validate!(input[:mail_from_domain], ::String, context: "#{context}[:mail_from_domain]")
        Hearth::Validator.validate!(input[:mail_from_domain_status], ::String, context: "#{context}[:mail_from_domain_status]")
        Hearth::Validator.validate!(input[:behavior_on_mx_failure], ::String, context: "#{context}[:behavior_on_mx_failure]")
      end
    end

    class MailFromDomainNotVerifiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailFromDomainNotVerifiedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Validators::Content.validate!(input[:subject], context: "#{context}[:subject]") unless input[:subject].nil?
        Validators::Body.validate!(input[:body], context: "#{context}[:body]") unless input[:body].nil?
      end
    end

    class MessageRejected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageRejected, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MessageTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageTag, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class MessageTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MessageTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OverallVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverallVolume, context: context)
        Validators::VolumeStatistics.validate!(input[:volume_statistics], context: "#{context}[:volume_statistics]") unless input[:volume_statistics].nil?
        Hearth::Validator.validate!(input[:read_rate_percent], ::Float, context: "#{context}[:read_rate_percent]")
        Validators::DomainIspPlacements.validate!(input[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless input[:domain_isp_placements].nil?
      end
    end

    class PinpointDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PinpointDestination, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
      end
    end

    class PlacementStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementStatistics, context: context)
        Hearth::Validator.validate!(input[:inbox_percentage], ::Float, context: "#{context}[:inbox_percentage]")
        Hearth::Validator.validate!(input[:spam_percentage], ::Float, context: "#{context}[:spam_percentage]")
        Hearth::Validator.validate!(input[:missing_percentage], ::Float, context: "#{context}[:missing_percentage]")
        Hearth::Validator.validate!(input[:spf_percentage], ::Float, context: "#{context}[:spf_percentage]")
        Hearth::Validator.validate!(input[:dkim_percentage], ::Float, context: "#{context}[:dkim_percentage]")
      end
    end

    class PolicyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PutAccountDedicatedIpWarmupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountDedicatedIpWarmupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:auto_warmup_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_warmup_enabled]")
      end
    end

    class PutAccountDedicatedIpWarmupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountDedicatedIpWarmupAttributesOutput, context: context)
      end
    end

    class PutAccountDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountDetailsInput, context: context)
        Hearth::Validator.validate!(input[:mail_type], ::String, context: "#{context}[:mail_type]")
        Hearth::Validator.validate!(input[:website_url], ::String, context: "#{context}[:website_url]")
        Hearth::Validator.validate!(input[:contact_language], ::String, context: "#{context}[:contact_language]")
        Hearth::Validator.validate!(input[:use_case_description], ::String, context: "#{context}[:use_case_description]")
        Validators::AdditionalContactEmailAddresses.validate!(input[:additional_contact_email_addresses], context: "#{context}[:additional_contact_email_addresses]") unless input[:additional_contact_email_addresses].nil?
        Hearth::Validator.validate!(input[:production_access_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:production_access_enabled]")
      end
    end

    class PutAccountDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountDetailsOutput, context: context)
      end
    end

    class PutAccountSendingAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSendingAttributesInput, context: context)
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class PutAccountSendingAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSendingAttributesOutput, context: context)
      end
    end

    class PutAccountSuppressionAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSuppressionAttributesInput, context: context)
        Validators::SuppressionListReasons.validate!(input[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless input[:suppressed_reasons].nil?
      end
    end

    class PutAccountSuppressionAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSuppressionAttributesOutput, context: context)
      end
    end

    class PutConfigurationSetDeliveryOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetDeliveryOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:tls_policy], ::String, context: "#{context}[:tls_policy]")
        Hearth::Validator.validate!(input[:sending_pool_name], ::String, context: "#{context}[:sending_pool_name]")
      end
    end

    class PutConfigurationSetDeliveryOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetDeliveryOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetReputationOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetReputationOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:reputation_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:reputation_metrics_enabled]")
      end
    end

    class PutConfigurationSetReputationOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetReputationOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetSendingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetSendingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class PutConfigurationSetSendingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetSendingOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetSuppressionOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetSuppressionOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::SuppressionListReasons.validate!(input[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless input[:suppressed_reasons].nil?
      end
    end

    class PutConfigurationSetSuppressionOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetSuppressionOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetTrackingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetTrackingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:custom_redirect_domain], ::String, context: "#{context}[:custom_redirect_domain]")
      end
    end

    class PutConfigurationSetTrackingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetTrackingOptionsOutput, context: context)
      end
    end

    class PutDedicatedIpInPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpInPoolInput, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:destination_pool_name], ::String, context: "#{context}[:destination_pool_name]")
      end
    end

    class PutDedicatedIpInPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpInPoolOutput, context: context)
      end
    end

    class PutDedicatedIpWarmupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpWarmupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:warmup_percentage], ::Integer, context: "#{context}[:warmup_percentage]")
      end
    end

    class PutDedicatedIpWarmupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpWarmupAttributesOutput, context: context)
      end
    end

    class PutDeliverabilityDashboardOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDeliverabilityDashboardOptionInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dashboard_enabled]")
        Validators::DomainDeliverabilityTrackingOptions.validate!(input[:subscribed_domains], context: "#{context}[:subscribed_domains]") unless input[:subscribed_domains].nil?
      end
    end

    class PutDeliverabilityDashboardOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDeliverabilityDashboardOptionOutput, context: context)
      end
    end

    class PutEmailIdentityConfigurationSetAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityConfigurationSetAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class PutEmailIdentityConfigurationSetAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityConfigurationSetAttributesOutput, context: context)
      end
    end

    class PutEmailIdentityDkimAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityDkimAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:signing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:signing_enabled]")
      end
    end

    class PutEmailIdentityDkimAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityDkimAttributesOutput, context: context)
      end
    end

    class PutEmailIdentityDkimSigningAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityDkimSigningAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:signing_attributes_origin], ::String, context: "#{context}[:signing_attributes_origin]")
        Validators::DkimSigningAttributes.validate!(input[:signing_attributes], context: "#{context}[:signing_attributes]") unless input[:signing_attributes].nil?
      end
    end

    class PutEmailIdentityDkimSigningAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityDkimSigningAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:dkim_status], ::String, context: "#{context}[:dkim_status]")
        Validators::DnsTokenList.validate!(input[:dkim_tokens], context: "#{context}[:dkim_tokens]") unless input[:dkim_tokens].nil?
      end
    end

    class PutEmailIdentityFeedbackAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityFeedbackAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:email_forwarding_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:email_forwarding_enabled]")
      end
    end

    class PutEmailIdentityFeedbackAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityFeedbackAttributesOutput, context: context)
      end
    end

    class PutEmailIdentityMailFromAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityMailFromAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:mail_from_domain], ::String, context: "#{context}[:mail_from_domain]")
        Hearth::Validator.validate!(input[:behavior_on_mx_failure], ::String, context: "#{context}[:behavior_on_mx_failure]")
      end
    end

    class PutEmailIdentityMailFromAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityMailFromAttributesOutput, context: context)
      end
    end

    class PutSuppressedDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSuppressedDestinationInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class PutSuppressedDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSuppressedDestinationOutput, context: context)
      end
    end

    class RawMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawMessage, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class ReplacementEmailContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplacementEmailContent, context: context)
        Validators::ReplacementTemplate.validate!(input[:replacement_template], context: "#{context}[:replacement_template]") unless input[:replacement_template].nil?
      end
    end

    class ReplacementTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplacementTemplate, context: context)
        Hearth::Validator.validate!(input[:replacement_template_data], ::String, context: "#{context}[:replacement_template_data]")
      end
    end

    class ReputationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReputationOptions, context: context)
        Hearth::Validator.validate!(input[:reputation_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:reputation_metrics_enabled]")
        Hearth::Validator.validate!(input[:last_fresh_start], ::Time, context: "#{context}[:last_fresh_start]")
      end
    end

    class ReviewDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReviewDetails, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
      end
    end

    class SendBulkEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBulkEmailInput, context: context)
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:from_email_address_identity_arn], ::String, context: "#{context}[:from_email_address_identity_arn]")
        Validators::EmailAddressList.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Hearth::Validator.validate!(input[:feedback_forwarding_email_address], ::String, context: "#{context}[:feedback_forwarding_email_address]")
        Hearth::Validator.validate!(input[:feedback_forwarding_email_address_identity_arn], ::String, context: "#{context}[:feedback_forwarding_email_address_identity_arn]")
        Validators::MessageTagList.validate!(input[:default_email_tags], context: "#{context}[:default_email_tags]") unless input[:default_email_tags].nil?
        Validators::BulkEmailContent.validate!(input[:default_content], context: "#{context}[:default_content]") unless input[:default_content].nil?
        Validators::BulkEmailEntryList.validate!(input[:bulk_email_entries], context: "#{context}[:bulk_email_entries]") unless input[:bulk_email_entries].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class SendBulkEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBulkEmailOutput, context: context)
        Validators::BulkEmailEntryResultList.validate!(input[:bulk_email_entry_results], context: "#{context}[:bulk_email_entry_results]") unless input[:bulk_email_entry_results].nil?
      end
    end

    class SendCustomVerificationEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendCustomVerificationEmailInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class SendCustomVerificationEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendCustomVerificationEmailOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEmailInput, context: context)
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:from_email_address_identity_arn], ::String, context: "#{context}[:from_email_address_identity_arn]")
        Validators::Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Validators::EmailAddressList.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Hearth::Validator.validate!(input[:feedback_forwarding_email_address], ::String, context: "#{context}[:feedback_forwarding_email_address]")
        Hearth::Validator.validate!(input[:feedback_forwarding_email_address_identity_arn], ::String, context: "#{context}[:feedback_forwarding_email_address_identity_arn]")
        Validators::EmailContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::MessageTagList.validate!(input[:email_tags], context: "#{context}[:email_tags]") unless input[:email_tags].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::ListManagementOptions.validate!(input[:list_management_options], context: "#{context}[:list_management_options]") unless input[:list_management_options].nil?
      end
    end

    class SendEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEmailOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendQuota, context: context)
        Hearth::Validator.validate!(input[:max24_hour_send], ::Float, context: "#{context}[:max24_hour_send]")
        Hearth::Validator.validate!(input[:max_send_rate], ::Float, context: "#{context}[:max_send_rate]")
        Hearth::Validator.validate!(input[:sent_last24_hours], ::Float, context: "#{context}[:sent_last24_hours]")
      end
    end

    class SendingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendingOptions, context: context)
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class SendingPausedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendingPausedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsDestination, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class SuppressedDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuppressedDestination, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::SuppressedDestinationAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SuppressedDestinationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuppressedDestinationAttributes, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:feedback_id], ::String, context: "#{context}[:feedback_id]")
      end
    end

    class SuppressedDestinationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SuppressedDestinationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SuppressedDestinationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuppressedDestinationSummary, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class SuppressionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuppressionAttributes, context: context)
        Validators::SuppressionListReasons.validate!(input[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless input[:suppressed_reasons].nil?
      end
    end

    class SuppressionListDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuppressionListDestination, context: context)
        Hearth::Validator.validate!(input[:suppression_list_import_action], ::String, context: "#{context}[:suppression_list_import_action]")
      end
    end

    class SuppressionListReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SuppressionOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuppressionOptions, context: context)
        Validators::SuppressionListReasons.validate!(input[:suppressed_reasons], context: "#{context}[:suppressed_reasons]") unless input[:suppressed_reasons].nil?
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Template
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Template, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_data], ::String, context: "#{context}[:template_data]")
      end
    end

    class TestRenderEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRenderEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_data], ::String, context: "#{context}[:template_data]")
      end
    end

    class TestRenderEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRenderEmailTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:rendered_template], ::String, context: "#{context}[:rendered_template]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Topic
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Topic, context: context)
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_subscription_status], ::String, context: "#{context}[:default_subscription_status]")
      end
    end

    class TopicFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicFilter, context: context)
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
        Hearth::Validator.validate!(input[:use_default_if_preference_unavailable], ::TrueClass, ::FalseClass, context: "#{context}[:use_default_if_preference_unavailable]")
      end
    end

    class TopicPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicPreference, context: context)
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
        Hearth::Validator.validate!(input[:subscription_status], ::String, context: "#{context}[:subscription_status]")
      end
    end

    class TopicPreferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TopicPreference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Topics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Topic.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrackingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackingOptions, context: context)
        Hearth::Validator.validate!(input[:custom_redirect_domain], ::String, context: "#{context}[:custom_redirect_domain]")
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

    class UpdateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Validators::EventDestinationDefinition.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class UpdateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class UpdateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Validators::TopicPreferenceList.validate!(input[:topic_preferences], context: "#{context}[:topic_preferences]") unless input[:topic_preferences].nil?
        Hearth::Validator.validate!(input[:unsubscribe_all], ::TrueClass, ::FalseClass, context: "#{context}[:unsubscribe_all]")
        Hearth::Validator.validate!(input[:attributes_data], ::String, context: "#{context}[:attributes_data]")
      end
    end

    class UpdateContactListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactListInput, context: context)
        Hearth::Validator.validate!(input[:contact_list_name], ::String, context: "#{context}[:contact_list_name]")
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateContactListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactListOutput, context: context)
      end
    end

    class UpdateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactOutput, context: context)
      end
    end

    class UpdateCustomVerificationEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomVerificationEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:template_subject], ::String, context: "#{context}[:template_subject]")
        Hearth::Validator.validate!(input[:template_content], ::String, context: "#{context}[:template_content]")
        Hearth::Validator.validate!(input[:success_redirection_url], ::String, context: "#{context}[:success_redirection_url]")
        Hearth::Validator.validate!(input[:failure_redirection_url], ::String, context: "#{context}[:failure_redirection_url]")
      end
    end

    class UpdateCustomVerificationEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomVerificationEmailTemplateOutput, context: context)
      end
    end

    class UpdateEmailIdentityPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailIdentityPolicyInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class UpdateEmailIdentityPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailIdentityPolicyOutput, context: context)
      end
    end

    class UpdateEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Validators::EmailTemplateContent.validate!(input[:template_content], context: "#{context}[:template_content]") unless input[:template_content].nil?
      end
    end

    class UpdateEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailTemplateOutput, context: context)
      end
    end

    class VolumeStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeStatistics, context: context)
        Hearth::Validator.validate!(input[:inbox_raw_count], ::Integer, context: "#{context}[:inbox_raw_count]")
        Hearth::Validator.validate!(input[:spam_raw_count], ::Integer, context: "#{context}[:spam_raw_count]")
        Hearth::Validator.validate!(input[:projected_inbox], ::Integer, context: "#{context}[:projected_inbox]")
        Hearth::Validator.validate!(input[:projected_spam], ::Integer, context: "#{context}[:projected_spam]")
      end
    end

  end
end
