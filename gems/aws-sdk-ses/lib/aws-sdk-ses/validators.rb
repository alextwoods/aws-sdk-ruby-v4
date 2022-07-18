# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::SES
  module Validators

    class AccountSendingPausedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSendingPausedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddHeaderAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddHeaderAction, context: context)
        Hearth::Validator.validate!(input[:header_name], ::String, context: "#{context}[:header_name]")
        Hearth::Validator.validate!(input[:header_value], ::String, context: "#{context}[:header_value]")
      end
    end

    class AddressList
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
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Body
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Body, context: context)
        Content.validate!(input[:text], context: "#{context}[:text]") unless input[:text].nil?
        Content.validate!(input[:html], context: "#{context}[:html]") unless input[:html].nil?
      end
    end

    class BounceAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BounceAction, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:smtp_reply_code], ::String, context: "#{context}[:smtp_reply_code]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:sender], ::String, context: "#{context}[:sender]")
      end
    end

    class BouncedRecipientInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BouncedRecipientInfo, context: context)
        Hearth::Validator.validate!(input[:recipient], ::String, context: "#{context}[:recipient]")
        Hearth::Validator.validate!(input[:recipient_arn], ::String, context: "#{context}[:recipient_arn]")
        Hearth::Validator.validate!(input[:bounce_type], ::String, context: "#{context}[:bounce_type]")
        RecipientDsnFields.validate!(input[:recipient_dsn_fields], context: "#{context}[:recipient_dsn_fields]") unless input[:recipient_dsn_fields].nil?
      end
    end

    class BouncedRecipientInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BouncedRecipientInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BulkEmailDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkEmailDestination, context: context)
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        MessageTagList.validate!(input[:replacement_tags], context: "#{context}[:replacement_tags]") unless input[:replacement_tags].nil?
        Hearth::Validator.validate!(input[:replacement_template_data], ::String, context: "#{context}[:replacement_template_data]")
      end
    end

    class BulkEmailDestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BulkEmailDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BulkEmailDestinationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkEmailDestinationStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class BulkEmailDestinationStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BulkEmailDestinationStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CannotDeleteException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CannotDeleteException, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloneReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloneReceiptRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:original_rule_set_name], ::String, context: "#{context}[:original_rule_set_name]")
      end
    end

    class CloneReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloneReceiptRuleSetOutput, context: context)
      end
    end

    class CloudWatchDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchDestination, context: context)
        CloudWatchDimensionConfigurations.validate!(input[:dimension_configurations], context: "#{context}[:dimension_configurations]") unless input[:dimension_configurations].nil?
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
          CloudWatchDimensionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ConfigurationSetAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSetAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationSetAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigurationSetDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSetDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationSetSendingPausedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSetSendingPausedException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        EventDestination.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
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
        ConfigurationSet.validate!(input[:configuration_set], context: "#{context}[:configuration_set]") unless input[:configuration_set].nil?
      end
    end

    class CreateConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetOutput, context: context)
      end
    end

    class CreateConfigurationSetTrackingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetTrackingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
      end
    end

    class CreateConfigurationSetTrackingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetTrackingOptionsOutput, context: context)
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

    class CreateReceiptFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReceiptFilterInput, context: context)
        ReceiptFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class CreateReceiptFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReceiptFilterOutput, context: context)
      end
    end

    class CreateReceiptRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReceiptRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:after], ::String, context: "#{context}[:after]")
        ReceiptRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class CreateReceiptRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReceiptRuleOutput, context: context)
      end
    end

    class CreateReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReceiptRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
      end
    end

    class CreateReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReceiptRuleSetOutput, context: context)
      end
    end

    class CreateTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateInput, context: context)
        Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
      end
    end

    class CreateTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateOutput, context: context)
      end
    end

    class CustomVerificationEmailInvalidContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVerificationEmailInvalidContentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomVerificationEmailTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVerificationEmailTemplate, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:template_subject], ::String, context: "#{context}[:template_subject]")
        Hearth::Validator.validate!(input[:success_redirection_url], ::String, context: "#{context}[:success_redirection_url]")
        Hearth::Validator.validate!(input[:failure_redirection_url], ::String, context: "#{context}[:failure_redirection_url]")
      end
    end

    class CustomVerificationEmailTemplateAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVerificationEmailTemplateAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:custom_verification_email_template_name], ::String, context: "#{context}[:custom_verification_email_template_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomVerificationEmailTemplateDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomVerificationEmailTemplateDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:custom_verification_email_template_name], ::String, context: "#{context}[:custom_verification_email_template_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomVerificationEmailTemplates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomVerificationEmailTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class DeleteConfigurationSetTrackingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetTrackingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class DeleteConfigurationSetTrackingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetTrackingOptionsOutput, context: context)
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

    class DeleteIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
      end
    end

    class DeleteIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityOutput, context: context)
      end
    end

    class DeleteIdentityPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityPolicyInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeleteIdentityPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityPolicyOutput, context: context)
      end
    end

    class DeleteReceiptFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReceiptFilterInput, context: context)
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
      end
    end

    class DeleteReceiptFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReceiptFilterOutput, context: context)
      end
    end

    class DeleteReceiptRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReceiptRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class DeleteReceiptRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReceiptRuleOutput, context: context)
      end
    end

    class DeleteReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReceiptRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
      end
    end

    class DeleteReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReceiptRuleSetOutput, context: context)
      end
    end

    class DeleteTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class DeleteTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateOutput, context: context)
      end
    end

    class DeleteVerifiedEmailAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVerifiedEmailAddressInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class DeleteVerifiedEmailAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVerifiedEmailAddressOutput, context: context)
      end
    end

    class DeliveryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryOptions, context: context)
        Hearth::Validator.validate!(input[:tls_policy], ::String, context: "#{context}[:tls_policy]")
      end
    end

    class DescribeActiveReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActiveReceiptRuleSetInput, context: context)
      end
    end

    class DescribeActiveReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActiveReceiptRuleSetOutput, context: context)
        ReceiptRuleSetMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        ReceiptRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class DescribeConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        ConfigurationSetAttributeList.validate!(input[:configuration_set_attribute_names], context: "#{context}[:configuration_set_attribute_names]") unless input[:configuration_set_attribute_names].nil?
      end
    end

    class DescribeConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationSetOutput, context: context)
        ConfigurationSet.validate!(input[:configuration_set], context: "#{context}[:configuration_set]") unless input[:configuration_set].nil?
        EventDestinations.validate!(input[:event_destinations], context: "#{context}[:event_destinations]") unless input[:event_destinations].nil?
        TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
        DeliveryOptions.validate!(input[:delivery_options], context: "#{context}[:delivery_options]") unless input[:delivery_options].nil?
        ReputationOptions.validate!(input[:reputation_options], context: "#{context}[:reputation_options]") unless input[:reputation_options].nil?
      end
    end

    class DescribeReceiptRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReceiptRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class DescribeReceiptRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReceiptRuleOutput, context: context)
        ReceiptRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class DescribeReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReceiptRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
      end
    end

    class DescribeReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReceiptRuleSetOutput, context: context)
        ReceiptRuleSetMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        ReceiptRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        AddressList.validate!(input[:to_addresses], context: "#{context}[:to_addresses]") unless input[:to_addresses].nil?
        AddressList.validate!(input[:cc_addresses], context: "#{context}[:cc_addresses]") unless input[:cc_addresses].nil?
        AddressList.validate!(input[:bcc_addresses], context: "#{context}[:bcc_addresses]") unless input[:bcc_addresses].nil?
      end
    end

    class DkimAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          IdentityDkimAttributes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class EventDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestination, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        CloudWatchDestination.validate!(input[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless input[:cloud_watch_destination].nil?
        SNSDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
      end
    end

    class EventDestinationAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestinationAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDestinationDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestinationDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class ExtensionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtensionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ExtensionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExtensionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FromEmailAddressNotVerifiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FromEmailAddressNotVerifiedException, context: context)
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetAccountSendingEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSendingEnabledInput, context: context)
      end
    end

    class GetAccountSendingEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSendingEnabledOutput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
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

    class GetIdentityDkimAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityDkimAttributesInput, context: context)
        IdentityList.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
      end
    end

    class GetIdentityDkimAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityDkimAttributesOutput, context: context)
        DkimAttributes.validate!(input[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless input[:dkim_attributes].nil?
      end
    end

    class GetIdentityMailFromDomainAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityMailFromDomainAttributesInput, context: context)
        IdentityList.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
      end
    end

    class GetIdentityMailFromDomainAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityMailFromDomainAttributesOutput, context: context)
        MailFromDomainAttributes.validate!(input[:mail_from_domain_attributes], context: "#{context}[:mail_from_domain_attributes]") unless input[:mail_from_domain_attributes].nil?
      end
    end

    class GetIdentityNotificationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityNotificationAttributesInput, context: context)
        IdentityList.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
      end
    end

    class GetIdentityNotificationAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityNotificationAttributesOutput, context: context)
        NotificationAttributes.validate!(input[:notification_attributes], context: "#{context}[:notification_attributes]") unless input[:notification_attributes].nil?
      end
    end

    class GetIdentityPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        PolicyNameList.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class GetIdentityPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityPoliciesOutput, context: context)
        PolicyMap.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class GetIdentityVerificationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityVerificationAttributesInput, context: context)
        IdentityList.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
      end
    end

    class GetIdentityVerificationAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityVerificationAttributesOutput, context: context)
        VerificationAttributes.validate!(input[:verification_attributes], context: "#{context}[:verification_attributes]") unless input[:verification_attributes].nil?
      end
    end

    class GetSendQuotaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSendQuotaInput, context: context)
      end
    end

    class GetSendQuotaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSendQuotaOutput, context: context)
        Hearth::Validator.validate!(input[:max24_hour_send], ::Float, context: "#{context}[:max24_hour_send]")
        Hearth::Validator.validate!(input[:max_send_rate], ::Float, context: "#{context}[:max_send_rate]")
        Hearth::Validator.validate!(input[:sent_last24_hours], ::Float, context: "#{context}[:sent_last24_hours]")
      end
    end

    class GetSendStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSendStatisticsInput, context: context)
      end
    end

    class GetSendStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSendStatisticsOutput, context: context)
        SendDataPointList.validate!(input[:send_data_points], context: "#{context}[:send_data_points]") unless input[:send_data_points].nil?
      end
    end

    class GetTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class GetTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemplateOutput, context: context)
        Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
      end
    end

    class IdentityDkimAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityDkimAttributes, context: context)
        Hearth::Validator.validate!(input[:dkim_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dkim_enabled]")
        Hearth::Validator.validate!(input[:dkim_verification_status], ::String, context: "#{context}[:dkim_verification_status]")
        VerificationTokenList.validate!(input[:dkim_tokens], context: "#{context}[:dkim_tokens]") unless input[:dkim_tokens].nil?
      end
    end

    class IdentityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IdentityMailFromDomainAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityMailFromDomainAttributes, context: context)
        Hearth::Validator.validate!(input[:mail_from_domain], ::String, context: "#{context}[:mail_from_domain]")
        Hearth::Validator.validate!(input[:mail_from_domain_status], ::String, context: "#{context}[:mail_from_domain_status]")
        Hearth::Validator.validate!(input[:behavior_on_mx_failure], ::String, context: "#{context}[:behavior_on_mx_failure]")
      end
    end

    class IdentityNotificationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityNotificationAttributes, context: context)
        Hearth::Validator.validate!(input[:bounce_topic], ::String, context: "#{context}[:bounce_topic]")
        Hearth::Validator.validate!(input[:complaint_topic], ::String, context: "#{context}[:complaint_topic]")
        Hearth::Validator.validate!(input[:delivery_topic], ::String, context: "#{context}[:delivery_topic]")
        Hearth::Validator.validate!(input[:forwarding_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:forwarding_enabled]")
        Hearth::Validator.validate!(input[:headers_in_bounce_notifications_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:headers_in_bounce_notifications_enabled]")
        Hearth::Validator.validate!(input[:headers_in_complaint_notifications_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:headers_in_complaint_notifications_enabled]")
        Hearth::Validator.validate!(input[:headers_in_delivery_notifications_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:headers_in_delivery_notifications_enabled]")
      end
    end

    class IdentityVerificationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityVerificationAttributes, context: context)
        Hearth::Validator.validate!(input[:verification_status], ::String, context: "#{context}[:verification_status]")
        Hearth::Validator.validate!(input[:verification_token], ::String, context: "#{context}[:verification_token]")
      end
    end

    class InvalidCloudWatchDestinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCloudWatchDestinationException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConfigurationSetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationSetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeliveryOptionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeliveryOptionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFirehoseDestinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFirehoseDestinationException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLambdaFunctionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLambdaFunctionException, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRenderingParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRenderingParameterException, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3ConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3ConfigurationException, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSNSDestinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSNSDestinationException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSnsTopicException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSnsTopicException, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTemplateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTemplateException, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTrackingOptionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTrackingOptionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KinesisFirehoseDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseDestination, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
      end
    end

    class LambdaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaAction, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:invocation_type], ::String, context: "#{context}[:invocation_type]")
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
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListConfigurationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsOutput, context: context)
        ConfigurationSets.validate!(input[:configuration_sets], context: "#{context}[:configuration_sets]") unless input[:configuration_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomVerificationEmailTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomVerificationEmailTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCustomVerificationEmailTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomVerificationEmailTemplatesOutput, context: context)
        CustomVerificationEmailTemplates.validate!(input[:custom_verification_email_templates], context: "#{context}[:custom_verification_email_templates]") unless input[:custom_verification_email_templates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentitiesOutput, context: context)
        IdentityList.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
      end
    end

    class ListIdentityPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityPoliciesOutput, context: context)
        PolicyNameList.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class ListReceiptFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceiptFiltersInput, context: context)
      end
    end

    class ListReceiptFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceiptFiltersOutput, context: context)
        ReceiptFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListReceiptRuleSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceiptRuleSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReceiptRuleSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceiptRuleSetsOutput, context: context)
        ReceiptRuleSetsLists.validate!(input[:rule_sets], context: "#{context}[:rule_sets]") unless input[:rule_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplatesOutput, context: context)
        TemplateMetadataList.validate!(input[:templates_metadata], context: "#{context}[:templates_metadata]") unless input[:templates_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVerifiedEmailAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVerifiedEmailAddressesInput, context: context)
      end
    end

    class ListVerifiedEmailAddressesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVerifiedEmailAddressesOutput, context: context)
        AddressList.validate!(input[:verified_email_addresses], context: "#{context}[:verified_email_addresses]") unless input[:verified_email_addresses].nil?
      end
    end

    class MailFromDomainAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          IdentityMailFromDomainAttributes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
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
        Content.validate!(input[:subject], context: "#{context}[:subject]") unless input[:subject].nil?
        Body.validate!(input[:body], context: "#{context}[:body]") unless input[:body].nil?
      end
    end

    class MessageDsn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageDsn, context: context)
        Hearth::Validator.validate!(input[:reporting_mta], ::String, context: "#{context}[:reporting_mta]")
        Hearth::Validator.validate!(input[:arrival_date], ::Time, context: "#{context}[:arrival_date]")
        ExtensionFieldList.validate!(input[:extension_fields], context: "#{context}[:extension_fields]") unless input[:extension_fields].nil?
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
          MessageTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MissingRenderingAttributeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingRenderingAttributeException, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotificationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          IdentityNotificationAttributes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
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

    class PolicyNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductionAccessNotGrantedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionAccessNotGrantedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutConfigurationSetDeliveryOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetDeliveryOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        DeliveryOptions.validate!(input[:delivery_options], context: "#{context}[:delivery_options]") unless input[:delivery_options].nil?
      end
    end

    class PutConfigurationSetDeliveryOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetDeliveryOptionsOutput, context: context)
      end
    end

    class PutIdentityPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIdentityPolicyInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutIdentityPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIdentityPolicyOutput, context: context)
      end
    end

    class RawMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawMessage, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class ReceiptAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReceiptAction, context: context)
        S3Action.validate!(input[:s3_action], context: "#{context}[:s3_action]") unless input[:s3_action].nil?
        BounceAction.validate!(input[:bounce_action], context: "#{context}[:bounce_action]") unless input[:bounce_action].nil?
        WorkmailAction.validate!(input[:workmail_action], context: "#{context}[:workmail_action]") unless input[:workmail_action].nil?
        LambdaAction.validate!(input[:lambda_action], context: "#{context}[:lambda_action]") unless input[:lambda_action].nil?
        StopAction.validate!(input[:stop_action], context: "#{context}[:stop_action]") unless input[:stop_action].nil?
        AddHeaderAction.validate!(input[:add_header_action], context: "#{context}[:add_header_action]") unless input[:add_header_action].nil?
        SNSAction.validate!(input[:sns_action], context: "#{context}[:sns_action]") unless input[:sns_action].nil?
      end
    end

    class ReceiptActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReceiptAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReceiptFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReceiptFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ReceiptIpFilter.validate!(input[:ip_filter], context: "#{context}[:ip_filter]") unless input[:ip_filter].nil?
      end
    end

    class ReceiptFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReceiptFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReceiptIpFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReceiptIpFilter, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class ReceiptRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReceiptRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:tls_policy], ::String, context: "#{context}[:tls_policy]")
        RecipientsList.validate!(input[:recipients], context: "#{context}[:recipients]") unless input[:recipients].nil?
        ReceiptActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:scan_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:scan_enabled]")
      end
    end

    class ReceiptRuleNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReceiptRuleSetMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReceiptRuleSetMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class ReceiptRuleSetsLists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReceiptRuleSetMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReceiptRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReceiptRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecipientDsnFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipientDsnFields, context: context)
        Hearth::Validator.validate!(input[:final_recipient], ::String, context: "#{context}[:final_recipient]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:remote_mta], ::String, context: "#{context}[:remote_mta]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:diagnostic_code], ::String, context: "#{context}[:diagnostic_code]")
        Hearth::Validator.validate!(input[:last_attempt_date], ::Time, context: "#{context}[:last_attempt_date]")
        ExtensionFieldList.validate!(input[:extension_fields], context: "#{context}[:extension_fields]") unless input[:extension_fields].nil?
      end
    end

    class RecipientsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReorderReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReorderReceiptRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        ReceiptRuleNamesList.validate!(input[:rule_names], context: "#{context}[:rule_names]") unless input[:rule_names].nil?
      end
    end

    class ReorderReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReorderReceiptRuleSetOutput, context: context)
      end
    end

    class ReputationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReputationOptions, context: context)
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
        Hearth::Validator.validate!(input[:reputation_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:reputation_metrics_enabled]")
        Hearth::Validator.validate!(input[:last_fresh_start], ::Time, context: "#{context}[:last_fresh_start]")
      end
    end

    class RuleDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuleSetDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleSetDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Action, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key_prefix], ::String, context: "#{context}[:object_key_prefix]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class SNSAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSAction, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:encoding], ::String, context: "#{context}[:encoding]")
      end
    end

    class SNSDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSDestination, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class SendBounceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBounceInput, context: context)
        Hearth::Validator.validate!(input[:original_message_id], ::String, context: "#{context}[:original_message_id]")
        Hearth::Validator.validate!(input[:bounce_sender], ::String, context: "#{context}[:bounce_sender]")
        Hearth::Validator.validate!(input[:explanation], ::String, context: "#{context}[:explanation]")
        MessageDsn.validate!(input[:message_dsn], context: "#{context}[:message_dsn]") unless input[:message_dsn].nil?
        BouncedRecipientInfoList.validate!(input[:bounced_recipient_info_list], context: "#{context}[:bounced_recipient_info_list]") unless input[:bounced_recipient_info_list].nil?
        Hearth::Validator.validate!(input[:bounce_sender_arn], ::String, context: "#{context}[:bounce_sender_arn]")
      end
    end

    class SendBounceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBounceOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendBulkTemplatedEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBulkTemplatedEmailInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        AddressList.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Hearth::Validator.validate!(input[:return_path], ::String, context: "#{context}[:return_path]")
        Hearth::Validator.validate!(input[:return_path_arn], ::String, context: "#{context}[:return_path_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        MessageTagList.validate!(input[:default_tags], context: "#{context}[:default_tags]") unless input[:default_tags].nil?
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:default_template_data], ::String, context: "#{context}[:default_template_data]")
        BulkEmailDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
      end
    end

    class SendBulkTemplatedEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendBulkTemplatedEmailOutput, context: context)
        BulkEmailDestinationStatusList.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
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

    class SendDataPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendDataPoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:delivery_attempts], ::Integer, context: "#{context}[:delivery_attempts]")
        Hearth::Validator.validate!(input[:bounces], ::Integer, context: "#{context}[:bounces]")
        Hearth::Validator.validate!(input[:complaints], ::Integer, context: "#{context}[:complaints]")
        Hearth::Validator.validate!(input[:rejects], ::Integer, context: "#{context}[:rejects]")
      end
    end

    class SendDataPointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SendDataPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEmailInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Message.validate!(input[:message], context: "#{context}[:message]") unless input[:message].nil?
        AddressList.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Hearth::Validator.validate!(input[:return_path], ::String, context: "#{context}[:return_path]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:return_path_arn], ::String, context: "#{context}[:return_path_arn]")
        MessageTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class SendEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEmailOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendRawEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendRawEmailInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        AddressList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        RawMessage.validate!(input[:raw_message], context: "#{context}[:raw_message]") unless input[:raw_message].nil?
        Hearth::Validator.validate!(input[:from_arn], ::String, context: "#{context}[:from_arn]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:return_path_arn], ::String, context: "#{context}[:return_path_arn]")
        MessageTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class SendRawEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendRawEmailOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendTemplatedEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTemplatedEmailInput, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        AddressList.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Hearth::Validator.validate!(input[:return_path], ::String, context: "#{context}[:return_path]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:return_path_arn], ::String, context: "#{context}[:return_path_arn]")
        MessageTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:template], ::String, context: "#{context}[:template]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_data], ::String, context: "#{context}[:template_data]")
      end
    end

    class SendTemplatedEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTemplatedEmailOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SetActiveReceiptRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetActiveReceiptRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
      end
    end

    class SetActiveReceiptRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetActiveReceiptRuleSetOutput, context: context)
      end
    end

    class SetIdentityDkimEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityDkimEnabledInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:dkim_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dkim_enabled]")
      end
    end

    class SetIdentityDkimEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityDkimEnabledOutput, context: context)
      end
    end

    class SetIdentityFeedbackForwardingEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityFeedbackForwardingEnabledInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:forwarding_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:forwarding_enabled]")
      end
    end

    class SetIdentityFeedbackForwardingEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityFeedbackForwardingEnabledOutput, context: context)
      end
    end

    class SetIdentityHeadersInNotificationsEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityHeadersInNotificationsEnabledInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class SetIdentityHeadersInNotificationsEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityHeadersInNotificationsEnabledOutput, context: context)
      end
    end

    class SetIdentityMailFromDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityMailFromDomainInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:mail_from_domain], ::String, context: "#{context}[:mail_from_domain]")
        Hearth::Validator.validate!(input[:behavior_on_mx_failure], ::String, context: "#{context}[:behavior_on_mx_failure]")
      end
    end

    class SetIdentityMailFromDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityMailFromDomainOutput, context: context)
      end
    end

    class SetIdentityNotificationTopicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityNotificationTopicInput, context: context)
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
        Hearth::Validator.validate!(input[:sns_topic], ::String, context: "#{context}[:sns_topic]")
      end
    end

    class SetIdentityNotificationTopicOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityNotificationTopicOutput, context: context)
      end
    end

    class SetReceiptRulePositionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetReceiptRulePositionInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:after], ::String, context: "#{context}[:after]")
      end
    end

    class SetReceiptRulePositionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetReceiptRulePositionOutput, context: context)
      end
    end

    class StopAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAction, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class Template
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Template, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:subject_part], ::String, context: "#{context}[:subject_part]")
        Hearth::Validator.validate!(input[:text_part], ::String, context: "#{context}[:text_part]")
        Hearth::Validator.validate!(input[:html_part], ::String, context: "#{context}[:html_part]")
      end
    end

    class TemplateDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TemplateMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class TemplateMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TemplateMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestRenderTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRenderTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_data], ::String, context: "#{context}[:template_data]")
      end
    end

    class TestRenderTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRenderTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:rendered_template], ::String, context: "#{context}[:rendered_template]")
      end
    end

    class TrackingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackingOptions, context: context)
        Hearth::Validator.validate!(input[:custom_redirect_domain], ::String, context: "#{context}[:custom_redirect_domain]")
      end
    end

    class TrackingOptionsAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackingOptionsAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrackingOptionsDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackingOptionsDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateAccountSendingEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSendingEnabledInput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateAccountSendingEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSendingEnabledOutput, context: context)
      end
    end

    class UpdateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        EventDestination.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class UpdateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class UpdateConfigurationSetReputationMetricsEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetReputationMetricsEnabledInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateConfigurationSetReputationMetricsEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetReputationMetricsEnabledOutput, context: context)
      end
    end

    class UpdateConfigurationSetSendingEnabledInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetSendingEnabledInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateConfigurationSetSendingEnabledOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetSendingEnabledOutput, context: context)
      end
    end

    class UpdateConfigurationSetTrackingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetTrackingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
      end
    end

    class UpdateConfigurationSetTrackingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetTrackingOptionsOutput, context: context)
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

    class UpdateReceiptRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReceiptRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        ReceiptRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class UpdateReceiptRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReceiptRuleOutput, context: context)
      end
    end

    class UpdateTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateInput, context: context)
        Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
      end
    end

    class UpdateTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateOutput, context: context)
      end
    end

    class VerificationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          IdentityVerificationAttributes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class VerificationTokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VerifyDomainDkimInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyDomainDkimInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class VerifyDomainDkimOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyDomainDkimOutput, context: context)
        VerificationTokenList.validate!(input[:dkim_tokens], context: "#{context}[:dkim_tokens]") unless input[:dkim_tokens].nil?
      end
    end

    class VerifyDomainIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyDomainIdentityInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class VerifyDomainIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyDomainIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:verification_token], ::String, context: "#{context}[:verification_token]")
      end
    end

    class VerifyEmailAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyEmailAddressInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class VerifyEmailAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyEmailAddressOutput, context: context)
      end
    end

    class VerifyEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class VerifyEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyEmailIdentityOutput, context: context)
      end
    end

    class WorkmailAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkmailAction, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:organization_arn], ::String, context: "#{context}[:organization_arn]")
      end
    end

  end
end
