# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SES
  module Builders

    # Operation Builder for CloneReceiptRuleSet
    class CloneReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CloneReceiptRuleSet'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        params[context + 'OriginalRuleSetName'] = input[:original_rule_set_name].to_s unless input[:original_rule_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateConfigurationSet
    class CreateConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateConfigurationSet'
        params['Version'] = '2010-12-01'
        Builders::ConfigurationSet.build(input[:configuration_set], params, context: context + 'ConfigurationSet' + '.') unless input[:configuration_set].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ConfigurationSet
    class ConfigurationSet
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
      end
    end

    # Operation Builder for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateConfigurationSetEventDestination'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::EventDestination.build(input[:event_destination], params, context: context + 'EventDestination' + '.') unless input[:event_destination].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for EventDestination
    class EventDestination
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        Builders::EventTypes.build(input[:matching_event_types], params, context: context + 'MatchingEventTypes' + '.member') unless input[:matching_event_types].nil?
        Builders::KinesisFirehoseDestination.build(input[:kinesis_firehose_destination], params, context: context + 'KinesisFirehoseDestination' + '.') unless input[:kinesis_firehose_destination].nil?
        Builders::CloudWatchDestination.build(input[:cloud_watch_destination], params, context: context + 'CloudWatchDestination' + '.') unless input[:cloud_watch_destination].nil?
        Builders::SNSDestination.build(input[:sns_destination], params, context: context + 'SNSDestination' + '.') unless input[:sns_destination].nil?
      end
    end

    # Structure Builder for SNSDestination
    class SNSDestination
      def self.build(input, params, context: nil)
        params[context + 'TopicARN'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
      end
    end

    # Structure Builder for CloudWatchDestination
    class CloudWatchDestination
      def self.build(input, params, context: nil)
        Builders::CloudWatchDimensionConfigurations.build(input[:dimension_configurations], params, context: context + 'DimensionConfigurations' + '.member') unless input[:dimension_configurations].nil?
      end
    end

    # List Builder for CloudWatchDimensionConfigurations
    class CloudWatchDimensionConfigurations
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::CloudWatchDimensionConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for CloudWatchDimensionConfiguration
    class CloudWatchDimensionConfiguration
      def self.build(input, params, context: nil)
        params[context + 'DimensionName'] = input[:dimension_name].to_s unless input[:dimension_name].nil?
        params[context + 'DimensionValueSource'] = input[:dimension_value_source].to_s unless input[:dimension_value_source].nil?
        params[context + 'DefaultDimensionValue'] = input[:default_dimension_value].to_s unless input[:default_dimension_value].nil?
      end
    end

    # Structure Builder for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.build(input, params, context: nil)
        params[context + 'IAMRoleARN'] = input[:iam_role_arn].to_s unless input[:iam_role_arn].nil?
        params[context + 'DeliveryStreamARN'] = input[:delivery_stream_arn].to_s unless input[:delivery_stream_arn].nil?
      end
    end

    # List Builder for EventTypes
    class EventTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateConfigurationSetTrackingOptions
    class CreateConfigurationSetTrackingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateConfigurationSetTrackingOptions'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::TrackingOptions.build(input[:tracking_options], params, context: context + 'TrackingOptions' + '.') unless input[:tracking_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for TrackingOptions
    class TrackingOptions
      def self.build(input, params, context: nil)
        params[context + 'CustomRedirectDomain'] = input[:custom_redirect_domain].to_s unless input[:custom_redirect_domain].nil?
      end
    end

    # Operation Builder for CreateCustomVerificationEmailTemplate
    class CreateCustomVerificationEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCustomVerificationEmailTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'FromEmailAddress'] = input[:from_email_address].to_s unless input[:from_email_address].nil?
        params[context + 'TemplateSubject'] = input[:template_subject].to_s unless input[:template_subject].nil?
        params[context + 'TemplateContent'] = input[:template_content].to_s unless input[:template_content].nil?
        params[context + 'SuccessRedirectionURL'] = input[:success_redirection_url].to_s unless input[:success_redirection_url].nil?
        params[context + 'FailureRedirectionURL'] = input[:failure_redirection_url].to_s unless input[:failure_redirection_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateReceiptFilter
    class CreateReceiptFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateReceiptFilter'
        params['Version'] = '2010-12-01'
        Builders::ReceiptFilter.build(input[:filter], params, context: context + 'Filter' + '.') unless input[:filter].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ReceiptFilter
    class ReceiptFilter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::ReceiptIpFilter.build(input[:ip_filter], params, context: context + 'IpFilter' + '.') unless input[:ip_filter].nil?
      end
    end

    # Structure Builder for ReceiptIpFilter
    class ReceiptIpFilter
      def self.build(input, params, context: nil)
        params[context + 'Policy'] = input[:policy].to_s unless input[:policy].nil?
        params[context + 'Cidr'] = input[:cidr].to_s unless input[:cidr].nil?
      end
    end

    # Operation Builder for CreateReceiptRule
    class CreateReceiptRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateReceiptRule'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        params[context + 'After'] = input[:after].to_s unless input[:after].nil?
        Builders::ReceiptRule.build(input[:rule], params, context: context + 'Rule' + '.') unless input[:rule].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ReceiptRule
    class ReceiptRule
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'TlsPolicy'] = input[:tls_policy].to_s unless input[:tls_policy].nil?
        Builders::RecipientsList.build(input[:recipients], params, context: context + 'Recipients' + '.member') unless input[:recipients].nil?
        Builders::ReceiptActionsList.build(input[:actions], params, context: context + 'Actions' + '.member') unless input[:actions].nil?
        params[context + 'ScanEnabled'] = input[:scan_enabled].to_s unless input[:scan_enabled].nil?
      end
    end

    # List Builder for ReceiptActionsList
    class ReceiptActionsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ReceiptAction.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ReceiptAction
    class ReceiptAction
      def self.build(input, params, context: nil)
        Builders::S3Action.build(input[:s3_action], params, context: context + 'S3Action' + '.') unless input[:s3_action].nil?
        Builders::BounceAction.build(input[:bounce_action], params, context: context + 'BounceAction' + '.') unless input[:bounce_action].nil?
        Builders::WorkmailAction.build(input[:workmail_action], params, context: context + 'WorkmailAction' + '.') unless input[:workmail_action].nil?
        Builders::LambdaAction.build(input[:lambda_action], params, context: context + 'LambdaAction' + '.') unless input[:lambda_action].nil?
        Builders::StopAction.build(input[:stop_action], params, context: context + 'StopAction' + '.') unless input[:stop_action].nil?
        Builders::AddHeaderAction.build(input[:add_header_action], params, context: context + 'AddHeaderAction' + '.') unless input[:add_header_action].nil?
        Builders::SNSAction.build(input[:sns_action], params, context: context + 'SNSAction' + '.') unless input[:sns_action].nil?
      end
    end

    # Structure Builder for SNSAction
    class SNSAction
      def self.build(input, params, context: nil)
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'Encoding'] = input[:encoding].to_s unless input[:encoding].nil?
      end
    end

    # Structure Builder for AddHeaderAction
    class AddHeaderAction
      def self.build(input, params, context: nil)
        params[context + 'HeaderName'] = input[:header_name].to_s unless input[:header_name].nil?
        params[context + 'HeaderValue'] = input[:header_value].to_s unless input[:header_value].nil?
      end
    end

    # Structure Builder for StopAction
    class StopAction
      def self.build(input, params, context: nil)
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
      end
    end

    # Structure Builder for LambdaAction
    class LambdaAction
      def self.build(input, params, context: nil)
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'FunctionArn'] = input[:function_arn].to_s unless input[:function_arn].nil?
        params[context + 'InvocationType'] = input[:invocation_type].to_s unless input[:invocation_type].nil?
      end
    end

    # Structure Builder for WorkmailAction
    class WorkmailAction
      def self.build(input, params, context: nil)
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'OrganizationArn'] = input[:organization_arn].to_s unless input[:organization_arn].nil?
      end
    end

    # Structure Builder for BounceAction
    class BounceAction
      def self.build(input, params, context: nil)
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'SmtpReplyCode'] = input[:smtp_reply_code].to_s unless input[:smtp_reply_code].nil?
        params[context + 'StatusCode'] = input[:status_code].to_s unless input[:status_code].nil?
        params[context + 'Message'] = input[:message].to_s unless input[:message].nil?
        params[context + 'Sender'] = input[:sender].to_s unless input[:sender].nil?
      end
    end

    # Structure Builder for S3Action
    class S3Action
      def self.build(input, params, context: nil)
        params[context + 'TopicArn'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        params[context + 'BucketName'] = input[:bucket_name].to_s unless input[:bucket_name].nil?
        params[context + 'ObjectKeyPrefix'] = input[:object_key_prefix].to_s unless input[:object_key_prefix].nil?
        params[context + 'KmsKeyArn'] = input[:kms_key_arn].to_s unless input[:kms_key_arn].nil?
      end
    end

    # List Builder for RecipientsList
    class RecipientsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateReceiptRuleSet
    class CreateReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateReceiptRuleSet'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateTemplate
    class CreateTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTemplate'
        params['Version'] = '2010-12-01'
        Builders::Template.build(input[:template], params, context: context + 'Template' + '.') unless input[:template].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for Template
    class Template
      def self.build(input, params, context: nil)
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'SubjectPart'] = input[:subject_part].to_s unless input[:subject_part].nil?
        params[context + 'TextPart'] = input[:text_part].to_s unless input[:text_part].nil?
        params[context + 'HtmlPart'] = input[:html_part].to_s unless input[:html_part].nil?
      end
    end

    # Operation Builder for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteConfigurationSet'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteConfigurationSetEventDestination'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        params[context + 'EventDestinationName'] = input[:event_destination_name].to_s unless input[:event_destination_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteConfigurationSetTrackingOptions
    class DeleteConfigurationSetTrackingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteConfigurationSetTrackingOptions'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCustomVerificationEmailTemplate
    class DeleteCustomVerificationEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCustomVerificationEmailTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteIdentity
    class DeleteIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIdentity'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteIdentityPolicy
    class DeleteIdentityPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIdentityPolicy'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteReceiptFilter
    class DeleteReceiptFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteReceiptFilter'
        params['Version'] = '2010-12-01'
        params[context + 'FilterName'] = input[:filter_name].to_s unless input[:filter_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteReceiptRule
    class DeleteReceiptRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteReceiptRule'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        params[context + 'RuleName'] = input[:rule_name].to_s unless input[:rule_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteReceiptRuleSet
    class DeleteReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteReceiptRuleSet'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTemplate
    class DeleteTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVerifiedEmailAddress
    class DeleteVerifiedEmailAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVerifiedEmailAddress'
        params['Version'] = '2010-12-01'
        params[context + 'EmailAddress'] = input[:email_address].to_s unless input[:email_address].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeActiveReceiptRuleSet
    class DescribeActiveReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeActiveReceiptRuleSet'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeConfigurationSet
    class DescribeConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeConfigurationSet'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::ConfigurationSetAttributeList.build(input[:configuration_set_attribute_names], params, context: context + 'ConfigurationSetAttributeNames' + '.member') unless input[:configuration_set_attribute_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ConfigurationSetAttributeList
    class ConfigurationSetAttributeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeReceiptRule
    class DescribeReceiptRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReceiptRule'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        params[context + 'RuleName'] = input[:rule_name].to_s unless input[:rule_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReceiptRuleSet
    class DescribeReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReceiptRuleSet'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAccountSendingEnabled
    class GetAccountSendingEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAccountSendingEnabled'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetCustomVerificationEmailTemplate
    class GetCustomVerificationEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetCustomVerificationEmailTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIdentityDkimAttributes
    class GetIdentityDkimAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIdentityDkimAttributes'
        params['Version'] = '2010-12-01'
        Builders::IdentityList.build(input[:identities], params, context: context + 'Identities' + '.member') unless input[:identities].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for IdentityList
    class IdentityList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetIdentityMailFromDomainAttributes
    class GetIdentityMailFromDomainAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIdentityMailFromDomainAttributes'
        params['Version'] = '2010-12-01'
        Builders::IdentityList.build(input[:identities], params, context: context + 'Identities' + '.member') unless input[:identities].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIdentityNotificationAttributes
    class GetIdentityNotificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIdentityNotificationAttributes'
        params['Version'] = '2010-12-01'
        Builders::IdentityList.build(input[:identities], params, context: context + 'Identities' + '.member') unless input[:identities].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetIdentityPolicies
    class GetIdentityPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIdentityPolicies'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        Builders::PolicyNameList.build(input[:policy_names], params, context: context + 'PolicyNames' + '.member') unless input[:policy_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PolicyNameList
    class PolicyNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetIdentityVerificationAttributes
    class GetIdentityVerificationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetIdentityVerificationAttributes'
        params['Version'] = '2010-12-01'
        Builders::IdentityList.build(input[:identities], params, context: context + 'Identities' + '.member') unless input[:identities].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSendQuota
    class GetSendQuota
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSendQuota'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSendStatistics
    class GetSendStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSendStatistics'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetTemplate
    class GetTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListConfigurationSets
    class ListConfigurationSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListConfigurationSets'
        params['Version'] = '2010-12-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListCustomVerificationEmailTemplates
    class ListCustomVerificationEmailTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListCustomVerificationEmailTemplates'
        params['Version'] = '2010-12-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListIdentities
    class ListIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListIdentities'
        params['Version'] = '2010-12-01'
        params[context + 'IdentityType'] = input[:identity_type].to_s unless input[:identity_type].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListIdentityPolicies
    class ListIdentityPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListIdentityPolicies'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListReceiptFilters
    class ListReceiptFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListReceiptFilters'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListReceiptRuleSets
    class ListReceiptRuleSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListReceiptRuleSets'
        params['Version'] = '2010-12-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListTemplates
    class ListTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTemplates'
        params['Version'] = '2010-12-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListVerifiedEmailAddresses
    class ListVerifiedEmailAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListVerifiedEmailAddresses'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutConfigurationSetDeliveryOptions
    class PutConfigurationSetDeliveryOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutConfigurationSetDeliveryOptions'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::DeliveryOptions.build(input[:delivery_options], params, context: context + 'DeliveryOptions' + '.') unless input[:delivery_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for DeliveryOptions
    class DeliveryOptions
      def self.build(input, params, context: nil)
        params[context + 'TlsPolicy'] = input[:tls_policy].to_s unless input[:tls_policy].nil?
      end
    end

    # Operation Builder for PutIdentityPolicy
    class PutIdentityPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutIdentityPolicy'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'Policy'] = input[:policy].to_s unless input[:policy].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ReorderReceiptRuleSet
    class ReorderReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ReorderReceiptRuleSet'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        Builders::ReceiptRuleNamesList.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ReceiptRuleNamesList
    class ReceiptRuleNamesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for SendBounce
    class SendBounce
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendBounce'
        params['Version'] = '2010-12-01'
        params[context + 'OriginalMessageId'] = input[:original_message_id].to_s unless input[:original_message_id].nil?
        params[context + 'BounceSender'] = input[:bounce_sender].to_s unless input[:bounce_sender].nil?
        params[context + 'Explanation'] = input[:explanation].to_s unless input[:explanation].nil?
        Builders::MessageDsn.build(input[:message_dsn], params, context: context + 'MessageDsn' + '.') unless input[:message_dsn].nil?
        Builders::BouncedRecipientInfoList.build(input[:bounced_recipient_info_list], params, context: context + 'BouncedRecipientInfoList' + '.member') unless input[:bounced_recipient_info_list].nil?
        params[context + 'BounceSenderArn'] = input[:bounce_sender_arn].to_s unless input[:bounce_sender_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for BouncedRecipientInfoList
    class BouncedRecipientInfoList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::BouncedRecipientInfo.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for BouncedRecipientInfo
    class BouncedRecipientInfo
      def self.build(input, params, context: nil)
        params[context + 'Recipient'] = input[:recipient].to_s unless input[:recipient].nil?
        params[context + 'RecipientArn'] = input[:recipient_arn].to_s unless input[:recipient_arn].nil?
        params[context + 'BounceType'] = input[:bounce_type].to_s unless input[:bounce_type].nil?
        Builders::RecipientDsnFields.build(input[:recipient_dsn_fields], params, context: context + 'RecipientDsnFields' + '.') unless input[:recipient_dsn_fields].nil?
      end
    end

    # Structure Builder for RecipientDsnFields
    class RecipientDsnFields
      def self.build(input, params, context: nil)
        params[context + 'FinalRecipient'] = input[:final_recipient].to_s unless input[:final_recipient].nil?
        params[context + 'Action'] = input[:action].to_s unless input[:action].nil?
        params[context + 'RemoteMta'] = input[:remote_mta].to_s unless input[:remote_mta].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        params[context + 'DiagnosticCode'] = input[:diagnostic_code].to_s unless input[:diagnostic_code].nil?
        params[context + 'LastAttemptDate'] = Hearth::TimeHelper.to_date_time(input[:last_attempt_date]) unless input[:last_attempt_date].nil?
        Builders::ExtensionFieldList.build(input[:extension_fields], params, context: context + 'ExtensionFields' + '.member') unless input[:extension_fields].nil?
      end
    end

    # List Builder for ExtensionFieldList
    class ExtensionFieldList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ExtensionField.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ExtensionField
    class ExtensionField
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for MessageDsn
    class MessageDsn
      def self.build(input, params, context: nil)
        params[context + 'ReportingMta'] = input[:reporting_mta].to_s unless input[:reporting_mta].nil?
        params[context + 'ArrivalDate'] = Hearth::TimeHelper.to_date_time(input[:arrival_date]) unless input[:arrival_date].nil?
        Builders::ExtensionFieldList.build(input[:extension_fields], params, context: context + 'ExtensionFields' + '.member') unless input[:extension_fields].nil?
      end
    end

    # Operation Builder for SendBulkTemplatedEmail
    class SendBulkTemplatedEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendBulkTemplatedEmail'
        params['Version'] = '2010-12-01'
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'SourceArn'] = input[:source_arn].to_s unless input[:source_arn].nil?
        Builders::AddressList.build(input[:reply_to_addresses], params, context: context + 'ReplyToAddresses' + '.member') unless input[:reply_to_addresses].nil?
        params[context + 'ReturnPath'] = input[:return_path].to_s unless input[:return_path].nil?
        params[context + 'ReturnPathArn'] = input[:return_path_arn].to_s unless input[:return_path_arn].nil?
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::MessageTagList.build(input[:default_tags], params, context: context + 'DefaultTags' + '.member') unless input[:default_tags].nil?
        params[context + 'Template'] = input[:template].to_s unless input[:template].nil?
        params[context + 'TemplateArn'] = input[:template_arn].to_s unless input[:template_arn].nil?
        params[context + 'DefaultTemplateData'] = input[:default_template_data].to_s unless input[:default_template_data].nil?
        Builders::BulkEmailDestinationList.build(input[:destinations], params, context: context + 'Destinations' + '.member') unless input[:destinations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for BulkEmailDestinationList
    class BulkEmailDestinationList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::BulkEmailDestination.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for BulkEmailDestination
    class BulkEmailDestination
      def self.build(input, params, context: nil)
        Builders::Destination.build(input[:destination], params, context: context + 'Destination' + '.') unless input[:destination].nil?
        Builders::MessageTagList.build(input[:replacement_tags], params, context: context + 'ReplacementTags' + '.member') unless input[:replacement_tags].nil?
        params[context + 'ReplacementTemplateData'] = input[:replacement_template_data].to_s unless input[:replacement_template_data].nil?
      end
    end

    # List Builder for MessageTagList
    class MessageTagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MessageTag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MessageTag
    class MessageTag
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for Destination
    class Destination
      def self.build(input, params, context: nil)
        Builders::AddressList.build(input[:to_addresses], params, context: context + 'ToAddresses' + '.member') unless input[:to_addresses].nil?
        Builders::AddressList.build(input[:cc_addresses], params, context: context + 'CcAddresses' + '.member') unless input[:cc_addresses].nil?
        Builders::AddressList.build(input[:bcc_addresses], params, context: context + 'BccAddresses' + '.member') unless input[:bcc_addresses].nil?
      end
    end

    # List Builder for AddressList
    class AddressList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for SendCustomVerificationEmail
    class SendCustomVerificationEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendCustomVerificationEmail'
        params['Version'] = '2010-12-01'
        params[context + 'EmailAddress'] = input[:email_address].to_s unless input[:email_address].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SendEmail
    class SendEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendEmail'
        params['Version'] = '2010-12-01'
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        Builders::Destination.build(input[:destination], params, context: context + 'Destination' + '.') unless input[:destination].nil?
        Builders::Message.build(input[:message], params, context: context + 'Message' + '.') unless input[:message].nil?
        Builders::AddressList.build(input[:reply_to_addresses], params, context: context + 'ReplyToAddresses' + '.member') unless input[:reply_to_addresses].nil?
        params[context + 'ReturnPath'] = input[:return_path].to_s unless input[:return_path].nil?
        params[context + 'SourceArn'] = input[:source_arn].to_s unless input[:source_arn].nil?
        params[context + 'ReturnPathArn'] = input[:return_path_arn].to_s unless input[:return_path_arn].nil?
        Builders::MessageTagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input, params, context: nil)
        Builders::Content.build(input[:subject], params, context: context + 'Subject' + '.') unless input[:subject].nil?
        Builders::Body.build(input[:body], params, context: context + 'Body' + '.') unless input[:body].nil?
      end
    end

    # Structure Builder for Body
    class Body
      def self.build(input, params, context: nil)
        Builders::Content.build(input[:text], params, context: context + 'Text' + '.') unless input[:text].nil?
        Builders::Content.build(input[:html], params, context: context + 'Html' + '.') unless input[:html].nil?
      end
    end

    # Structure Builder for Content
    class Content
      def self.build(input, params, context: nil)
        params[context + 'Data'] = input[:data].to_s unless input[:data].nil?
        params[context + 'Charset'] = input[:charset].to_s unless input[:charset].nil?
      end
    end

    # Operation Builder for SendRawEmail
    class SendRawEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendRawEmail'
        params['Version'] = '2010-12-01'
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        Builders::AddressList.build(input[:destinations], params, context: context + 'Destinations' + '.member') unless input[:destinations].nil?
        Builders::RawMessage.build(input[:raw_message], params, context: context + 'RawMessage' + '.') unless input[:raw_message].nil?
        params[context + 'FromArn'] = input[:from_arn].to_s unless input[:from_arn].nil?
        params[context + 'SourceArn'] = input[:source_arn].to_s unless input[:source_arn].nil?
        params[context + 'ReturnPathArn'] = input[:return_path_arn].to_s unless input[:return_path_arn].nil?
        Builders::MessageTagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for RawMessage
    class RawMessage
      def self.build(input, params, context: nil)
        params[context + 'Data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
      end
    end

    # Operation Builder for SendTemplatedEmail
    class SendTemplatedEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SendTemplatedEmail'
        params['Version'] = '2010-12-01'
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        Builders::Destination.build(input[:destination], params, context: context + 'Destination' + '.') unless input[:destination].nil?
        Builders::AddressList.build(input[:reply_to_addresses], params, context: context + 'ReplyToAddresses' + '.member') unless input[:reply_to_addresses].nil?
        params[context + 'ReturnPath'] = input[:return_path].to_s unless input[:return_path].nil?
        params[context + 'SourceArn'] = input[:source_arn].to_s unless input[:source_arn].nil?
        params[context + 'ReturnPathArn'] = input[:return_path_arn].to_s unless input[:return_path_arn].nil?
        Builders::MessageTagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        params[context + 'Template'] = input[:template].to_s unless input[:template].nil?
        params[context + 'TemplateArn'] = input[:template_arn].to_s unless input[:template_arn].nil?
        params[context + 'TemplateData'] = input[:template_data].to_s unless input[:template_data].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetActiveReceiptRuleSet
    class SetActiveReceiptRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetActiveReceiptRuleSet'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetIdentityDkimEnabled
    class SetIdentityDkimEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetIdentityDkimEnabled'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'DkimEnabled'] = input[:dkim_enabled].to_s unless input[:dkim_enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetIdentityFeedbackForwardingEnabled
    class SetIdentityFeedbackForwardingEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetIdentityFeedbackForwardingEnabled'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'ForwardingEnabled'] = input[:forwarding_enabled].to_s unless input[:forwarding_enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetIdentityHeadersInNotificationsEnabled
    class SetIdentityHeadersInNotificationsEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetIdentityHeadersInNotificationsEnabled'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'NotificationType'] = input[:notification_type].to_s unless input[:notification_type].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetIdentityMailFromDomain
    class SetIdentityMailFromDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetIdentityMailFromDomain'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'MailFromDomain'] = input[:mail_from_domain].to_s unless input[:mail_from_domain].nil?
        params[context + 'BehaviorOnMXFailure'] = input[:behavior_on_mx_failure].to_s unless input[:behavior_on_mx_failure].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetIdentityNotificationTopic
    class SetIdentityNotificationTopic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetIdentityNotificationTopic'
        params['Version'] = '2010-12-01'
        params[context + 'Identity'] = input[:identity].to_s unless input[:identity].nil?
        params[context + 'NotificationType'] = input[:notification_type].to_s unless input[:notification_type].nil?
        params[context + 'SnsTopic'] = input[:sns_topic].to_s unless input[:sns_topic].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetReceiptRulePosition
    class SetReceiptRulePosition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetReceiptRulePosition'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        params[context + 'RuleName'] = input[:rule_name].to_s unless input[:rule_name].nil?
        params[context + 'After'] = input[:after].to_s unless input[:after].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TestRenderTemplate
    class TestRenderTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TestRenderTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'TemplateData'] = input[:template_data].to_s unless input[:template_data].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateAccountSendingEnabled
    class UpdateAccountSendingEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateAccountSendingEnabled'
        params['Version'] = '2010-12-01'
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateConfigurationSetEventDestination'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::EventDestination.build(input[:event_destination], params, context: context + 'EventDestination' + '.') unless input[:event_destination].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateConfigurationSetReputationMetricsEnabled
    class UpdateConfigurationSetReputationMetricsEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateConfigurationSetReputationMetricsEnabled'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateConfigurationSetSendingEnabled
    class UpdateConfigurationSetSendingEnabled
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateConfigurationSetSendingEnabled'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateConfigurationSetTrackingOptions
    class UpdateConfigurationSetTrackingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateConfigurationSetTrackingOptions'
        params['Version'] = '2010-12-01'
        params[context + 'ConfigurationSetName'] = input[:configuration_set_name].to_s unless input[:configuration_set_name].nil?
        Builders::TrackingOptions.build(input[:tracking_options], params, context: context + 'TrackingOptions' + '.') unless input[:tracking_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateCustomVerificationEmailTemplate
    class UpdateCustomVerificationEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateCustomVerificationEmailTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'FromEmailAddress'] = input[:from_email_address].to_s unless input[:from_email_address].nil?
        params[context + 'TemplateSubject'] = input[:template_subject].to_s unless input[:template_subject].nil?
        params[context + 'TemplateContent'] = input[:template_content].to_s unless input[:template_content].nil?
        params[context + 'SuccessRedirectionURL'] = input[:success_redirection_url].to_s unless input[:success_redirection_url].nil?
        params[context + 'FailureRedirectionURL'] = input[:failure_redirection_url].to_s unless input[:failure_redirection_url].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateReceiptRule
    class UpdateReceiptRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateReceiptRule'
        params['Version'] = '2010-12-01'
        params[context + 'RuleSetName'] = input[:rule_set_name].to_s unless input[:rule_set_name].nil?
        Builders::ReceiptRule.build(input[:rule], params, context: context + 'Rule' + '.') unless input[:rule].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateTemplate
    class UpdateTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateTemplate'
        params['Version'] = '2010-12-01'
        Builders::Template.build(input[:template], params, context: context + 'Template' + '.') unless input[:template].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for VerifyDomainDkim
    class VerifyDomainDkim
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'VerifyDomainDkim'
        params['Version'] = '2010-12-01'
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for VerifyDomainIdentity
    class VerifyDomainIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'VerifyDomainIdentity'
        params['Version'] = '2010-12-01'
        params[context + 'Domain'] = input[:domain].to_s unless input[:domain].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for VerifyEmailAddress
    class VerifyEmailAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'VerifyEmailAddress'
        params['Version'] = '2010-12-01'
        params[context + 'EmailAddress'] = input[:email_address].to_s unless input[:email_address].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for VerifyEmailIdentity
    class VerifyEmailIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'VerifyEmailIdentity'
        params['Version'] = '2010-12-01'
        params[context + 'EmailAddress'] = input[:email_address].to_s unless input[:email_address].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
