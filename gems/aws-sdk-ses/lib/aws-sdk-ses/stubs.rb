# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SES
  module Stubs

    # Operation Stubber for CloneReceiptRuleSet
    class CloneReceiptRuleSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CloneReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CloneReceiptRuleSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConfigurationSet
    class CreateConfigurationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateConfigurationSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateConfigurationSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateConfigurationSetEventDestinationResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateConfigurationSetEventDestinationResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConfigurationSetTrackingOptions
    class CreateConfigurationSetTrackingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateConfigurationSetTrackingOptionsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateConfigurationSetTrackingOptionsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCustomVerificationEmailTemplate
    class CreateCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateCustomVerificationEmailTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateCustomVerificationEmailTemplateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReceiptFilter
    class CreateReceiptFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateReceiptFilterResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateReceiptFilterResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReceiptRule
    class CreateReceiptRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateReceiptRuleResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateReceiptRuleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReceiptRuleSet
    class CreateReceiptRuleSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateReceiptRuleSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTemplate
    class CreateTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateTemplateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteConfigurationSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteConfigurationSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteConfigurationSetEventDestinationResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteConfigurationSetEventDestinationResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSetTrackingOptions
    class DeleteConfigurationSetTrackingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteConfigurationSetTrackingOptionsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteConfigurationSetTrackingOptionsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomVerificationEmailTemplate
    class DeleteCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteCustomVerificationEmailTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteCustomVerificationEmailTemplateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIdentity
    class DeleteIdentity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteIdentityResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteIdentityResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIdentityPolicy
    class DeleteIdentityPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteIdentityPolicyResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteIdentityPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReceiptFilter
    class DeleteReceiptFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteReceiptFilterResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteReceiptFilterResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReceiptRule
    class DeleteReceiptRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteReceiptRuleResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteReceiptRuleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReceiptRuleSet
    class DeleteReceiptRuleSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteReceiptRuleSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTemplate
    class DeleteTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteTemplateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVerifiedEmailAddress
    class DeleteVerifiedEmailAddress
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteVerifiedEmailAddressResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteVerifiedEmailAddressResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeActiveReceiptRuleSet
    class DescribeActiveReceiptRuleSet
      def self.default(visited=[])
        {
          metadata: ReceiptRuleSetMetadata.default(visited),
          rules: ReceiptRulesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeActiveReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeActiveReceiptRuleSetResult')
        xml << ReceiptRuleSetMetadata.stub('Metadata', stub[:metadata]) unless stub[:metadata].nil?
        xml << Hearth::XML::Node.new('Rules', ReceiptRulesList.stub('member', stub[:rules])) unless stub[:rules].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReceiptRulesList
    class ReceiptRulesList
      def self.default(visited=[])
        return nil if visited.include?('ReceiptRulesList')
        visited = visited + ['ReceiptRulesList']
        [
          ReceiptRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReceiptRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReceiptRule
    class ReceiptRule
      def self.default(visited=[])
        return nil if visited.include?('ReceiptRule')
        visited = visited + ['ReceiptRule']
        {
          name: 'name',
          enabled: false,
          tls_policy: 'tls_policy',
          recipients: RecipientsList.default(visited),
          actions: ReceiptActionsList.default(visited),
          scan_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReceiptRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('TlsPolicy', stub[:tls_policy].to_s) unless stub[:tls_policy].nil?
        xml << Hearth::XML::Node.new('Recipients', RecipientsList.stub('member', stub[:recipients])) unless stub[:recipients].nil?
        xml << Hearth::XML::Node.new('Actions', ReceiptActionsList.stub('member', stub[:actions])) unless stub[:actions].nil?
        xml << Hearth::XML::Node.new('ScanEnabled', stub[:scan_enabled].to_s) unless stub[:scan_enabled].nil?
        xml
      end
    end

    # List Stubber for ReceiptActionsList
    class ReceiptActionsList
      def self.default(visited=[])
        return nil if visited.include?('ReceiptActionsList')
        visited = visited + ['ReceiptActionsList']
        [
          ReceiptAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReceiptAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReceiptAction
    class ReceiptAction
      def self.default(visited=[])
        return nil if visited.include?('ReceiptAction')
        visited = visited + ['ReceiptAction']
        {
          s3_action: S3Action.default(visited),
          bounce_action: BounceAction.default(visited),
          workmail_action: WorkmailAction.default(visited),
          lambda_action: LambdaAction.default(visited),
          stop_action: StopAction.default(visited),
          add_header_action: AddHeaderAction.default(visited),
          sns_action: SNSAction.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReceiptAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << S3Action.stub('S3Action', stub[:s3_action]) unless stub[:s3_action].nil?
        xml << BounceAction.stub('BounceAction', stub[:bounce_action]) unless stub[:bounce_action].nil?
        xml << WorkmailAction.stub('WorkmailAction', stub[:workmail_action]) unless stub[:workmail_action].nil?
        xml << LambdaAction.stub('LambdaAction', stub[:lambda_action]) unless stub[:lambda_action].nil?
        xml << StopAction.stub('StopAction', stub[:stop_action]) unless stub[:stop_action].nil?
        xml << AddHeaderAction.stub('AddHeaderAction', stub[:add_header_action]) unless stub[:add_header_action].nil?
        xml << SNSAction.stub('SNSAction', stub[:sns_action]) unless stub[:sns_action].nil?
        xml
      end
    end

    # Structure Stubber for SNSAction
    class SNSAction
      def self.default(visited=[])
        return nil if visited.include?('SNSAction')
        visited = visited + ['SNSAction']
        {
          topic_arn: 'topic_arn',
          encoding: 'encoding',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SNSAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('Encoding', stub[:encoding].to_s) unless stub[:encoding].nil?
        xml
      end
    end

    # Structure Stubber for AddHeaderAction
    class AddHeaderAction
      def self.default(visited=[])
        return nil if visited.include?('AddHeaderAction')
        visited = visited + ['AddHeaderAction']
        {
          header_name: 'header_name',
          header_value: 'header_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AddHeaderAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderName', stub[:header_name].to_s) unless stub[:header_name].nil?
        xml << Hearth::XML::Node.new('HeaderValue', stub[:header_value].to_s) unless stub[:header_value].nil?
        xml
      end
    end

    # Structure Stubber for StopAction
    class StopAction
      def self.default(visited=[])
        return nil if visited.include?('StopAction')
        visited = visited + ['StopAction']
        {
          scope: 'scope',
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StopAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Scope', stub[:scope].to_s) unless stub[:scope].nil?
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml
      end
    end

    # Structure Stubber for LambdaAction
    class LambdaAction
      def self.default(visited=[])
        return nil if visited.include?('LambdaAction')
        visited = visited + ['LambdaAction']
        {
          topic_arn: 'topic_arn',
          function_arn: 'function_arn',
          invocation_type: 'invocation_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LambdaAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('FunctionArn', stub[:function_arn].to_s) unless stub[:function_arn].nil?
        xml << Hearth::XML::Node.new('InvocationType', stub[:invocation_type].to_s) unless stub[:invocation_type].nil?
        xml
      end
    end

    # Structure Stubber for WorkmailAction
    class WorkmailAction
      def self.default(visited=[])
        return nil if visited.include?('WorkmailAction')
        visited = visited + ['WorkmailAction']
        {
          topic_arn: 'topic_arn',
          organization_arn: 'organization_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::WorkmailAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('OrganizationArn', stub[:organization_arn].to_s) unless stub[:organization_arn].nil?
        xml
      end
    end

    # Structure Stubber for BounceAction
    class BounceAction
      def self.default(visited=[])
        return nil if visited.include?('BounceAction')
        visited = visited + ['BounceAction']
        {
          topic_arn: 'topic_arn',
          smtp_reply_code: 'smtp_reply_code',
          status_code: 'status_code',
          message: 'message',
          sender: 'sender',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BounceAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('SmtpReplyCode', stub[:smtp_reply_code].to_s) unless stub[:smtp_reply_code].nil?
        xml << Hearth::XML::Node.new('StatusCode', stub[:status_code].to_s) unless stub[:status_code].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('Sender', stub[:sender].to_s) unless stub[:sender].nil?
        xml
      end
    end

    # Structure Stubber for S3Action
    class S3Action
      def self.default(visited=[])
        return nil if visited.include?('S3Action')
        visited = visited + ['S3Action']
        {
          topic_arn: 'topic_arn',
          bucket_name: 'bucket_name',
          object_key_prefix: 'object_key_prefix',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Action.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicArn', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('BucketName', stub[:bucket_name].to_s) unless stub[:bucket_name].nil?
        xml << Hearth::XML::Node.new('ObjectKeyPrefix', stub[:object_key_prefix].to_s) unless stub[:object_key_prefix].nil?
        xml << Hearth::XML::Node.new('KmsKeyArn', stub[:kms_key_arn].to_s) unless stub[:kms_key_arn].nil?
        xml
      end
    end

    # List Stubber for RecipientsList
    class RecipientsList
      def self.default(visited=[])
        return nil if visited.include?('RecipientsList')
        visited = visited + ['RecipientsList']
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

    # Structure Stubber for ReceiptRuleSetMetadata
    class ReceiptRuleSetMetadata
      def self.default(visited=[])
        return nil if visited.include?('ReceiptRuleSetMetadata')
        visited = visited + ['ReceiptRuleSetMetadata']
        {
          name: 'name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReceiptRuleSetMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('CreatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:created_timestamp])) unless stub[:created_timestamp].nil?
        xml
      end
    end

    # Operation Stubber for DescribeConfigurationSet
    class DescribeConfigurationSet
      def self.default(visited=[])
        {
          configuration_set: ConfigurationSet.default(visited),
          event_destinations: EventDestinations.default(visited),
          tracking_options: TrackingOptions.default(visited),
          delivery_options: DeliveryOptions.default(visited),
          reputation_options: ReputationOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeConfigurationSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeConfigurationSetResult')
        xml << ConfigurationSet.stub('ConfigurationSet', stub[:configuration_set]) unless stub[:configuration_set].nil?
        xml << Hearth::XML::Node.new('EventDestinations', EventDestinations.stub('member', stub[:event_destinations])) unless stub[:event_destinations].nil?
        xml << TrackingOptions.stub('TrackingOptions', stub[:tracking_options]) unless stub[:tracking_options].nil?
        xml << DeliveryOptions.stub('DeliveryOptions', stub[:delivery_options]) unless stub[:delivery_options].nil?
        xml << ReputationOptions.stub('ReputationOptions', stub[:reputation_options]) unless stub[:reputation_options].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReputationOptions
    class ReputationOptions
      def self.default(visited=[])
        return nil if visited.include?('ReputationOptions')
        visited = visited + ['ReputationOptions']
        {
          sending_enabled: false,
          reputation_metrics_enabled: false,
          last_fresh_start: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReputationOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SendingEnabled', stub[:sending_enabled].to_s) unless stub[:sending_enabled].nil?
        xml << Hearth::XML::Node.new('ReputationMetricsEnabled', stub[:reputation_metrics_enabled].to_s) unless stub[:reputation_metrics_enabled].nil?
        xml << Hearth::XML::Node.new('LastFreshStart', Hearth::TimeHelper.to_date_time(stub[:last_fresh_start])) unless stub[:last_fresh_start].nil?
        xml
      end
    end

    # Structure Stubber for DeliveryOptions
    class DeliveryOptions
      def self.default(visited=[])
        return nil if visited.include?('DeliveryOptions')
        visited = visited + ['DeliveryOptions']
        {
          tls_policy: 'tls_policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeliveryOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TlsPolicy', stub[:tls_policy].to_s) unless stub[:tls_policy].nil?
        xml
      end
    end

    # Structure Stubber for TrackingOptions
    class TrackingOptions
      def self.default(visited=[])
        return nil if visited.include?('TrackingOptions')
        visited = visited + ['TrackingOptions']
        {
          custom_redirect_domain: 'custom_redirect_domain',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrackingOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CustomRedirectDomain', stub[:custom_redirect_domain].to_s) unless stub[:custom_redirect_domain].nil?
        xml
      end
    end

    # List Stubber for EventDestinations
    class EventDestinations
      def self.default(visited=[])
        return nil if visited.include?('EventDestinations')
        visited = visited + ['EventDestinations']
        [
          EventDestination.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EventDestination.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EventDestination
    class EventDestination
      def self.default(visited=[])
        return nil if visited.include?('EventDestination')
        visited = visited + ['EventDestination']
        {
          name: 'name',
          enabled: false,
          matching_event_types: EventTypes.default(visited),
          kinesis_firehose_destination: KinesisFirehoseDestination.default(visited),
          cloud_watch_destination: CloudWatchDestination.default(visited),
          sns_destination: SNSDestination.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('MatchingEventTypes', EventTypes.stub('member', stub[:matching_event_types])) unless stub[:matching_event_types].nil?
        xml << KinesisFirehoseDestination.stub('KinesisFirehoseDestination', stub[:kinesis_firehose_destination]) unless stub[:kinesis_firehose_destination].nil?
        xml << CloudWatchDestination.stub('CloudWatchDestination', stub[:cloud_watch_destination]) unless stub[:cloud_watch_destination].nil?
        xml << SNSDestination.stub('SNSDestination', stub[:sns_destination]) unless stub[:sns_destination].nil?
        xml
      end
    end

    # Structure Stubber for SNSDestination
    class SNSDestination
      def self.default(visited=[])
        return nil if visited.include?('SNSDestination')
        visited = visited + ['SNSDestination']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SNSDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TopicARN', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml
      end
    end

    # Structure Stubber for CloudWatchDestination
    class CloudWatchDestination
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDestination')
        visited = visited + ['CloudWatchDestination']
        {
          dimension_configurations: CloudWatchDimensionConfigurations.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudWatchDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DimensionConfigurations', CloudWatchDimensionConfigurations.stub('member', stub[:dimension_configurations])) unless stub[:dimension_configurations].nil?
        xml
      end
    end

    # List Stubber for CloudWatchDimensionConfigurations
    class CloudWatchDimensionConfigurations
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDimensionConfigurations')
        visited = visited + ['CloudWatchDimensionConfigurations']
        [
          CloudWatchDimensionConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << CloudWatchDimensionConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CloudWatchDimensionConfiguration
    class CloudWatchDimensionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDimensionConfiguration')
        visited = visited + ['CloudWatchDimensionConfiguration']
        {
          dimension_name: 'dimension_name',
          dimension_value_source: 'dimension_value_source',
          default_dimension_value: 'default_dimension_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudWatchDimensionConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DimensionName', stub[:dimension_name].to_s) unless stub[:dimension_name].nil?
        xml << Hearth::XML::Node.new('DimensionValueSource', stub[:dimension_value_source].to_s) unless stub[:dimension_value_source].nil?
        xml << Hearth::XML::Node.new('DefaultDimensionValue', stub[:default_dimension_value].to_s) unless stub[:default_dimension_value].nil?
        xml
      end
    end

    # Structure Stubber for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseDestination')
        visited = visited + ['KinesisFirehoseDestination']
        {
          iam_role_arn: 'iam_role_arn',
          delivery_stream_arn: 'delivery_stream_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KinesisFirehoseDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IAMRoleARN', stub[:iam_role_arn].to_s) unless stub[:iam_role_arn].nil?
        xml << Hearth::XML::Node.new('DeliveryStreamARN', stub[:delivery_stream_arn].to_s) unless stub[:delivery_stream_arn].nil?
        xml
      end
    end

    # List Stubber for EventTypes
    class EventTypes
      def self.default(visited=[])
        return nil if visited.include?('EventTypes')
        visited = visited + ['EventTypes']
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

    # Structure Stubber for ConfigurationSet
    class ConfigurationSet
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSet')
        visited = visited + ['ConfigurationSet']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConfigurationSet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeReceiptRule
    class DescribeReceiptRule
      def self.default(visited=[])
        {
          rule: ReceiptRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReceiptRuleResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeReceiptRuleResult')
        xml << ReceiptRule.stub('Rule', stub[:rule]) unless stub[:rule].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeReceiptRuleSet
    class DescribeReceiptRuleSet
      def self.default(visited=[])
        {
          metadata: ReceiptRuleSetMetadata.default(visited),
          rules: ReceiptRulesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeReceiptRuleSetResult')
        xml << ReceiptRuleSetMetadata.stub('Metadata', stub[:metadata]) unless stub[:metadata].nil?
        xml << Hearth::XML::Node.new('Rules', ReceiptRulesList.stub('member', stub[:rules])) unless stub[:rules].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccountSendingEnabled
    class GetAccountSendingEnabled
      def self.default(visited=[])
        {
          enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccountSendingEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetAccountSendingEnabledResult')
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCustomVerificationEmailTemplate
    class GetCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
          template_name: 'template_name',
          from_email_address: 'from_email_address',
          template_subject: 'template_subject',
          template_content: 'template_content',
          success_redirection_url: 'success_redirection_url',
          failure_redirection_url: 'failure_redirection_url',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetCustomVerificationEmailTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetCustomVerificationEmailTemplateResult')
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('FromEmailAddress', stub[:from_email_address].to_s) unless stub[:from_email_address].nil?
        xml << Hearth::XML::Node.new('TemplateSubject', stub[:template_subject].to_s) unless stub[:template_subject].nil?
        xml << Hearth::XML::Node.new('TemplateContent', stub[:template_content].to_s) unless stub[:template_content].nil?
        xml << Hearth::XML::Node.new('SuccessRedirectionURL', stub[:success_redirection_url].to_s) unless stub[:success_redirection_url].nil?
        xml << Hearth::XML::Node.new('FailureRedirectionURL', stub[:failure_redirection_url].to_s) unless stub[:failure_redirection_url].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetIdentityDkimAttributes
    class GetIdentityDkimAttributes
      def self.default(visited=[])
        {
          dkim_attributes: DkimAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetIdentityDkimAttributesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetIdentityDkimAttributesResult')
        xml << Hearth::XML::Node.new('DkimAttributes', DkimAttributes.stub('entry', stub[:dkim_attributes])) unless stub[:dkim_attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for DkimAttributes
    class DkimAttributes
      def self.default(visited=[])
        return nil if visited.include?('DkimAttributes')
        visited = visited + ['DkimAttributes']
        {
          test_key: IdentityDkimAttributes.default(visited)
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << IdentityDkimAttributes.stub('value', value) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for IdentityDkimAttributes
    class IdentityDkimAttributes
      def self.default(visited=[])
        return nil if visited.include?('IdentityDkimAttributes')
        visited = visited + ['IdentityDkimAttributes']
        {
          dkim_enabled: false,
          dkim_verification_status: 'dkim_verification_status',
          dkim_tokens: VerificationTokenList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IdentityDkimAttributes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DkimEnabled', stub[:dkim_enabled].to_s) unless stub[:dkim_enabled].nil?
        xml << Hearth::XML::Node.new('DkimVerificationStatus', stub[:dkim_verification_status].to_s) unless stub[:dkim_verification_status].nil?
        xml << Hearth::XML::Node.new('DkimTokens', VerificationTokenList.stub('member', stub[:dkim_tokens])) unless stub[:dkim_tokens].nil?
        xml
      end
    end

    # List Stubber for VerificationTokenList
    class VerificationTokenList
      def self.default(visited=[])
        return nil if visited.include?('VerificationTokenList')
        visited = visited + ['VerificationTokenList']
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

    # Operation Stubber for GetIdentityMailFromDomainAttributes
    class GetIdentityMailFromDomainAttributes
      def self.default(visited=[])
        {
          mail_from_domain_attributes: MailFromDomainAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetIdentityMailFromDomainAttributesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetIdentityMailFromDomainAttributesResult')
        xml << Hearth::XML::Node.new('MailFromDomainAttributes', MailFromDomainAttributes.stub('entry', stub[:mail_from_domain_attributes])) unless stub[:mail_from_domain_attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for MailFromDomainAttributes
    class MailFromDomainAttributes
      def self.default(visited=[])
        return nil if visited.include?('MailFromDomainAttributes')
        visited = visited + ['MailFromDomainAttributes']
        {
          test_key: IdentityMailFromDomainAttributes.default(visited)
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << IdentityMailFromDomainAttributes.stub('value', value) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for IdentityMailFromDomainAttributes
    class IdentityMailFromDomainAttributes
      def self.default(visited=[])
        return nil if visited.include?('IdentityMailFromDomainAttributes')
        visited = visited + ['IdentityMailFromDomainAttributes']
        {
          mail_from_domain: 'mail_from_domain',
          mail_from_domain_status: 'mail_from_domain_status',
          behavior_on_mx_failure: 'behavior_on_mx_failure',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IdentityMailFromDomainAttributes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MailFromDomain', stub[:mail_from_domain].to_s) unless stub[:mail_from_domain].nil?
        xml << Hearth::XML::Node.new('MailFromDomainStatus', stub[:mail_from_domain_status].to_s) unless stub[:mail_from_domain_status].nil?
        xml << Hearth::XML::Node.new('BehaviorOnMXFailure', stub[:behavior_on_mx_failure].to_s) unless stub[:behavior_on_mx_failure].nil?
        xml
      end
    end

    # Operation Stubber for GetIdentityNotificationAttributes
    class GetIdentityNotificationAttributes
      def self.default(visited=[])
        {
          notification_attributes: NotificationAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetIdentityNotificationAttributesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetIdentityNotificationAttributesResult')
        xml << Hearth::XML::Node.new('NotificationAttributes', NotificationAttributes.stub('entry', stub[:notification_attributes])) unless stub[:notification_attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for NotificationAttributes
    class NotificationAttributes
      def self.default(visited=[])
        return nil if visited.include?('NotificationAttributes')
        visited = visited + ['NotificationAttributes']
        {
          test_key: IdentityNotificationAttributes.default(visited)
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << IdentityNotificationAttributes.stub('value', value) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for IdentityNotificationAttributes
    class IdentityNotificationAttributes
      def self.default(visited=[])
        return nil if visited.include?('IdentityNotificationAttributes')
        visited = visited + ['IdentityNotificationAttributes']
        {
          bounce_topic: 'bounce_topic',
          complaint_topic: 'complaint_topic',
          delivery_topic: 'delivery_topic',
          forwarding_enabled: false,
          headers_in_bounce_notifications_enabled: false,
          headers_in_complaint_notifications_enabled: false,
          headers_in_delivery_notifications_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IdentityNotificationAttributes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BounceTopic', stub[:bounce_topic].to_s) unless stub[:bounce_topic].nil?
        xml << Hearth::XML::Node.new('ComplaintTopic', stub[:complaint_topic].to_s) unless stub[:complaint_topic].nil?
        xml << Hearth::XML::Node.new('DeliveryTopic', stub[:delivery_topic].to_s) unless stub[:delivery_topic].nil?
        xml << Hearth::XML::Node.new('ForwardingEnabled', stub[:forwarding_enabled].to_s) unless stub[:forwarding_enabled].nil?
        xml << Hearth::XML::Node.new('HeadersInBounceNotificationsEnabled', stub[:headers_in_bounce_notifications_enabled].to_s) unless stub[:headers_in_bounce_notifications_enabled].nil?
        xml << Hearth::XML::Node.new('HeadersInComplaintNotificationsEnabled', stub[:headers_in_complaint_notifications_enabled].to_s) unless stub[:headers_in_complaint_notifications_enabled].nil?
        xml << Hearth::XML::Node.new('HeadersInDeliveryNotificationsEnabled', stub[:headers_in_delivery_notifications_enabled].to_s) unless stub[:headers_in_delivery_notifications_enabled].nil?
        xml
      end
    end

    # Operation Stubber for GetIdentityPolicies
    class GetIdentityPolicies
      def self.default(visited=[])
        {
          policies: PolicyMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetIdentityPoliciesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetIdentityPoliciesResult')
        xml << Hearth::XML::Node.new('Policies', PolicyMap.stub('entry', stub[:policies])) unless stub[:policies].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for PolicyMap
    class PolicyMap
      def self.default(visited=[])
        return nil if visited.include?('PolicyMap')
        visited = visited + ['PolicyMap']
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

    # Operation Stubber for GetIdentityVerificationAttributes
    class GetIdentityVerificationAttributes
      def self.default(visited=[])
        {
          verification_attributes: VerificationAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetIdentityVerificationAttributesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetIdentityVerificationAttributesResult')
        xml << Hearth::XML::Node.new('VerificationAttributes', VerificationAttributes.stub('entry', stub[:verification_attributes])) unless stub[:verification_attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for VerificationAttributes
    class VerificationAttributes
      def self.default(visited=[])
        return nil if visited.include?('VerificationAttributes')
        visited = visited + ['VerificationAttributes']
        {
          test_key: IdentityVerificationAttributes.default(visited)
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << IdentityVerificationAttributes.stub('value', value) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for IdentityVerificationAttributes
    class IdentityVerificationAttributes
      def self.default(visited=[])
        return nil if visited.include?('IdentityVerificationAttributes')
        visited = visited + ['IdentityVerificationAttributes']
        {
          verification_status: 'verification_status',
          verification_token: 'verification_token',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IdentityVerificationAttributes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VerificationStatus', stub[:verification_status].to_s) unless stub[:verification_status].nil?
        xml << Hearth::XML::Node.new('VerificationToken', stub[:verification_token].to_s) unless stub[:verification_token].nil?
        xml
      end
    end

    # Operation Stubber for GetSendQuota
    class GetSendQuota
      def self.default(visited=[])
        {
          max24_hour_send: 1.0,
          max_send_rate: 1.0,
          sent_last24_hours: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSendQuotaResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetSendQuotaResult')
        xml << Hearth::XML::Node.new('Max24HourSend', Hearth::NumberHelper.serialize(stub[:max24_hour_send]).to_s) unless stub[:max24_hour_send].nil?
        xml << Hearth::XML::Node.new('MaxSendRate', Hearth::NumberHelper.serialize(stub[:max_send_rate]).to_s) unless stub[:max_send_rate].nil?
        xml << Hearth::XML::Node.new('SentLast24Hours', Hearth::NumberHelper.serialize(stub[:sent_last24_hours]).to_s) unless stub[:sent_last24_hours].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSendStatistics
    class GetSendStatistics
      def self.default(visited=[])
        {
          send_data_points: SendDataPointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSendStatisticsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetSendStatisticsResult')
        xml << Hearth::XML::Node.new('SendDataPoints', SendDataPointList.stub('member', stub[:send_data_points])) unless stub[:send_data_points].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SendDataPointList
    class SendDataPointList
      def self.default(visited=[])
        return nil if visited.include?('SendDataPointList')
        visited = visited + ['SendDataPointList']
        [
          SendDataPoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SendDataPoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SendDataPoint
    class SendDataPoint
      def self.default(visited=[])
        return nil if visited.include?('SendDataPoint')
        visited = visited + ['SendDataPoint']
        {
          timestamp: Time.now,
          delivery_attempts: 1,
          bounces: 1,
          complaints: 1,
          rejects: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SendDataPoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('DeliveryAttempts', stub[:delivery_attempts].to_s) unless stub[:delivery_attempts].nil?
        xml << Hearth::XML::Node.new('Bounces', stub[:bounces].to_s) unless stub[:bounces].nil?
        xml << Hearth::XML::Node.new('Complaints', stub[:complaints].to_s) unless stub[:complaints].nil?
        xml << Hearth::XML::Node.new('Rejects', stub[:rejects].to_s) unless stub[:rejects].nil?
        xml
      end
    end

    # Operation Stubber for GetTemplate
    class GetTemplate
      def self.default(visited=[])
        {
          template: Template.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('GetTemplateResult')
        xml << Template.stub('Template', stub[:template]) unless stub[:template].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Template
    class Template
      def self.default(visited=[])
        return nil if visited.include?('Template')
        visited = visited + ['Template']
        {
          template_name: 'template_name',
          subject_part: 'subject_part',
          text_part: 'text_part',
          html_part: 'html_part',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Template.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('SubjectPart', stub[:subject_part].to_s) unless stub[:subject_part].nil?
        xml << Hearth::XML::Node.new('TextPart', stub[:text_part].to_s) unless stub[:text_part].nil?
        xml << Hearth::XML::Node.new('HtmlPart', stub[:html_part].to_s) unless stub[:html_part].nil?
        xml
      end
    end

    # Operation Stubber for ListConfigurationSets
    class ListConfigurationSets
      def self.default(visited=[])
        {
          configuration_sets: ConfigurationSets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListConfigurationSetsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListConfigurationSetsResult')
        xml << Hearth::XML::Node.new('ConfigurationSets', ConfigurationSets.stub('member', stub[:configuration_sets])) unless stub[:configuration_sets].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationSets
    class ConfigurationSets
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSets')
        visited = visited + ['ConfigurationSets']
        [
          ConfigurationSet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ConfigurationSet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListCustomVerificationEmailTemplates
    class ListCustomVerificationEmailTemplates
      def self.default(visited=[])
        {
          custom_verification_email_templates: CustomVerificationEmailTemplates.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListCustomVerificationEmailTemplatesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListCustomVerificationEmailTemplatesResult')
        xml << Hearth::XML::Node.new('CustomVerificationEmailTemplates', CustomVerificationEmailTemplates.stub('member', stub[:custom_verification_email_templates])) unless stub[:custom_verification_email_templates].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for CustomVerificationEmailTemplates
    class CustomVerificationEmailTemplates
      def self.default(visited=[])
        return nil if visited.include?('CustomVerificationEmailTemplates')
        visited = visited + ['CustomVerificationEmailTemplates']
        [
          CustomVerificationEmailTemplate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << CustomVerificationEmailTemplate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CustomVerificationEmailTemplate
    class CustomVerificationEmailTemplate
      def self.default(visited=[])
        return nil if visited.include?('CustomVerificationEmailTemplate')
        visited = visited + ['CustomVerificationEmailTemplate']
        {
          template_name: 'template_name',
          from_email_address: 'from_email_address',
          template_subject: 'template_subject',
          success_redirection_url: 'success_redirection_url',
          failure_redirection_url: 'failure_redirection_url',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomVerificationEmailTemplate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('FromEmailAddress', stub[:from_email_address].to_s) unless stub[:from_email_address].nil?
        xml << Hearth::XML::Node.new('TemplateSubject', stub[:template_subject].to_s) unless stub[:template_subject].nil?
        xml << Hearth::XML::Node.new('SuccessRedirectionURL', stub[:success_redirection_url].to_s) unless stub[:success_redirection_url].nil?
        xml << Hearth::XML::Node.new('FailureRedirectionURL', stub[:failure_redirection_url].to_s) unless stub[:failure_redirection_url].nil?
        xml
      end
    end

    # Operation Stubber for ListIdentities
    class ListIdentities
      def self.default(visited=[])
        {
          identities: IdentityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListIdentitiesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListIdentitiesResult')
        xml << Hearth::XML::Node.new('Identities', IdentityList.stub('member', stub[:identities])) unless stub[:identities].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for IdentityList
    class IdentityList
      def self.default(visited=[])
        return nil if visited.include?('IdentityList')
        visited = visited + ['IdentityList']
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

    # Operation Stubber for ListIdentityPolicies
    class ListIdentityPolicies
      def self.default(visited=[])
        {
          policy_names: PolicyNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListIdentityPoliciesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListIdentityPoliciesResult')
        xml << Hearth::XML::Node.new('PolicyNames', PolicyNameList.stub('member', stub[:policy_names])) unless stub[:policy_names].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyNameList
    class PolicyNameList
      def self.default(visited=[])
        return nil if visited.include?('PolicyNameList')
        visited = visited + ['PolicyNameList']
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

    # Operation Stubber for ListReceiptFilters
    class ListReceiptFilters
      def self.default(visited=[])
        {
          filters: ReceiptFilterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListReceiptFiltersResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListReceiptFiltersResult')
        xml << Hearth::XML::Node.new('Filters', ReceiptFilterList.stub('member', stub[:filters])) unless stub[:filters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReceiptFilterList
    class ReceiptFilterList
      def self.default(visited=[])
        return nil if visited.include?('ReceiptFilterList')
        visited = visited + ['ReceiptFilterList']
        [
          ReceiptFilter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReceiptFilter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReceiptFilter
    class ReceiptFilter
      def self.default(visited=[])
        return nil if visited.include?('ReceiptFilter')
        visited = visited + ['ReceiptFilter']
        {
          name: 'name',
          ip_filter: ReceiptIpFilter.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReceiptFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << ReceiptIpFilter.stub('IpFilter', stub[:ip_filter]) unless stub[:ip_filter].nil?
        xml
      end
    end

    # Structure Stubber for ReceiptIpFilter
    class ReceiptIpFilter
      def self.default(visited=[])
        return nil if visited.include?('ReceiptIpFilter')
        visited = visited + ['ReceiptIpFilter']
        {
          policy: 'policy',
          cidr: 'cidr',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReceiptIpFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        xml << Hearth::XML::Node.new('Cidr', stub[:cidr].to_s) unless stub[:cidr].nil?
        xml
      end
    end

    # Operation Stubber for ListReceiptRuleSets
    class ListReceiptRuleSets
      def self.default(visited=[])
        {
          rule_sets: ReceiptRuleSetsLists.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListReceiptRuleSetsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListReceiptRuleSetsResult')
        xml << Hearth::XML::Node.new('RuleSets', ReceiptRuleSetsLists.stub('member', stub[:rule_sets])) unless stub[:rule_sets].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReceiptRuleSetsLists
    class ReceiptRuleSetsLists
      def self.default(visited=[])
        return nil if visited.include?('ReceiptRuleSetsLists')
        visited = visited + ['ReceiptRuleSetsLists']
        [
          ReceiptRuleSetMetadata.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReceiptRuleSetMetadata.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTemplates
    class ListTemplates
      def self.default(visited=[])
        {
          templates_metadata: TemplateMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTemplatesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListTemplatesResult')
        xml << Hearth::XML::Node.new('TemplatesMetadata', TemplateMetadataList.stub('member', stub[:templates_metadata])) unless stub[:templates_metadata].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TemplateMetadataList
    class TemplateMetadataList
      def self.default(visited=[])
        return nil if visited.include?('TemplateMetadataList')
        visited = visited + ['TemplateMetadataList']
        [
          TemplateMetadata.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TemplateMetadata.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TemplateMetadata
    class TemplateMetadata
      def self.default(visited=[])
        return nil if visited.include?('TemplateMetadata')
        visited = visited + ['TemplateMetadata']
        {
          name: 'name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TemplateMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('CreatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:created_timestamp])) unless stub[:created_timestamp].nil?
        xml
      end
    end

    # Operation Stubber for ListVerifiedEmailAddresses
    class ListVerifiedEmailAddresses
      def self.default(visited=[])
        {
          verified_email_addresses: AddressList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListVerifiedEmailAddressesResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ListVerifiedEmailAddressesResult')
        xml << Hearth::XML::Node.new('VerifiedEmailAddresses', AddressList.stub('member', stub[:verified_email_addresses])) unless stub[:verified_email_addresses].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AddressList
    class AddressList
      def self.default(visited=[])
        return nil if visited.include?('AddressList')
        visited = visited + ['AddressList']
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

    # Operation Stubber for PutConfigurationSetDeliveryOptions
    class PutConfigurationSetDeliveryOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutConfigurationSetDeliveryOptionsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('PutConfigurationSetDeliveryOptionsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutIdentityPolicy
    class PutIdentityPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutIdentityPolicyResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('PutIdentityPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReorderReceiptRuleSet
    class ReorderReceiptRuleSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ReorderReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('ReorderReceiptRuleSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendBounce
    class SendBounce
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendBounceResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SendBounceResult')
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendBulkTemplatedEmail
    class SendBulkTemplatedEmail
      def self.default(visited=[])
        {
          status: BulkEmailDestinationStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendBulkTemplatedEmailResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SendBulkTemplatedEmailResult')
        xml << Hearth::XML::Node.new('Status', BulkEmailDestinationStatusList.stub('member', stub[:status])) unless stub[:status].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for BulkEmailDestinationStatusList
    class BulkEmailDestinationStatusList
      def self.default(visited=[])
        return nil if visited.include?('BulkEmailDestinationStatusList')
        visited = visited + ['BulkEmailDestinationStatusList']
        [
          BulkEmailDestinationStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << BulkEmailDestinationStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for BulkEmailDestinationStatus
    class BulkEmailDestinationStatus
      def self.default(visited=[])
        return nil if visited.include?('BulkEmailDestinationStatus')
        visited = visited + ['BulkEmailDestinationStatus']
        {
          status: 'status',
          error: 'error',
          message_id: 'message_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BulkEmailDestinationStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Error', stub[:error].to_s) unless stub[:error].nil?
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        xml
      end
    end

    # Operation Stubber for SendCustomVerificationEmail
    class SendCustomVerificationEmail
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendCustomVerificationEmailResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SendCustomVerificationEmailResult')
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendEmail
    class SendEmail
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendEmailResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SendEmailResult')
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendRawEmail
    class SendRawEmail
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendRawEmailResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SendRawEmailResult')
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendTemplatedEmail
    class SendTemplatedEmail
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SendTemplatedEmailResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SendTemplatedEmailResult')
        xml << Hearth::XML::Node.new('MessageId', stub[:message_id].to_s) unless stub[:message_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetActiveReceiptRuleSet
    class SetActiveReceiptRuleSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetActiveReceiptRuleSetResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetActiveReceiptRuleSetResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityDkimEnabled
    class SetIdentityDkimEnabled
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetIdentityDkimEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetIdentityDkimEnabledResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityFeedbackForwardingEnabled
    class SetIdentityFeedbackForwardingEnabled
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetIdentityFeedbackForwardingEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetIdentityFeedbackForwardingEnabledResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityHeadersInNotificationsEnabled
    class SetIdentityHeadersInNotificationsEnabled
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetIdentityHeadersInNotificationsEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetIdentityHeadersInNotificationsEnabledResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityMailFromDomain
    class SetIdentityMailFromDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetIdentityMailFromDomainResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetIdentityMailFromDomainResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityNotificationTopic
    class SetIdentityNotificationTopic
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetIdentityNotificationTopicResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetIdentityNotificationTopicResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetReceiptRulePosition
    class SetReceiptRulePosition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetReceiptRulePositionResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('SetReceiptRulePositionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestRenderTemplate
    class TestRenderTemplate
      def self.default(visited=[])
        {
          rendered_template: 'rendered_template',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TestRenderTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('TestRenderTemplateResult')
        xml << Hearth::XML::Node.new('RenderedTemplate', stub[:rendered_template].to_s) unless stub[:rendered_template].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAccountSendingEnabled
    class UpdateAccountSendingEnabled
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateAccountSendingEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateAccountSendingEnabledResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateConfigurationSetEventDestinationResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateConfigurationSetEventDestinationResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConfigurationSetReputationMetricsEnabled
    class UpdateConfigurationSetReputationMetricsEnabled
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateConfigurationSetReputationMetricsEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateConfigurationSetReputationMetricsEnabledResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConfigurationSetSendingEnabled
    class UpdateConfigurationSetSendingEnabled
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateConfigurationSetSendingEnabledResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateConfigurationSetSendingEnabledResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConfigurationSetTrackingOptions
    class UpdateConfigurationSetTrackingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateConfigurationSetTrackingOptionsResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateConfigurationSetTrackingOptionsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomVerificationEmailTemplate
    class UpdateCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateCustomVerificationEmailTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateCustomVerificationEmailTemplateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateReceiptRule
    class UpdateReceiptRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateReceiptRuleResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateReceiptRuleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTemplate
    class UpdateTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateTemplateResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateTemplateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyDomainDkim
    class VerifyDomainDkim
      def self.default(visited=[])
        {
          dkim_tokens: VerificationTokenList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('VerifyDomainDkimResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('VerifyDomainDkimResult')
        xml << Hearth::XML::Node.new('DkimTokens', VerificationTokenList.stub('member', stub[:dkim_tokens])) unless stub[:dkim_tokens].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyDomainIdentity
    class VerifyDomainIdentity
      def self.default(visited=[])
        {
          verification_token: 'verification_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('VerifyDomainIdentityResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('VerifyDomainIdentityResult')
        xml << Hearth::XML::Node.new('VerificationToken', stub[:verification_token].to_s) unless stub[:verification_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyEmailAddress
    class VerifyEmailAddress
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('VerifyEmailAddressResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('VerifyEmailAddressResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyEmailIdentity
    class VerifyEmailIdentity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('VerifyEmailIdentityResponse')
        response.attributes['xmlns'] = 'http://ses.amazonaws.com/doc/2010-12-01/'
        xml = Hearth::XML::Node.new('VerifyEmailIdentityResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
