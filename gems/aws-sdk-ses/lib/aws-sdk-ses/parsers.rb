# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SES
  module Parsers

    # Operation Parser for CloneReceiptRuleSet
    class CloneReceiptRuleSet
      def self.parse(http_resp)
        data = Types::CloneReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CloneReceiptRuleSetResult')
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for RuleSetDoesNotExistException
    class RuleSetDoesNotExistException
      def self.parse(http_resp)
        data = Types::RuleSetDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateConfigurationSet
    class CreateConfigurationSet
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateConfigurationSetResult')
        data
      end
    end

    # Error Parser for InvalidConfigurationSetException
    class InvalidConfigurationSetException
      def self.parse(http_resp)
        data = Types::InvalidConfigurationSetException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConfigurationSetAlreadyExistsException
    class ConfigurationSetAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ConfigurationSetAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetEventDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateConfigurationSetEventDestinationResult')
        data
      end
    end

    # Error Parser for InvalidFirehoseDestinationException
    class InvalidFirehoseDestinationException
      def self.parse(http_resp)
        data = Types::InvalidFirehoseDestinationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('EventDestinationName') do |node|
          data.event_destination_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidCloudWatchDestinationException
    class InvalidCloudWatchDestinationException
      def self.parse(http_resp)
        data = Types::InvalidCloudWatchDestinationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('EventDestinationName') do |node|
          data.event_destination_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EventDestinationAlreadyExistsException
    class EventDestinationAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EventDestinationAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('EventDestinationName') do |node|
          data.event_destination_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSNSDestinationException
    class InvalidSNSDestinationException
      def self.parse(http_resp)
        data = Types::InvalidSNSDestinationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('EventDestinationName') do |node|
          data.event_destination_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConfigurationSetDoesNotExistException
    class ConfigurationSetDoesNotExistException
      def self.parse(http_resp)
        data = Types::ConfigurationSetDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateConfigurationSetTrackingOptions
    class CreateConfigurationSetTrackingOptions
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetTrackingOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateConfigurationSetTrackingOptionsResult')
        data
      end
    end

    # Error Parser for InvalidTrackingOptionsException
    class InvalidTrackingOptionsException
      def self.parse(http_resp)
        data = Types::InvalidTrackingOptionsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TrackingOptionsAlreadyExistsException
    class TrackingOptionsAlreadyExistsException
      def self.parse(http_resp)
        data = Types::TrackingOptionsAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCustomVerificationEmailTemplate
    class CreateCustomVerificationEmailTemplate
      def self.parse(http_resp)
        data = Types::CreateCustomVerificationEmailTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateCustomVerificationEmailTemplateResult')
        data
      end
    end

    # Error Parser for CustomVerificationEmailInvalidContentException
    class CustomVerificationEmailInvalidContentException
      def self.parse(http_resp)
        data = Types::CustomVerificationEmailInvalidContentException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FromEmailAddressNotVerifiedException
    class FromEmailAddressNotVerifiedException
      def self.parse(http_resp)
        data = Types::FromEmailAddressNotVerifiedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('FromEmailAddress') do |node|
          data.from_email_address = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CustomVerificationEmailTemplateAlreadyExistsException
    class CustomVerificationEmailTemplateAlreadyExistsException
      def self.parse(http_resp)
        data = Types::CustomVerificationEmailTemplateAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('CustomVerificationEmailTemplateName') do |node|
          data.custom_verification_email_template_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateReceiptFilter
    class CreateReceiptFilter
      def self.parse(http_resp)
        data = Types::CreateReceiptFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateReceiptFilterResult')
        data
      end
    end

    # Operation Parser for CreateReceiptRule
    class CreateReceiptRule
      def self.parse(http_resp)
        data = Types::CreateReceiptRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateReceiptRuleResult')
        data
      end
    end

    # Error Parser for InvalidSnsTopicException
    class InvalidSnsTopicException
      def self.parse(http_resp)
        data = Types::InvalidSnsTopicException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Topic') do |node|
          data.topic = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidS3ConfigurationException
    class InvalidS3ConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidS3ConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for RuleDoesNotExistException
    class RuleDoesNotExistException
      def self.parse(http_resp)
        data = Types::RuleDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidLambdaFunctionException
    class InvalidLambdaFunctionException
      def self.parse(http_resp)
        data = Types::InvalidLambdaFunctionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('FunctionArn') do |node|
          data.function_arn = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateReceiptRuleSet
    class CreateReceiptRuleSet
      def self.parse(http_resp)
        data = Types::CreateReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateReceiptRuleSetResult')
        data
      end
    end

    # Operation Parser for CreateTemplate
    class CreateTemplate
      def self.parse(http_resp)
        data = Types::CreateTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateTemplateResult')
        data
      end
    end

    # Error Parser for InvalidTemplateException
    class InvalidTemplateException
      def self.parse(http_resp)
        data = Types::InvalidTemplateException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteConfigurationSetResult')
        data
      end
    end

    # Operation Parser for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetEventDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteConfigurationSetEventDestinationResult')
        data
      end
    end

    # Error Parser for EventDestinationDoesNotExistException
    class EventDestinationDoesNotExistException
      def self.parse(http_resp)
        data = Types::EventDestinationDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('EventDestinationName') do |node|
          data.event_destination_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteConfigurationSetTrackingOptions
    class DeleteConfigurationSetTrackingOptions
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetTrackingOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteConfigurationSetTrackingOptionsResult')
        data
      end
    end

    # Error Parser for TrackingOptionsDoesNotExistException
    class TrackingOptionsDoesNotExistException
      def self.parse(http_resp)
        data = Types::TrackingOptionsDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteCustomVerificationEmailTemplate
    class DeleteCustomVerificationEmailTemplate
      def self.parse(http_resp)
        data = Types::DeleteCustomVerificationEmailTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteCustomVerificationEmailTemplateResult')
        data
      end
    end

    # Operation Parser for DeleteIdentity
    class DeleteIdentity
      def self.parse(http_resp)
        data = Types::DeleteIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteIdentityResult')
        data
      end
    end

    # Operation Parser for DeleteIdentityPolicy
    class DeleteIdentityPolicy
      def self.parse(http_resp)
        data = Types::DeleteIdentityPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteIdentityPolicyResult')
        data
      end
    end

    # Operation Parser for DeleteReceiptFilter
    class DeleteReceiptFilter
      def self.parse(http_resp)
        data = Types::DeleteReceiptFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteReceiptFilterResult')
        data
      end
    end

    # Operation Parser for DeleteReceiptRule
    class DeleteReceiptRule
      def self.parse(http_resp)
        data = Types::DeleteReceiptRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteReceiptRuleResult')
        data
      end
    end

    # Operation Parser for DeleteReceiptRuleSet
    class DeleteReceiptRuleSet
      def self.parse(http_resp)
        data = Types::DeleteReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteReceiptRuleSetResult')
        data
      end
    end

    # Error Parser for CannotDeleteException
    class CannotDeleteException
      def self.parse(http_resp)
        data = Types::CannotDeleteException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTemplate
    class DeleteTemplate
      def self.parse(http_resp)
        data = Types::DeleteTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteTemplateResult')
        data
      end
    end

    # Operation Parser for DeleteVerifiedEmailAddress
    class DeleteVerifiedEmailAddress
      def self.parse(http_resp)
        data = Types::DeleteVerifiedEmailAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteVerifiedEmailAddressResult')
        data
      end
    end

    # Operation Parser for DescribeActiveReceiptRuleSet
    class DescribeActiveReceiptRuleSet
      def self.parse(http_resp)
        data = Types::DescribeActiveReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeActiveReceiptRuleSetResult')
        xml.at('Metadata') do |node|
          data.metadata = Parsers::ReceiptRuleSetMetadata.parse(node)
        end
        xml.at('Rules') do |node|
          children = node.children('member')
          data.rules = Parsers::ReceiptRulesList.parse(children)
        end
        data
      end
    end

    class ReceiptRulesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReceiptRule.parse(node)
        end
        data
      end
    end

    class ReceiptRule
      def self.parse(xml)
        data = Types::ReceiptRule.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('TlsPolicy') do |node|
          data.tls_policy = (node.text || '')
        end
        xml.at('Recipients') do |node|
          children = node.children('member')
          data.recipients = Parsers::RecipientsList.parse(children)
        end
        xml.at('Actions') do |node|
          children = node.children('member')
          data.actions = Parsers::ReceiptActionsList.parse(children)
        end
        xml.at('ScanEnabled') do |node|
          data.scan_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class ReceiptActionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReceiptAction.parse(node)
        end
        data
      end
    end

    class ReceiptAction
      def self.parse(xml)
        data = Types::ReceiptAction.new
        xml.at('S3Action') do |node|
          data.s3_action = Parsers::S3Action.parse(node)
        end
        xml.at('BounceAction') do |node|
          data.bounce_action = Parsers::BounceAction.parse(node)
        end
        xml.at('WorkmailAction') do |node|
          data.workmail_action = Parsers::WorkmailAction.parse(node)
        end
        xml.at('LambdaAction') do |node|
          data.lambda_action = Parsers::LambdaAction.parse(node)
        end
        xml.at('StopAction') do |node|
          data.stop_action = Parsers::StopAction.parse(node)
        end
        xml.at('AddHeaderAction') do |node|
          data.add_header_action = Parsers::AddHeaderAction.parse(node)
        end
        xml.at('SNSAction') do |node|
          data.sns_action = Parsers::SNSAction.parse(node)
        end
        return data
      end
    end

    class SNSAction
      def self.parse(xml)
        data = Types::SNSAction.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('Encoding') do |node|
          data.encoding = (node.text || '')
        end
        return data
      end
    end

    class AddHeaderAction
      def self.parse(xml)
        data = Types::AddHeaderAction.new
        xml.at('HeaderName') do |node|
          data.header_name = (node.text || '')
        end
        xml.at('HeaderValue') do |node|
          data.header_value = (node.text || '')
        end
        return data
      end
    end

    class StopAction
      def self.parse(xml)
        data = Types::StopAction.new
        xml.at('Scope') do |node|
          data.scope = (node.text || '')
        end
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        return data
      end
    end

    class LambdaAction
      def self.parse(xml)
        data = Types::LambdaAction.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('FunctionArn') do |node|
          data.function_arn = (node.text || '')
        end
        xml.at('InvocationType') do |node|
          data.invocation_type = (node.text || '')
        end
        return data
      end
    end

    class WorkmailAction
      def self.parse(xml)
        data = Types::WorkmailAction.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('OrganizationArn') do |node|
          data.organization_arn = (node.text || '')
        end
        return data
      end
    end

    class BounceAction
      def self.parse(xml)
        data = Types::BounceAction.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('SmtpReplyCode') do |node|
          data.smtp_reply_code = (node.text || '')
        end
        xml.at('StatusCode') do |node|
          data.status_code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('Sender') do |node|
          data.sender = (node.text || '')
        end
        return data
      end
    end

    class S3Action
      def self.parse(xml)
        data = Types::S3Action.new
        xml.at('TopicArn') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('BucketName') do |node|
          data.bucket_name = (node.text || '')
        end
        xml.at('ObjectKeyPrefix') do |node|
          data.object_key_prefix = (node.text || '')
        end
        xml.at('KmsKeyArn') do |node|
          data.kms_key_arn = (node.text || '')
        end
        return data
      end
    end

    class RecipientsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ReceiptRuleSetMetadata
      def self.parse(xml)
        data = Types::ReceiptRuleSetMetadata.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CreatedTimestamp') do |node|
          data.created_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeConfigurationSet
    class DescribeConfigurationSet
      def self.parse(http_resp)
        data = Types::DescribeConfigurationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeConfigurationSetResult')
        xml.at('ConfigurationSet') do |node|
          data.configuration_set = Parsers::ConfigurationSet.parse(node)
        end
        xml.at('EventDestinations') do |node|
          children = node.children('member')
          data.event_destinations = Parsers::EventDestinations.parse(children)
        end
        xml.at('TrackingOptions') do |node|
          data.tracking_options = Parsers::TrackingOptions.parse(node)
        end
        xml.at('DeliveryOptions') do |node|
          data.delivery_options = Parsers::DeliveryOptions.parse(node)
        end
        xml.at('ReputationOptions') do |node|
          data.reputation_options = Parsers::ReputationOptions.parse(node)
        end
        data
      end
    end

    class ReputationOptions
      def self.parse(xml)
        data = Types::ReputationOptions.new
        xml.at('SendingEnabled') do |node|
          data.sending_enabled = (node.text == 'true')
        end
        xml.at('ReputationMetricsEnabled') do |node|
          data.reputation_metrics_enabled = (node.text == 'true')
        end
        xml.at('LastFreshStart') do |node|
          data.last_fresh_start = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class DeliveryOptions
      def self.parse(xml)
        data = Types::DeliveryOptions.new
        xml.at('TlsPolicy') do |node|
          data.tls_policy = (node.text || '')
        end
        return data
      end
    end

    class TrackingOptions
      def self.parse(xml)
        data = Types::TrackingOptions.new
        xml.at('CustomRedirectDomain') do |node|
          data.custom_redirect_domain = (node.text || '')
        end
        return data
      end
    end

    class EventDestinations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventDestination.parse(node)
        end
        data
      end
    end

    class EventDestination
      def self.parse(xml)
        data = Types::EventDestination.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('MatchingEventTypes') do |node|
          children = node.children('member')
          data.matching_event_types = Parsers::EventTypes.parse(children)
        end
        xml.at('KinesisFirehoseDestination') do |node|
          data.kinesis_firehose_destination = Parsers::KinesisFirehoseDestination.parse(node)
        end
        xml.at('CloudWatchDestination') do |node|
          data.cloud_watch_destination = Parsers::CloudWatchDestination.parse(node)
        end
        xml.at('SNSDestination') do |node|
          data.sns_destination = Parsers::SNSDestination.parse(node)
        end
        return data
      end
    end

    class SNSDestination
      def self.parse(xml)
        data = Types::SNSDestination.new
        xml.at('TopicARN') do |node|
          data.topic_arn = (node.text || '')
        end
        return data
      end
    end

    class CloudWatchDestination
      def self.parse(xml)
        data = Types::CloudWatchDestination.new
        xml.at('DimensionConfigurations') do |node|
          children = node.children('member')
          data.dimension_configurations = Parsers::CloudWatchDimensionConfigurations.parse(children)
        end
        return data
      end
    end

    class CloudWatchDimensionConfigurations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CloudWatchDimensionConfiguration.parse(node)
        end
        data
      end
    end

    class CloudWatchDimensionConfiguration
      def self.parse(xml)
        data = Types::CloudWatchDimensionConfiguration.new
        xml.at('DimensionName') do |node|
          data.dimension_name = (node.text || '')
        end
        xml.at('DimensionValueSource') do |node|
          data.dimension_value_source = (node.text || '')
        end
        xml.at('DefaultDimensionValue') do |node|
          data.default_dimension_value = (node.text || '')
        end
        return data
      end
    end

    class KinesisFirehoseDestination
      def self.parse(xml)
        data = Types::KinesisFirehoseDestination.new
        xml.at('IAMRoleARN') do |node|
          data.iam_role_arn = (node.text || '')
        end
        xml.at('DeliveryStreamARN') do |node|
          data.delivery_stream_arn = (node.text || '')
        end
        return data
      end
    end

    class EventTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ConfigurationSet
      def self.parse(xml)
        data = Types::ConfigurationSet.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeReceiptRule
    class DescribeReceiptRule
      def self.parse(http_resp)
        data = Types::DescribeReceiptRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReceiptRuleResult')
        xml.at('Rule') do |node|
          data.rule = Parsers::ReceiptRule.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeReceiptRuleSet
    class DescribeReceiptRuleSet
      def self.parse(http_resp)
        data = Types::DescribeReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReceiptRuleSetResult')
        xml.at('Metadata') do |node|
          data.metadata = Parsers::ReceiptRuleSetMetadata.parse(node)
        end
        xml.at('Rules') do |node|
          children = node.children('member')
          data.rules = Parsers::ReceiptRulesList.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetAccountSendingEnabled
    class GetAccountSendingEnabled
      def self.parse(http_resp)
        data = Types::GetAccountSendingEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetAccountSendingEnabledResult')
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        data
      end
    end

    # Operation Parser for GetCustomVerificationEmailTemplate
    class GetCustomVerificationEmailTemplate
      def self.parse(http_resp)
        data = Types::GetCustomVerificationEmailTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetCustomVerificationEmailTemplateResult')
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('FromEmailAddress') do |node|
          data.from_email_address = (node.text || '')
        end
        xml.at('TemplateSubject') do |node|
          data.template_subject = (node.text || '')
        end
        xml.at('TemplateContent') do |node|
          data.template_content = (node.text || '')
        end
        xml.at('SuccessRedirectionURL') do |node|
          data.success_redirection_url = (node.text || '')
        end
        xml.at('FailureRedirectionURL') do |node|
          data.failure_redirection_url = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CustomVerificationEmailTemplateDoesNotExistException
    class CustomVerificationEmailTemplateDoesNotExistException
      def self.parse(http_resp)
        data = Types::CustomVerificationEmailTemplateDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('CustomVerificationEmailTemplateName') do |node|
          data.custom_verification_email_template_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetIdentityDkimAttributes
    class GetIdentityDkimAttributes
      def self.parse(http_resp)
        data = Types::GetIdentityDkimAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetIdentityDkimAttributesResult')
        xml.at('DkimAttributes') do |node|
          children = node.children('entry')
          data.dkim_attributes = Parsers::DkimAttributes.parse(children)
        end
        data
      end
    end

    class DkimAttributes
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = Parsers::IdentityDkimAttributes.parse(node)
        end
        data
      end
    end

    class IdentityDkimAttributes
      def self.parse(xml)
        data = Types::IdentityDkimAttributes.new
        xml.at('DkimEnabled') do |node|
          data.dkim_enabled = (node.text == 'true')
        end
        xml.at('DkimVerificationStatus') do |node|
          data.dkim_verification_status = (node.text || '')
        end
        xml.at('DkimTokens') do |node|
          children = node.children('member')
          data.dkim_tokens = Parsers::VerificationTokenList.parse(children)
        end
        return data
      end
    end

    class VerificationTokenList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetIdentityMailFromDomainAttributes
    class GetIdentityMailFromDomainAttributes
      def self.parse(http_resp)
        data = Types::GetIdentityMailFromDomainAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetIdentityMailFromDomainAttributesResult')
        xml.at('MailFromDomainAttributes') do |node|
          children = node.children('entry')
          data.mail_from_domain_attributes = Parsers::MailFromDomainAttributes.parse(children)
        end
        data
      end
    end

    class MailFromDomainAttributes
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = Parsers::IdentityMailFromDomainAttributes.parse(node)
        end
        data
      end
    end

    class IdentityMailFromDomainAttributes
      def self.parse(xml)
        data = Types::IdentityMailFromDomainAttributes.new
        xml.at('MailFromDomain') do |node|
          data.mail_from_domain = (node.text || '')
        end
        xml.at('MailFromDomainStatus') do |node|
          data.mail_from_domain_status = (node.text || '')
        end
        xml.at('BehaviorOnMXFailure') do |node|
          data.behavior_on_mx_failure = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetIdentityNotificationAttributes
    class GetIdentityNotificationAttributes
      def self.parse(http_resp)
        data = Types::GetIdentityNotificationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetIdentityNotificationAttributesResult')
        xml.at('NotificationAttributes') do |node|
          children = node.children('entry')
          data.notification_attributes = Parsers::NotificationAttributes.parse(children)
        end
        data
      end
    end

    class NotificationAttributes
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = Parsers::IdentityNotificationAttributes.parse(node)
        end
        data
      end
    end

    class IdentityNotificationAttributes
      def self.parse(xml)
        data = Types::IdentityNotificationAttributes.new
        xml.at('BounceTopic') do |node|
          data.bounce_topic = (node.text || '')
        end
        xml.at('ComplaintTopic') do |node|
          data.complaint_topic = (node.text || '')
        end
        xml.at('DeliveryTopic') do |node|
          data.delivery_topic = (node.text || '')
        end
        xml.at('ForwardingEnabled') do |node|
          data.forwarding_enabled = (node.text == 'true')
        end
        xml.at('HeadersInBounceNotificationsEnabled') do |node|
          data.headers_in_bounce_notifications_enabled = (node.text == 'true')
        end
        xml.at('HeadersInComplaintNotificationsEnabled') do |node|
          data.headers_in_complaint_notifications_enabled = (node.text == 'true')
        end
        xml.at('HeadersInDeliveryNotificationsEnabled') do |node|
          data.headers_in_delivery_notifications_enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for GetIdentityPolicies
    class GetIdentityPolicies
      def self.parse(http_resp)
        data = Types::GetIdentityPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetIdentityPoliciesResult')
        xml.at('Policies') do |node|
          children = node.children('entry')
          data.policies = Parsers::PolicyMap.parse(children)
        end
        data
      end
    end

    class PolicyMap
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

    # Operation Parser for GetIdentityVerificationAttributes
    class GetIdentityVerificationAttributes
      def self.parse(http_resp)
        data = Types::GetIdentityVerificationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetIdentityVerificationAttributesResult')
        xml.at('VerificationAttributes') do |node|
          children = node.children('entry')
          data.verification_attributes = Parsers::VerificationAttributes.parse(children)
        end
        data
      end
    end

    class VerificationAttributes
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = Parsers::IdentityVerificationAttributes.parse(node)
        end
        data
      end
    end

    class IdentityVerificationAttributes
      def self.parse(xml)
        data = Types::IdentityVerificationAttributes.new
        xml.at('VerificationStatus') do |node|
          data.verification_status = (node.text || '')
        end
        xml.at('VerificationToken') do |node|
          data.verification_token = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetSendQuota
    class GetSendQuota
      def self.parse(http_resp)
        data = Types::GetSendQuotaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSendQuotaResult')
        xml.at('Max24HourSend') do |node|
          data.max24_hour_send = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('MaxSendRate') do |node|
          data.max_send_rate = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('SentLast24Hours') do |node|
          data.sent_last24_hours = Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    # Operation Parser for GetSendStatistics
    class GetSendStatistics
      def self.parse(http_resp)
        data = Types::GetSendStatisticsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSendStatisticsResult')
        xml.at('SendDataPoints') do |node|
          children = node.children('member')
          data.send_data_points = Parsers::SendDataPointList.parse(children)
        end
        data
      end
    end

    class SendDataPointList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SendDataPoint.parse(node)
        end
        data
      end
    end

    class SendDataPoint
      def self.parse(xml)
        data = Types::SendDataPoint.new
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('DeliveryAttempts') do |node|
          data.delivery_attempts = node.text&.to_i
        end
        xml.at('Bounces') do |node|
          data.bounces = node.text&.to_i
        end
        xml.at('Complaints') do |node|
          data.complaints = node.text&.to_i
        end
        xml.at('Rejects') do |node|
          data.rejects = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for GetTemplate
    class GetTemplate
      def self.parse(http_resp)
        data = Types::GetTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetTemplateResult')
        xml.at('Template') do |node|
          data.template = Parsers::Template.parse(node)
        end
        data
      end
    end

    class Template
      def self.parse(xml)
        data = Types::Template.new
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('SubjectPart') do |node|
          data.subject_part = (node.text || '')
        end
        xml.at('TextPart') do |node|
          data.text_part = (node.text || '')
        end
        xml.at('HtmlPart') do |node|
          data.html_part = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TemplateDoesNotExistException
    class TemplateDoesNotExistException
      def self.parse(http_resp)
        data = Types::TemplateDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListConfigurationSets
    class ListConfigurationSets
      def self.parse(http_resp)
        data = Types::ListConfigurationSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListConfigurationSetsResult')
        xml.at('ConfigurationSets') do |node|
          children = node.children('member')
          data.configuration_sets = Parsers::ConfigurationSets.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ConfigurationSets
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConfigurationSet.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListCustomVerificationEmailTemplates
    class ListCustomVerificationEmailTemplates
      def self.parse(http_resp)
        data = Types::ListCustomVerificationEmailTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListCustomVerificationEmailTemplatesResult')
        xml.at('CustomVerificationEmailTemplates') do |node|
          children = node.children('member')
          data.custom_verification_email_templates = Parsers::CustomVerificationEmailTemplates.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class CustomVerificationEmailTemplates
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CustomVerificationEmailTemplate.parse(node)
        end
        data
      end
    end

    class CustomVerificationEmailTemplate
      def self.parse(xml)
        data = Types::CustomVerificationEmailTemplate.new
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('FromEmailAddress') do |node|
          data.from_email_address = (node.text || '')
        end
        xml.at('TemplateSubject') do |node|
          data.template_subject = (node.text || '')
        end
        xml.at('SuccessRedirectionURL') do |node|
          data.success_redirection_url = (node.text || '')
        end
        xml.at('FailureRedirectionURL') do |node|
          data.failure_redirection_url = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListIdentities
    class ListIdentities
      def self.parse(http_resp)
        data = Types::ListIdentitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListIdentitiesResult')
        xml.at('Identities') do |node|
          children = node.children('member')
          data.identities = Parsers::IdentityList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class IdentityList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListIdentityPolicies
    class ListIdentityPolicies
      def self.parse(http_resp)
        data = Types::ListIdentityPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListIdentityPoliciesResult')
        xml.at('PolicyNames') do |node|
          children = node.children('member')
          data.policy_names = Parsers::PolicyNameList.parse(children)
        end
        data
      end
    end

    class PolicyNameList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListReceiptFilters
    class ListReceiptFilters
      def self.parse(http_resp)
        data = Types::ListReceiptFiltersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListReceiptFiltersResult')
        xml.at('Filters') do |node|
          children = node.children('member')
          data.filters = Parsers::ReceiptFilterList.parse(children)
        end
        data
      end
    end

    class ReceiptFilterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReceiptFilter.parse(node)
        end
        data
      end
    end

    class ReceiptFilter
      def self.parse(xml)
        data = Types::ReceiptFilter.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('IpFilter') do |node|
          data.ip_filter = Parsers::ReceiptIpFilter.parse(node)
        end
        return data
      end
    end

    class ReceiptIpFilter
      def self.parse(xml)
        data = Types::ReceiptIpFilter.new
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        xml.at('Cidr') do |node|
          data.cidr = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListReceiptRuleSets
    class ListReceiptRuleSets
      def self.parse(http_resp)
        data = Types::ListReceiptRuleSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListReceiptRuleSetsResult')
        xml.at('RuleSets') do |node|
          children = node.children('member')
          data.rule_sets = Parsers::ReceiptRuleSetsLists.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ReceiptRuleSetsLists
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReceiptRuleSetMetadata.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListTemplates
    class ListTemplates
      def self.parse(http_resp)
        data = Types::ListTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTemplatesResult')
        xml.at('TemplatesMetadata') do |node|
          children = node.children('member')
          data.templates_metadata = Parsers::TemplateMetadataList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class TemplateMetadataList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TemplateMetadata.parse(node)
        end
        data
      end
    end

    class TemplateMetadata
      def self.parse(xml)
        data = Types::TemplateMetadata.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CreatedTimestamp') do |node|
          data.created_timestamp = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for ListVerifiedEmailAddresses
    class ListVerifiedEmailAddresses
      def self.parse(http_resp)
        data = Types::ListVerifiedEmailAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListVerifiedEmailAddressesResult')
        xml.at('VerifiedEmailAddresses') do |node|
          children = node.children('member')
          data.verified_email_addresses = Parsers::AddressList.parse(children)
        end
        data
      end
    end

    class AddressList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PutConfigurationSetDeliveryOptions
    class PutConfigurationSetDeliveryOptions
      def self.parse(http_resp)
        data = Types::PutConfigurationSetDeliveryOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutConfigurationSetDeliveryOptionsResult')
        data
      end
    end

    # Error Parser for InvalidDeliveryOptionsException
    class InvalidDeliveryOptionsException
      def self.parse(http_resp)
        data = Types::InvalidDeliveryOptionsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PutIdentityPolicy
    class PutIdentityPolicy
      def self.parse(http_resp)
        data = Types::PutIdentityPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutIdentityPolicyResult')
        data
      end
    end

    # Error Parser for InvalidPolicyException
    class InvalidPolicyException
      def self.parse(http_resp)
        data = Types::InvalidPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ReorderReceiptRuleSet
    class ReorderReceiptRuleSet
      def self.parse(http_resp)
        data = Types::ReorderReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ReorderReceiptRuleSetResult')
        data
      end
    end

    # Operation Parser for SendBounce
    class SendBounce
      def self.parse(http_resp)
        data = Types::SendBounceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendBounceResult')
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for MessageRejected
    class MessageRejected
      def self.parse(http_resp)
        data = Types::MessageRejected.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SendBulkTemplatedEmail
    class SendBulkTemplatedEmail
      def self.parse(http_resp)
        data = Types::SendBulkTemplatedEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendBulkTemplatedEmailResult')
        xml.at('Status') do |node|
          children = node.children('member')
          data.status = Parsers::BulkEmailDestinationStatusList.parse(children)
        end
        data
      end
    end

    class BulkEmailDestinationStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::BulkEmailDestinationStatus.parse(node)
        end
        data
      end
    end

    class BulkEmailDestinationStatus
      def self.parse(xml)
        data = Types::BulkEmailDestinationStatus.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Error') do |node|
          data.error = (node.text || '')
        end
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for MailFromDomainNotVerifiedException
    class MailFromDomainNotVerifiedException
      def self.parse(http_resp)
        data = Types::MailFromDomainNotVerifiedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AccountSendingPausedException
    class AccountSendingPausedException
      def self.parse(http_resp)
        data = Types::AccountSendingPausedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConfigurationSetSendingPausedException
    class ConfigurationSetSendingPausedException
      def self.parse(http_resp)
        data = Types::ConfigurationSetSendingPausedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ConfigurationSetName') do |node|
          data.configuration_set_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SendCustomVerificationEmail
    class SendCustomVerificationEmail
      def self.parse(http_resp)
        data = Types::SendCustomVerificationEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendCustomVerificationEmailResult')
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ProductionAccessNotGrantedException
    class ProductionAccessNotGrantedException
      def self.parse(http_resp)
        data = Types::ProductionAccessNotGrantedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SendEmail
    class SendEmail
      def self.parse(http_resp)
        data = Types::SendEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendEmailResult')
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SendRawEmail
    class SendRawEmail
      def self.parse(http_resp)
        data = Types::SendRawEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendRawEmailResult')
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SendTemplatedEmail
    class SendTemplatedEmail
      def self.parse(http_resp)
        data = Types::SendTemplatedEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SendTemplatedEmailResult')
        xml.at('MessageId') do |node|
          data.message_id = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SetActiveReceiptRuleSet
    class SetActiveReceiptRuleSet
      def self.parse(http_resp)
        data = Types::SetActiveReceiptRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetActiveReceiptRuleSetResult')
        data
      end
    end

    # Operation Parser for SetIdentityDkimEnabled
    class SetIdentityDkimEnabled
      def self.parse(http_resp)
        data = Types::SetIdentityDkimEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetIdentityDkimEnabledResult')
        data
      end
    end

    # Operation Parser for SetIdentityFeedbackForwardingEnabled
    class SetIdentityFeedbackForwardingEnabled
      def self.parse(http_resp)
        data = Types::SetIdentityFeedbackForwardingEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetIdentityFeedbackForwardingEnabledResult')
        data
      end
    end

    # Operation Parser for SetIdentityHeadersInNotificationsEnabled
    class SetIdentityHeadersInNotificationsEnabled
      def self.parse(http_resp)
        data = Types::SetIdentityHeadersInNotificationsEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetIdentityHeadersInNotificationsEnabledResult')
        data
      end
    end

    # Operation Parser for SetIdentityMailFromDomain
    class SetIdentityMailFromDomain
      def self.parse(http_resp)
        data = Types::SetIdentityMailFromDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetIdentityMailFromDomainResult')
        data
      end
    end

    # Operation Parser for SetIdentityNotificationTopic
    class SetIdentityNotificationTopic
      def self.parse(http_resp)
        data = Types::SetIdentityNotificationTopicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetIdentityNotificationTopicResult')
        data
      end
    end

    # Operation Parser for SetReceiptRulePosition
    class SetReceiptRulePosition
      def self.parse(http_resp)
        data = Types::SetReceiptRulePositionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetReceiptRulePositionResult')
        data
      end
    end

    # Operation Parser for TestRenderTemplate
    class TestRenderTemplate
      def self.parse(http_resp)
        data = Types::TestRenderTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TestRenderTemplateResult')
        xml.at('RenderedTemplate') do |node|
          data.rendered_template = (node.text || '')
        end
        data
      end
    end

    # Error Parser for MissingRenderingAttributeException
    class MissingRenderingAttributeException
      def self.parse(http_resp)
        data = Types::MissingRenderingAttributeException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidRenderingParameterException
    class InvalidRenderingParameterException
      def self.parse(http_resp)
        data = Types::InvalidRenderingParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateAccountSendingEnabled
    class UpdateAccountSendingEnabled
      def self.parse(http_resp)
        data = Types::UpdateAccountSendingEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateAccountSendingEnabledResult')
        data
      end
    end

    # Operation Parser for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::UpdateConfigurationSetEventDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateConfigurationSetEventDestinationResult')
        data
      end
    end

    # Operation Parser for UpdateConfigurationSetReputationMetricsEnabled
    class UpdateConfigurationSetReputationMetricsEnabled
      def self.parse(http_resp)
        data = Types::UpdateConfigurationSetReputationMetricsEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateConfigurationSetReputationMetricsEnabledResult')
        data
      end
    end

    # Operation Parser for UpdateConfigurationSetSendingEnabled
    class UpdateConfigurationSetSendingEnabled
      def self.parse(http_resp)
        data = Types::UpdateConfigurationSetSendingEnabledOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateConfigurationSetSendingEnabledResult')
        data
      end
    end

    # Operation Parser for UpdateConfigurationSetTrackingOptions
    class UpdateConfigurationSetTrackingOptions
      def self.parse(http_resp)
        data = Types::UpdateConfigurationSetTrackingOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateConfigurationSetTrackingOptionsResult')
        data
      end
    end

    # Operation Parser for UpdateCustomVerificationEmailTemplate
    class UpdateCustomVerificationEmailTemplate
      def self.parse(http_resp)
        data = Types::UpdateCustomVerificationEmailTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateCustomVerificationEmailTemplateResult')
        data
      end
    end

    # Operation Parser for UpdateReceiptRule
    class UpdateReceiptRule
      def self.parse(http_resp)
        data = Types::UpdateReceiptRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateReceiptRuleResult')
        data
      end
    end

    # Operation Parser for UpdateTemplate
    class UpdateTemplate
      def self.parse(http_resp)
        data = Types::UpdateTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateTemplateResult')
        data
      end
    end

    # Operation Parser for VerifyDomainDkim
    class VerifyDomainDkim
      def self.parse(http_resp)
        data = Types::VerifyDomainDkimOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('VerifyDomainDkimResult')
        xml.at('DkimTokens') do |node|
          children = node.children('member')
          data.dkim_tokens = Parsers::VerificationTokenList.parse(children)
        end
        data
      end
    end

    # Operation Parser for VerifyDomainIdentity
    class VerifyDomainIdentity
      def self.parse(http_resp)
        data = Types::VerifyDomainIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('VerifyDomainIdentityResult')
        xml.at('VerificationToken') do |node|
          data.verification_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for VerifyEmailAddress
    class VerifyEmailAddress
      def self.parse(http_resp)
        data = Types::VerifyEmailAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('VerifyEmailAddressResult')
        data
      end
    end

    # Operation Parser for VerifyEmailIdentity
    class VerifyEmailIdentity
      def self.parse(http_resp)
        data = Types::VerifyEmailIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('VerifyEmailIdentityResult')
        data
      end
    end
  end
end
