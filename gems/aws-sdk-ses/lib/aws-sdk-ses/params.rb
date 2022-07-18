# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SES
  module Params

    module AccountSendingPausedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSendingPausedException, context: context)
        type = Types::AccountSendingPausedException.new
        type.message = params[:message]
        type
      end
    end

    module AddHeaderAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddHeaderAction, context: context)
        type = Types::AddHeaderAction.new
        type.header_name = params[:header_name]
        type.header_value = params[:header_value]
        type
      end
    end

    module AddressList
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
        type.name = params[:name]
        type.message = params[:message]
        type
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

    module BounceAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BounceAction, context: context)
        type = Types::BounceAction.new
        type.topic_arn = params[:topic_arn]
        type.smtp_reply_code = params[:smtp_reply_code]
        type.status_code = params[:status_code]
        type.message = params[:message]
        type.sender = params[:sender]
        type
      end
    end

    module BouncedRecipientInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BouncedRecipientInfo, context: context)
        type = Types::BouncedRecipientInfo.new
        type.recipient = params[:recipient]
        type.recipient_arn = params[:recipient_arn]
        type.bounce_type = params[:bounce_type]
        type.recipient_dsn_fields = RecipientDsnFields.build(params[:recipient_dsn_fields], context: "#{context}[:recipient_dsn_fields]") unless params[:recipient_dsn_fields].nil?
        type
      end
    end

    module BouncedRecipientInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BouncedRecipientInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BulkEmailDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkEmailDestination, context: context)
        type = Types::BulkEmailDestination.new
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.replacement_tags = MessageTagList.build(params[:replacement_tags], context: "#{context}[:replacement_tags]") unless params[:replacement_tags].nil?
        type.replacement_template_data = params[:replacement_template_data]
        type
      end
    end

    module BulkEmailDestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BulkEmailDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BulkEmailDestinationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkEmailDestinationStatus, context: context)
        type = Types::BulkEmailDestinationStatus.new
        type.status = params[:status]
        type.error = params[:error]
        type.message_id = params[:message_id]
        type
      end
    end

    module BulkEmailDestinationStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BulkEmailDestinationStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CannotDeleteException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CannotDeleteException, context: context)
        type = Types::CannotDeleteException.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module CloneReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloneReceiptRuleSetInput, context: context)
        type = Types::CloneReceiptRuleSetInput.new
        type.rule_set_name = params[:rule_set_name]
        type.original_rule_set_name = params[:original_rule_set_name]
        type
      end
    end

    module CloneReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloneReceiptRuleSetOutput, context: context)
        type = Types::CloneReceiptRuleSetOutput.new
        type
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

    module ConfigurationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSet, context: context)
        type = Types::ConfigurationSet.new
        type.name = params[:name]
        type
      end
    end

    module ConfigurationSetAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSetAlreadyExistsException, context: context)
        type = Types::ConfigurationSetAlreadyExistsException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.message = params[:message]
        type
      end
    end

    module ConfigurationSetAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigurationSetDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSetDoesNotExistException, context: context)
        type = Types::ConfigurationSetDoesNotExistException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.message = params[:message]
        type
      end
    end

    module ConfigurationSetSendingPausedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSetSendingPausedException, context: context)
        type = Types::ConfigurationSetSendingPausedException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.message = params[:message]
        type
      end
    end

    module ConfigurationSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.event_destination = EventDestination.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
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
        type.configuration_set = ConfigurationSet.build(params[:configuration_set], context: "#{context}[:configuration_set]") unless params[:configuration_set].nil?
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

    module CreateConfigurationSetTrackingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetTrackingOptionsInput, context: context)
        type = Types::CreateConfigurationSetTrackingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type
      end
    end

    module CreateConfigurationSetTrackingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetTrackingOptionsOutput, context: context)
        type = Types::CreateConfigurationSetTrackingOptionsOutput.new
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

    module CreateReceiptFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReceiptFilterInput, context: context)
        type = Types::CreateReceiptFilterInput.new
        type.filter = ReceiptFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module CreateReceiptFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReceiptFilterOutput, context: context)
        type = Types::CreateReceiptFilterOutput.new
        type
      end
    end

    module CreateReceiptRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReceiptRuleInput, context: context)
        type = Types::CreateReceiptRuleInput.new
        type.rule_set_name = params[:rule_set_name]
        type.after = params[:after]
        type.rule = ReceiptRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module CreateReceiptRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReceiptRuleOutput, context: context)
        type = Types::CreateReceiptRuleOutput.new
        type
      end
    end

    module CreateReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReceiptRuleSetInput, context: context)
        type = Types::CreateReceiptRuleSetInput.new
        type.rule_set_name = params[:rule_set_name]
        type
      end
    end

    module CreateReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReceiptRuleSetOutput, context: context)
        type = Types::CreateReceiptRuleSetOutput.new
        type
      end
    end

    module CreateTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateInput, context: context)
        type = Types::CreateTemplateInput.new
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type
      end
    end

    module CreateTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateOutput, context: context)
        type = Types::CreateTemplateOutput.new
        type
      end
    end

    module CustomVerificationEmailInvalidContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVerificationEmailInvalidContentException, context: context)
        type = Types::CustomVerificationEmailInvalidContentException.new
        type.message = params[:message]
        type
      end
    end

    module CustomVerificationEmailTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVerificationEmailTemplate, context: context)
        type = Types::CustomVerificationEmailTemplate.new
        type.template_name = params[:template_name]
        type.from_email_address = params[:from_email_address]
        type.template_subject = params[:template_subject]
        type.success_redirection_url = params[:success_redirection_url]
        type.failure_redirection_url = params[:failure_redirection_url]
        type
      end
    end

    module CustomVerificationEmailTemplateAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVerificationEmailTemplateAlreadyExistsException, context: context)
        type = Types::CustomVerificationEmailTemplateAlreadyExistsException.new
        type.custom_verification_email_template_name = params[:custom_verification_email_template_name]
        type.message = params[:message]
        type
      end
    end

    module CustomVerificationEmailTemplateDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomVerificationEmailTemplateDoesNotExistException, context: context)
        type = Types::CustomVerificationEmailTemplateDoesNotExistException.new
        type.custom_verification_email_template_name = params[:custom_verification_email_template_name]
        type.message = params[:message]
        type
      end
    end

    module CustomVerificationEmailTemplates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomVerificationEmailTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module DeleteConfigurationSetTrackingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetTrackingOptionsInput, context: context)
        type = Types::DeleteConfigurationSetTrackingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module DeleteConfigurationSetTrackingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetTrackingOptionsOutput, context: context)
        type = Types::DeleteConfigurationSetTrackingOptionsOutput.new
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

    module DeleteIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityInput, context: context)
        type = Types::DeleteIdentityInput.new
        type.identity = params[:identity]
        type
      end
    end

    module DeleteIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityOutput, context: context)
        type = Types::DeleteIdentityOutput.new
        type
      end
    end

    module DeleteIdentityPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityPolicyInput, context: context)
        type = Types::DeleteIdentityPolicyInput.new
        type.identity = params[:identity]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteIdentityPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityPolicyOutput, context: context)
        type = Types::DeleteIdentityPolicyOutput.new
        type
      end
    end

    module DeleteReceiptFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReceiptFilterInput, context: context)
        type = Types::DeleteReceiptFilterInput.new
        type.filter_name = params[:filter_name]
        type
      end
    end

    module DeleteReceiptFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReceiptFilterOutput, context: context)
        type = Types::DeleteReceiptFilterOutput.new
        type
      end
    end

    module DeleteReceiptRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReceiptRuleInput, context: context)
        type = Types::DeleteReceiptRuleInput.new
        type.rule_set_name = params[:rule_set_name]
        type.rule_name = params[:rule_name]
        type
      end
    end

    module DeleteReceiptRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReceiptRuleOutput, context: context)
        type = Types::DeleteReceiptRuleOutput.new
        type
      end
    end

    module DeleteReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReceiptRuleSetInput, context: context)
        type = Types::DeleteReceiptRuleSetInput.new
        type.rule_set_name = params[:rule_set_name]
        type
      end
    end

    module DeleteReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReceiptRuleSetOutput, context: context)
        type = Types::DeleteReceiptRuleSetOutput.new
        type
      end
    end

    module DeleteTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateInput, context: context)
        type = Types::DeleteTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module DeleteTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateOutput, context: context)
        type = Types::DeleteTemplateOutput.new
        type
      end
    end

    module DeleteVerifiedEmailAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVerifiedEmailAddressInput, context: context)
        type = Types::DeleteVerifiedEmailAddressInput.new
        type.email_address = params[:email_address]
        type
      end
    end

    module DeleteVerifiedEmailAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVerifiedEmailAddressOutput, context: context)
        type = Types::DeleteVerifiedEmailAddressOutput.new
        type
      end
    end

    module DeliveryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryOptions, context: context)
        type = Types::DeliveryOptions.new
        type.tls_policy = params[:tls_policy]
        type
      end
    end

    module DescribeActiveReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActiveReceiptRuleSetInput, context: context)
        type = Types::DescribeActiveReceiptRuleSetInput.new
        type
      end
    end

    module DescribeActiveReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActiveReceiptRuleSetOutput, context: context)
        type = Types::DescribeActiveReceiptRuleSetOutput.new
        type.metadata = ReceiptRuleSetMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.rules = ReceiptRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module DescribeConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationSetInput, context: context)
        type = Types::DescribeConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.configuration_set_attribute_names = ConfigurationSetAttributeList.build(params[:configuration_set_attribute_names], context: "#{context}[:configuration_set_attribute_names]") unless params[:configuration_set_attribute_names].nil?
        type
      end
    end

    module DescribeConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationSetOutput, context: context)
        type = Types::DescribeConfigurationSetOutput.new
        type.configuration_set = ConfigurationSet.build(params[:configuration_set], context: "#{context}[:configuration_set]") unless params[:configuration_set].nil?
        type.event_destinations = EventDestinations.build(params[:event_destinations], context: "#{context}[:event_destinations]") unless params[:event_destinations].nil?
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type.delivery_options = DeliveryOptions.build(params[:delivery_options], context: "#{context}[:delivery_options]") unless params[:delivery_options].nil?
        type.reputation_options = ReputationOptions.build(params[:reputation_options], context: "#{context}[:reputation_options]") unless params[:reputation_options].nil?
        type
      end
    end

    module DescribeReceiptRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReceiptRuleInput, context: context)
        type = Types::DescribeReceiptRuleInput.new
        type.rule_set_name = params[:rule_set_name]
        type.rule_name = params[:rule_name]
        type
      end
    end

    module DescribeReceiptRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReceiptRuleOutput, context: context)
        type = Types::DescribeReceiptRuleOutput.new
        type.rule = ReceiptRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module DescribeReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReceiptRuleSetInput, context: context)
        type = Types::DescribeReceiptRuleSetInput.new
        type.rule_set_name = params[:rule_set_name]
        type
      end
    end

    module DescribeReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReceiptRuleSetOutput, context: context)
        type = Types::DescribeReceiptRuleSetOutput.new
        type.metadata = ReceiptRuleSetMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.rules = ReceiptRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.to_addresses = AddressList.build(params[:to_addresses], context: "#{context}[:to_addresses]") unless params[:to_addresses].nil?
        type.cc_addresses = AddressList.build(params[:cc_addresses], context: "#{context}[:cc_addresses]") unless params[:cc_addresses].nil?
        type.bcc_addresses = AddressList.build(params[:bcc_addresses], context: "#{context}[:bcc_addresses]") unless params[:bcc_addresses].nil?
        type
      end
    end

    module DkimAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IdentityDkimAttributes.build(value, context: "#{context}[:#{key}]") unless value.nil?
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
        type.sns_destination = SNSDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type
      end
    end

    module EventDestinationAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestinationAlreadyExistsException, context: context)
        type = Types::EventDestinationAlreadyExistsException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.message = params[:message]
        type
      end
    end

    module EventDestinationDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestinationDoesNotExistException, context: context)
        type = Types::EventDestinationDoesNotExistException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.message = params[:message]
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

    module ExtensionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtensionField, context: context)
        type = Types::ExtensionField.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ExtensionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExtensionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FromEmailAddressNotVerifiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FromEmailAddressNotVerifiedException, context: context)
        type = Types::FromEmailAddressNotVerifiedException.new
        type.from_email_address = params[:from_email_address]
        type.message = params[:message]
        type
      end
    end

    module GetAccountSendingEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSendingEnabledInput, context: context)
        type = Types::GetAccountSendingEnabledInput.new
        type
      end
    end

    module GetAccountSendingEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSendingEnabledOutput, context: context)
        type = Types::GetAccountSendingEnabledOutput.new
        type.enabled = params[:enabled]
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

    module GetIdentityDkimAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityDkimAttributesInput, context: context)
        type = Types::GetIdentityDkimAttributesInput.new
        type.identities = IdentityList.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type
      end
    end

    module GetIdentityDkimAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityDkimAttributesOutput, context: context)
        type = Types::GetIdentityDkimAttributesOutput.new
        type.dkim_attributes = DkimAttributes.build(params[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless params[:dkim_attributes].nil?
        type
      end
    end

    module GetIdentityMailFromDomainAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityMailFromDomainAttributesInput, context: context)
        type = Types::GetIdentityMailFromDomainAttributesInput.new
        type.identities = IdentityList.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type
      end
    end

    module GetIdentityMailFromDomainAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityMailFromDomainAttributesOutput, context: context)
        type = Types::GetIdentityMailFromDomainAttributesOutput.new
        type.mail_from_domain_attributes = MailFromDomainAttributes.build(params[:mail_from_domain_attributes], context: "#{context}[:mail_from_domain_attributes]") unless params[:mail_from_domain_attributes].nil?
        type
      end
    end

    module GetIdentityNotificationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityNotificationAttributesInput, context: context)
        type = Types::GetIdentityNotificationAttributesInput.new
        type.identities = IdentityList.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type
      end
    end

    module GetIdentityNotificationAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityNotificationAttributesOutput, context: context)
        type = Types::GetIdentityNotificationAttributesOutput.new
        type.notification_attributes = NotificationAttributes.build(params[:notification_attributes], context: "#{context}[:notification_attributes]") unless params[:notification_attributes].nil?
        type
      end
    end

    module GetIdentityPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityPoliciesInput, context: context)
        type = Types::GetIdentityPoliciesInput.new
        type.identity = params[:identity]
        type.policy_names = PolicyNameList.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module GetIdentityPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityPoliciesOutput, context: context)
        type = Types::GetIdentityPoliciesOutput.new
        type.policies = PolicyMap.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module GetIdentityVerificationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityVerificationAttributesInput, context: context)
        type = Types::GetIdentityVerificationAttributesInput.new
        type.identities = IdentityList.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type
      end
    end

    module GetIdentityVerificationAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityVerificationAttributesOutput, context: context)
        type = Types::GetIdentityVerificationAttributesOutput.new
        type.verification_attributes = VerificationAttributes.build(params[:verification_attributes], context: "#{context}[:verification_attributes]") unless params[:verification_attributes].nil?
        type
      end
    end

    module GetSendQuotaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSendQuotaInput, context: context)
        type = Types::GetSendQuotaInput.new
        type
      end
    end

    module GetSendQuotaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSendQuotaOutput, context: context)
        type = Types::GetSendQuotaOutput.new
        type.max24_hour_send = params[:max24_hour_send]
        type.max_send_rate = params[:max_send_rate]
        type.sent_last24_hours = params[:sent_last24_hours]
        type
      end
    end

    module GetSendStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSendStatisticsInput, context: context)
        type = Types::GetSendStatisticsInput.new
        type
      end
    end

    module GetSendStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSendStatisticsOutput, context: context)
        type = Types::GetSendStatisticsOutput.new
        type.send_data_points = SendDataPointList.build(params[:send_data_points], context: "#{context}[:send_data_points]") unless params[:send_data_points].nil?
        type
      end
    end

    module GetTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateInput, context: context)
        type = Types::GetTemplateInput.new
        type.template_name = params[:template_name]
        type
      end
    end

    module GetTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemplateOutput, context: context)
        type = Types::GetTemplateOutput.new
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type
      end
    end

    module IdentityDkimAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityDkimAttributes, context: context)
        type = Types::IdentityDkimAttributes.new
        type.dkim_enabled = params[:dkim_enabled]
        type.dkim_verification_status = params[:dkim_verification_status]
        type.dkim_tokens = VerificationTokenList.build(params[:dkim_tokens], context: "#{context}[:dkim_tokens]") unless params[:dkim_tokens].nil?
        type
      end
    end

    module IdentityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IdentityMailFromDomainAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityMailFromDomainAttributes, context: context)
        type = Types::IdentityMailFromDomainAttributes.new
        type.mail_from_domain = params[:mail_from_domain]
        type.mail_from_domain_status = params[:mail_from_domain_status]
        type.behavior_on_mx_failure = params[:behavior_on_mx_failure]
        type
      end
    end

    module IdentityNotificationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityNotificationAttributes, context: context)
        type = Types::IdentityNotificationAttributes.new
        type.bounce_topic = params[:bounce_topic]
        type.complaint_topic = params[:complaint_topic]
        type.delivery_topic = params[:delivery_topic]
        type.forwarding_enabled = params[:forwarding_enabled]
        type.headers_in_bounce_notifications_enabled = params[:headers_in_bounce_notifications_enabled]
        type.headers_in_complaint_notifications_enabled = params[:headers_in_complaint_notifications_enabled]
        type.headers_in_delivery_notifications_enabled = params[:headers_in_delivery_notifications_enabled]
        type
      end
    end

    module IdentityVerificationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityVerificationAttributes, context: context)
        type = Types::IdentityVerificationAttributes.new
        type.verification_status = params[:verification_status]
        type.verification_token = params[:verification_token]
        type
      end
    end

    module InvalidCloudWatchDestinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCloudWatchDestinationException, context: context)
        type = Types::InvalidCloudWatchDestinationException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidConfigurationSetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConfigurationSetException, context: context)
        type = Types::InvalidConfigurationSetException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeliveryOptionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeliveryOptionsException, context: context)
        type = Types::InvalidDeliveryOptionsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFirehoseDestinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFirehoseDestinationException, context: context)
        type = Types::InvalidFirehoseDestinationException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidLambdaFunctionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLambdaFunctionException, context: context)
        type = Types::InvalidLambdaFunctionException.new
        type.function_arn = params[:function_arn]
        type.message = params[:message]
        type
      end
    end

    module InvalidPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPolicyException, context: context)
        type = Types::InvalidPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRenderingParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRenderingParameterException, context: context)
        type = Types::InvalidRenderingParameterException.new
        type.template_name = params[:template_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidS3ConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3ConfigurationException, context: context)
        type = Types::InvalidS3ConfigurationException.new
        type.bucket = params[:bucket]
        type.message = params[:message]
        type
      end
    end

    module InvalidSNSDestinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSNSDestinationException, context: context)
        type = Types::InvalidSNSDestinationException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidSnsTopicException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSnsTopicException, context: context)
        type = Types::InvalidSnsTopicException.new
        type.topic = params[:topic]
        type.message = params[:message]
        type
      end
    end

    module InvalidTemplateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTemplateException, context: context)
        type = Types::InvalidTemplateException.new
        type.template_name = params[:template_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidTrackingOptionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTrackingOptionsException, context: context)
        type = Types::InvalidTrackingOptionsException.new
        type.message = params[:message]
        type
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

    module LambdaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaAction, context: context)
        type = Types::LambdaAction.new
        type.topic_arn = params[:topic_arn]
        type.function_arn = params[:function_arn]
        type.invocation_type = params[:invocation_type]
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
        type.max_items = params[:max_items]
        type
      end
    end

    module ListConfigurationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsOutput, context: context)
        type = Types::ListConfigurationSetsOutput.new
        type.configuration_sets = ConfigurationSets.build(params[:configuration_sets], context: "#{context}[:configuration_sets]") unless params[:configuration_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomVerificationEmailTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomVerificationEmailTemplatesInput, context: context)
        type = Types::ListCustomVerificationEmailTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCustomVerificationEmailTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomVerificationEmailTemplatesOutput, context: context)
        type = Types::ListCustomVerificationEmailTemplatesOutput.new
        type.custom_verification_email_templates = CustomVerificationEmailTemplates.build(params[:custom_verification_email_templates], context: "#{context}[:custom_verification_email_templates]") unless params[:custom_verification_email_templates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentitiesInput, context: context)
        type = Types::ListIdentitiesInput.new
        type.identity_type = params[:identity_type]
        type.next_token = params[:next_token]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentitiesOutput, context: context)
        type = Types::ListIdentitiesOutput.new
        type.identities = IdentityList.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityPoliciesInput, context: context)
        type = Types::ListIdentityPoliciesInput.new
        type.identity = params[:identity]
        type
      end
    end

    module ListIdentityPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityPoliciesOutput, context: context)
        type = Types::ListIdentityPoliciesOutput.new
        type.policy_names = PolicyNameList.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module ListReceiptFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceiptFiltersInput, context: context)
        type = Types::ListReceiptFiltersInput.new
        type
      end
    end

    module ListReceiptFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceiptFiltersOutput, context: context)
        type = Types::ListReceiptFiltersOutput.new
        type.filters = ReceiptFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListReceiptRuleSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceiptRuleSetsInput, context: context)
        type = Types::ListReceiptRuleSetsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReceiptRuleSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceiptRuleSetsOutput, context: context)
        type = Types::ListReceiptRuleSetsOutput.new
        type.rule_sets = ReceiptRuleSetsLists.build(params[:rule_sets], context: "#{context}[:rule_sets]") unless params[:rule_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplatesInput, context: context)
        type = Types::ListTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplatesOutput, context: context)
        type = Types::ListTemplatesOutput.new
        type.templates_metadata = TemplateMetadataList.build(params[:templates_metadata], context: "#{context}[:templates_metadata]") unless params[:templates_metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVerifiedEmailAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVerifiedEmailAddressesInput, context: context)
        type = Types::ListVerifiedEmailAddressesInput.new
        type
      end
    end

    module ListVerifiedEmailAddressesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVerifiedEmailAddressesOutput, context: context)
        type = Types::ListVerifiedEmailAddressesOutput.new
        type.verified_email_addresses = AddressList.build(params[:verified_email_addresses], context: "#{context}[:verified_email_addresses]") unless params[:verified_email_addresses].nil?
        type
      end
    end

    module MailFromDomainAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IdentityMailFromDomainAttributes.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
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

    module MessageDsn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageDsn, context: context)
        type = Types::MessageDsn.new
        type.reporting_mta = params[:reporting_mta]
        type.arrival_date = params[:arrival_date]
        type.extension_fields = ExtensionFieldList.build(params[:extension_fields], context: "#{context}[:extension_fields]") unless params[:extension_fields].nil?
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

    module MissingRenderingAttributeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingRenderingAttributeException, context: context)
        type = Types::MissingRenderingAttributeException.new
        type.template_name = params[:template_name]
        type.message = params[:message]
        type
      end
    end

    module NotificationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IdentityNotificationAttributes.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
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

    module PolicyNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProductionAccessNotGrantedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionAccessNotGrantedException, context: context)
        type = Types::ProductionAccessNotGrantedException.new
        type.message = params[:message]
        type
      end
    end

    module PutConfigurationSetDeliveryOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetDeliveryOptionsInput, context: context)
        type = Types::PutConfigurationSetDeliveryOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.delivery_options = DeliveryOptions.build(params[:delivery_options], context: "#{context}[:delivery_options]") unless params[:delivery_options].nil?
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

    module PutIdentityPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIdentityPolicyInput, context: context)
        type = Types::PutIdentityPolicyInput.new
        type.identity = params[:identity]
        type.policy_name = params[:policy_name]
        type.policy = params[:policy]
        type
      end
    end

    module PutIdentityPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIdentityPolicyOutput, context: context)
        type = Types::PutIdentityPolicyOutput.new
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

    module ReceiptAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReceiptAction, context: context)
        type = Types::ReceiptAction.new
        type.s3_action = S3Action.build(params[:s3_action], context: "#{context}[:s3_action]") unless params[:s3_action].nil?
        type.bounce_action = BounceAction.build(params[:bounce_action], context: "#{context}[:bounce_action]") unless params[:bounce_action].nil?
        type.workmail_action = WorkmailAction.build(params[:workmail_action], context: "#{context}[:workmail_action]") unless params[:workmail_action].nil?
        type.lambda_action = LambdaAction.build(params[:lambda_action], context: "#{context}[:lambda_action]") unless params[:lambda_action].nil?
        type.stop_action = StopAction.build(params[:stop_action], context: "#{context}[:stop_action]") unless params[:stop_action].nil?
        type.add_header_action = AddHeaderAction.build(params[:add_header_action], context: "#{context}[:add_header_action]") unless params[:add_header_action].nil?
        type.sns_action = SNSAction.build(params[:sns_action], context: "#{context}[:sns_action]") unless params[:sns_action].nil?
        type
      end
    end

    module ReceiptActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReceiptAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReceiptFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReceiptFilter, context: context)
        type = Types::ReceiptFilter.new
        type.name = params[:name]
        type.ip_filter = ReceiptIpFilter.build(params[:ip_filter], context: "#{context}[:ip_filter]") unless params[:ip_filter].nil?
        type
      end
    end

    module ReceiptFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReceiptFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReceiptIpFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReceiptIpFilter, context: context)
        type = Types::ReceiptIpFilter.new
        type.policy = params[:policy]
        type.cidr = params[:cidr]
        type
      end
    end

    module ReceiptRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReceiptRule, context: context)
        type = Types::ReceiptRule.new
        type.name = params[:name]
        type.enabled = params[:enabled]
        type.tls_policy = params[:tls_policy]
        type.recipients = RecipientsList.build(params[:recipients], context: "#{context}[:recipients]") unless params[:recipients].nil?
        type.actions = ReceiptActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.scan_enabled = params[:scan_enabled]
        type
      end
    end

    module ReceiptRuleNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReceiptRuleSetMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReceiptRuleSetMetadata, context: context)
        type = Types::ReceiptRuleSetMetadata.new
        type.name = params[:name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module ReceiptRuleSetsLists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReceiptRuleSetMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReceiptRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReceiptRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecipientDsnFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipientDsnFields, context: context)
        type = Types::RecipientDsnFields.new
        type.final_recipient = params[:final_recipient]
        type.action = params[:action]
        type.remote_mta = params[:remote_mta]
        type.status = params[:status]
        type.diagnostic_code = params[:diagnostic_code]
        type.last_attempt_date = params[:last_attempt_date]
        type.extension_fields = ExtensionFieldList.build(params[:extension_fields], context: "#{context}[:extension_fields]") unless params[:extension_fields].nil?
        type
      end
    end

    module RecipientsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReorderReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReorderReceiptRuleSetInput, context: context)
        type = Types::ReorderReceiptRuleSetInput.new
        type.rule_set_name = params[:rule_set_name]
        type.rule_names = ReceiptRuleNamesList.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type
      end
    end

    module ReorderReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReorderReceiptRuleSetOutput, context: context)
        type = Types::ReorderReceiptRuleSetOutput.new
        type
      end
    end

    module ReputationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReputationOptions, context: context)
        type = Types::ReputationOptions.new
        type.sending_enabled = params[:sending_enabled]
        type.reputation_metrics_enabled = params[:reputation_metrics_enabled]
        type.last_fresh_start = params[:last_fresh_start]
        type
      end
    end

    module RuleDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleDoesNotExistException, context: context)
        type = Types::RuleDoesNotExistException.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module RuleSetDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleSetDoesNotExistException, context: context)
        type = Types::RuleSetDoesNotExistException.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module S3Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Action, context: context)
        type = Types::S3Action.new
        type.topic_arn = params[:topic_arn]
        type.bucket_name = params[:bucket_name]
        type.object_key_prefix = params[:object_key_prefix]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module SNSAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSAction, context: context)
        type = Types::SNSAction.new
        type.topic_arn = params[:topic_arn]
        type.encoding = params[:encoding]
        type
      end
    end

    module SNSDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSDestination, context: context)
        type = Types::SNSDestination.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module SendBounceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBounceInput, context: context)
        type = Types::SendBounceInput.new
        type.original_message_id = params[:original_message_id]
        type.bounce_sender = params[:bounce_sender]
        type.explanation = params[:explanation]
        type.message_dsn = MessageDsn.build(params[:message_dsn], context: "#{context}[:message_dsn]") unless params[:message_dsn].nil?
        type.bounced_recipient_info_list = BouncedRecipientInfoList.build(params[:bounced_recipient_info_list], context: "#{context}[:bounced_recipient_info_list]") unless params[:bounced_recipient_info_list].nil?
        type.bounce_sender_arn = params[:bounce_sender_arn]
        type
      end
    end

    module SendBounceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBounceOutput, context: context)
        type = Types::SendBounceOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendBulkTemplatedEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBulkTemplatedEmailInput, context: context)
        type = Types::SendBulkTemplatedEmailInput.new
        type.source = params[:source]
        type.source_arn = params[:source_arn]
        type.reply_to_addresses = AddressList.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.return_path = params[:return_path]
        type.return_path_arn = params[:return_path_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.default_tags = MessageTagList.build(params[:default_tags], context: "#{context}[:default_tags]") unless params[:default_tags].nil?
        type.template = params[:template]
        type.template_arn = params[:template_arn]
        type.default_template_data = params[:default_template_data]
        type.destinations = BulkEmailDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type
      end
    end

    module SendBulkTemplatedEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendBulkTemplatedEmailOutput, context: context)
        type = Types::SendBulkTemplatedEmailOutput.new
        type.status = BulkEmailDestinationStatusList.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
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

    module SendDataPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendDataPoint, context: context)
        type = Types::SendDataPoint.new
        type.timestamp = params[:timestamp]
        type.delivery_attempts = params[:delivery_attempts]
        type.bounces = params[:bounces]
        type.complaints = params[:complaints]
        type.rejects = params[:rejects]
        type
      end
    end

    module SendDataPointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SendDataPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEmailInput, context: context)
        type = Types::SendEmailInput.new
        type.source = params[:source]
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.message = Message.build(params[:message], context: "#{context}[:message]") unless params[:message].nil?
        type.reply_to_addresses = AddressList.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.return_path = params[:return_path]
        type.source_arn = params[:source_arn]
        type.return_path_arn = params[:return_path_arn]
        type.tags = MessageTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.configuration_set_name = params[:configuration_set_name]
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

    module SendRawEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendRawEmailInput, context: context)
        type = Types::SendRawEmailInput.new
        type.source = params[:source]
        type.destinations = AddressList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.raw_message = RawMessage.build(params[:raw_message], context: "#{context}[:raw_message]") unless params[:raw_message].nil?
        type.from_arn = params[:from_arn]
        type.source_arn = params[:source_arn]
        type.return_path_arn = params[:return_path_arn]
        type.tags = MessageTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module SendRawEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendRawEmailOutput, context: context)
        type = Types::SendRawEmailOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendTemplatedEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTemplatedEmailInput, context: context)
        type = Types::SendTemplatedEmailInput.new
        type.source = params[:source]
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.reply_to_addresses = AddressList.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.return_path = params[:return_path]
        type.source_arn = params[:source_arn]
        type.return_path_arn = params[:return_path_arn]
        type.tags = MessageTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type.template = params[:template]
        type.template_arn = params[:template_arn]
        type.template_data = params[:template_data]
        type
      end
    end

    module SendTemplatedEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTemplatedEmailOutput, context: context)
        type = Types::SendTemplatedEmailOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SetActiveReceiptRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetActiveReceiptRuleSetInput, context: context)
        type = Types::SetActiveReceiptRuleSetInput.new
        type.rule_set_name = params[:rule_set_name]
        type
      end
    end

    module SetActiveReceiptRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetActiveReceiptRuleSetOutput, context: context)
        type = Types::SetActiveReceiptRuleSetOutput.new
        type
      end
    end

    module SetIdentityDkimEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityDkimEnabledInput, context: context)
        type = Types::SetIdentityDkimEnabledInput.new
        type.identity = params[:identity]
        type.dkim_enabled = params[:dkim_enabled]
        type
      end
    end

    module SetIdentityDkimEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityDkimEnabledOutput, context: context)
        type = Types::SetIdentityDkimEnabledOutput.new
        type
      end
    end

    module SetIdentityFeedbackForwardingEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityFeedbackForwardingEnabledInput, context: context)
        type = Types::SetIdentityFeedbackForwardingEnabledInput.new
        type.identity = params[:identity]
        type.forwarding_enabled = params[:forwarding_enabled]
        type
      end
    end

    module SetIdentityFeedbackForwardingEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityFeedbackForwardingEnabledOutput, context: context)
        type = Types::SetIdentityFeedbackForwardingEnabledOutput.new
        type
      end
    end

    module SetIdentityHeadersInNotificationsEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityHeadersInNotificationsEnabledInput, context: context)
        type = Types::SetIdentityHeadersInNotificationsEnabledInput.new
        type.identity = params[:identity]
        type.notification_type = params[:notification_type]
        type.enabled = params[:enabled]
        type
      end
    end

    module SetIdentityHeadersInNotificationsEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityHeadersInNotificationsEnabledOutput, context: context)
        type = Types::SetIdentityHeadersInNotificationsEnabledOutput.new
        type
      end
    end

    module SetIdentityMailFromDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityMailFromDomainInput, context: context)
        type = Types::SetIdentityMailFromDomainInput.new
        type.identity = params[:identity]
        type.mail_from_domain = params[:mail_from_domain]
        type.behavior_on_mx_failure = params[:behavior_on_mx_failure]
        type
      end
    end

    module SetIdentityMailFromDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityMailFromDomainOutput, context: context)
        type = Types::SetIdentityMailFromDomainOutput.new
        type
      end
    end

    module SetIdentityNotificationTopicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityNotificationTopicInput, context: context)
        type = Types::SetIdentityNotificationTopicInput.new
        type.identity = params[:identity]
        type.notification_type = params[:notification_type]
        type.sns_topic = params[:sns_topic]
        type
      end
    end

    module SetIdentityNotificationTopicOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityNotificationTopicOutput, context: context)
        type = Types::SetIdentityNotificationTopicOutput.new
        type
      end
    end

    module SetReceiptRulePositionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetReceiptRulePositionInput, context: context)
        type = Types::SetReceiptRulePositionInput.new
        type.rule_set_name = params[:rule_set_name]
        type.rule_name = params[:rule_name]
        type.after = params[:after]
        type
      end
    end

    module SetReceiptRulePositionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetReceiptRulePositionOutput, context: context)
        type = Types::SetReceiptRulePositionOutput.new
        type
      end
    end

    module StopAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAction, context: context)
        type = Types::StopAction.new
        type.scope = params[:scope]
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module Template
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Template, context: context)
        type = Types::Template.new
        type.template_name = params[:template_name]
        type.subject_part = params[:subject_part]
        type.text_part = params[:text_part]
        type.html_part = params[:html_part]
        type
      end
    end

    module TemplateDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateDoesNotExistException, context: context)
        type = Types::TemplateDoesNotExistException.new
        type.template_name = params[:template_name]
        type.message = params[:message]
        type
      end
    end

    module TemplateMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateMetadata, context: context)
        type = Types::TemplateMetadata.new
        type.name = params[:name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module TemplateMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestRenderTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRenderTemplateInput, context: context)
        type = Types::TestRenderTemplateInput.new
        type.template_name = params[:template_name]
        type.template_data = params[:template_data]
        type
      end
    end

    module TestRenderTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRenderTemplateOutput, context: context)
        type = Types::TestRenderTemplateOutput.new
        type.rendered_template = params[:rendered_template]
        type
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

    module TrackingOptionsAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackingOptionsAlreadyExistsException, context: context)
        type = Types::TrackingOptionsAlreadyExistsException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.message = params[:message]
        type
      end
    end

    module TrackingOptionsDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackingOptionsDoesNotExistException, context: context)
        type = Types::TrackingOptionsDoesNotExistException.new
        type.configuration_set_name = params[:configuration_set_name]
        type.message = params[:message]
        type
      end
    end

    module UpdateAccountSendingEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSendingEnabledInput, context: context)
        type = Types::UpdateAccountSendingEnabledInput.new
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateAccountSendingEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSendingEnabledOutput, context: context)
        type = Types::UpdateAccountSendingEnabledOutput.new
        type
      end
    end

    module UpdateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination = EventDestination.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
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

    module UpdateConfigurationSetReputationMetricsEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetReputationMetricsEnabledInput, context: context)
        type = Types::UpdateConfigurationSetReputationMetricsEnabledInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateConfigurationSetReputationMetricsEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetReputationMetricsEnabledOutput, context: context)
        type = Types::UpdateConfigurationSetReputationMetricsEnabledOutput.new
        type
      end
    end

    module UpdateConfigurationSetSendingEnabledInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetSendingEnabledInput, context: context)
        type = Types::UpdateConfigurationSetSendingEnabledInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateConfigurationSetSendingEnabledOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetSendingEnabledOutput, context: context)
        type = Types::UpdateConfigurationSetSendingEnabledOutput.new
        type
      end
    end

    module UpdateConfigurationSetTrackingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetTrackingOptionsInput, context: context)
        type = Types::UpdateConfigurationSetTrackingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type
      end
    end

    module UpdateConfigurationSetTrackingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetTrackingOptionsOutput, context: context)
        type = Types::UpdateConfigurationSetTrackingOptionsOutput.new
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

    module UpdateReceiptRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReceiptRuleInput, context: context)
        type = Types::UpdateReceiptRuleInput.new
        type.rule_set_name = params[:rule_set_name]
        type.rule = ReceiptRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module UpdateReceiptRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReceiptRuleOutput, context: context)
        type = Types::UpdateReceiptRuleOutput.new
        type
      end
    end

    module UpdateTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateInput, context: context)
        type = Types::UpdateTemplateInput.new
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type
      end
    end

    module UpdateTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateOutput, context: context)
        type = Types::UpdateTemplateOutput.new
        type
      end
    end

    module VerificationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IdentityVerificationAttributes.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module VerificationTokenList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VerifyDomainDkimInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyDomainDkimInput, context: context)
        type = Types::VerifyDomainDkimInput.new
        type.domain = params[:domain]
        type
      end
    end

    module VerifyDomainDkimOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyDomainDkimOutput, context: context)
        type = Types::VerifyDomainDkimOutput.new
        type.dkim_tokens = VerificationTokenList.build(params[:dkim_tokens], context: "#{context}[:dkim_tokens]") unless params[:dkim_tokens].nil?
        type
      end
    end

    module VerifyDomainIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyDomainIdentityInput, context: context)
        type = Types::VerifyDomainIdentityInput.new
        type.domain = params[:domain]
        type
      end
    end

    module VerifyDomainIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyDomainIdentityOutput, context: context)
        type = Types::VerifyDomainIdentityOutput.new
        type.verification_token = params[:verification_token]
        type
      end
    end

    module VerifyEmailAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyEmailAddressInput, context: context)
        type = Types::VerifyEmailAddressInput.new
        type.email_address = params[:email_address]
        type
      end
    end

    module VerifyEmailAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyEmailAddressOutput, context: context)
        type = Types::VerifyEmailAddressOutput.new
        type
      end
    end

    module VerifyEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyEmailIdentityInput, context: context)
        type = Types::VerifyEmailIdentityInput.new
        type.email_address = params[:email_address]
        type
      end
    end

    module VerifyEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyEmailIdentityOutput, context: context)
        type = Types::VerifyEmailIdentityOutput.new
        type
      end
    end

    module WorkmailAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkmailAction, context: context)
        type = Types::WorkmailAction.new
        type.topic_arn = params[:topic_arn]
        type.organization_arn = params[:organization_arn]
        type
      end
    end

  end
end
