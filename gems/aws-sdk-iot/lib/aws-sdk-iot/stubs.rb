# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::IoT
  module Stubs

    # Operation Stubber for AcceptCertificateTransfer
    class AcceptCertificateTransfer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddThingToBillingGroup
    class AddThingToBillingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddThingToThingGroup
    class AddThingToThingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateTargetsWithJob
    class AssociateTargetsWithJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AttachPolicy
    class AttachPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachPrincipalPolicy
    class AttachPrincipalPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachSecurityProfile
    class AttachSecurityProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachThingPrincipal
    class AttachThingPrincipal
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelAuditMitigationActionsTask
    class CancelAuditMitigationActionsTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelAuditTask
    class CancelAuditTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelCertificateTransfer
    class CancelCertificateTransfer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelDetectMitigationActionsTask
    class CancelDetectMitigationActionsTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelJob
    class CancelJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CancelJobExecution
    class CancelJobExecution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ClearDefaultAuthorizer
    class ClearDefaultAuthorizer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmTopicRuleDestination
    class ConfirmTopicRuleDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAuditSuppression
    class CreateAuditSuppression
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAuthorizer
    class CreateAuthorizer
      def self.default(visited=[])
        {
          authorizer_name: 'authorizer_name',
          authorizer_arn: 'authorizer_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerName'] = stub[:authorizer_name] unless stub[:authorizer_name].nil?
        data['authorizerArn'] = stub[:authorizer_arn] unless stub[:authorizer_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBillingGroup
    class CreateBillingGroup
      def self.default(visited=[])
        {
          billing_group_name: 'billing_group_name',
          billing_group_arn: 'billing_group_arn',
          billing_group_id: 'billing_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['billingGroupName'] = stub[:billing_group_name] unless stub[:billing_group_name].nil?
        data['billingGroupArn'] = stub[:billing_group_arn] unless stub[:billing_group_arn].nil?
        data['billingGroupId'] = stub[:billing_group_id] unless stub[:billing_group_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCertificateFromCsr
    class CreateCertificateFromCsr
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          certificate_pem: 'certificate_pem',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['certificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCustomMetric
    class CreateCustomMetric
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_arn: 'metric_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricArn'] = stub[:metric_arn] unless stub[:metric_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDimension
    class CreateDimension
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDomainConfiguration
    class CreateDomainConfiguration
      def self.default(visited=[])
        {
          domain_configuration_name: 'domain_configuration_name',
          domain_configuration_arn: 'domain_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainConfigurationName'] = stub[:domain_configuration_name] unless stub[:domain_configuration_name].nil?
        data['domainConfigurationArn'] = stub[:domain_configuration_arn] unless stub[:domain_configuration_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDynamicThingGroup
    class CreateDynamicThingGroup
      def self.default(visited=[])
        {
          thing_group_name: 'thing_group_name',
          thing_group_arn: 'thing_group_arn',
          thing_group_id: 'thing_group_id',
          index_name: 'index_name',
          query_string: 'query_string',
          query_version: 'query_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingGroupName'] = stub[:thing_group_name] unless stub[:thing_group_name].nil?
        data['thingGroupArn'] = stub[:thing_group_arn] unless stub[:thing_group_arn].nil?
        data['thingGroupId'] = stub[:thing_group_id] unless stub[:thing_group_id].nil?
        data['indexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['queryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['queryVersion'] = stub[:query_version] unless stub[:query_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFleetMetric
    class CreateFleetMetric
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_arn: 'metric_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricArn'] = stub[:metric_arn] unless stub[:metric_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateJobTemplate
    class CreateJobTemplate
      def self.default(visited=[])
        {
          job_template_arn: 'job_template_arn',
          job_template_id: 'job_template_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplateArn'] = stub[:job_template_arn] unless stub[:job_template_arn].nil?
        data['jobTemplateId'] = stub[:job_template_id] unless stub[:job_template_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateKeysAndCertificate
    class CreateKeysAndCertificate
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          certificate_pem: 'certificate_pem',
          key_pair: KeyPair.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['certificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        data['keyPair'] = KeyPair.stub(stub[:key_pair]) unless stub[:key_pair].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for KeyPair
    class KeyPair
      def self.default(visited=[])
        return nil if visited.include?('KeyPair')
        visited = visited + ['KeyPair']
        {
          public_key: 'public_key',
          private_key: 'private_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyPair.new
        data = {}
        data['PublicKey'] = stub[:public_key] unless stub[:public_key].nil?
        data['PrivateKey'] = stub[:private_key] unless stub[:private_key].nil?
        data
      end
    end

    # Operation Stubber for CreateMitigationAction
    class CreateMitigationAction
      def self.default(visited=[])
        {
          action_arn: 'action_arn',
          action_id: 'action_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        data['actionId'] = stub[:action_id] unless stub[:action_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateOTAUpdate
    class CreateOTAUpdate
      def self.default(visited=[])
        {
          ota_update_id: 'ota_update_id',
          aws_iot_job_id: 'aws_iot_job_id',
          ota_update_arn: 'ota_update_arn',
          aws_iot_job_arn: 'aws_iot_job_arn',
          ota_update_status: 'ota_update_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['otaUpdateId'] = stub[:ota_update_id] unless stub[:ota_update_id].nil?
        data['awsIotJobId'] = stub[:aws_iot_job_id] unless stub[:aws_iot_job_id].nil?
        data['otaUpdateArn'] = stub[:ota_update_arn] unless stub[:ota_update_arn].nil?
        data['awsIotJobArn'] = stub[:aws_iot_job_arn] unless stub[:aws_iot_job_arn].nil?
        data['otaUpdateStatus'] = stub[:ota_update_status] unless stub[:ota_update_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePolicy
    class CreatePolicy
      def self.default(visited=[])
        {
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
          policy_document: 'policy_document',
          policy_version_id: 'policy_version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data['policyVersionId'] = stub[:policy_version_id] unless stub[:policy_version_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePolicyVersion
    class CreatePolicyVersion
      def self.default(visited=[])
        {
          policy_arn: 'policy_arn',
          policy_document: 'policy_document',
          policy_version_id: 'policy_version_id',
          is_default_version: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data['policyVersionId'] = stub[:policy_version_id] unless stub[:policy_version_id].nil?
        data['isDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProvisioningClaim
    class CreateProvisioningClaim
      def self.default(visited=[])
        {
          certificate_id: 'certificate_id',
          certificate_pem: 'certificate_pem',
          key_pair: KeyPair.default(visited),
          expiration: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['certificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        data['keyPair'] = KeyPair.stub(stub[:key_pair]) unless stub[:key_pair].nil?
        data['expiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration]).to_i unless stub[:expiration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProvisioningTemplate
    class CreateProvisioningTemplate
      def self.default(visited=[])
        {
          template_arn: 'template_arn',
          template_name: 'template_name',
          default_version_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['defaultVersionId'] = stub[:default_version_id] unless stub[:default_version_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProvisioningTemplateVersion
    class CreateProvisioningTemplateVersion
      def self.default(visited=[])
        {
          template_arn: 'template_arn',
          template_name: 'template_name',
          version_id: 1,
          is_default_version: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['versionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['isDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRoleAlias
    class CreateRoleAlias
      def self.default(visited=[])
        {
          role_alias: 'role_alias',
          role_alias_arn: 'role_alias_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleAlias'] = stub[:role_alias] unless stub[:role_alias].nil?
        data['roleAliasArn'] = stub[:role_alias_arn] unless stub[:role_alias_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateScheduledAudit
    class CreateScheduledAudit
      def self.default(visited=[])
        {
          scheduled_audit_arn: 'scheduled_audit_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['scheduledAuditArn'] = stub[:scheduled_audit_arn] unless stub[:scheduled_audit_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSecurityProfile
    class CreateSecurityProfile
      def self.default(visited=[])
        {
          security_profile_name: 'security_profile_name',
          security_profile_arn: 'security_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['securityProfileArn'] = stub[:security_profile_arn] unless stub[:security_profile_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateStream
    class CreateStream
      def self.default(visited=[])
        {
          stream_id: 'stream_id',
          stream_arn: 'stream_arn',
          description: 'description',
          stream_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['streamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['streamVersion'] = stub[:stream_version] unless stub[:stream_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateThing
    class CreateThing
      def self.default(visited=[])
        {
          thing_name: 'thing_name',
          thing_arn: 'thing_arn',
          thing_id: 'thing_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['thingId'] = stub[:thing_id] unless stub[:thing_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateThingGroup
    class CreateThingGroup
      def self.default(visited=[])
        {
          thing_group_name: 'thing_group_name',
          thing_group_arn: 'thing_group_arn',
          thing_group_id: 'thing_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingGroupName'] = stub[:thing_group_name] unless stub[:thing_group_name].nil?
        data['thingGroupArn'] = stub[:thing_group_arn] unless stub[:thing_group_arn].nil?
        data['thingGroupId'] = stub[:thing_group_id] unless stub[:thing_group_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateThingType
    class CreateThingType
      def self.default(visited=[])
        {
          thing_type_name: 'thing_type_name',
          thing_type_arn: 'thing_type_arn',
          thing_type_id: 'thing_type_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingTypeName'] = stub[:thing_type_name] unless stub[:thing_type_name].nil?
        data['thingTypeArn'] = stub[:thing_type_arn] unless stub[:thing_type_arn].nil?
        data['thingTypeId'] = stub[:thing_type_id] unless stub[:thing_type_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTopicRule
    class CreateTopicRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTopicRuleDestination
    class CreateTopicRuleDestination
      def self.default(visited=[])
        {
          topic_rule_destination: TopicRuleDestination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['topicRuleDestination'] = TopicRuleDestination.stub(stub[:topic_rule_destination]) unless stub[:topic_rule_destination].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TopicRuleDestination
    class TopicRuleDestination
      def self.default(visited=[])
        return nil if visited.include?('TopicRuleDestination')
        visited = visited + ['TopicRuleDestination']
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          last_updated_at: Time.now,
          status_reason: 'status_reason',
          http_url_properties: HttpUrlDestinationProperties.default(visited),
          vpc_properties: VpcDestinationProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TopicRuleDestination.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['httpUrlProperties'] = HttpUrlDestinationProperties.stub(stub[:http_url_properties]) unless stub[:http_url_properties].nil?
        data['vpcProperties'] = VpcDestinationProperties.stub(stub[:vpc_properties]) unless stub[:vpc_properties].nil?
        data
      end
    end

    # Structure Stubber for VpcDestinationProperties
    class VpcDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('VpcDestinationProperties')
        visited = visited + ['VpcDestinationProperties']
        {
          subnet_ids: SubnetIdList.default(visited),
          security_groups: SecurityGroupList.default(visited),
          vpc_id: 'vpc_id',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcDestinationProperties.new
        data = {}
        data['subnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroups'] = SecurityGroupList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for SecurityGroupList
    class SecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupList')
        visited = visited + ['SecurityGroupList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpUrlDestinationProperties
    class HttpUrlDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('HttpUrlDestinationProperties')
        visited = visited + ['HttpUrlDestinationProperties']
        {
          confirmation_url: 'confirmation_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpUrlDestinationProperties.new
        data = {}
        data['confirmationUrl'] = stub[:confirmation_url] unless stub[:confirmation_url].nil?
        data
      end
    end

    # Operation Stubber for DeleteAccountAuditConfiguration
    class DeleteAccountAuditConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAuditSuppression
    class DeleteAuditSuppression
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAuthorizer
    class DeleteAuthorizer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBillingGroup
    class DeleteBillingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCACertificate
    class DeleteCACertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCertificate
    class DeleteCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomMetric
    class DeleteCustomMetric
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDimension
    class DeleteDimension
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDomainConfiguration
    class DeleteDomainConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDynamicThingGroup
    class DeleteDynamicThingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFleetMetric
    class DeleteFleetMetric
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteJob
    class DeleteJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteJobExecution
    class DeleteJobExecution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteJobTemplate
    class DeleteJobTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMitigationAction
    class DeleteMitigationAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOTAUpdate
    class DeleteOTAUpdate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicy
    class DeletePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicyVersion
    class DeletePolicyVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProvisioningTemplate
    class DeleteProvisioningTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProvisioningTemplateVersion
    class DeleteProvisioningTemplateVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRegistrationCode
    class DeleteRegistrationCode
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRoleAlias
    class DeleteRoleAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScheduledAudit
    class DeleteScheduledAudit
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSecurityProfile
    class DeleteSecurityProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStream
    class DeleteStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteThing
    class DeleteThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteThingGroup
    class DeleteThingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteThingType
    class DeleteThingType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTopicRule
    class DeleteTopicRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTopicRuleDestination
    class DeleteTopicRuleDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteV2LoggingLevel
    class DeleteV2LoggingLevel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeprecateThingType
    class DeprecateThingType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAuditConfiguration
    class DescribeAccountAuditConfiguration
      def self.default(visited=[])
        {
          role_arn: 'role_arn',
          audit_notification_target_configurations: AuditNotificationTargetConfigurations.default(visited),
          audit_check_configurations: AuditCheckConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['auditNotificationTargetConfigurations'] = AuditNotificationTargetConfigurations.stub(stub[:audit_notification_target_configurations]) unless stub[:audit_notification_target_configurations].nil?
        data['auditCheckConfigurations'] = AuditCheckConfigurations.stub(stub[:audit_check_configurations]) unless stub[:audit_check_configurations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for AuditCheckConfigurations
    class AuditCheckConfigurations
      def self.default(visited=[])
        return nil if visited.include?('AuditCheckConfigurations')
        visited = visited + ['AuditCheckConfigurations']
        {
          test_key: AuditCheckConfiguration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AuditCheckConfiguration.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditCheckConfiguration
    class AuditCheckConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AuditCheckConfiguration')
        visited = visited + ['AuditCheckConfiguration']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditCheckConfiguration.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Map Stubber for AuditNotificationTargetConfigurations
    class AuditNotificationTargetConfigurations
      def self.default(visited=[])
        return nil if visited.include?('AuditNotificationTargetConfigurations')
        visited = visited + ['AuditNotificationTargetConfigurations']
        {
          test_key: AuditNotificationTarget.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AuditNotificationTarget.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditNotificationTarget
    class AuditNotificationTarget
      def self.default(visited=[])
        return nil if visited.include?('AuditNotificationTarget')
        visited = visited + ['AuditNotificationTarget']
        {
          target_arn: 'target_arn',
          role_arn: 'role_arn',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditNotificationTarget.new
        data = {}
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeAuditFinding
    class DescribeAuditFinding
      def self.default(visited=[])
        {
          finding: AuditFinding.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['finding'] = AuditFinding.stub(stub[:finding]) unless stub[:finding].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AuditFinding
    class AuditFinding
      def self.default(visited=[])
        return nil if visited.include?('AuditFinding')
        visited = visited + ['AuditFinding']
        {
          finding_id: 'finding_id',
          task_id: 'task_id',
          check_name: 'check_name',
          task_start_time: Time.now,
          finding_time: Time.now,
          severity: 'severity',
          non_compliant_resource: NonCompliantResource.default(visited),
          related_resources: RelatedResources.default(visited),
          reason_for_non_compliance: 'reason_for_non_compliance',
          reason_for_non_compliance_code: 'reason_for_non_compliance_code',
          is_suppressed: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditFinding.new
        data = {}
        data['findingId'] = stub[:finding_id] unless stub[:finding_id].nil?
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['checkName'] = stub[:check_name] unless stub[:check_name].nil?
        data['taskStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:task_start_time]).to_i unless stub[:task_start_time].nil?
        data['findingTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finding_time]).to_i unless stub[:finding_time].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['nonCompliantResource'] = NonCompliantResource.stub(stub[:non_compliant_resource]) unless stub[:non_compliant_resource].nil?
        data['relatedResources'] = RelatedResources.stub(stub[:related_resources]) unless stub[:related_resources].nil?
        data['reasonForNonCompliance'] = stub[:reason_for_non_compliance] unless stub[:reason_for_non_compliance].nil?
        data['reasonForNonComplianceCode'] = stub[:reason_for_non_compliance_code] unless stub[:reason_for_non_compliance_code].nil?
        data['isSuppressed'] = stub[:is_suppressed] unless stub[:is_suppressed].nil?
        data
      end
    end

    # List Stubber for RelatedResources
    class RelatedResources
      def self.default(visited=[])
        return nil if visited.include?('RelatedResources')
        visited = visited + ['RelatedResources']
        [
          RelatedResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelatedResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelatedResource
    class RelatedResource
      def self.default(visited=[])
        return nil if visited.include?('RelatedResource')
        visited = visited + ['RelatedResource']
        {
          resource_type: 'resource_type',
          resource_identifier: ResourceIdentifier.default(visited),
          additional_info: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RelatedResource.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceIdentifier'] = ResourceIdentifier.stub(stub[:resource_identifier]) unless stub[:resource_identifier].nil?
        data['additionalInfo'] = StringMap.stub(stub[:additional_info]) unless stub[:additional_info].nil?
        data
      end
    end

    # Map Stubber for StringMap
    class StringMap
      def self.default(visited=[])
        return nil if visited.include?('StringMap')
        visited = visited + ['StringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceIdentifier
    class ResourceIdentifier
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifier')
        visited = visited + ['ResourceIdentifier']
        {
          device_certificate_id: 'device_certificate_id',
          ca_certificate_id: 'ca_certificate_id',
          cognito_identity_pool_id: 'cognito_identity_pool_id',
          client_id: 'client_id',
          policy_version_identifier: PolicyVersionIdentifier.default(visited),
          account: 'account',
          iam_role_arn: 'iam_role_arn',
          role_alias_arn: 'role_alias_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceIdentifier.new
        data = {}
        data['deviceCertificateId'] = stub[:device_certificate_id] unless stub[:device_certificate_id].nil?
        data['caCertificateId'] = stub[:ca_certificate_id] unless stub[:ca_certificate_id].nil?
        data['cognitoIdentityPoolId'] = stub[:cognito_identity_pool_id] unless stub[:cognito_identity_pool_id].nil?
        data['clientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['policyVersionIdentifier'] = PolicyVersionIdentifier.stub(stub[:policy_version_identifier]) unless stub[:policy_version_identifier].nil?
        data['account'] = stub[:account] unless stub[:account].nil?
        data['iamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['roleAliasArn'] = stub[:role_alias_arn] unless stub[:role_alias_arn].nil?
        data
      end
    end

    # Structure Stubber for PolicyVersionIdentifier
    class PolicyVersionIdentifier
      def self.default(visited=[])
        return nil if visited.include?('PolicyVersionIdentifier')
        visited = visited + ['PolicyVersionIdentifier']
        {
          policy_name: 'policy_name',
          policy_version_id: 'policy_version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyVersionIdentifier.new
        data = {}
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyVersionId'] = stub[:policy_version_id] unless stub[:policy_version_id].nil?
        data
      end
    end

    # Structure Stubber for NonCompliantResource
    class NonCompliantResource
      def self.default(visited=[])
        return nil if visited.include?('NonCompliantResource')
        visited = visited + ['NonCompliantResource']
        {
          resource_type: 'resource_type',
          resource_identifier: ResourceIdentifier.default(visited),
          additional_info: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NonCompliantResource.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceIdentifier'] = ResourceIdentifier.stub(stub[:resource_identifier]) unless stub[:resource_identifier].nil?
        data['additionalInfo'] = StringMap.stub(stub[:additional_info]) unless stub[:additional_info].nil?
        data
      end
    end

    # Operation Stubber for DescribeAuditMitigationActionsTask
    class DescribeAuditMitigationActionsTask
      def self.default(visited=[])
        {
          task_status: 'task_status',
          start_time: Time.now,
          end_time: Time.now,
          task_statistics: AuditMitigationActionsTaskStatistics.default(visited),
          target: AuditMitigationActionsTaskTarget.default(visited),
          audit_check_to_actions_mapping: AuditCheckToActionsMapping.default(visited),
          actions_definition: MitigationActionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskStatus'] = stub[:task_status] unless stub[:task_status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['taskStatistics'] = AuditMitigationActionsTaskStatistics.stub(stub[:task_statistics]) unless stub[:task_statistics].nil?
        data['target'] = AuditMitigationActionsTaskTarget.stub(stub[:target]) unless stub[:target].nil?
        data['auditCheckToActionsMapping'] = AuditCheckToActionsMapping.stub(stub[:audit_check_to_actions_mapping]) unless stub[:audit_check_to_actions_mapping].nil?
        data['actionsDefinition'] = MitigationActionList.stub(stub[:actions_definition]) unless stub[:actions_definition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MitigationActionList
    class MitigationActionList
      def self.default(visited=[])
        return nil if visited.include?('MitigationActionList')
        visited = visited + ['MitigationActionList']
        [
          MitigationAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MitigationAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MitigationAction
    class MitigationAction
      def self.default(visited=[])
        return nil if visited.include?('MitigationAction')
        visited = visited + ['MitigationAction']
        {
          name: 'name',
          id: 'id',
          role_arn: 'role_arn',
          action_params: MitigationActionParams.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MitigationAction.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['actionParams'] = MitigationActionParams.stub(stub[:action_params]) unless stub[:action_params].nil?
        data
      end
    end

    # Structure Stubber for MitigationActionParams
    class MitigationActionParams
      def self.default(visited=[])
        return nil if visited.include?('MitigationActionParams')
        visited = visited + ['MitigationActionParams']
        {
          update_device_certificate_params: UpdateDeviceCertificateParams.default(visited),
          update_ca_certificate_params: UpdateCACertificateParams.default(visited),
          add_things_to_thing_group_params: AddThingsToThingGroupParams.default(visited),
          replace_default_policy_version_params: ReplaceDefaultPolicyVersionParams.default(visited),
          enable_io_t_logging_params: EnableIoTLoggingParams.default(visited),
          publish_finding_to_sns_params: PublishFindingToSnsParams.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MitigationActionParams.new
        data = {}
        data['updateDeviceCertificateParams'] = UpdateDeviceCertificateParams.stub(stub[:update_device_certificate_params]) unless stub[:update_device_certificate_params].nil?
        data['updateCACertificateParams'] = UpdateCACertificateParams.stub(stub[:update_ca_certificate_params]) unless stub[:update_ca_certificate_params].nil?
        data['addThingsToThingGroupParams'] = AddThingsToThingGroupParams.stub(stub[:add_things_to_thing_group_params]) unless stub[:add_things_to_thing_group_params].nil?
        data['replaceDefaultPolicyVersionParams'] = ReplaceDefaultPolicyVersionParams.stub(stub[:replace_default_policy_version_params]) unless stub[:replace_default_policy_version_params].nil?
        data['enableIoTLoggingParams'] = EnableIoTLoggingParams.stub(stub[:enable_io_t_logging_params]) unless stub[:enable_io_t_logging_params].nil?
        data['publishFindingToSnsParams'] = PublishFindingToSnsParams.stub(stub[:publish_finding_to_sns_params]) unless stub[:publish_finding_to_sns_params].nil?
        data
      end
    end

    # Structure Stubber for PublishFindingToSnsParams
    class PublishFindingToSnsParams
      def self.default(visited=[])
        return nil if visited.include?('PublishFindingToSnsParams')
        visited = visited + ['PublishFindingToSnsParams']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::PublishFindingToSnsParams.new
        data = {}
        data['topicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data
      end
    end

    # Structure Stubber for EnableIoTLoggingParams
    class EnableIoTLoggingParams
      def self.default(visited=[])
        return nil if visited.include?('EnableIoTLoggingParams')
        visited = visited + ['EnableIoTLoggingParams']
        {
          role_arn_for_logging: 'role_arn_for_logging',
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnableIoTLoggingParams.new
        data = {}
        data['roleArnForLogging'] = stub[:role_arn_for_logging] unless stub[:role_arn_for_logging].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # Structure Stubber for ReplaceDefaultPolicyVersionParams
    class ReplaceDefaultPolicyVersionParams
      def self.default(visited=[])
        return nil if visited.include?('ReplaceDefaultPolicyVersionParams')
        visited = visited + ['ReplaceDefaultPolicyVersionParams']
        {
          template_name: 'template_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplaceDefaultPolicyVersionParams.new
        data = {}
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data
      end
    end

    # Structure Stubber for AddThingsToThingGroupParams
    class AddThingsToThingGroupParams
      def self.default(visited=[])
        return nil if visited.include?('AddThingsToThingGroupParams')
        visited = visited + ['AddThingsToThingGroupParams']
        {
          thing_group_names: ThingGroupNames.default(visited),
          override_dynamic_groups: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AddThingsToThingGroupParams.new
        data = {}
        data['thingGroupNames'] = ThingGroupNames.stub(stub[:thing_group_names]) unless stub[:thing_group_names].nil?
        data['overrideDynamicGroups'] = stub[:override_dynamic_groups] unless stub[:override_dynamic_groups].nil?
        data
      end
    end

    # List Stubber for ThingGroupNames
    class ThingGroupNames
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupNames')
        visited = visited + ['ThingGroupNames']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateCACertificateParams
    class UpdateCACertificateParams
      def self.default(visited=[])
        return nil if visited.include?('UpdateCACertificateParams')
        visited = visited + ['UpdateCACertificateParams']
        {
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateCACertificateParams.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for UpdateDeviceCertificateParams
    class UpdateDeviceCertificateParams
      def self.default(visited=[])
        return nil if visited.include?('UpdateDeviceCertificateParams')
        visited = visited + ['UpdateDeviceCertificateParams']
        {
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateDeviceCertificateParams.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data
      end
    end

    # Map Stubber for AuditCheckToActionsMapping
    class AuditCheckToActionsMapping
      def self.default(visited=[])
        return nil if visited.include?('AuditCheckToActionsMapping')
        visited = visited + ['AuditCheckToActionsMapping']
        {
          test_key: MitigationActionNameList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = MitigationActionNameList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for MitigationActionNameList
    class MitigationActionNameList
      def self.default(visited=[])
        return nil if visited.include?('MitigationActionNameList')
        visited = visited + ['MitigationActionNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditMitigationActionsTaskTarget
    class AuditMitigationActionsTaskTarget
      def self.default(visited=[])
        return nil if visited.include?('AuditMitigationActionsTaskTarget')
        visited = visited + ['AuditMitigationActionsTaskTarget']
        {
          audit_task_id: 'audit_task_id',
          finding_ids: FindingIds.default(visited),
          audit_check_to_reason_code_filter: AuditCheckToReasonCodeFilter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditMitigationActionsTaskTarget.new
        data = {}
        data['auditTaskId'] = stub[:audit_task_id] unless stub[:audit_task_id].nil?
        data['findingIds'] = FindingIds.stub(stub[:finding_ids]) unless stub[:finding_ids].nil?
        data['auditCheckToReasonCodeFilter'] = AuditCheckToReasonCodeFilter.stub(stub[:audit_check_to_reason_code_filter]) unless stub[:audit_check_to_reason_code_filter].nil?
        data
      end
    end

    # Map Stubber for AuditCheckToReasonCodeFilter
    class AuditCheckToReasonCodeFilter
      def self.default(visited=[])
        return nil if visited.include?('AuditCheckToReasonCodeFilter')
        visited = visited + ['AuditCheckToReasonCodeFilter']
        {
          test_key: ReasonForNonComplianceCodes.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ReasonForNonComplianceCodes.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ReasonForNonComplianceCodes
    class ReasonForNonComplianceCodes
      def self.default(visited=[])
        return nil if visited.include?('ReasonForNonComplianceCodes')
        visited = visited + ['ReasonForNonComplianceCodes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for FindingIds
    class FindingIds
      def self.default(visited=[])
        return nil if visited.include?('FindingIds')
        visited = visited + ['FindingIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for AuditMitigationActionsTaskStatistics
    class AuditMitigationActionsTaskStatistics
      def self.default(visited=[])
        return nil if visited.include?('AuditMitigationActionsTaskStatistics')
        visited = visited + ['AuditMitigationActionsTaskStatistics']
        {
          test_key: TaskStatisticsForAuditCheck.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = TaskStatisticsForAuditCheck.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskStatisticsForAuditCheck
    class TaskStatisticsForAuditCheck
      def self.default(visited=[])
        return nil if visited.include?('TaskStatisticsForAuditCheck')
        visited = visited + ['TaskStatisticsForAuditCheck']
        {
          total_findings_count: 1,
          failed_findings_count: 1,
          succeeded_findings_count: 1,
          skipped_findings_count: 1,
          canceled_findings_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskStatisticsForAuditCheck.new
        data = {}
        data['totalFindingsCount'] = stub[:total_findings_count] unless stub[:total_findings_count].nil?
        data['failedFindingsCount'] = stub[:failed_findings_count] unless stub[:failed_findings_count].nil?
        data['succeededFindingsCount'] = stub[:succeeded_findings_count] unless stub[:succeeded_findings_count].nil?
        data['skippedFindingsCount'] = stub[:skipped_findings_count] unless stub[:skipped_findings_count].nil?
        data['canceledFindingsCount'] = stub[:canceled_findings_count] unless stub[:canceled_findings_count].nil?
        data
      end
    end

    # Operation Stubber for DescribeAuditSuppression
    class DescribeAuditSuppression
      def self.default(visited=[])
        {
          check_name: 'check_name',
          resource_identifier: ResourceIdentifier.default(visited),
          expiration_date: Time.now,
          suppress_indefinitely: false,
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['checkName'] = stub[:check_name] unless stub[:check_name].nil?
        data['resourceIdentifier'] = ResourceIdentifier.stub(stub[:resource_identifier]) unless stub[:resource_identifier].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['suppressIndefinitely'] = stub[:suppress_indefinitely] unless stub[:suppress_indefinitely].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAuditTask
    class DescribeAuditTask
      def self.default(visited=[])
        {
          task_status: 'task_status',
          task_type: 'task_type',
          task_start_time: Time.now,
          task_statistics: TaskStatistics.default(visited),
          scheduled_audit_name: 'scheduled_audit_name',
          audit_details: AuditDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskStatus'] = stub[:task_status] unless stub[:task_status].nil?
        data['taskType'] = stub[:task_type] unless stub[:task_type].nil?
        data['taskStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:task_start_time]).to_i unless stub[:task_start_time].nil?
        data['taskStatistics'] = TaskStatistics.stub(stub[:task_statistics]) unless stub[:task_statistics].nil?
        data['scheduledAuditName'] = stub[:scheduled_audit_name] unless stub[:scheduled_audit_name].nil?
        data['auditDetails'] = AuditDetails.stub(stub[:audit_details]) unless stub[:audit_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for AuditDetails
    class AuditDetails
      def self.default(visited=[])
        return nil if visited.include?('AuditDetails')
        visited = visited + ['AuditDetails']
        {
          test_key: AuditCheckDetails.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AuditCheckDetails.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditCheckDetails
    class AuditCheckDetails
      def self.default(visited=[])
        return nil if visited.include?('AuditCheckDetails')
        visited = visited + ['AuditCheckDetails']
        {
          check_run_status: 'check_run_status',
          check_compliant: false,
          total_resources_count: 1,
          non_compliant_resources_count: 1,
          suppressed_non_compliant_resources_count: 1,
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditCheckDetails.new
        data = {}
        data['checkRunStatus'] = stub[:check_run_status] unless stub[:check_run_status].nil?
        data['checkCompliant'] = stub[:check_compliant] unless stub[:check_compliant].nil?
        data['totalResourcesCount'] = stub[:total_resources_count] unless stub[:total_resources_count].nil?
        data['nonCompliantResourcesCount'] = stub[:non_compliant_resources_count] unless stub[:non_compliant_resources_count].nil?
        data['suppressedNonCompliantResourcesCount'] = stub[:suppressed_non_compliant_resources_count] unless stub[:suppressed_non_compliant_resources_count].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for TaskStatistics
    class TaskStatistics
      def self.default(visited=[])
        return nil if visited.include?('TaskStatistics')
        visited = visited + ['TaskStatistics']
        {
          total_checks: 1,
          in_progress_checks: 1,
          waiting_for_data_collection_checks: 1,
          compliant_checks: 1,
          non_compliant_checks: 1,
          failed_checks: 1,
          canceled_checks: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskStatistics.new
        data = {}
        data['totalChecks'] = stub[:total_checks] unless stub[:total_checks].nil?
        data['inProgressChecks'] = stub[:in_progress_checks] unless stub[:in_progress_checks].nil?
        data['waitingForDataCollectionChecks'] = stub[:waiting_for_data_collection_checks] unless stub[:waiting_for_data_collection_checks].nil?
        data['compliantChecks'] = stub[:compliant_checks] unless stub[:compliant_checks].nil?
        data['nonCompliantChecks'] = stub[:non_compliant_checks] unless stub[:non_compliant_checks].nil?
        data['failedChecks'] = stub[:failed_checks] unless stub[:failed_checks].nil?
        data['canceledChecks'] = stub[:canceled_checks] unless stub[:canceled_checks].nil?
        data
      end
    end

    # Operation Stubber for DescribeAuthorizer
    class DescribeAuthorizer
      def self.default(visited=[])
        {
          authorizer_description: AuthorizerDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerDescription'] = AuthorizerDescription.stub(stub[:authorizer_description]) unless stub[:authorizer_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AuthorizerDescription
    class AuthorizerDescription
      def self.default(visited=[])
        return nil if visited.include?('AuthorizerDescription')
        visited = visited + ['AuthorizerDescription']
        {
          authorizer_name: 'authorizer_name',
          authorizer_arn: 'authorizer_arn',
          authorizer_function_arn: 'authorizer_function_arn',
          token_key_name: 'token_key_name',
          token_signing_public_keys: PublicKeyMap.default(visited),
          status: 'status',
          creation_date: Time.now,
          last_modified_date: Time.now,
          signing_disabled: false,
          enable_caching_for_http: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthorizerDescription.new
        data = {}
        data['authorizerName'] = stub[:authorizer_name] unless stub[:authorizer_name].nil?
        data['authorizerArn'] = stub[:authorizer_arn] unless stub[:authorizer_arn].nil?
        data['authorizerFunctionArn'] = stub[:authorizer_function_arn] unless stub[:authorizer_function_arn].nil?
        data['tokenKeyName'] = stub[:token_key_name] unless stub[:token_key_name].nil?
        data['tokenSigningPublicKeys'] = PublicKeyMap.stub(stub[:token_signing_public_keys]) unless stub[:token_signing_public_keys].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['signingDisabled'] = stub[:signing_disabled] unless stub[:signing_disabled].nil?
        data['enableCachingForHttp'] = stub[:enable_caching_for_http] unless stub[:enable_caching_for_http].nil?
        data
      end
    end

    # Map Stubber for PublicKeyMap
    class PublicKeyMap
      def self.default(visited=[])
        return nil if visited.include?('PublicKeyMap')
        visited = visited + ['PublicKeyMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeBillingGroup
    class DescribeBillingGroup
      def self.default(visited=[])
        {
          billing_group_name: 'billing_group_name',
          billing_group_id: 'billing_group_id',
          billing_group_arn: 'billing_group_arn',
          version: 1,
          billing_group_properties: BillingGroupProperties.default(visited),
          billing_group_metadata: BillingGroupMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['billingGroupName'] = stub[:billing_group_name] unless stub[:billing_group_name].nil?
        data['billingGroupId'] = stub[:billing_group_id] unless stub[:billing_group_id].nil?
        data['billingGroupArn'] = stub[:billing_group_arn] unless stub[:billing_group_arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['billingGroupProperties'] = BillingGroupProperties.stub(stub[:billing_group_properties]) unless stub[:billing_group_properties].nil?
        data['billingGroupMetadata'] = BillingGroupMetadata.stub(stub[:billing_group_metadata]) unless stub[:billing_group_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BillingGroupMetadata
    class BillingGroupMetadata
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupMetadata')
        visited = visited + ['BillingGroupMetadata']
        {
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingGroupMetadata.new
        data = {}
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Structure Stubber for BillingGroupProperties
    class BillingGroupProperties
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupProperties')
        visited = visited + ['BillingGroupProperties']
        {
          billing_group_description: 'billing_group_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingGroupProperties.new
        data = {}
        data['billingGroupDescription'] = stub[:billing_group_description] unless stub[:billing_group_description].nil?
        data
      end
    end

    # Operation Stubber for DescribeCACertificate
    class DescribeCACertificate
      def self.default(visited=[])
        {
          certificate_description: CACertificateDescription.default(visited),
          registration_config: RegistrationConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateDescription'] = CACertificateDescription.stub(stub[:certificate_description]) unless stub[:certificate_description].nil?
        data['registrationConfig'] = RegistrationConfig.stub(stub[:registration_config]) unless stub[:registration_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RegistrationConfig
    class RegistrationConfig
      def self.default(visited=[])
        return nil if visited.include?('RegistrationConfig')
        visited = visited + ['RegistrationConfig']
        {
          template_body: 'template_body',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistrationConfig.new
        data = {}
        data['templateBody'] = stub[:template_body] unless stub[:template_body].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for CACertificateDescription
    class CACertificateDescription
      def self.default(visited=[])
        return nil if visited.include?('CACertificateDescription')
        visited = visited + ['CACertificateDescription']
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          status: 'status',
          certificate_pem: 'certificate_pem',
          owned_by: 'owned_by',
          creation_date: Time.now,
          auto_registration_status: 'auto_registration_status',
          last_modified_date: Time.now,
          customer_version: 1,
          generation_id: 'generation_id',
          validity: CertificateValidity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CACertificateDescription.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['certificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        data['ownedBy'] = stub[:owned_by] unless stub[:owned_by].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['autoRegistrationStatus'] = stub[:auto_registration_status] unless stub[:auto_registration_status].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['customerVersion'] = stub[:customer_version] unless stub[:customer_version].nil?
        data['generationId'] = stub[:generation_id] unless stub[:generation_id].nil?
        data['validity'] = CertificateValidity.stub(stub[:validity]) unless stub[:validity].nil?
        data
      end
    end

    # Structure Stubber for CertificateValidity
    class CertificateValidity
      def self.default(visited=[])
        return nil if visited.include?('CertificateValidity')
        visited = visited + ['CertificateValidity']
        {
          not_before: Time.now,
          not_after: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateValidity.new
        data = {}
        data['notBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_before]).to_i unless stub[:not_before].nil?
        data['notAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_after]).to_i unless stub[:not_after].nil?
        data
      end
    end

    # Operation Stubber for DescribeCertificate
    class DescribeCertificate
      def self.default(visited=[])
        {
          certificate_description: CertificateDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateDescription'] = CertificateDescription.stub(stub[:certificate_description]) unless stub[:certificate_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CertificateDescription
    class CertificateDescription
      def self.default(visited=[])
        return nil if visited.include?('CertificateDescription')
        visited = visited + ['CertificateDescription']
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          ca_certificate_id: 'ca_certificate_id',
          status: 'status',
          certificate_pem: 'certificate_pem',
          owned_by: 'owned_by',
          previous_owned_by: 'previous_owned_by',
          creation_date: Time.now,
          last_modified_date: Time.now,
          customer_version: 1,
          transfer_data: TransferData.default(visited),
          generation_id: 'generation_id',
          validity: CertificateValidity.default(visited),
          certificate_mode: 'certificate_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateDescription.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['caCertificateId'] = stub[:ca_certificate_id] unless stub[:ca_certificate_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['certificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        data['ownedBy'] = stub[:owned_by] unless stub[:owned_by].nil?
        data['previousOwnedBy'] = stub[:previous_owned_by] unless stub[:previous_owned_by].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['customerVersion'] = stub[:customer_version] unless stub[:customer_version].nil?
        data['transferData'] = TransferData.stub(stub[:transfer_data]) unless stub[:transfer_data].nil?
        data['generationId'] = stub[:generation_id] unless stub[:generation_id].nil?
        data['validity'] = CertificateValidity.stub(stub[:validity]) unless stub[:validity].nil?
        data['certificateMode'] = stub[:certificate_mode] unless stub[:certificate_mode].nil?
        data
      end
    end

    # Structure Stubber for TransferData
    class TransferData
      def self.default(visited=[])
        return nil if visited.include?('TransferData')
        visited = visited + ['TransferData']
        {
          transfer_message: 'transfer_message',
          reject_reason: 'reject_reason',
          transfer_date: Time.now,
          accept_date: Time.now,
          reject_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TransferData.new
        data = {}
        data['transferMessage'] = stub[:transfer_message] unless stub[:transfer_message].nil?
        data['rejectReason'] = stub[:reject_reason] unless stub[:reject_reason].nil?
        data['transferDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transfer_date]).to_i unless stub[:transfer_date].nil?
        data['acceptDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:accept_date]).to_i unless stub[:accept_date].nil?
        data['rejectDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:reject_date]).to_i unless stub[:reject_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeCustomMetric
    class DescribeCustomMetric
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_arn: 'metric_arn',
          metric_type: 'metric_type',
          display_name: 'display_name',
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricArn'] = stub[:metric_arn] unless stub[:metric_arn].nil?
        data['metricType'] = stub[:metric_type] unless stub[:metric_type].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDefaultAuthorizer
    class DescribeDefaultAuthorizer
      def self.default(visited=[])
        {
          authorizer_description: AuthorizerDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerDescription'] = AuthorizerDescription.stub(stub[:authorizer_description]) unless stub[:authorizer_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDetectMitigationActionsTask
    class DescribeDetectMitigationActionsTask
      def self.default(visited=[])
        {
          task_summary: DetectMitigationActionsTaskSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskSummary'] = DetectMitigationActionsTaskSummary.stub(stub[:task_summary]) unless stub[:task_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DetectMitigationActionsTaskSummary
    class DetectMitigationActionsTaskSummary
      def self.default(visited=[])
        return nil if visited.include?('DetectMitigationActionsTaskSummary')
        visited = visited + ['DetectMitigationActionsTaskSummary']
        {
          task_id: 'task_id',
          task_status: 'task_status',
          task_start_time: Time.now,
          task_end_time: Time.now,
          target: DetectMitigationActionsTaskTarget.default(visited),
          violation_event_occurrence_range: ViolationEventOccurrenceRange.default(visited),
          only_active_violations_included: false,
          suppressed_alerts_included: false,
          actions_definition: MitigationActionList.default(visited),
          task_statistics: DetectMitigationActionsTaskStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectMitigationActionsTaskSummary.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['taskStatus'] = stub[:task_status] unless stub[:task_status].nil?
        data['taskStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:task_start_time]).to_i unless stub[:task_start_time].nil?
        data['taskEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:task_end_time]).to_i unless stub[:task_end_time].nil?
        data['target'] = DetectMitigationActionsTaskTarget.stub(stub[:target]) unless stub[:target].nil?
        data['violationEventOccurrenceRange'] = ViolationEventOccurrenceRange.stub(stub[:violation_event_occurrence_range]) unless stub[:violation_event_occurrence_range].nil?
        data['onlyActiveViolationsIncluded'] = stub[:only_active_violations_included] unless stub[:only_active_violations_included].nil?
        data['suppressedAlertsIncluded'] = stub[:suppressed_alerts_included] unless stub[:suppressed_alerts_included].nil?
        data['actionsDefinition'] = MitigationActionList.stub(stub[:actions_definition]) unless stub[:actions_definition].nil?
        data['taskStatistics'] = DetectMitigationActionsTaskStatistics.stub(stub[:task_statistics]) unless stub[:task_statistics].nil?
        data
      end
    end

    # Structure Stubber for DetectMitigationActionsTaskStatistics
    class DetectMitigationActionsTaskStatistics
      def self.default(visited=[])
        return nil if visited.include?('DetectMitigationActionsTaskStatistics')
        visited = visited + ['DetectMitigationActionsTaskStatistics']
        {
          actions_executed: 1,
          actions_skipped: 1,
          actions_failed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectMitigationActionsTaskStatistics.new
        data = {}
        data['actionsExecuted'] = stub[:actions_executed] unless stub[:actions_executed].nil?
        data['actionsSkipped'] = stub[:actions_skipped] unless stub[:actions_skipped].nil?
        data['actionsFailed'] = stub[:actions_failed] unless stub[:actions_failed].nil?
        data
      end
    end

    # Structure Stubber for ViolationEventOccurrenceRange
    class ViolationEventOccurrenceRange
      def self.default(visited=[])
        return nil if visited.include?('ViolationEventOccurrenceRange')
        visited = visited + ['ViolationEventOccurrenceRange']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ViolationEventOccurrenceRange.new
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for DetectMitigationActionsTaskTarget
    class DetectMitigationActionsTaskTarget
      def self.default(visited=[])
        return nil if visited.include?('DetectMitigationActionsTaskTarget')
        visited = visited + ['DetectMitigationActionsTaskTarget']
        {
          violation_ids: TargetViolationIdsForDetectMitigationActions.default(visited),
          security_profile_name: 'security_profile_name',
          behavior_name: 'behavior_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectMitigationActionsTaskTarget.new
        data = {}
        data['violationIds'] = TargetViolationIdsForDetectMitigationActions.stub(stub[:violation_ids]) unless stub[:violation_ids].nil?
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['behaviorName'] = stub[:behavior_name] unless stub[:behavior_name].nil?
        data
      end
    end

    # List Stubber for TargetViolationIdsForDetectMitigationActions
    class TargetViolationIdsForDetectMitigationActions
      def self.default(visited=[])
        return nil if visited.include?('TargetViolationIdsForDetectMitigationActions')
        visited = visited + ['TargetViolationIdsForDetectMitigationActions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDimension
    class DescribeDimension
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          type: 'type',
          string_values: DimensionStringValues.default(visited),
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['stringValues'] = DimensionStringValues.stub(stub[:string_values]) unless stub[:string_values].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DimensionStringValues
    class DimensionStringValues
      def self.default(visited=[])
        return nil if visited.include?('DimensionStringValues')
        visited = visited + ['DimensionStringValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDomainConfiguration
    class DescribeDomainConfiguration
      def self.default(visited=[])
        {
          domain_configuration_name: 'domain_configuration_name',
          domain_configuration_arn: 'domain_configuration_arn',
          domain_name: 'domain_name',
          server_certificates: ServerCertificates.default(visited),
          authorizer_config: AuthorizerConfig.default(visited),
          domain_configuration_status: 'domain_configuration_status',
          service_type: 'service_type',
          domain_type: 'domain_type',
          last_status_change_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainConfigurationName'] = stub[:domain_configuration_name] unless stub[:domain_configuration_name].nil?
        data['domainConfigurationArn'] = stub[:domain_configuration_arn] unless stub[:domain_configuration_arn].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['serverCertificates'] = ServerCertificates.stub(stub[:server_certificates]) unless stub[:server_certificates].nil?
        data['authorizerConfig'] = AuthorizerConfig.stub(stub[:authorizer_config]) unless stub[:authorizer_config].nil?
        data['domainConfigurationStatus'] = stub[:domain_configuration_status] unless stub[:domain_configuration_status].nil?
        data['serviceType'] = stub[:service_type] unless stub[:service_type].nil?
        data['domainType'] = stub[:domain_type] unless stub[:domain_type].nil?
        data['lastStatusChangeDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_change_date]).to_i unless stub[:last_status_change_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AuthorizerConfig
    class AuthorizerConfig
      def self.default(visited=[])
        return nil if visited.include?('AuthorizerConfig')
        visited = visited + ['AuthorizerConfig']
        {
          default_authorizer_name: 'default_authorizer_name',
          allow_authorizer_override: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthorizerConfig.new
        data = {}
        data['defaultAuthorizerName'] = stub[:default_authorizer_name] unless stub[:default_authorizer_name].nil?
        data['allowAuthorizerOverride'] = stub[:allow_authorizer_override] unless stub[:allow_authorizer_override].nil?
        data
      end
    end

    # List Stubber for ServerCertificates
    class ServerCertificates
      def self.default(visited=[])
        return nil if visited.include?('ServerCertificates')
        visited = visited + ['ServerCertificates']
        [
          ServerCertificateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServerCertificateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerCertificateSummary
    class ServerCertificateSummary
      def self.default(visited=[])
        return nil if visited.include?('ServerCertificateSummary')
        visited = visited + ['ServerCertificateSummary']
        {
          server_certificate_arn: 'server_certificate_arn',
          server_certificate_status: 'server_certificate_status',
          server_certificate_status_detail: 'server_certificate_status_detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerCertificateSummary.new
        data = {}
        data['serverCertificateArn'] = stub[:server_certificate_arn] unless stub[:server_certificate_arn].nil?
        data['serverCertificateStatus'] = stub[:server_certificate_status] unless stub[:server_certificate_status].nil?
        data['serverCertificateStatusDetail'] = stub[:server_certificate_status_detail] unless stub[:server_certificate_status_detail].nil?
        data
      end
    end

    # Operation Stubber for DescribeEndpoint
    class DescribeEndpoint
      def self.default(visited=[])
        {
          endpoint_address: 'endpoint_address',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endpointAddress'] = stub[:endpoint_address] unless stub[:endpoint_address].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeEventConfigurations
    class DescribeEventConfigurations
      def self.default(visited=[])
        {
          event_configurations: EventConfigurations.default(visited),
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['eventConfigurations'] = EventConfigurations.stub(stub[:event_configurations]) unless stub[:event_configurations].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for EventConfigurations
    class EventConfigurations
      def self.default(visited=[])
        return nil if visited.include?('EventConfigurations')
        visited = visited + ['EventConfigurations']
        {
          test_key: Configuration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Configuration.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Configuration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetMetric
    class DescribeFleetMetric
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          query_string: 'query_string',
          aggregation_type: AggregationType.default(visited),
          period: 1,
          aggregation_field: 'aggregation_field',
          description: 'description',
          query_version: 'query_version',
          index_name: 'index_name',
          creation_date: Time.now,
          last_modified_date: Time.now,
          unit: 'unit',
          version: 1,
          metric_arn: 'metric_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['queryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['aggregationType'] = AggregationType.stub(stub[:aggregation_type]) unless stub[:aggregation_type].nil?
        data['period'] = stub[:period] unless stub[:period].nil?
        data['aggregationField'] = stub[:aggregation_field] unless stub[:aggregation_field].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['queryVersion'] = stub[:query_version] unless stub[:query_version].nil?
        data['indexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['metricArn'] = stub[:metric_arn] unless stub[:metric_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AggregationType
    class AggregationType
      def self.default(visited=[])
        return nil if visited.include?('AggregationType')
        visited = visited + ['AggregationType']
        {
          name: 'name',
          values: AggregationTypeValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregationType.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['values'] = AggregationTypeValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for AggregationTypeValues
    class AggregationTypeValues
      def self.default(visited=[])
        return nil if visited.include?('AggregationTypeValues')
        visited = visited + ['AggregationTypeValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeIndex
    class DescribeIndex
      def self.default(visited=[])
        {
          index_name: 'index_name',
          index_status: 'index_status',
          schema: 'schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['indexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['indexStatus'] = stub[:index_status] unless stub[:index_status].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeJob
    class DescribeJob
      def self.default(visited=[])
        {
          document_source: 'document_source',
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['documentSource'] = stub[:document_source] unless stub[:document_source].nil?
        data['job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          target_selection: 'target_selection',
          status: 'status',
          force_canceled: false,
          reason_code: 'reason_code',
          comment: 'comment',
          targets: JobTargets.default(visited),
          description: 'description',
          presigned_url_config: PresignedUrlConfig.default(visited),
          job_executions_rollout_config: JobExecutionsRolloutConfig.default(visited),
          abort_config: AbortConfig.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          completed_at: Time.now,
          job_process_details: JobProcessDetails.default(visited),
          timeout_config: TimeoutConfig.default(visited),
          namespace_id: 'namespace_id',
          job_template_arn: 'job_template_arn',
          job_executions_retry_config: JobExecutionsRetryConfig.default(visited),
          document_parameters: ParameterMap.default(visited),
          is_concurrent: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['targetSelection'] = stub[:target_selection] unless stub[:target_selection].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['forceCanceled'] = stub[:force_canceled] unless stub[:force_canceled].nil?
        data['reasonCode'] = stub[:reason_code] unless stub[:reason_code].nil?
        data['comment'] = stub[:comment] unless stub[:comment].nil?
        data['targets'] = JobTargets.stub(stub[:targets]) unless stub[:targets].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['presignedUrlConfig'] = PresignedUrlConfig.stub(stub[:presigned_url_config]) unless stub[:presigned_url_config].nil?
        data['jobExecutionsRolloutConfig'] = JobExecutionsRolloutConfig.stub(stub[:job_executions_rollout_config]) unless stub[:job_executions_rollout_config].nil?
        data['abortConfig'] = AbortConfig.stub(stub[:abort_config]) unless stub[:abort_config].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['completedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_at]).to_i unless stub[:completed_at].nil?
        data['jobProcessDetails'] = JobProcessDetails.stub(stub[:job_process_details]) unless stub[:job_process_details].nil?
        data['timeoutConfig'] = TimeoutConfig.stub(stub[:timeout_config]) unless stub[:timeout_config].nil?
        data['namespaceId'] = stub[:namespace_id] unless stub[:namespace_id].nil?
        data['jobTemplateArn'] = stub[:job_template_arn] unless stub[:job_template_arn].nil?
        data['jobExecutionsRetryConfig'] = JobExecutionsRetryConfig.stub(stub[:job_executions_retry_config]) unless stub[:job_executions_retry_config].nil?
        data['documentParameters'] = ParameterMap.stub(stub[:document_parameters]) unless stub[:document_parameters].nil?
        data['isConcurrent'] = stub[:is_concurrent] unless stub[:is_concurrent].nil?
        data
      end
    end

    # Map Stubber for ParameterMap
    class ParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ParameterMap')
        visited = visited + ['ParameterMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for JobExecutionsRetryConfig
    class JobExecutionsRetryConfig
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionsRetryConfig')
        visited = visited + ['JobExecutionsRetryConfig']
        {
          criteria_list: RetryCriteriaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionsRetryConfig.new
        data = {}
        data['criteriaList'] = RetryCriteriaList.stub(stub[:criteria_list]) unless stub[:criteria_list].nil?
        data
      end
    end

    # List Stubber for RetryCriteriaList
    class RetryCriteriaList
      def self.default(visited=[])
        return nil if visited.include?('RetryCriteriaList')
        visited = visited + ['RetryCriteriaList']
        [
          RetryCriteria.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RetryCriteria.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RetryCriteria
    class RetryCriteria
      def self.default(visited=[])
        return nil if visited.include?('RetryCriteria')
        visited = visited + ['RetryCriteria']
        {
          failure_type: 'failure_type',
          number_of_retries: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetryCriteria.new
        data = {}
        data['failureType'] = stub[:failure_type] unless stub[:failure_type].nil?
        data['numberOfRetries'] = stub[:number_of_retries] unless stub[:number_of_retries].nil?
        data
      end
    end

    # Structure Stubber for TimeoutConfig
    class TimeoutConfig
      def self.default(visited=[])
        return nil if visited.include?('TimeoutConfig')
        visited = visited + ['TimeoutConfig']
        {
          in_progress_timeout_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeoutConfig.new
        data = {}
        data['inProgressTimeoutInMinutes'] = stub[:in_progress_timeout_in_minutes] unless stub[:in_progress_timeout_in_minutes].nil?
        data
      end
    end

    # Structure Stubber for JobProcessDetails
    class JobProcessDetails
      def self.default(visited=[])
        return nil if visited.include?('JobProcessDetails')
        visited = visited + ['JobProcessDetails']
        {
          processing_targets: ProcessingTargetNameList.default(visited),
          number_of_canceled_things: 1,
          number_of_succeeded_things: 1,
          number_of_failed_things: 1,
          number_of_rejected_things: 1,
          number_of_queued_things: 1,
          number_of_in_progress_things: 1,
          number_of_removed_things: 1,
          number_of_timed_out_things: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobProcessDetails.new
        data = {}
        data['processingTargets'] = ProcessingTargetNameList.stub(stub[:processing_targets]) unless stub[:processing_targets].nil?
        data['numberOfCanceledThings'] = stub[:number_of_canceled_things] unless stub[:number_of_canceled_things].nil?
        data['numberOfSucceededThings'] = stub[:number_of_succeeded_things] unless stub[:number_of_succeeded_things].nil?
        data['numberOfFailedThings'] = stub[:number_of_failed_things] unless stub[:number_of_failed_things].nil?
        data['numberOfRejectedThings'] = stub[:number_of_rejected_things] unless stub[:number_of_rejected_things].nil?
        data['numberOfQueuedThings'] = stub[:number_of_queued_things] unless stub[:number_of_queued_things].nil?
        data['numberOfInProgressThings'] = stub[:number_of_in_progress_things] unless stub[:number_of_in_progress_things].nil?
        data['numberOfRemovedThings'] = stub[:number_of_removed_things] unless stub[:number_of_removed_things].nil?
        data['numberOfTimedOutThings'] = stub[:number_of_timed_out_things] unless stub[:number_of_timed_out_things].nil?
        data
      end
    end

    # List Stubber for ProcessingTargetNameList
    class ProcessingTargetNameList
      def self.default(visited=[])
        return nil if visited.include?('ProcessingTargetNameList')
        visited = visited + ['ProcessingTargetNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AbortConfig
    class AbortConfig
      def self.default(visited=[])
        return nil if visited.include?('AbortConfig')
        visited = visited + ['AbortConfig']
        {
          criteria_list: AbortCriteriaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AbortConfig.new
        data = {}
        data['criteriaList'] = AbortCriteriaList.stub(stub[:criteria_list]) unless stub[:criteria_list].nil?
        data
      end
    end

    # List Stubber for AbortCriteriaList
    class AbortCriteriaList
      def self.default(visited=[])
        return nil if visited.include?('AbortCriteriaList')
        visited = visited + ['AbortCriteriaList']
        [
          AbortCriteria.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AbortCriteria.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AbortCriteria
    class AbortCriteria
      def self.default(visited=[])
        return nil if visited.include?('AbortCriteria')
        visited = visited + ['AbortCriteria']
        {
          failure_type: 'failure_type',
          action: 'action',
          threshold_percentage: 1.0,
          min_number_of_executed_things: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AbortCriteria.new
        data = {}
        data['failureType'] = stub[:failure_type] unless stub[:failure_type].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data['thresholdPercentage'] = Hearth::NumberHelper.serialize(stub[:threshold_percentage])
        data['minNumberOfExecutedThings'] = stub[:min_number_of_executed_things] unless stub[:min_number_of_executed_things].nil?
        data
      end
    end

    # Structure Stubber for JobExecutionsRolloutConfig
    class JobExecutionsRolloutConfig
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionsRolloutConfig')
        visited = visited + ['JobExecutionsRolloutConfig']
        {
          maximum_per_minute: 1,
          exponential_rate: ExponentialRolloutRate.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionsRolloutConfig.new
        data = {}
        data['maximumPerMinute'] = stub[:maximum_per_minute] unless stub[:maximum_per_minute].nil?
        data['exponentialRate'] = ExponentialRolloutRate.stub(stub[:exponential_rate]) unless stub[:exponential_rate].nil?
        data
      end
    end

    # Structure Stubber for ExponentialRolloutRate
    class ExponentialRolloutRate
      def self.default(visited=[])
        return nil if visited.include?('ExponentialRolloutRate')
        visited = visited + ['ExponentialRolloutRate']
        {
          base_rate_per_minute: 1,
          increment_factor: 1.0,
          rate_increase_criteria: RateIncreaseCriteria.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExponentialRolloutRate.new
        data = {}
        data['baseRatePerMinute'] = stub[:base_rate_per_minute] unless stub[:base_rate_per_minute].nil?
        data['incrementFactor'] = Hearth::NumberHelper.serialize(stub[:increment_factor])
        data['rateIncreaseCriteria'] = RateIncreaseCriteria.stub(stub[:rate_increase_criteria]) unless stub[:rate_increase_criteria].nil?
        data
      end
    end

    # Structure Stubber for RateIncreaseCriteria
    class RateIncreaseCriteria
      def self.default(visited=[])
        return nil if visited.include?('RateIncreaseCriteria')
        visited = visited + ['RateIncreaseCriteria']
        {
          number_of_notified_things: 1,
          number_of_succeeded_things: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RateIncreaseCriteria.new
        data = {}
        data['numberOfNotifiedThings'] = stub[:number_of_notified_things] unless stub[:number_of_notified_things].nil?
        data['numberOfSucceededThings'] = stub[:number_of_succeeded_things] unless stub[:number_of_succeeded_things].nil?
        data
      end
    end

    # Structure Stubber for PresignedUrlConfig
    class PresignedUrlConfig
      def self.default(visited=[])
        return nil if visited.include?('PresignedUrlConfig')
        visited = visited + ['PresignedUrlConfig']
        {
          role_arn: 'role_arn',
          expires_in_sec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PresignedUrlConfig.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['expiresInSec'] = stub[:expires_in_sec] unless stub[:expires_in_sec].nil?
        data
      end
    end

    # List Stubber for JobTargets
    class JobTargets
      def self.default(visited=[])
        return nil if visited.include?('JobTargets')
        visited = visited + ['JobTargets']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeJobExecution
    class DescribeJobExecution
      def self.default(visited=[])
        {
          execution: JobExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['execution'] = JobExecution.stub(stub[:execution]) unless stub[:execution].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobExecution
    class JobExecution
      def self.default(visited=[])
        return nil if visited.include?('JobExecution')
        visited = visited + ['JobExecution']
        {
          job_id: 'job_id',
          status: 'status',
          force_canceled: false,
          status_details: JobExecutionStatusDetails.default(visited),
          thing_arn: 'thing_arn',
          queued_at: Time.now,
          started_at: Time.now,
          last_updated_at: Time.now,
          execution_number: 1,
          version_number: 1,
          approximate_seconds_before_timed_out: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecution.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['forceCanceled'] = stub[:force_canceled] unless stub[:force_canceled].nil?
        data['statusDetails'] = JobExecutionStatusDetails.stub(stub[:status_details]) unless stub[:status_details].nil?
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['queuedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:queued_at]).to_i unless stub[:queued_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['executionNumber'] = stub[:execution_number] unless stub[:execution_number].nil?
        data['versionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['approximateSecondsBeforeTimedOut'] = stub[:approximate_seconds_before_timed_out] unless stub[:approximate_seconds_before_timed_out].nil?
        data
      end
    end

    # Structure Stubber for JobExecutionStatusDetails
    class JobExecutionStatusDetails
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionStatusDetails')
        visited = visited + ['JobExecutionStatusDetails']
        {
          details_map: DetailsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionStatusDetails.new
        data = {}
        data['detailsMap'] = DetailsMap.stub(stub[:details_map]) unless stub[:details_map].nil?
        data
      end
    end

    # Map Stubber for DetailsMap
    class DetailsMap
      def self.default(visited=[])
        return nil if visited.include?('DetailsMap')
        visited = visited + ['DetailsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeJobTemplate
    class DescribeJobTemplate
      def self.default(visited=[])
        {
          job_template_arn: 'job_template_arn',
          job_template_id: 'job_template_id',
          description: 'description',
          document_source: 'document_source',
          document: 'document',
          created_at: Time.now,
          presigned_url_config: PresignedUrlConfig.default(visited),
          job_executions_rollout_config: JobExecutionsRolloutConfig.default(visited),
          abort_config: AbortConfig.default(visited),
          timeout_config: TimeoutConfig.default(visited),
          job_executions_retry_config: JobExecutionsRetryConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplateArn'] = stub[:job_template_arn] unless stub[:job_template_arn].nil?
        data['jobTemplateId'] = stub[:job_template_id] unless stub[:job_template_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['documentSource'] = stub[:document_source] unless stub[:document_source].nil?
        data['document'] = stub[:document] unless stub[:document].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['presignedUrlConfig'] = PresignedUrlConfig.stub(stub[:presigned_url_config]) unless stub[:presigned_url_config].nil?
        data['jobExecutionsRolloutConfig'] = JobExecutionsRolloutConfig.stub(stub[:job_executions_rollout_config]) unless stub[:job_executions_rollout_config].nil?
        data['abortConfig'] = AbortConfig.stub(stub[:abort_config]) unless stub[:abort_config].nil?
        data['timeoutConfig'] = TimeoutConfig.stub(stub[:timeout_config]) unless stub[:timeout_config].nil?
        data['jobExecutionsRetryConfig'] = JobExecutionsRetryConfig.stub(stub[:job_executions_retry_config]) unless stub[:job_executions_retry_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeManagedJobTemplate
    class DescribeManagedJobTemplate
      def self.default(visited=[])
        {
          template_name: 'template_name',
          template_arn: 'template_arn',
          description: 'description',
          template_version: 'template_version',
          environments: Environments.default(visited),
          document_parameters: DocumentParameters.default(visited),
          document: 'document',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['templateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['templateVersion'] = stub[:template_version] unless stub[:template_version].nil?
        data['environments'] = Environments.stub(stub[:environments]) unless stub[:environments].nil?
        data['documentParameters'] = DocumentParameters.stub(stub[:document_parameters]) unless stub[:document_parameters].nil?
        data['document'] = stub[:document] unless stub[:document].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DocumentParameters
    class DocumentParameters
      def self.default(visited=[])
        return nil if visited.include?('DocumentParameters')
        visited = visited + ['DocumentParameters']
        [
          DocumentParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentParameter
    class DocumentParameter
      def self.default(visited=[])
        return nil if visited.include?('DocumentParameter')
        visited = visited + ['DocumentParameter']
        {
          key: 'key',
          description: 'description',
          regex: 'regex',
          example: 'example',
          optional: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentParameter.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['regex'] = stub[:regex] unless stub[:regex].nil?
        data['example'] = stub[:example] unless stub[:example].nil?
        data['optional'] = stub[:optional] unless stub[:optional].nil?
        data
      end
    end

    # List Stubber for Environments
    class Environments
      def self.default(visited=[])
        return nil if visited.include?('Environments')
        visited = visited + ['Environments']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeMitigationAction
    class DescribeMitigationAction
      def self.default(visited=[])
        {
          action_name: 'action_name',
          action_type: 'action_type',
          action_arn: 'action_arn',
          action_id: 'action_id',
          role_arn: 'role_arn',
          action_params: MitigationActionParams.default(visited),
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['actionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['actionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        data['actionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['actionParams'] = MitigationActionParams.stub(stub[:action_params]) unless stub[:action_params].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeProvisioningTemplate
    class DescribeProvisioningTemplate
      def self.default(visited=[])
        {
          template_arn: 'template_arn',
          template_name: 'template_name',
          description: 'description',
          creation_date: Time.now,
          last_modified_date: Time.now,
          default_version_id: 1,
          template_body: 'template_body',
          enabled: false,
          provisioning_role_arn: 'provisioning_role_arn',
          pre_provisioning_hook: ProvisioningHook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['defaultVersionId'] = stub[:default_version_id] unless stub[:default_version_id].nil?
        data['templateBody'] = stub[:template_body] unless stub[:template_body].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['provisioningRoleArn'] = stub[:provisioning_role_arn] unless stub[:provisioning_role_arn].nil?
        data['preProvisioningHook'] = ProvisioningHook.stub(stub[:pre_provisioning_hook]) unless stub[:pre_provisioning_hook].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProvisioningHook
    class ProvisioningHook
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningHook')
        visited = visited + ['ProvisioningHook']
        {
          payload_version: 'payload_version',
          target_arn: 'target_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningHook.new
        data = {}
        data['payloadVersion'] = stub[:payload_version] unless stub[:payload_version].nil?
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeProvisioningTemplateVersion
    class DescribeProvisioningTemplateVersion
      def self.default(visited=[])
        {
          version_id: 1,
          creation_date: Time.now,
          template_body: 'template_body',
          is_default_version: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['versionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['templateBody'] = stub[:template_body] unless stub[:template_body].nil?
        data['isDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRoleAlias
    class DescribeRoleAlias
      def self.default(visited=[])
        {
          role_alias_description: RoleAliasDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleAliasDescription'] = RoleAliasDescription.stub(stub[:role_alias_description]) unless stub[:role_alias_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RoleAliasDescription
    class RoleAliasDescription
      def self.default(visited=[])
        return nil if visited.include?('RoleAliasDescription')
        visited = visited + ['RoleAliasDescription']
        {
          role_alias: 'role_alias',
          role_alias_arn: 'role_alias_arn',
          role_arn: 'role_arn',
          owner: 'owner',
          credential_duration_seconds: 1,
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RoleAliasDescription.new
        data = {}
        data['roleAlias'] = stub[:role_alias] unless stub[:role_alias].nil?
        data['roleAliasArn'] = stub[:role_alias_arn] unless stub[:role_alias_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['credentialDurationSeconds'] = stub[:credential_duration_seconds] unless stub[:credential_duration_seconds].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeScheduledAudit
    class DescribeScheduledAudit
      def self.default(visited=[])
        {
          frequency: 'frequency',
          day_of_month: 'day_of_month',
          day_of_week: 'day_of_week',
          target_check_names: TargetAuditCheckNames.default(visited),
          scheduled_audit_name: 'scheduled_audit_name',
          scheduled_audit_arn: 'scheduled_audit_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['dayOfMonth'] = stub[:day_of_month] unless stub[:day_of_month].nil?
        data['dayOfWeek'] = stub[:day_of_week] unless stub[:day_of_week].nil?
        data['targetCheckNames'] = TargetAuditCheckNames.stub(stub[:target_check_names]) unless stub[:target_check_names].nil?
        data['scheduledAuditName'] = stub[:scheduled_audit_name] unless stub[:scheduled_audit_name].nil?
        data['scheduledAuditArn'] = stub[:scheduled_audit_arn] unless stub[:scheduled_audit_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TargetAuditCheckNames
    class TargetAuditCheckNames
      def self.default(visited=[])
        return nil if visited.include?('TargetAuditCheckNames')
        visited = visited + ['TargetAuditCheckNames']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSecurityProfile
    class DescribeSecurityProfile
      def self.default(visited=[])
        {
          security_profile_name: 'security_profile_name',
          security_profile_arn: 'security_profile_arn',
          security_profile_description: 'security_profile_description',
          behaviors: Behaviors.default(visited),
          alert_targets: AlertTargets.default(visited),
          additional_metrics_to_retain: AdditionalMetricsToRetainList.default(visited),
          additional_metrics_to_retain_v2: AdditionalMetricsToRetainV2List.default(visited),
          version: 1,
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['securityProfileArn'] = stub[:security_profile_arn] unless stub[:security_profile_arn].nil?
        data['securityProfileDescription'] = stub[:security_profile_description] unless stub[:security_profile_description].nil?
        data['behaviors'] = Behaviors.stub(stub[:behaviors]) unless stub[:behaviors].nil?
        data['alertTargets'] = AlertTargets.stub(stub[:alert_targets]) unless stub[:alert_targets].nil?
        data['additionalMetricsToRetain'] = AdditionalMetricsToRetainList.stub(stub[:additional_metrics_to_retain]) unless stub[:additional_metrics_to_retain].nil?
        data['additionalMetricsToRetainV2'] = AdditionalMetricsToRetainV2List.stub(stub[:additional_metrics_to_retain_v2]) unless stub[:additional_metrics_to_retain_v2].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AdditionalMetricsToRetainV2List
    class AdditionalMetricsToRetainV2List
      def self.default(visited=[])
        return nil if visited.include?('AdditionalMetricsToRetainV2List')
        visited = visited + ['AdditionalMetricsToRetainV2List']
        [
          MetricToRetain.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricToRetain.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricToRetain
    class MetricToRetain
      def self.default(visited=[])
        return nil if visited.include?('MetricToRetain')
        visited = visited + ['MetricToRetain']
        {
          metric: 'metric',
          metric_dimension: MetricDimension.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricToRetain.new
        data = {}
        data['metric'] = stub[:metric] unless stub[:metric].nil?
        data['metricDimension'] = MetricDimension.stub(stub[:metric_dimension]) unless stub[:metric_dimension].nil?
        data
      end
    end

    # Structure Stubber for MetricDimension
    class MetricDimension
      def self.default(visited=[])
        return nil if visited.include?('MetricDimension')
        visited = visited + ['MetricDimension']
        {
          dimension_name: 'dimension_name',
          operator: 'operator',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDimension.new
        data = {}
        data['dimensionName'] = stub[:dimension_name] unless stub[:dimension_name].nil?
        data['operator'] = stub[:operator] unless stub[:operator].nil?
        data
      end
    end

    # List Stubber for AdditionalMetricsToRetainList
    class AdditionalMetricsToRetainList
      def self.default(visited=[])
        return nil if visited.include?('AdditionalMetricsToRetainList')
        visited = visited + ['AdditionalMetricsToRetainList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for AlertTargets
    class AlertTargets
      def self.default(visited=[])
        return nil if visited.include?('AlertTargets')
        visited = visited + ['AlertTargets']
        {
          test_key: AlertTarget.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AlertTarget.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AlertTarget
    class AlertTarget
      def self.default(visited=[])
        return nil if visited.include?('AlertTarget')
        visited = visited + ['AlertTarget']
        {
          alert_target_arn: 'alert_target_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlertTarget.new
        data = {}
        data['alertTargetArn'] = stub[:alert_target_arn] unless stub[:alert_target_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for Behaviors
    class Behaviors
      def self.default(visited=[])
        return nil if visited.include?('Behaviors')
        visited = visited + ['Behaviors']
        [
          Behavior.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Behavior.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Behavior
    class Behavior
      def self.default(visited=[])
        return nil if visited.include?('Behavior')
        visited = visited + ['Behavior']
        {
          name: 'name',
          metric: 'metric',
          metric_dimension: MetricDimension.default(visited),
          criteria: BehaviorCriteria.default(visited),
          suppress_alerts: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Behavior.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['metric'] = stub[:metric] unless stub[:metric].nil?
        data['metricDimension'] = MetricDimension.stub(stub[:metric_dimension]) unless stub[:metric_dimension].nil?
        data['criteria'] = BehaviorCriteria.stub(stub[:criteria]) unless stub[:criteria].nil?
        data['suppressAlerts'] = stub[:suppress_alerts] unless stub[:suppress_alerts].nil?
        data
      end
    end

    # Structure Stubber for BehaviorCriteria
    class BehaviorCriteria
      def self.default(visited=[])
        return nil if visited.include?('BehaviorCriteria')
        visited = visited + ['BehaviorCriteria']
        {
          comparison_operator: 'comparison_operator',
          value: MetricValue.default(visited),
          duration_seconds: 1,
          consecutive_datapoints_to_alarm: 1,
          consecutive_datapoints_to_clear: 1,
          statistical_threshold: StatisticalThreshold.default(visited),
          ml_detection_config: MachineLearningDetectionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BehaviorCriteria.new
        data = {}
        data['comparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['value'] = MetricValue.stub(stub[:value]) unless stub[:value].nil?
        data['durationSeconds'] = stub[:duration_seconds] unless stub[:duration_seconds].nil?
        data['consecutiveDatapointsToAlarm'] = stub[:consecutive_datapoints_to_alarm] unless stub[:consecutive_datapoints_to_alarm].nil?
        data['consecutiveDatapointsToClear'] = stub[:consecutive_datapoints_to_clear] unless stub[:consecutive_datapoints_to_clear].nil?
        data['statisticalThreshold'] = StatisticalThreshold.stub(stub[:statistical_threshold]) unless stub[:statistical_threshold].nil?
        data['mlDetectionConfig'] = MachineLearningDetectionConfig.stub(stub[:ml_detection_config]) unless stub[:ml_detection_config].nil?
        data
      end
    end

    # Structure Stubber for MachineLearningDetectionConfig
    class MachineLearningDetectionConfig
      def self.default(visited=[])
        return nil if visited.include?('MachineLearningDetectionConfig')
        visited = visited + ['MachineLearningDetectionConfig']
        {
          confidence_level: 'confidence_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::MachineLearningDetectionConfig.new
        data = {}
        data['confidenceLevel'] = stub[:confidence_level] unless stub[:confidence_level].nil?
        data
      end
    end

    # Structure Stubber for StatisticalThreshold
    class StatisticalThreshold
      def self.default(visited=[])
        return nil if visited.include?('StatisticalThreshold')
        visited = visited + ['StatisticalThreshold']
        {
          statistic: 'statistic',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatisticalThreshold.new
        data = {}
        data['statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data
      end
    end

    # Structure Stubber for MetricValue
    class MetricValue
      def self.default(visited=[])
        return nil if visited.include?('MetricValue')
        visited = visited + ['MetricValue']
        {
          count: 1,
          cidrs: Cidrs.default(visited),
          ports: Ports.default(visited),
          number: 1.0,
          numbers: NumberList.default(visited),
          strings: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricValue.new
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['cidrs'] = Cidrs.stub(stub[:cidrs]) unless stub[:cidrs].nil?
        data['ports'] = Ports.stub(stub[:ports]) unless stub[:ports].nil?
        data['number'] = Hearth::NumberHelper.serialize(stub[:number])
        data['numbers'] = NumberList.stub(stub[:numbers]) unless stub[:numbers].nil?
        data['strings'] = StringList.stub(stub[:strings]) unless stub[:strings].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for NumberList
    class NumberList
      def self.default(visited=[])
        return nil if visited.include?('NumberList')
        visited = visited + ['NumberList']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for Ports
    class Ports
      def self.default(visited=[])
        return nil if visited.include?('Ports')
        visited = visited + ['Ports']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for Cidrs
    class Cidrs
      def self.default(visited=[])
        return nil if visited.include?('Cidrs')
        visited = visited + ['Cidrs']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeStream
    class DescribeStream
      def self.default(visited=[])
        {
          stream_info: StreamInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamInfo'] = StreamInfo.stub(stub[:stream_info]) unless stub[:stream_info].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamInfo
    class StreamInfo
      def self.default(visited=[])
        return nil if visited.include?('StreamInfo')
        visited = visited + ['StreamInfo']
        {
          stream_id: 'stream_id',
          stream_arn: 'stream_arn',
          stream_version: 1,
          description: 'description',
          files: StreamFiles.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamInfo.new
        data = {}
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['streamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['streamVersion'] = stub[:stream_version] unless stub[:stream_version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['files'] = StreamFiles.stub(stub[:files]) unless stub[:files].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for StreamFiles
    class StreamFiles
      def self.default(visited=[])
        return nil if visited.include?('StreamFiles')
        visited = visited + ['StreamFiles']
        [
          StreamFile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StreamFile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamFile
    class StreamFile
      def self.default(visited=[])
        return nil if visited.include?('StreamFile')
        visited = visited + ['StreamFile']
        {
          file_id: 1,
          s3_location: S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamFile.new
        data = {}
        data['fileId'] = stub[:file_id] unless stub[:file_id].nil?
        data['s3Location'] = S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key: 'key',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeThing
    class DescribeThing
      def self.default(visited=[])
        {
          default_client_id: 'default_client_id',
          thing_name: 'thing_name',
          thing_id: 'thing_id',
          thing_arn: 'thing_arn',
          thing_type_name: 'thing_type_name',
          attributes: Attributes.default(visited),
          version: 1,
          billing_group_name: 'billing_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['defaultClientId'] = stub[:default_client_id] unless stub[:default_client_id].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['thingId'] = stub[:thing_id] unless stub[:thing_id].nil?
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['thingTypeName'] = stub[:thing_type_name] unless stub[:thing_type_name].nil?
        data['attributes'] = Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['billingGroupName'] = stub[:billing_group_name] unless stub[:billing_group_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeThingGroup
    class DescribeThingGroup
      def self.default(visited=[])
        {
          thing_group_name: 'thing_group_name',
          thing_group_id: 'thing_group_id',
          thing_group_arn: 'thing_group_arn',
          version: 1,
          thing_group_properties: ThingGroupProperties.default(visited),
          thing_group_metadata: ThingGroupMetadata.default(visited),
          index_name: 'index_name',
          query_string: 'query_string',
          query_version: 'query_version',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingGroupName'] = stub[:thing_group_name] unless stub[:thing_group_name].nil?
        data['thingGroupId'] = stub[:thing_group_id] unless stub[:thing_group_id].nil?
        data['thingGroupArn'] = stub[:thing_group_arn] unless stub[:thing_group_arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['thingGroupProperties'] = ThingGroupProperties.stub(stub[:thing_group_properties]) unless stub[:thing_group_properties].nil?
        data['thingGroupMetadata'] = ThingGroupMetadata.stub(stub[:thing_group_metadata]) unless stub[:thing_group_metadata].nil?
        data['indexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['queryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['queryVersion'] = stub[:query_version] unless stub[:query_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ThingGroupMetadata
    class ThingGroupMetadata
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupMetadata')
        visited = visited + ['ThingGroupMetadata']
        {
          parent_group_name: 'parent_group_name',
          root_to_parent_thing_groups: ThingGroupNameAndArnList.default(visited),
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingGroupMetadata.new
        data = {}
        data['parentGroupName'] = stub[:parent_group_name] unless stub[:parent_group_name].nil?
        data['rootToParentThingGroups'] = ThingGroupNameAndArnList.stub(stub[:root_to_parent_thing_groups]) unless stub[:root_to_parent_thing_groups].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # List Stubber for ThingGroupNameAndArnList
    class ThingGroupNameAndArnList
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupNameAndArnList')
        visited = visited + ['ThingGroupNameAndArnList']
        [
          GroupNameAndArn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupNameAndArn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupNameAndArn
    class GroupNameAndArn
      def self.default(visited=[])
        return nil if visited.include?('GroupNameAndArn')
        visited = visited + ['GroupNameAndArn']
        {
          group_name: 'group_name',
          group_arn: 'group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupNameAndArn.new
        data = {}
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['groupArn'] = stub[:group_arn] unless stub[:group_arn].nil?
        data
      end
    end

    # Structure Stubber for ThingGroupProperties
    class ThingGroupProperties
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupProperties')
        visited = visited + ['ThingGroupProperties']
        {
          thing_group_description: 'thing_group_description',
          attribute_payload: AttributePayload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingGroupProperties.new
        data = {}
        data['thingGroupDescription'] = stub[:thing_group_description] unless stub[:thing_group_description].nil?
        data['attributePayload'] = AttributePayload.stub(stub[:attribute_payload]) unless stub[:attribute_payload].nil?
        data
      end
    end

    # Structure Stubber for AttributePayload
    class AttributePayload
      def self.default(visited=[])
        return nil if visited.include?('AttributePayload')
        visited = visited + ['AttributePayload']
        {
          attributes: Attributes.default(visited),
          merge: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributePayload.new
        data = {}
        data['attributes'] = Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['merge'] = stub[:merge] unless stub[:merge].nil?
        data
      end
    end

    # Operation Stubber for DescribeThingRegistrationTask
    class DescribeThingRegistrationTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
          creation_date: Time.now,
          last_modified_date: Time.now,
          template_body: 'template_body',
          input_file_bucket: 'input_file_bucket',
          input_file_key: 'input_file_key',
          role_arn: 'role_arn',
          status: 'status',
          message: 'message',
          success_count: 1,
          failure_count: 1,
          percentage_progress: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['templateBody'] = stub[:template_body] unless stub[:template_body].nil?
        data['inputFileBucket'] = stub[:input_file_bucket] unless stub[:input_file_bucket].nil?
        data['inputFileKey'] = stub[:input_file_key] unless stub[:input_file_key].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['successCount'] = stub[:success_count] unless stub[:success_count].nil?
        data['failureCount'] = stub[:failure_count] unless stub[:failure_count].nil?
        data['percentageProgress'] = stub[:percentage_progress] unless stub[:percentage_progress].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeThingType
    class DescribeThingType
      def self.default(visited=[])
        {
          thing_type_name: 'thing_type_name',
          thing_type_id: 'thing_type_id',
          thing_type_arn: 'thing_type_arn',
          thing_type_properties: ThingTypeProperties.default(visited),
          thing_type_metadata: ThingTypeMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingTypeName'] = stub[:thing_type_name] unless stub[:thing_type_name].nil?
        data['thingTypeId'] = stub[:thing_type_id] unless stub[:thing_type_id].nil?
        data['thingTypeArn'] = stub[:thing_type_arn] unless stub[:thing_type_arn].nil?
        data['thingTypeProperties'] = ThingTypeProperties.stub(stub[:thing_type_properties]) unless stub[:thing_type_properties].nil?
        data['thingTypeMetadata'] = ThingTypeMetadata.stub(stub[:thing_type_metadata]) unless stub[:thing_type_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ThingTypeMetadata
    class ThingTypeMetadata
      def self.default(visited=[])
        return nil if visited.include?('ThingTypeMetadata')
        visited = visited + ['ThingTypeMetadata']
        {
          deprecated: false,
          deprecation_date: Time.now,
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingTypeMetadata.new
        data = {}
        data['deprecated'] = stub[:deprecated] unless stub[:deprecated].nil?
        data['deprecationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deprecation_date]).to_i unless stub[:deprecation_date].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Structure Stubber for ThingTypeProperties
    class ThingTypeProperties
      def self.default(visited=[])
        return nil if visited.include?('ThingTypeProperties')
        visited = visited + ['ThingTypeProperties']
        {
          thing_type_description: 'thing_type_description',
          searchable_attributes: SearchableAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingTypeProperties.new
        data = {}
        data['thingTypeDescription'] = stub[:thing_type_description] unless stub[:thing_type_description].nil?
        data['searchableAttributes'] = SearchableAttributes.stub(stub[:searchable_attributes]) unless stub[:searchable_attributes].nil?
        data
      end
    end

    # List Stubber for SearchableAttributes
    class SearchableAttributes
      def self.default(visited=[])
        return nil if visited.include?('SearchableAttributes')
        visited = visited + ['SearchableAttributes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DetachPolicy
    class DetachPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachPrincipalPolicy
    class DetachPrincipalPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachSecurityProfile
    class DetachSecurityProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachThingPrincipal
    class DetachThingPrincipal
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableTopicRule
    class DisableTopicRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableTopicRule
    class EnableTopicRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetBehaviorModelTrainingSummaries
    class GetBehaviorModelTrainingSummaries
      def self.default(visited=[])
        {
          summaries: BehaviorModelTrainingSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['summaries'] = BehaviorModelTrainingSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BehaviorModelTrainingSummaries
    class BehaviorModelTrainingSummaries
      def self.default(visited=[])
        return nil if visited.include?('BehaviorModelTrainingSummaries')
        visited = visited + ['BehaviorModelTrainingSummaries']
        [
          BehaviorModelTrainingSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BehaviorModelTrainingSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BehaviorModelTrainingSummary
    class BehaviorModelTrainingSummary
      def self.default(visited=[])
        return nil if visited.include?('BehaviorModelTrainingSummary')
        visited = visited + ['BehaviorModelTrainingSummary']
        {
          security_profile_name: 'security_profile_name',
          behavior_name: 'behavior_name',
          training_data_collection_start_date: Time.now,
          model_status: 'model_status',
          datapoints_collection_percentage: 1.0,
          last_model_refresh_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BehaviorModelTrainingSummary.new
        data = {}
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['behaviorName'] = stub[:behavior_name] unless stub[:behavior_name].nil?
        data['trainingDataCollectionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_data_collection_start_date]).to_i unless stub[:training_data_collection_start_date].nil?
        data['modelStatus'] = stub[:model_status] unless stub[:model_status].nil?
        data['datapointsCollectionPercentage'] = Hearth::NumberHelper.serialize(stub[:datapoints_collection_percentage])
        data['lastModelRefreshDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_model_refresh_date]).to_i unless stub[:last_model_refresh_date].nil?
        data
      end
    end

    # Operation Stubber for GetBucketsAggregation
    class GetBucketsAggregation
      def self.default(visited=[])
        {
          total_count: 1,
          buckets: Buckets.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['totalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['buckets'] = Buckets.stub(stub[:buckets]) unless stub[:buckets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Buckets
    class Buckets
      def self.default(visited=[])
        return nil if visited.include?('Buckets')
        visited = visited + ['Buckets']
        [
          Bucket.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Bucket.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Bucket
    class Bucket
      def self.default(visited=[])
        return nil if visited.include?('Bucket')
        visited = visited + ['Bucket']
        {
          key_value: 'key_value',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Bucket.new
        data = {}
        data['keyValue'] = stub[:key_value] unless stub[:key_value].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for GetCardinality
    class GetCardinality
      def self.default(visited=[])
        {
          cardinality: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cardinality'] = stub[:cardinality] unless stub[:cardinality].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEffectivePolicies
    class GetEffectivePolicies
      def self.default(visited=[])
        {
          effective_policies: EffectivePolicies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['effectivePolicies'] = EffectivePolicies.stub(stub[:effective_policies]) unless stub[:effective_policies].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EffectivePolicies
    class EffectivePolicies
      def self.default(visited=[])
        return nil if visited.include?('EffectivePolicies')
        visited = visited + ['EffectivePolicies']
        [
          EffectivePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EffectivePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EffectivePolicy
    class EffectivePolicy
      def self.default(visited=[])
        return nil if visited.include?('EffectivePolicy')
        visited = visited + ['EffectivePolicy']
        {
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
          policy_document: 'policy_document',
        }
      end

      def self.stub(stub)
        stub ||= Types::EffectivePolicy.new
        data = {}
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data
      end
    end

    # Operation Stubber for GetIndexingConfiguration
    class GetIndexingConfiguration
      def self.default(visited=[])
        {
          thing_indexing_configuration: ThingIndexingConfiguration.default(visited),
          thing_group_indexing_configuration: ThingGroupIndexingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingIndexingConfiguration'] = ThingIndexingConfiguration.stub(stub[:thing_indexing_configuration]) unless stub[:thing_indexing_configuration].nil?
        data['thingGroupIndexingConfiguration'] = ThingGroupIndexingConfiguration.stub(stub[:thing_group_indexing_configuration]) unless stub[:thing_group_indexing_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ThingGroupIndexingConfiguration
    class ThingGroupIndexingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupIndexingConfiguration')
        visited = visited + ['ThingGroupIndexingConfiguration']
        {
          thing_group_indexing_mode: 'thing_group_indexing_mode',
          managed_fields: Fields.default(visited),
          custom_fields: Fields.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingGroupIndexingConfiguration.new
        data = {}
        data['thingGroupIndexingMode'] = stub[:thing_group_indexing_mode] unless stub[:thing_group_indexing_mode].nil?
        data['managedFields'] = Fields.stub(stub[:managed_fields]) unless stub[:managed_fields].nil?
        data['customFields'] = Fields.stub(stub[:custom_fields]) unless stub[:custom_fields].nil?
        data
      end
    end

    # List Stubber for Fields
    class Fields
      def self.default(visited=[])
        return nil if visited.include?('Fields')
        visited = visited + ['Fields']
        [
          Field.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Field.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Field
    class Field
      def self.default(visited=[])
        return nil if visited.include?('Field')
        visited = visited + ['Field']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Field.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ThingIndexingConfiguration
    class ThingIndexingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ThingIndexingConfiguration')
        visited = visited + ['ThingIndexingConfiguration']
        {
          thing_indexing_mode: 'thing_indexing_mode',
          thing_connectivity_indexing_mode: 'thing_connectivity_indexing_mode',
          device_defender_indexing_mode: 'device_defender_indexing_mode',
          named_shadow_indexing_mode: 'named_shadow_indexing_mode',
          managed_fields: Fields.default(visited),
          custom_fields: Fields.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingIndexingConfiguration.new
        data = {}
        data['thingIndexingMode'] = stub[:thing_indexing_mode] unless stub[:thing_indexing_mode].nil?
        data['thingConnectivityIndexingMode'] = stub[:thing_connectivity_indexing_mode] unless stub[:thing_connectivity_indexing_mode].nil?
        data['deviceDefenderIndexingMode'] = stub[:device_defender_indexing_mode] unless stub[:device_defender_indexing_mode].nil?
        data['namedShadowIndexingMode'] = stub[:named_shadow_indexing_mode] unless stub[:named_shadow_indexing_mode].nil?
        data['managedFields'] = Fields.stub(stub[:managed_fields]) unless stub[:managed_fields].nil?
        data['customFields'] = Fields.stub(stub[:custom_fields]) unless stub[:custom_fields].nil?
        data
      end
    end

    # Operation Stubber for GetJobDocument
    class GetJobDocument
      def self.default(visited=[])
        {
          document: 'document',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['document'] = stub[:document] unless stub[:document].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLoggingOptions
    class GetLoggingOptions
      def self.default(visited=[])
        {
          role_arn: 'role_arn',
          log_level: 'log_level',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetOTAUpdate
    class GetOTAUpdate
      def self.default(visited=[])
        {
          ota_update_info: OTAUpdateInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['otaUpdateInfo'] = OTAUpdateInfo.stub(stub[:ota_update_info]) unless stub[:ota_update_info].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OTAUpdateInfo
    class OTAUpdateInfo
      def self.default(visited=[])
        return nil if visited.include?('OTAUpdateInfo')
        visited = visited + ['OTAUpdateInfo']
        {
          ota_update_id: 'ota_update_id',
          ota_update_arn: 'ota_update_arn',
          creation_date: Time.now,
          last_modified_date: Time.now,
          description: 'description',
          targets: Targets.default(visited),
          protocols: Protocols.default(visited),
          aws_job_executions_rollout_config: AwsJobExecutionsRolloutConfig.default(visited),
          aws_job_presigned_url_config: AwsJobPresignedUrlConfig.default(visited),
          target_selection: 'target_selection',
          ota_update_files: OTAUpdateFiles.default(visited),
          ota_update_status: 'ota_update_status',
          aws_iot_job_id: 'aws_iot_job_id',
          aws_iot_job_arn: 'aws_iot_job_arn',
          error_info: ErrorInfo.default(visited),
          additional_parameters: AdditionalParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OTAUpdateInfo.new
        data = {}
        data['otaUpdateId'] = stub[:ota_update_id] unless stub[:ota_update_id].nil?
        data['otaUpdateArn'] = stub[:ota_update_arn] unless stub[:ota_update_arn].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targets'] = Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['protocols'] = Protocols.stub(stub[:protocols]) unless stub[:protocols].nil?
        data['awsJobExecutionsRolloutConfig'] = AwsJobExecutionsRolloutConfig.stub(stub[:aws_job_executions_rollout_config]) unless stub[:aws_job_executions_rollout_config].nil?
        data['awsJobPresignedUrlConfig'] = AwsJobPresignedUrlConfig.stub(stub[:aws_job_presigned_url_config]) unless stub[:aws_job_presigned_url_config].nil?
        data['targetSelection'] = stub[:target_selection] unless stub[:target_selection].nil?
        data['otaUpdateFiles'] = OTAUpdateFiles.stub(stub[:ota_update_files]) unless stub[:ota_update_files].nil?
        data['otaUpdateStatus'] = stub[:ota_update_status] unless stub[:ota_update_status].nil?
        data['awsIotJobId'] = stub[:aws_iot_job_id] unless stub[:aws_iot_job_id].nil?
        data['awsIotJobArn'] = stub[:aws_iot_job_arn] unless stub[:aws_iot_job_arn].nil?
        data['errorInfo'] = ErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['additionalParameters'] = AdditionalParameterMap.stub(stub[:additional_parameters]) unless stub[:additional_parameters].nil?
        data
      end
    end

    # Map Stubber for AdditionalParameterMap
    class AdditionalParameterMap
      def self.default(visited=[])
        return nil if visited.include?('AdditionalParameterMap')
        visited = visited + ['AdditionalParameterMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorInfo
    class ErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('ErrorInfo')
        visited = visited + ['ErrorInfo']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorInfo.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for OTAUpdateFiles
    class OTAUpdateFiles
      def self.default(visited=[])
        return nil if visited.include?('OTAUpdateFiles')
        visited = visited + ['OTAUpdateFiles']
        [
          OTAUpdateFile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OTAUpdateFile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OTAUpdateFile
    class OTAUpdateFile
      def self.default(visited=[])
        return nil if visited.include?('OTAUpdateFile')
        visited = visited + ['OTAUpdateFile']
        {
          file_name: 'file_name',
          file_type: 1,
          file_version: 'file_version',
          file_location: FileLocation.default(visited),
          code_signing: CodeSigning.default(visited),
          attributes: AttributesMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OTAUpdateFile.new
        data = {}
        data['fileName'] = stub[:file_name] unless stub[:file_name].nil?
        data['fileType'] = stub[:file_type] unless stub[:file_type].nil?
        data['fileVersion'] = stub[:file_version] unless stub[:file_version].nil?
        data['fileLocation'] = FileLocation.stub(stub[:file_location]) unless stub[:file_location].nil?
        data['codeSigning'] = CodeSigning.stub(stub[:code_signing]) unless stub[:code_signing].nil?
        data['attributes'] = AttributesMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for AttributesMap
    class AttributesMap
      def self.default(visited=[])
        return nil if visited.include?('AttributesMap')
        visited = visited + ['AttributesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeSigning
    class CodeSigning
      def self.default(visited=[])
        return nil if visited.include?('CodeSigning')
        visited = visited + ['CodeSigning']
        {
          aws_signer_job_id: 'aws_signer_job_id',
          start_signing_job_parameter: StartSigningJobParameter.default(visited),
          custom_code_signing: CustomCodeSigning.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeSigning.new
        data = {}
        data['awsSignerJobId'] = stub[:aws_signer_job_id] unless stub[:aws_signer_job_id].nil?
        data['startSigningJobParameter'] = StartSigningJobParameter.stub(stub[:start_signing_job_parameter]) unless stub[:start_signing_job_parameter].nil?
        data['customCodeSigning'] = CustomCodeSigning.stub(stub[:custom_code_signing]) unless stub[:custom_code_signing].nil?
        data
      end
    end

    # Structure Stubber for CustomCodeSigning
    class CustomCodeSigning
      def self.default(visited=[])
        return nil if visited.include?('CustomCodeSigning')
        visited = visited + ['CustomCodeSigning']
        {
          signature: CodeSigningSignature.default(visited),
          certificate_chain: CodeSigningCertificateChain.default(visited),
          hash_algorithm: 'hash_algorithm',
          signature_algorithm: 'signature_algorithm',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomCodeSigning.new
        data = {}
        data['signature'] = CodeSigningSignature.stub(stub[:signature]) unless stub[:signature].nil?
        data['certificateChain'] = CodeSigningCertificateChain.stub(stub[:certificate_chain]) unless stub[:certificate_chain].nil?
        data['hashAlgorithm'] = stub[:hash_algorithm] unless stub[:hash_algorithm].nil?
        data['signatureAlgorithm'] = stub[:signature_algorithm] unless stub[:signature_algorithm].nil?
        data
      end
    end

    # Structure Stubber for CodeSigningCertificateChain
    class CodeSigningCertificateChain
      def self.default(visited=[])
        return nil if visited.include?('CodeSigningCertificateChain')
        visited = visited + ['CodeSigningCertificateChain']
        {
          certificate_name: 'certificate_name',
          inline_document: 'inline_document',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeSigningCertificateChain.new
        data = {}
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['inlineDocument'] = stub[:inline_document] unless stub[:inline_document].nil?
        data
      end
    end

    # Structure Stubber for CodeSigningSignature
    class CodeSigningSignature
      def self.default(visited=[])
        return nil if visited.include?('CodeSigningSignature')
        visited = visited + ['CodeSigningSignature']
        {
          inline_document: 'inline_document',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeSigningSignature.new
        data = {}
        data['inlineDocument'] = ::Base64::encode64(stub[:inline_document]) unless stub[:inline_document].nil?
        data
      end
    end

    # Structure Stubber for StartSigningJobParameter
    class StartSigningJobParameter
      def self.default(visited=[])
        return nil if visited.include?('StartSigningJobParameter')
        visited = visited + ['StartSigningJobParameter']
        {
          signing_profile_parameter: SigningProfileParameter.default(visited),
          signing_profile_name: 'signing_profile_name',
          destination: Destination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StartSigningJobParameter.new
        data = {}
        data['signingProfileParameter'] = SigningProfileParameter.stub(stub[:signing_profile_parameter]) unless stub[:signing_profile_parameter].nil?
        data['signingProfileName'] = stub[:signing_profile_name] unless stub[:signing_profile_name].nil?
        data['destination'] = Destination.stub(stub[:destination]) unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          s3_destination: S3Destination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Destination.new
        data = {}
        data['s3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data
      end
    end

    # Structure Stubber for S3Destination
    class S3Destination
      def self.default(visited=[])
        return nil if visited.include?('S3Destination')
        visited = visited + ['S3Destination']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Destination.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for SigningProfileParameter
    class SigningProfileParameter
      def self.default(visited=[])
        return nil if visited.include?('SigningProfileParameter')
        visited = visited + ['SigningProfileParameter']
        {
          certificate_arn: 'certificate_arn',
          platform: 'platform',
          certificate_path_on_device: 'certificate_path_on_device',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningProfileParameter.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['certificatePathOnDevice'] = stub[:certificate_path_on_device] unless stub[:certificate_path_on_device].nil?
        data
      end
    end

    # Structure Stubber for FileLocation
    class FileLocation
      def self.default(visited=[])
        return nil if visited.include?('FileLocation')
        visited = visited + ['FileLocation']
        {
          stream: Stream.default(visited),
          s3_location: S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileLocation.new
        data = {}
        data['stream'] = Stream.stub(stub[:stream]) unless stub[:stream].nil?
        data['s3Location'] = S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for Stream
    class Stream
      def self.default(visited=[])
        return nil if visited.include?('Stream')
        visited = visited + ['Stream']
        {
          stream_id: 'stream_id',
          file_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Stream.new
        data = {}
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['fileId'] = stub[:file_id] unless stub[:file_id].nil?
        data
      end
    end

    # Structure Stubber for AwsJobPresignedUrlConfig
    class AwsJobPresignedUrlConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsJobPresignedUrlConfig')
        visited = visited + ['AwsJobPresignedUrlConfig']
        {
          expires_in_sec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsJobPresignedUrlConfig.new
        data = {}
        data['expiresInSec'] = stub[:expires_in_sec] unless stub[:expires_in_sec].nil?
        data
      end
    end

    # Structure Stubber for AwsJobExecutionsRolloutConfig
    class AwsJobExecutionsRolloutConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsJobExecutionsRolloutConfig')
        visited = visited + ['AwsJobExecutionsRolloutConfig']
        {
          maximum_per_minute: 1,
          exponential_rate: AwsJobExponentialRolloutRate.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsJobExecutionsRolloutConfig.new
        data = {}
        data['maximumPerMinute'] = stub[:maximum_per_minute] unless stub[:maximum_per_minute].nil?
        data['exponentialRate'] = AwsJobExponentialRolloutRate.stub(stub[:exponential_rate]) unless stub[:exponential_rate].nil?
        data
      end
    end

    # Structure Stubber for AwsJobExponentialRolloutRate
    class AwsJobExponentialRolloutRate
      def self.default(visited=[])
        return nil if visited.include?('AwsJobExponentialRolloutRate')
        visited = visited + ['AwsJobExponentialRolloutRate']
        {
          base_rate_per_minute: 1,
          increment_factor: 1.0,
          rate_increase_criteria: AwsJobRateIncreaseCriteria.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsJobExponentialRolloutRate.new
        data = {}
        data['baseRatePerMinute'] = stub[:base_rate_per_minute] unless stub[:base_rate_per_minute].nil?
        data['incrementFactor'] = Hearth::NumberHelper.serialize(stub[:increment_factor])
        data['rateIncreaseCriteria'] = AwsJobRateIncreaseCriteria.stub(stub[:rate_increase_criteria]) unless stub[:rate_increase_criteria].nil?
        data
      end
    end

    # Structure Stubber for AwsJobRateIncreaseCriteria
    class AwsJobRateIncreaseCriteria
      def self.default(visited=[])
        return nil if visited.include?('AwsJobRateIncreaseCriteria')
        visited = visited + ['AwsJobRateIncreaseCriteria']
        {
          number_of_notified_things: 1,
          number_of_succeeded_things: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsJobRateIncreaseCriteria.new
        data = {}
        data['numberOfNotifiedThings'] = stub[:number_of_notified_things] unless stub[:number_of_notified_things].nil?
        data['numberOfSucceededThings'] = stub[:number_of_succeeded_things] unless stub[:number_of_succeeded_things].nil?
        data
      end
    end

    # List Stubber for Protocols
    class Protocols
      def self.default(visited=[])
        return nil if visited.include?('Protocols')
        visited = visited + ['Protocols']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for Targets
    class Targets
      def self.default(visited=[])
        return nil if visited.include?('Targets')
        visited = visited + ['Targets']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetPercentiles
    class GetPercentiles
      def self.default(visited=[])
        {
          percentiles: Percentiles.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['percentiles'] = Percentiles.stub(stub[:percentiles]) unless stub[:percentiles].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Percentiles
    class Percentiles
      def self.default(visited=[])
        return nil if visited.include?('Percentiles')
        visited = visited + ['Percentiles']
        [
          PercentPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PercentPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PercentPair
    class PercentPair
      def self.default(visited=[])
        return nil if visited.include?('PercentPair')
        visited = visited + ['PercentPair']
        {
          percent: 1.0,
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PercentPair.new
        data = {}
        data['percent'] = Hearth::NumberHelper.serialize(stub[:percent])
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy
      def self.default(visited=[])
        {
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
          policy_document: 'policy_document',
          default_version_id: 'default_version_id',
          creation_date: Time.now,
          last_modified_date: Time.now,
          generation_id: 'generation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data['defaultVersionId'] = stub[:default_version_id] unless stub[:default_version_id].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['generationId'] = stub[:generation_id] unless stub[:generation_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPolicyVersion
    class GetPolicyVersion
      def self.default(visited=[])
        {
          policy_arn: 'policy_arn',
          policy_name: 'policy_name',
          policy_document: 'policy_document',
          policy_version_id: 'policy_version_id',
          is_default_version: false,
          creation_date: Time.now,
          last_modified_date: Time.now,
          generation_id: 'generation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyDocument'] = stub[:policy_document] unless stub[:policy_document].nil?
        data['policyVersionId'] = stub[:policy_version_id] unless stub[:policy_version_id].nil?
        data['isDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['generationId'] = stub[:generation_id] unless stub[:generation_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRegistrationCode
    class GetRegistrationCode
      def self.default(visited=[])
        {
          registration_code: 'registration_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['registrationCode'] = stub[:registration_code] unless stub[:registration_code].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStatistics
    class GetStatistics
      def self.default(visited=[])
        {
          statistics: Statistics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['statistics'] = Statistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Statistics
    class Statistics
      def self.default(visited=[])
        return nil if visited.include?('Statistics')
        visited = visited + ['Statistics']
        {
          count: 1,
          average: 1.0,
          sum: 1.0,
          minimum: 1.0,
          maximum: 1.0,
          sum_of_squares: 1.0,
          variance: 1.0,
          std_deviation: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Statistics.new
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['average'] = Hearth::NumberHelper.serialize(stub[:average])
        data['sum'] = Hearth::NumberHelper.serialize(stub[:sum])
        data['minimum'] = Hearth::NumberHelper.serialize(stub[:minimum])
        data['maximum'] = Hearth::NumberHelper.serialize(stub[:maximum])
        data['sumOfSquares'] = Hearth::NumberHelper.serialize(stub[:sum_of_squares])
        data['variance'] = Hearth::NumberHelper.serialize(stub[:variance])
        data['stdDeviation'] = Hearth::NumberHelper.serialize(stub[:std_deviation])
        data
      end
    end

    # Operation Stubber for GetTopicRule
    class GetTopicRule
      def self.default(visited=[])
        {
          rule_arn: 'rule_arn',
          rule: TopicRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ruleArn'] = stub[:rule_arn] unless stub[:rule_arn].nil?
        data['rule'] = TopicRule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TopicRule
    class TopicRule
      def self.default(visited=[])
        return nil if visited.include?('TopicRule')
        visited = visited + ['TopicRule']
        {
          rule_name: 'rule_name',
          sql: 'sql',
          description: 'description',
          created_at: Time.now,
          actions: ActionList.default(visited),
          rule_disabled: false,
          aws_iot_sql_version: 'aws_iot_sql_version',
          error_action: Action.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TopicRule.new
        data = {}
        data['ruleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['sql'] = stub[:sql] unless stub[:sql].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['actions'] = ActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data['ruleDisabled'] = stub[:rule_disabled] unless stub[:rule_disabled].nil?
        data['awsIotSqlVersion'] = stub[:aws_iot_sql_version] unless stub[:aws_iot_sql_version].nil?
        data['errorAction'] = Action.stub(stub[:error_action]) unless stub[:error_action].nil?
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          dynamo_db: DynamoDBAction.default(visited),
          dynamo_d_bv2: DynamoDBv2Action.default(visited),
          lambda: LambdaAction.default(visited),
          sns: SnsAction.default(visited),
          sqs: SqsAction.default(visited),
          kinesis: KinesisAction.default(visited),
          republish: RepublishAction.default(visited),
          s3: S3Action.default(visited),
          firehose: FirehoseAction.default(visited),
          cloudwatch_metric: CloudwatchMetricAction.default(visited),
          cloudwatch_alarm: CloudwatchAlarmAction.default(visited),
          cloudwatch_logs: CloudwatchLogsAction.default(visited),
          elasticsearch: ElasticsearchAction.default(visited),
          salesforce: SalesforceAction.default(visited),
          iot_analytics: IotAnalyticsAction.default(visited),
          iot_events: IotEventsAction.default(visited),
          iot_site_wise: IotSiteWiseAction.default(visited),
          step_functions: StepFunctionsAction.default(visited),
          timestream: TimestreamAction.default(visited),
          http: HttpAction.default(visited),
          kafka: KafkaAction.default(visited),
          open_search: OpenSearchAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['dynamoDB'] = DynamoDBAction.stub(stub[:dynamo_db]) unless stub[:dynamo_db].nil?
        data['dynamoDBv2'] = DynamoDBv2Action.stub(stub[:dynamo_d_bv2]) unless stub[:dynamo_d_bv2].nil?
        data['lambda'] = LambdaAction.stub(stub[:lambda]) unless stub[:lambda].nil?
        data['sns'] = SnsAction.stub(stub[:sns]) unless stub[:sns].nil?
        data['sqs'] = SqsAction.stub(stub[:sqs]) unless stub[:sqs].nil?
        data['kinesis'] = KinesisAction.stub(stub[:kinesis]) unless stub[:kinesis].nil?
        data['republish'] = RepublishAction.stub(stub[:republish]) unless stub[:republish].nil?
        data['s3'] = S3Action.stub(stub[:s3]) unless stub[:s3].nil?
        data['firehose'] = FirehoseAction.stub(stub[:firehose]) unless stub[:firehose].nil?
        data['cloudwatchMetric'] = CloudwatchMetricAction.stub(stub[:cloudwatch_metric]) unless stub[:cloudwatch_metric].nil?
        data['cloudwatchAlarm'] = CloudwatchAlarmAction.stub(stub[:cloudwatch_alarm]) unless stub[:cloudwatch_alarm].nil?
        data['cloudwatchLogs'] = CloudwatchLogsAction.stub(stub[:cloudwatch_logs]) unless stub[:cloudwatch_logs].nil?
        data['elasticsearch'] = ElasticsearchAction.stub(stub[:elasticsearch]) unless stub[:elasticsearch].nil?
        data['salesforce'] = SalesforceAction.stub(stub[:salesforce]) unless stub[:salesforce].nil?
        data['iotAnalytics'] = IotAnalyticsAction.stub(stub[:iot_analytics]) unless stub[:iot_analytics].nil?
        data['iotEvents'] = IotEventsAction.stub(stub[:iot_events]) unless stub[:iot_events].nil?
        data['iotSiteWise'] = IotSiteWiseAction.stub(stub[:iot_site_wise]) unless stub[:iot_site_wise].nil?
        data['stepFunctions'] = StepFunctionsAction.stub(stub[:step_functions]) unless stub[:step_functions].nil?
        data['timestream'] = TimestreamAction.stub(stub[:timestream]) unless stub[:timestream].nil?
        data['http'] = HttpAction.stub(stub[:http]) unless stub[:http].nil?
        data['kafka'] = KafkaAction.stub(stub[:kafka]) unless stub[:kafka].nil?
        data['openSearch'] = OpenSearchAction.stub(stub[:open_search]) unless stub[:open_search].nil?
        data
      end
    end

    # Structure Stubber for OpenSearchAction
    class OpenSearchAction
      def self.default(visited=[])
        return nil if visited.include?('OpenSearchAction')
        visited = visited + ['OpenSearchAction']
        {
          role_arn: 'role_arn',
          endpoint: 'endpoint',
          index: 'index',
          type: 'type',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenSearchAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['index'] = stub[:index] unless stub[:index].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for KafkaAction
    class KafkaAction
      def self.default(visited=[])
        return nil if visited.include?('KafkaAction')
        visited = visited + ['KafkaAction']
        {
          destination_arn: 'destination_arn',
          topic: 'topic',
          key: 'key',
          partition: 'partition',
          client_properties: ClientProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KafkaAction.new
        data = {}
        data['destinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['topic'] = stub[:topic] unless stub[:topic].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['partition'] = stub[:partition] unless stub[:partition].nil?
        data['clientProperties'] = ClientProperties.stub(stub[:client_properties]) unless stub[:client_properties].nil?
        data
      end
    end

    # Map Stubber for ClientProperties
    class ClientProperties
      def self.default(visited=[])
        return nil if visited.include?('ClientProperties')
        visited = visited + ['ClientProperties']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpAction
    class HttpAction
      def self.default(visited=[])
        return nil if visited.include?('HttpAction')
        visited = visited + ['HttpAction']
        {
          url: 'url',
          confirmation_url: 'confirmation_url',
          headers: HeaderList.default(visited),
          auth: HttpAuthorization.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpAction.new
        data = {}
        data['url'] = stub[:url] unless stub[:url].nil?
        data['confirmationUrl'] = stub[:confirmation_url] unless stub[:confirmation_url].nil?
        data['headers'] = HeaderList.stub(stub[:headers]) unless stub[:headers].nil?
        data['auth'] = HttpAuthorization.stub(stub[:auth]) unless stub[:auth].nil?
        data
      end
    end

    # Structure Stubber for HttpAuthorization
    class HttpAuthorization
      def self.default(visited=[])
        return nil if visited.include?('HttpAuthorization')
        visited = visited + ['HttpAuthorization']
        {
          sigv4: SigV4Authorization.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpAuthorization.new
        data = {}
        data['sigv4'] = SigV4Authorization.stub(stub[:sigv4]) unless stub[:sigv4].nil?
        data
      end
    end

    # Structure Stubber for SigV4Authorization
    class SigV4Authorization
      def self.default(visited=[])
        return nil if visited.include?('SigV4Authorization')
        visited = visited + ['SigV4Authorization']
        {
          signing_region: 'signing_region',
          service_name: 'service_name',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigV4Authorization.new
        data = {}
        data['signingRegion'] = stub[:signing_region] unless stub[:signing_region].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for HeaderList
    class HeaderList
      def self.default(visited=[])
        return nil if visited.include?('HeaderList')
        visited = visited + ['HeaderList']
        [
          HttpActionHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HttpActionHeader.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpActionHeader
    class HttpActionHeader
      def self.default(visited=[])
        return nil if visited.include?('HttpActionHeader')
        visited = visited + ['HttpActionHeader']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpActionHeader.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for TimestreamAction
    class TimestreamAction
      def self.default(visited=[])
        return nil if visited.include?('TimestreamAction')
        visited = visited + ['TimestreamAction']
        {
          role_arn: 'role_arn',
          database_name: 'database_name',
          table_name: 'table_name',
          dimensions: TimestreamDimensionList.default(visited),
          timestamp: TimestreamTimestamp.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestreamAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['databaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['dimensions'] = TimestreamDimensionList.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['timestamp'] = TimestreamTimestamp.stub(stub[:timestamp]) unless stub[:timestamp].nil?
        data
      end
    end

    # Structure Stubber for TimestreamTimestamp
    class TimestreamTimestamp
      def self.default(visited=[])
        return nil if visited.include?('TimestreamTimestamp')
        visited = visited + ['TimestreamTimestamp']
        {
          value: 'value',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestreamTimestamp.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for TimestreamDimensionList
    class TimestreamDimensionList
      def self.default(visited=[])
        return nil if visited.include?('TimestreamDimensionList')
        visited = visited + ['TimestreamDimensionList']
        [
          TimestreamDimension.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TimestreamDimension.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimestreamDimension
    class TimestreamDimension
      def self.default(visited=[])
        return nil if visited.include?('TimestreamDimension')
        visited = visited + ['TimestreamDimension']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestreamDimension.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for StepFunctionsAction
    class StepFunctionsAction
      def self.default(visited=[])
        return nil if visited.include?('StepFunctionsAction')
        visited = visited + ['StepFunctionsAction']
        {
          execution_name_prefix: 'execution_name_prefix',
          state_machine_name: 'state_machine_name',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::StepFunctionsAction.new
        data = {}
        data['executionNamePrefix'] = stub[:execution_name_prefix] unless stub[:execution_name_prefix].nil?
        data['stateMachineName'] = stub[:state_machine_name] unless stub[:state_machine_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for IotSiteWiseAction
    class IotSiteWiseAction
      def self.default(visited=[])
        return nil if visited.include?('IotSiteWiseAction')
        visited = visited + ['IotSiteWiseAction']
        {
          put_asset_property_value_entries: PutAssetPropertyValueEntryList.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IotSiteWiseAction.new
        data = {}
        data['putAssetPropertyValueEntries'] = PutAssetPropertyValueEntryList.stub(stub[:put_asset_property_value_entries]) unless stub[:put_asset_property_value_entries].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for PutAssetPropertyValueEntryList
    class PutAssetPropertyValueEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutAssetPropertyValueEntryList')
        visited = visited + ['PutAssetPropertyValueEntryList']
        [
          PutAssetPropertyValueEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PutAssetPropertyValueEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutAssetPropertyValueEntry
    class PutAssetPropertyValueEntry
      def self.default(visited=[])
        return nil if visited.include?('PutAssetPropertyValueEntry')
        visited = visited + ['PutAssetPropertyValueEntry']
        {
          entry_id: 'entry_id',
          asset_id: 'asset_id',
          property_id: 'property_id',
          property_alias: 'property_alias',
          property_values: AssetPropertyValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PutAssetPropertyValueEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['propertyId'] = stub[:property_id] unless stub[:property_id].nil?
        data['propertyAlias'] = stub[:property_alias] unless stub[:property_alias].nil?
        data['propertyValues'] = AssetPropertyValueList.stub(stub[:property_values]) unless stub[:property_values].nil?
        data
      end
    end

    # List Stubber for AssetPropertyValueList
    class AssetPropertyValueList
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyValueList')
        visited = visited + ['AssetPropertyValueList']
        [
          AssetPropertyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetPropertyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetPropertyValue
    class AssetPropertyValue
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyValue')
        visited = visited + ['AssetPropertyValue']
        {
          value: AssetPropertyVariant.default(visited),
          timestamp: AssetPropertyTimestamp.default(visited),
          quality: 'quality',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetPropertyValue.new
        data = {}
        data['value'] = AssetPropertyVariant.stub(stub[:value]) unless stub[:value].nil?
        data['timestamp'] = AssetPropertyTimestamp.stub(stub[:timestamp]) unless stub[:timestamp].nil?
        data['quality'] = stub[:quality] unless stub[:quality].nil?
        data
      end
    end

    # Structure Stubber for AssetPropertyTimestamp
    class AssetPropertyTimestamp
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyTimestamp')
        visited = visited + ['AssetPropertyTimestamp']
        {
          time_in_seconds: 'time_in_seconds',
          offset_in_nanos: 'offset_in_nanos',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetPropertyTimestamp.new
        data = {}
        data['timeInSeconds'] = stub[:time_in_seconds] unless stub[:time_in_seconds].nil?
        data['offsetInNanos'] = stub[:offset_in_nanos] unless stub[:offset_in_nanos].nil?
        data
      end
    end

    # Union Stubber for AssetPropertyVariant
    class AssetPropertyVariant
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyVariant')
        visited = visited + ['AssetPropertyVariant']
        {
          string_value: 'string_value',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AssetPropertyVariant::StringValue
          data['stringValue'] = stub.__getobj__
        when Types::AssetPropertyVariant::IntegerValue
          data['integerValue'] = stub.__getobj__
        when Types::AssetPropertyVariant::DoubleValue
          data['doubleValue'] = stub.__getobj__
        when Types::AssetPropertyVariant::BooleanValue
          data['booleanValue'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AssetPropertyVariant"
        end

        data
      end
    end

    # Structure Stubber for IotEventsAction
    class IotEventsAction
      def self.default(visited=[])
        return nil if visited.include?('IotEventsAction')
        visited = visited + ['IotEventsAction']
        {
          input_name: 'input_name',
          message_id: 'message_id',
          batch_mode: false,
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IotEventsAction.new
        data = {}
        data['inputName'] = stub[:input_name] unless stub[:input_name].nil?
        data['messageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['batchMode'] = stub[:batch_mode] unless stub[:batch_mode].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for IotAnalyticsAction
    class IotAnalyticsAction
      def self.default(visited=[])
        return nil if visited.include?('IotAnalyticsAction')
        visited = visited + ['IotAnalyticsAction']
        {
          channel_arn: 'channel_arn',
          channel_name: 'channel_name',
          batch_mode: false,
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IotAnalyticsAction.new
        data = {}
        data['channelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['channelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['batchMode'] = stub[:batch_mode] unless stub[:batch_mode].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for SalesforceAction
    class SalesforceAction
      def self.default(visited=[])
        return nil if visited.include?('SalesforceAction')
        visited = visited + ['SalesforceAction']
        {
          token: 'token',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceAction.new
        data = {}
        data['token'] = stub[:token] unless stub[:token].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchAction
    class ElasticsearchAction
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchAction')
        visited = visited + ['ElasticsearchAction']
        {
          role_arn: 'role_arn',
          endpoint: 'endpoint',
          index: 'index',
          type: 'type',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['index'] = stub[:index] unless stub[:index].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for CloudwatchLogsAction
    class CloudwatchLogsAction
      def self.default(visited=[])
        return nil if visited.include?('CloudwatchLogsAction')
        visited = visited + ['CloudwatchLogsAction']
        {
          role_arn: 'role_arn',
          log_group_name: 'log_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudwatchLogsAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data
      end
    end

    # Structure Stubber for CloudwatchAlarmAction
    class CloudwatchAlarmAction
      def self.default(visited=[])
        return nil if visited.include?('CloudwatchAlarmAction')
        visited = visited + ['CloudwatchAlarmAction']
        {
          role_arn: 'role_arn',
          alarm_name: 'alarm_name',
          state_reason: 'state_reason',
          state_value: 'state_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudwatchAlarmAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['alarmName'] = stub[:alarm_name] unless stub[:alarm_name].nil?
        data['stateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['stateValue'] = stub[:state_value] unless stub[:state_value].nil?
        data
      end
    end

    # Structure Stubber for CloudwatchMetricAction
    class CloudwatchMetricAction
      def self.default(visited=[])
        return nil if visited.include?('CloudwatchMetricAction')
        visited = visited + ['CloudwatchMetricAction']
        {
          role_arn: 'role_arn',
          metric_namespace: 'metric_namespace',
          metric_name: 'metric_name',
          metric_value: 'metric_value',
          metric_unit: 'metric_unit',
          metric_timestamp: 'metric_timestamp',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudwatchMetricAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['metricNamespace'] = stub[:metric_namespace] unless stub[:metric_namespace].nil?
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricValue'] = stub[:metric_value] unless stub[:metric_value].nil?
        data['metricUnit'] = stub[:metric_unit] unless stub[:metric_unit].nil?
        data['metricTimestamp'] = stub[:metric_timestamp] unless stub[:metric_timestamp].nil?
        data
      end
    end

    # Structure Stubber for FirehoseAction
    class FirehoseAction
      def self.default(visited=[])
        return nil if visited.include?('FirehoseAction')
        visited = visited + ['FirehoseAction']
        {
          role_arn: 'role_arn',
          delivery_stream_name: 'delivery_stream_name',
          separator: 'separator',
          batch_mode: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FirehoseAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['deliveryStreamName'] = stub[:delivery_stream_name] unless stub[:delivery_stream_name].nil?
        data['separator'] = stub[:separator] unless stub[:separator].nil?
        data['batchMode'] = stub[:batch_mode] unless stub[:batch_mode].nil?
        data
      end
    end

    # Structure Stubber for S3Action
    class S3Action
      def self.default(visited=[])
        return nil if visited.include?('S3Action')
        visited = visited + ['S3Action']
        {
          role_arn: 'role_arn',
          bucket_name: 'bucket_name',
          key: 'key',
          canned_acl: 'canned_acl',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Action.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['cannedAcl'] = stub[:canned_acl] unless stub[:canned_acl].nil?
        data
      end
    end

    # Structure Stubber for RepublishAction
    class RepublishAction
      def self.default(visited=[])
        return nil if visited.include?('RepublishAction')
        visited = visited + ['RepublishAction']
        {
          role_arn: 'role_arn',
          topic: 'topic',
          qos: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RepublishAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['topic'] = stub[:topic] unless stub[:topic].nil?
        data['qos'] = stub[:qos] unless stub[:qos].nil?
        data
      end
    end

    # Structure Stubber for KinesisAction
    class KinesisAction
      def self.default(visited=[])
        return nil if visited.include?('KinesisAction')
        visited = visited + ['KinesisAction']
        {
          role_arn: 'role_arn',
          stream_name: 'stream_name',
          partition_key: 'partition_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['streamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['partitionKey'] = stub[:partition_key] unless stub[:partition_key].nil?
        data
      end
    end

    # Structure Stubber for SqsAction
    class SqsAction
      def self.default(visited=[])
        return nil if visited.include?('SqsAction')
        visited = visited + ['SqsAction']
        {
          role_arn: 'role_arn',
          queue_url: 'queue_url',
          use_base64: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SqsAction.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['queueUrl'] = stub[:queue_url] unless stub[:queue_url].nil?
        data['useBase64'] = stub[:use_base64] unless stub[:use_base64].nil?
        data
      end
    end

    # Structure Stubber for SnsAction
    class SnsAction
      def self.default(visited=[])
        return nil if visited.include?('SnsAction')
        visited = visited + ['SnsAction']
        {
          target_arn: 'target_arn',
          role_arn: 'role_arn',
          message_format: 'message_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnsAction.new
        data = {}
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['messageFormat'] = stub[:message_format] unless stub[:message_format].nil?
        data
      end
    end

    # Structure Stubber for LambdaAction
    class LambdaAction
      def self.default(visited=[])
        return nil if visited.include?('LambdaAction')
        visited = visited + ['LambdaAction']
        {
          function_arn: 'function_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaAction.new
        data = {}
        data['functionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data
      end
    end

    # Structure Stubber for DynamoDBv2Action
    class DynamoDBv2Action
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBv2Action')
        visited = visited + ['DynamoDBv2Action']
        {
          role_arn: 'role_arn',
          put_item: PutItemInput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDBv2Action.new
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['putItem'] = PutItemInput.stub(stub[:put_item]) unless stub[:put_item].nil?
        data
      end
    end

    # Structure Stubber for PutItemInput
    class PutItemInput
      def self.default(visited=[])
        return nil if visited.include?('PutItemInput')
        visited = visited + ['PutItemInput']
        {
          table_name: 'table_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutItemInput.new
        data = {}
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data
      end
    end

    # Structure Stubber for DynamoDBAction
    class DynamoDBAction
      def self.default(visited=[])
        return nil if visited.include?('DynamoDBAction')
        visited = visited + ['DynamoDBAction']
        {
          table_name: 'table_name',
          role_arn: 'role_arn',
          operation: 'operation',
          hash_key_field: 'hash_key_field',
          hash_key_value: 'hash_key_value',
          hash_key_type: 'hash_key_type',
          range_key_field: 'range_key_field',
          range_key_value: 'range_key_value',
          range_key_type: 'range_key_type',
          payload_field: 'payload_field',
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamoDBAction.new
        data = {}
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['hashKeyField'] = stub[:hash_key_field] unless stub[:hash_key_field].nil?
        data['hashKeyValue'] = stub[:hash_key_value] unless stub[:hash_key_value].nil?
        data['hashKeyType'] = stub[:hash_key_type] unless stub[:hash_key_type].nil?
        data['rangeKeyField'] = stub[:range_key_field] unless stub[:range_key_field].nil?
        data['rangeKeyValue'] = stub[:range_key_value] unless stub[:range_key_value].nil?
        data['rangeKeyType'] = stub[:range_key_type] unless stub[:range_key_type].nil?
        data['payloadField'] = stub[:payload_field] unless stub[:payload_field].nil?
        data
      end
    end

    # List Stubber for ActionList
    class ActionList
      def self.default(visited=[])
        return nil if visited.include?('ActionList')
        visited = visited + ['ActionList']
        [
          Action.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Action.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTopicRuleDestination
    class GetTopicRuleDestination
      def self.default(visited=[])
        {
          topic_rule_destination: TopicRuleDestination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['topicRuleDestination'] = TopicRuleDestination.stub(stub[:topic_rule_destination]) unless stub[:topic_rule_destination].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetV2LoggingOptions
    class GetV2LoggingOptions
      def self.default(visited=[])
        {
          role_arn: 'role_arn',
          default_log_level: 'default_log_level',
          disable_all_logs: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['defaultLogLevel'] = stub[:default_log_level] unless stub[:default_log_level].nil?
        data['disableAllLogs'] = stub[:disable_all_logs] unless stub[:disable_all_logs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListActiveViolations
    class ListActiveViolations
      def self.default(visited=[])
        {
          active_violations: ActiveViolations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['activeViolations'] = ActiveViolations.stub(stub[:active_violations]) unless stub[:active_violations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ActiveViolations
    class ActiveViolations
      def self.default(visited=[])
        return nil if visited.include?('ActiveViolations')
        visited = visited + ['ActiveViolations']
        [
          ActiveViolation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ActiveViolation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActiveViolation
    class ActiveViolation
      def self.default(visited=[])
        return nil if visited.include?('ActiveViolation')
        visited = visited + ['ActiveViolation']
        {
          violation_id: 'violation_id',
          thing_name: 'thing_name',
          security_profile_name: 'security_profile_name',
          behavior: Behavior.default(visited),
          last_violation_value: MetricValue.default(visited),
          violation_event_additional_info: ViolationEventAdditionalInfo.default(visited),
          verification_state: 'verification_state',
          verification_state_description: 'verification_state_description',
          last_violation_time: Time.now,
          violation_start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveViolation.new
        data = {}
        data['violationId'] = stub[:violation_id] unless stub[:violation_id].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['behavior'] = Behavior.stub(stub[:behavior]) unless stub[:behavior].nil?
        data['lastViolationValue'] = MetricValue.stub(stub[:last_violation_value]) unless stub[:last_violation_value].nil?
        data['violationEventAdditionalInfo'] = ViolationEventAdditionalInfo.stub(stub[:violation_event_additional_info]) unless stub[:violation_event_additional_info].nil?
        data['verificationState'] = stub[:verification_state] unless stub[:verification_state].nil?
        data['verificationStateDescription'] = stub[:verification_state_description] unless stub[:verification_state_description].nil?
        data['lastViolationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_violation_time]).to_i unless stub[:last_violation_time].nil?
        data['violationStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:violation_start_time]).to_i unless stub[:violation_start_time].nil?
        data
      end
    end

    # Structure Stubber for ViolationEventAdditionalInfo
    class ViolationEventAdditionalInfo
      def self.default(visited=[])
        return nil if visited.include?('ViolationEventAdditionalInfo')
        visited = visited + ['ViolationEventAdditionalInfo']
        {
          confidence_level: 'confidence_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::ViolationEventAdditionalInfo.new
        data = {}
        data['confidenceLevel'] = stub[:confidence_level] unless stub[:confidence_level].nil?
        data
      end
    end

    # Operation Stubber for ListAttachedPolicies
    class ListAttachedPolicies
      def self.default(visited=[])
        {
          policies: Policies.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Policies
    class Policies
      def self.default(visited=[])
        return nil if visited.include?('Policies')
        visited = visited + ['Policies']
        [
          Policy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Policy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Policy
    class Policy
      def self.default(visited=[])
        return nil if visited.include?('Policy')
        visited = visited + ['Policy']
        {
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Policy.new
        data = {}
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data
      end
    end

    # Operation Stubber for ListAuditFindings
    class ListAuditFindings
      def self.default(visited=[])
        {
          findings: AuditFindings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findings'] = AuditFindings.stub(stub[:findings]) unless stub[:findings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AuditFindings
    class AuditFindings
      def self.default(visited=[])
        return nil if visited.include?('AuditFindings')
        visited = visited + ['AuditFindings']
        [
          AuditFinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuditFinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAuditMitigationActionsExecutions
    class ListAuditMitigationActionsExecutions
      def self.default(visited=[])
        {
          actions_executions: AuditMitigationActionExecutionMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionsExecutions'] = AuditMitigationActionExecutionMetadataList.stub(stub[:actions_executions]) unless stub[:actions_executions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AuditMitigationActionExecutionMetadataList
    class AuditMitigationActionExecutionMetadataList
      def self.default(visited=[])
        return nil if visited.include?('AuditMitigationActionExecutionMetadataList')
        visited = visited + ['AuditMitigationActionExecutionMetadataList']
        [
          AuditMitigationActionExecutionMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuditMitigationActionExecutionMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditMitigationActionExecutionMetadata
    class AuditMitigationActionExecutionMetadata
      def self.default(visited=[])
        return nil if visited.include?('AuditMitigationActionExecutionMetadata')
        visited = visited + ['AuditMitigationActionExecutionMetadata']
        {
          task_id: 'task_id',
          finding_id: 'finding_id',
          action_name: 'action_name',
          action_id: 'action_id',
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditMitigationActionExecutionMetadata.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['findingId'] = stub[:finding_id] unless stub[:finding_id].nil?
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['actionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListAuditMitigationActionsTasks
    class ListAuditMitigationActionsTasks
      def self.default(visited=[])
        {
          tasks: AuditMitigationActionsTaskMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tasks'] = AuditMitigationActionsTaskMetadataList.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AuditMitigationActionsTaskMetadataList
    class AuditMitigationActionsTaskMetadataList
      def self.default(visited=[])
        return nil if visited.include?('AuditMitigationActionsTaskMetadataList')
        visited = visited + ['AuditMitigationActionsTaskMetadataList']
        [
          AuditMitigationActionsTaskMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuditMitigationActionsTaskMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditMitigationActionsTaskMetadata
    class AuditMitigationActionsTaskMetadata
      def self.default(visited=[])
        return nil if visited.include?('AuditMitigationActionsTaskMetadata')
        visited = visited + ['AuditMitigationActionsTaskMetadata']
        {
          task_id: 'task_id',
          start_time: Time.now,
          task_status: 'task_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditMitigationActionsTaskMetadata.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['taskStatus'] = stub[:task_status] unless stub[:task_status].nil?
        data
      end
    end

    # Operation Stubber for ListAuditSuppressions
    class ListAuditSuppressions
      def self.default(visited=[])
        {
          suppressions: AuditSuppressionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['suppressions'] = AuditSuppressionList.stub(stub[:suppressions]) unless stub[:suppressions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AuditSuppressionList
    class AuditSuppressionList
      def self.default(visited=[])
        return nil if visited.include?('AuditSuppressionList')
        visited = visited + ['AuditSuppressionList']
        [
          AuditSuppression.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuditSuppression.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditSuppression
    class AuditSuppression
      def self.default(visited=[])
        return nil if visited.include?('AuditSuppression')
        visited = visited + ['AuditSuppression']
        {
          check_name: 'check_name',
          resource_identifier: ResourceIdentifier.default(visited),
          expiration_date: Time.now,
          suppress_indefinitely: false,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditSuppression.new
        data = {}
        data['checkName'] = stub[:check_name] unless stub[:check_name].nil?
        data['resourceIdentifier'] = ResourceIdentifier.stub(stub[:resource_identifier]) unless stub[:resource_identifier].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['suppressIndefinitely'] = stub[:suppress_indefinitely] unless stub[:suppress_indefinitely].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListAuditTasks
    class ListAuditTasks
      def self.default(visited=[])
        {
          tasks: AuditTaskMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tasks'] = AuditTaskMetadataList.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AuditTaskMetadataList
    class AuditTaskMetadataList
      def self.default(visited=[])
        return nil if visited.include?('AuditTaskMetadataList')
        visited = visited + ['AuditTaskMetadataList']
        [
          AuditTaskMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuditTaskMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuditTaskMetadata
    class AuditTaskMetadata
      def self.default(visited=[])
        return nil if visited.include?('AuditTaskMetadata')
        visited = visited + ['AuditTaskMetadata']
        {
          task_id: 'task_id',
          task_status: 'task_status',
          task_type: 'task_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuditTaskMetadata.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['taskStatus'] = stub[:task_status] unless stub[:task_status].nil?
        data['taskType'] = stub[:task_type] unless stub[:task_type].nil?
        data
      end
    end

    # Operation Stubber for ListAuthorizers
    class ListAuthorizers
      def self.default(visited=[])
        {
          authorizers: Authorizers.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizers'] = Authorizers.stub(stub[:authorizers]) unless stub[:authorizers].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Authorizers
    class Authorizers
      def self.default(visited=[])
        return nil if visited.include?('Authorizers')
        visited = visited + ['Authorizers']
        [
          AuthorizerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuthorizerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuthorizerSummary
    class AuthorizerSummary
      def self.default(visited=[])
        return nil if visited.include?('AuthorizerSummary')
        visited = visited + ['AuthorizerSummary']
        {
          authorizer_name: 'authorizer_name',
          authorizer_arn: 'authorizer_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthorizerSummary.new
        data = {}
        data['authorizerName'] = stub[:authorizer_name] unless stub[:authorizer_name].nil?
        data['authorizerArn'] = stub[:authorizer_arn] unless stub[:authorizer_arn].nil?
        data
      end
    end

    # Operation Stubber for ListBillingGroups
    class ListBillingGroups
      def self.default(visited=[])
        {
          billing_groups: BillingGroupNameAndArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['billingGroups'] = BillingGroupNameAndArnList.stub(stub[:billing_groups]) unless stub[:billing_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BillingGroupNameAndArnList
    class BillingGroupNameAndArnList
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupNameAndArnList')
        visited = visited + ['BillingGroupNameAndArnList']
        [
          GroupNameAndArn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupNameAndArn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCACertificates
    class ListCACertificates
      def self.default(visited=[])
        {
          certificates: CACertificates.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificates'] = CACertificates.stub(stub[:certificates]) unless stub[:certificates].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CACertificates
    class CACertificates
      def self.default(visited=[])
        return nil if visited.include?('CACertificates')
        visited = visited + ['CACertificates']
        [
          CACertificate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CACertificate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CACertificate
    class CACertificate
      def self.default(visited=[])
        return nil if visited.include?('CACertificate')
        visited = visited + ['CACertificate']
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          status: 'status',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CACertificate.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListCertificates
    class ListCertificates
      def self.default(visited=[])
        {
          certificates: Certificates.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificates'] = Certificates.stub(stub[:certificates]) unless stub[:certificates].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Certificates
    class Certificates
      def self.default(visited=[])
        return nil if visited.include?('Certificates')
        visited = visited + ['Certificates']
        [
          Certificate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Certificate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          status: 'status',
          certificate_mode: 'certificate_mode',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['certificateMode'] = stub[:certificate_mode] unless stub[:certificate_mode].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListCertificatesByCA
    class ListCertificatesByCA
      def self.default(visited=[])
        {
          certificates: Certificates.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificates'] = Certificates.stub(stub[:certificates]) unless stub[:certificates].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListCustomMetrics
    class ListCustomMetrics
      def self.default(visited=[])
        {
          metric_names: MetricNames.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricNames'] = MetricNames.stub(stub[:metric_names]) unless stub[:metric_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MetricNames
    class MetricNames
      def self.default(visited=[])
        return nil if visited.include?('MetricNames')
        visited = visited + ['MetricNames']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDetectMitigationActionsExecutions
    class ListDetectMitigationActionsExecutions
      def self.default(visited=[])
        {
          actions_executions: DetectMitigationActionExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionsExecutions'] = DetectMitigationActionExecutionList.stub(stub[:actions_executions]) unless stub[:actions_executions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DetectMitigationActionExecutionList
    class DetectMitigationActionExecutionList
      def self.default(visited=[])
        return nil if visited.include?('DetectMitigationActionExecutionList')
        visited = visited + ['DetectMitigationActionExecutionList']
        [
          DetectMitigationActionExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DetectMitigationActionExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetectMitigationActionExecution
    class DetectMitigationActionExecution
      def self.default(visited=[])
        return nil if visited.include?('DetectMitigationActionExecution')
        visited = visited + ['DetectMitigationActionExecution']
        {
          task_id: 'task_id',
          violation_id: 'violation_id',
          action_name: 'action_name',
          thing_name: 'thing_name',
          execution_start_date: Time.now,
          execution_end_date: Time.now,
          status: 'status',
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectMitigationActionExecution.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['violationId'] = stub[:violation_id] unless stub[:violation_id].nil?
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['executionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_start_date]).to_i unless stub[:execution_start_date].nil?
        data['executionEndDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_end_date]).to_i unless stub[:execution_end_date].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListDetectMitigationActionsTasks
    class ListDetectMitigationActionsTasks
      def self.default(visited=[])
        {
          tasks: DetectMitigationActionsTaskSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tasks'] = DetectMitigationActionsTaskSummaryList.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DetectMitigationActionsTaskSummaryList
    class DetectMitigationActionsTaskSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DetectMitigationActionsTaskSummaryList')
        visited = visited + ['DetectMitigationActionsTaskSummaryList']
        [
          DetectMitigationActionsTaskSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DetectMitigationActionsTaskSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDimensions
    class ListDimensions
      def self.default(visited=[])
        {
          dimension_names: DimensionNames.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dimensionNames'] = DimensionNames.stub(stub[:dimension_names]) unless stub[:dimension_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DimensionNames
    class DimensionNames
      def self.default(visited=[])
        return nil if visited.include?('DimensionNames')
        visited = visited + ['DimensionNames']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDomainConfigurations
    class ListDomainConfigurations
      def self.default(visited=[])
        {
          domain_configurations: DomainConfigurations.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainConfigurations'] = DomainConfigurations.stub(stub[:domain_configurations]) unless stub[:domain_configurations].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainConfigurations
    class DomainConfigurations
      def self.default(visited=[])
        return nil if visited.include?('DomainConfigurations')
        visited = visited + ['DomainConfigurations']
        [
          DomainConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainConfigurationSummary
    class DomainConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('DomainConfigurationSummary')
        visited = visited + ['DomainConfigurationSummary']
        {
          domain_configuration_name: 'domain_configuration_name',
          domain_configuration_arn: 'domain_configuration_arn',
          service_type: 'service_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainConfigurationSummary.new
        data = {}
        data['domainConfigurationName'] = stub[:domain_configuration_name] unless stub[:domain_configuration_name].nil?
        data['domainConfigurationArn'] = stub[:domain_configuration_arn] unless stub[:domain_configuration_arn].nil?
        data['serviceType'] = stub[:service_type] unless stub[:service_type].nil?
        data
      end
    end

    # Operation Stubber for ListFleetMetrics
    class ListFleetMetrics
      def self.default(visited=[])
        {
          fleet_metrics: FleetMetricNameAndArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fleetMetrics'] = FleetMetricNameAndArnList.stub(stub[:fleet_metrics]) unless stub[:fleet_metrics].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FleetMetricNameAndArnList
    class FleetMetricNameAndArnList
      def self.default(visited=[])
        return nil if visited.include?('FleetMetricNameAndArnList')
        visited = visited + ['FleetMetricNameAndArnList']
        [
          FleetMetricNameAndArn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FleetMetricNameAndArn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FleetMetricNameAndArn
    class FleetMetricNameAndArn
      def self.default(visited=[])
        return nil if visited.include?('FleetMetricNameAndArn')
        visited = visited + ['FleetMetricNameAndArn']
        {
          metric_name: 'metric_name',
          metric_arn: 'metric_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetMetricNameAndArn.new
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricArn'] = stub[:metric_arn] unless stub[:metric_arn].nil?
        data
      end
    end

    # Operation Stubber for ListIndices
    class ListIndices
      def self.default(visited=[])
        {
          index_names: IndexNamesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['indexNames'] = IndexNamesList.stub(stub[:index_names]) unless stub[:index_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IndexNamesList
    class IndexNamesList
      def self.default(visited=[])
        return nil if visited.include?('IndexNamesList')
        visited = visited + ['IndexNamesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJobExecutionsForJob
    class ListJobExecutionsForJob
      def self.default(visited=[])
        {
          execution_summaries: JobExecutionSummaryForJobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['executionSummaries'] = JobExecutionSummaryForJobList.stub(stub[:execution_summaries]) unless stub[:execution_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobExecutionSummaryForJobList
    class JobExecutionSummaryForJobList
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummaryForJobList')
        visited = visited + ['JobExecutionSummaryForJobList']
        [
          JobExecutionSummaryForJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobExecutionSummaryForJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobExecutionSummaryForJob
    class JobExecutionSummaryForJob
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummaryForJob')
        visited = visited + ['JobExecutionSummaryForJob']
        {
          thing_arn: 'thing_arn',
          job_execution_summary: JobExecutionSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionSummaryForJob.new
        data = {}
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['jobExecutionSummary'] = JobExecutionSummary.stub(stub[:job_execution_summary]) unless stub[:job_execution_summary].nil?
        data
      end
    end

    # Structure Stubber for JobExecutionSummary
    class JobExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummary')
        visited = visited + ['JobExecutionSummary']
        {
          status: 'status',
          queued_at: Time.now,
          started_at: Time.now,
          last_updated_at: Time.now,
          execution_number: 1,
          retry_attempt: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionSummary.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['queuedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:queued_at]).to_i unless stub[:queued_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['executionNumber'] = stub[:execution_number] unless stub[:execution_number].nil?
        data['retryAttempt'] = stub[:retry_attempt] unless stub[:retry_attempt].nil?
        data
      end
    end

    # Operation Stubber for ListJobExecutionsForThing
    class ListJobExecutionsForThing
      def self.default(visited=[])
        {
          execution_summaries: JobExecutionSummaryForThingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['executionSummaries'] = JobExecutionSummaryForThingList.stub(stub[:execution_summaries]) unless stub[:execution_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobExecutionSummaryForThingList
    class JobExecutionSummaryForThingList
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummaryForThingList')
        visited = visited + ['JobExecutionSummaryForThingList']
        [
          JobExecutionSummaryForThing.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobExecutionSummaryForThing.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobExecutionSummaryForThing
    class JobExecutionSummaryForThing
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSummaryForThing')
        visited = visited + ['JobExecutionSummaryForThing']
        {
          job_id: 'job_id',
          job_execution_summary: JobExecutionSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionSummaryForThing.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobExecutionSummary'] = JobExecutionSummary.stub(stub[:job_execution_summary]) unless stub[:job_execution_summary].nil?
        data
      end
    end

    # Operation Stubber for ListJobTemplates
    class ListJobTemplates
      def self.default(visited=[])
        {
          job_templates: JobTemplateSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobTemplates'] = JobTemplateSummaryList.stub(stub[:job_templates]) unless stub[:job_templates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobTemplateSummaryList
    class JobTemplateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('JobTemplateSummaryList')
        visited = visited + ['JobTemplateSummaryList']
        [
          JobTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobTemplateSummary
    class JobTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('JobTemplateSummary')
        visited = visited + ['JobTemplateSummary']
        {
          job_template_arn: 'job_template_arn',
          job_template_id: 'job_template_id',
          description: 'description',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobTemplateSummary.new
        data = {}
        data['jobTemplateArn'] = stub[:job_template_arn] unless stub[:job_template_arn].nil?
        data['jobTemplateId'] = stub[:job_template_id] unless stub[:job_template_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          jobs: JobSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = JobSummaryList.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobSummaryList
    class JobSummaryList
      def self.default(visited=[])
        return nil if visited.include?('JobSummaryList')
        visited = visited + ['JobSummaryList']
        [
          JobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobSummary
    class JobSummary
      def self.default(visited=[])
        return nil if visited.include?('JobSummary')
        visited = visited + ['JobSummary']
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          thing_group_id: 'thing_group_id',
          target_selection: 'target_selection',
          status: 'status',
          created_at: Time.now,
          last_updated_at: Time.now,
          completed_at: Time.now,
          is_concurrent: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSummary.new
        data = {}
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['thingGroupId'] = stub[:thing_group_id] unless stub[:thing_group_id].nil?
        data['targetSelection'] = stub[:target_selection] unless stub[:target_selection].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['completedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_at]).to_i unless stub[:completed_at].nil?
        data['isConcurrent'] = stub[:is_concurrent] unless stub[:is_concurrent].nil?
        data
      end
    end

    # Operation Stubber for ListManagedJobTemplates
    class ListManagedJobTemplates
      def self.default(visited=[])
        {
          managed_job_templates: ManagedJobTemplatesSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['managedJobTemplates'] = ManagedJobTemplatesSummaryList.stub(stub[:managed_job_templates]) unless stub[:managed_job_templates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ManagedJobTemplatesSummaryList
    class ManagedJobTemplatesSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ManagedJobTemplatesSummaryList')
        visited = visited + ['ManagedJobTemplatesSummaryList']
        [
          ManagedJobTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ManagedJobTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedJobTemplateSummary
    class ManagedJobTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('ManagedJobTemplateSummary')
        visited = visited + ['ManagedJobTemplateSummary']
        {
          template_arn: 'template_arn',
          template_name: 'template_name',
          description: 'description',
          environments: Environments.default(visited),
          template_version: 'template_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedJobTemplateSummary.new
        data = {}
        data['templateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['environments'] = Environments.stub(stub[:environments]) unless stub[:environments].nil?
        data['templateVersion'] = stub[:template_version] unless stub[:template_version].nil?
        data
      end
    end

    # Operation Stubber for ListMetricValues
    class ListMetricValues
      def self.default(visited=[])
        {
          metric_datum_list: MetricDatumList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricDatumList'] = MetricDatumList.stub(stub[:metric_datum_list]) unless stub[:metric_datum_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MetricDatumList
    class MetricDatumList
      def self.default(visited=[])
        return nil if visited.include?('MetricDatumList')
        visited = visited + ['MetricDatumList']
        [
          MetricDatum.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDatum.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDatum
    class MetricDatum
      def self.default(visited=[])
        return nil if visited.include?('MetricDatum')
        visited = visited + ['MetricDatum']
        {
          timestamp: Time.now,
          value: MetricValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDatum.new
        data = {}
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['value'] = MetricValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListMitigationActions
    class ListMitigationActions
      def self.default(visited=[])
        {
          action_identifiers: MitigationActionIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionIdentifiers'] = MitigationActionIdentifierList.stub(stub[:action_identifiers]) unless stub[:action_identifiers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MitigationActionIdentifierList
    class MitigationActionIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('MitigationActionIdentifierList')
        visited = visited + ['MitigationActionIdentifierList']
        [
          MitigationActionIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MitigationActionIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MitigationActionIdentifier
    class MitigationActionIdentifier
      def self.default(visited=[])
        return nil if visited.include?('MitigationActionIdentifier')
        visited = visited + ['MitigationActionIdentifier']
        {
          action_name: 'action_name',
          action_arn: 'action_arn',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MitigationActionIdentifier.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['actionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListOTAUpdates
    class ListOTAUpdates
      def self.default(visited=[])
        {
          ota_updates: OTAUpdatesSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['otaUpdates'] = OTAUpdatesSummary.stub(stub[:ota_updates]) unless stub[:ota_updates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OTAUpdatesSummary
    class OTAUpdatesSummary
      def self.default(visited=[])
        return nil if visited.include?('OTAUpdatesSummary')
        visited = visited + ['OTAUpdatesSummary']
        [
          OTAUpdateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OTAUpdateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OTAUpdateSummary
    class OTAUpdateSummary
      def self.default(visited=[])
        return nil if visited.include?('OTAUpdateSummary')
        visited = visited + ['OTAUpdateSummary']
        {
          ota_update_id: 'ota_update_id',
          ota_update_arn: 'ota_update_arn',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OTAUpdateSummary.new
        data = {}
        data['otaUpdateId'] = stub[:ota_update_id] unless stub[:ota_update_id].nil?
        data['otaUpdateArn'] = stub[:ota_update_arn] unless stub[:ota_update_arn].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListOutgoingCertificates
    class ListOutgoingCertificates
      def self.default(visited=[])
        {
          outgoing_certificates: OutgoingCertificates.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['outgoingCertificates'] = OutgoingCertificates.stub(stub[:outgoing_certificates]) unless stub[:outgoing_certificates].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OutgoingCertificates
    class OutgoingCertificates
      def self.default(visited=[])
        return nil if visited.include?('OutgoingCertificates')
        visited = visited + ['OutgoingCertificates']
        [
          OutgoingCertificate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OutgoingCertificate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutgoingCertificate
    class OutgoingCertificate
      def self.default(visited=[])
        return nil if visited.include?('OutgoingCertificate')
        visited = visited + ['OutgoingCertificate']
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
          transferred_to: 'transferred_to',
          transfer_date: Time.now,
          transfer_message: 'transfer_message',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OutgoingCertificate.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        data['transferredTo'] = stub[:transferred_to] unless stub[:transferred_to].nil?
        data['transferDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transfer_date]).to_i unless stub[:transfer_date].nil?
        data['transferMessage'] = stub[:transfer_message] unless stub[:transfer_message].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListPolicies
    class ListPolicies
      def self.default(visited=[])
        {
          policies: Policies.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPolicyPrincipals
    class ListPolicyPrincipals
      def self.default(visited=[])
        {
          principals: Principals.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['principals'] = Principals.stub(stub[:principals]) unless stub[:principals].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Principals
    class Principals
      def self.default(visited=[])
        return nil if visited.include?('Principals')
        visited = visited + ['Principals']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPolicyVersions
    class ListPolicyVersions
      def self.default(visited=[])
        {
          policy_versions: PolicyVersions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyVersions'] = PolicyVersions.stub(stub[:policy_versions]) unless stub[:policy_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PolicyVersions
    class PolicyVersions
      def self.default(visited=[])
        return nil if visited.include?('PolicyVersions')
        visited = visited + ['PolicyVersions']
        [
          PolicyVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicyVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyVersion
    class PolicyVersion
      def self.default(visited=[])
        return nil if visited.include?('PolicyVersion')
        visited = visited + ['PolicyVersion']
        {
          version_id: 'version_id',
          is_default_version: false,
          create_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyVersion.new
        data = {}
        data['versionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['isDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        data['createDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data
      end
    end

    # Operation Stubber for ListPrincipalPolicies
    class ListPrincipalPolicies
      def self.default(visited=[])
        {
          policies: Policies.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPrincipalThings
    class ListPrincipalThings
      def self.default(visited=[])
        {
          things: ThingNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['things'] = ThingNameList.stub(stub[:things]) unless stub[:things].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThingNameList
    class ThingNameList
      def self.default(visited=[])
        return nil if visited.include?('ThingNameList')
        visited = visited + ['ThingNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProvisioningTemplateVersions
    class ListProvisioningTemplateVersions
      def self.default(visited=[])
        {
          versions: ProvisioningTemplateVersionListing.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['versions'] = ProvisioningTemplateVersionListing.stub(stub[:versions]) unless stub[:versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProvisioningTemplateVersionListing
    class ProvisioningTemplateVersionListing
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningTemplateVersionListing')
        visited = visited + ['ProvisioningTemplateVersionListing']
        [
          ProvisioningTemplateVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningTemplateVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningTemplateVersionSummary
    class ProvisioningTemplateVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningTemplateVersionSummary')
        visited = visited + ['ProvisioningTemplateVersionSummary']
        {
          version_id: 1,
          creation_date: Time.now,
          is_default_version: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningTemplateVersionSummary.new
        data = {}
        data['versionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['isDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        data
      end
    end

    # Operation Stubber for ListProvisioningTemplates
    class ListProvisioningTemplates
      def self.default(visited=[])
        {
          templates: ProvisioningTemplateListing.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templates'] = ProvisioningTemplateListing.stub(stub[:templates]) unless stub[:templates].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProvisioningTemplateListing
    class ProvisioningTemplateListing
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningTemplateListing')
        visited = visited + ['ProvisioningTemplateListing']
        [
          ProvisioningTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningTemplateSummary
    class ProvisioningTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningTemplateSummary')
        visited = visited + ['ProvisioningTemplateSummary']
        {
          template_arn: 'template_arn',
          template_name: 'template_name',
          description: 'description',
          creation_date: Time.now,
          last_modified_date: Time.now,
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningTemplateSummary.new
        data = {}
        data['templateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['templateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Operation Stubber for ListRoleAliases
    class ListRoleAliases
      def self.default(visited=[])
        {
          role_aliases: RoleAliases.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleAliases'] = RoleAliases.stub(stub[:role_aliases]) unless stub[:role_aliases].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoleAliases
    class RoleAliases
      def self.default(visited=[])
        return nil if visited.include?('RoleAliases')
        visited = visited + ['RoleAliases']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListScheduledAudits
    class ListScheduledAudits
      def self.default(visited=[])
        {
          scheduled_audits: ScheduledAuditMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['scheduledAudits'] = ScheduledAuditMetadataList.stub(stub[:scheduled_audits]) unless stub[:scheduled_audits].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ScheduledAuditMetadataList
    class ScheduledAuditMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledAuditMetadataList')
        visited = visited + ['ScheduledAuditMetadataList']
        [
          ScheduledAuditMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScheduledAuditMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduledAuditMetadata
    class ScheduledAuditMetadata
      def self.default(visited=[])
        return nil if visited.include?('ScheduledAuditMetadata')
        visited = visited + ['ScheduledAuditMetadata']
        {
          scheduled_audit_name: 'scheduled_audit_name',
          scheduled_audit_arn: 'scheduled_audit_arn',
          frequency: 'frequency',
          day_of_month: 'day_of_month',
          day_of_week: 'day_of_week',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledAuditMetadata.new
        data = {}
        data['scheduledAuditName'] = stub[:scheduled_audit_name] unless stub[:scheduled_audit_name].nil?
        data['scheduledAuditArn'] = stub[:scheduled_audit_arn] unless stub[:scheduled_audit_arn].nil?
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['dayOfMonth'] = stub[:day_of_month] unless stub[:day_of_month].nil?
        data['dayOfWeek'] = stub[:day_of_week] unless stub[:day_of_week].nil?
        data
      end
    end

    # Operation Stubber for ListSecurityProfiles
    class ListSecurityProfiles
      def self.default(visited=[])
        {
          security_profile_identifiers: SecurityProfileIdentifiers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityProfileIdentifiers'] = SecurityProfileIdentifiers.stub(stub[:security_profile_identifiers]) unless stub[:security_profile_identifiers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityProfileIdentifiers
    class SecurityProfileIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileIdentifiers')
        visited = visited + ['SecurityProfileIdentifiers']
        [
          SecurityProfileIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityProfileIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityProfileIdentifier
    class SecurityProfileIdentifier
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileIdentifier')
        visited = visited + ['SecurityProfileIdentifier']
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityProfileIdentifier.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListSecurityProfilesForTarget
    class ListSecurityProfilesForTarget
      def self.default(visited=[])
        {
          security_profile_target_mappings: SecurityProfileTargetMappings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityProfileTargetMappings'] = SecurityProfileTargetMappings.stub(stub[:security_profile_target_mappings]) unless stub[:security_profile_target_mappings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityProfileTargetMappings
    class SecurityProfileTargetMappings
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileTargetMappings')
        visited = visited + ['SecurityProfileTargetMappings']
        [
          SecurityProfileTargetMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityProfileTargetMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityProfileTargetMapping
    class SecurityProfileTargetMapping
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileTargetMapping')
        visited = visited + ['SecurityProfileTargetMapping']
        {
          security_profile_identifier: SecurityProfileIdentifier.default(visited),
          target: SecurityProfileTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityProfileTargetMapping.new
        data = {}
        data['securityProfileIdentifier'] = SecurityProfileIdentifier.stub(stub[:security_profile_identifier]) unless stub[:security_profile_identifier].nil?
        data['target'] = SecurityProfileTarget.stub(stub[:target]) unless stub[:target].nil?
        data
      end
    end

    # Structure Stubber for SecurityProfileTarget
    class SecurityProfileTarget
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileTarget')
        visited = visited + ['SecurityProfileTarget']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityProfileTarget.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListStreams
    class ListStreams
      def self.default(visited=[])
        {
          streams: StreamsSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streams'] = StreamsSummary.stub(stub[:streams]) unless stub[:streams].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamsSummary
    class StreamsSummary
      def self.default(visited=[])
        return nil if visited.include?('StreamsSummary')
        visited = visited + ['StreamsSummary']
        [
          StreamSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StreamSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamSummary
    class StreamSummary
      def self.default(visited=[])
        return nil if visited.include?('StreamSummary')
        visited = visited + ['StreamSummary']
        {
          stream_id: 'stream_id',
          stream_arn: 'stream_arn',
          stream_version: 1,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSummary.new
        data = {}
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['streamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['streamVersion'] = stub[:stream_version] unless stub[:stream_version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTargetsForPolicy
    class ListTargetsForPolicy
      def self.default(visited=[])
        {
          targets: PolicyTargets.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['targets'] = PolicyTargets.stub(stub[:targets]) unless stub[:targets].nil?
        data['nextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PolicyTargets
    class PolicyTargets
      def self.default(visited=[])
        return nil if visited.include?('PolicyTargets')
        visited = visited + ['PolicyTargets']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTargetsForSecurityProfile
    class ListTargetsForSecurityProfile
      def self.default(visited=[])
        {
          security_profile_targets: SecurityProfileTargets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityProfileTargets'] = SecurityProfileTargets.stub(stub[:security_profile_targets]) unless stub[:security_profile_targets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityProfileTargets
    class SecurityProfileTargets
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileTargets')
        visited = visited + ['SecurityProfileTargets']
        [
          SecurityProfileTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityProfileTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListThingGroups
    class ListThingGroups
      def self.default(visited=[])
        {
          thing_groups: ThingGroupNameAndArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingGroups'] = ThingGroupNameAndArnList.stub(stub[:thing_groups]) unless stub[:thing_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListThingGroupsForThing
    class ListThingGroupsForThing
      def self.default(visited=[])
        {
          thing_groups: ThingGroupNameAndArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingGroups'] = ThingGroupNameAndArnList.stub(stub[:thing_groups]) unless stub[:thing_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListThingPrincipals
    class ListThingPrincipals
      def self.default(visited=[])
        {
          principals: Principals.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['principals'] = Principals.stub(stub[:principals]) unless stub[:principals].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListThingRegistrationTaskReports
    class ListThingRegistrationTaskReports
      def self.default(visited=[])
        {
          resource_links: S3FileUrlList.default(visited),
          report_type: 'report_type',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceLinks'] = S3FileUrlList.stub(stub[:resource_links]) unless stub[:resource_links].nil?
        data['reportType'] = stub[:report_type] unless stub[:report_type].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for S3FileUrlList
    class S3FileUrlList
      def self.default(visited=[])
        return nil if visited.include?('S3FileUrlList')
        visited = visited + ['S3FileUrlList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListThingRegistrationTasks
    class ListThingRegistrationTasks
      def self.default(visited=[])
        {
          task_ids: TaskIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskIds'] = TaskIdList.stub(stub[:task_ids]) unless stub[:task_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TaskIdList
    class TaskIdList
      def self.default(visited=[])
        return nil if visited.include?('TaskIdList')
        visited = visited + ['TaskIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListThingTypes
    class ListThingTypes
      def self.default(visited=[])
        {
          thing_types: ThingTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['thingTypes'] = ThingTypeList.stub(stub[:thing_types]) unless stub[:thing_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThingTypeList
    class ThingTypeList
      def self.default(visited=[])
        return nil if visited.include?('ThingTypeList')
        visited = visited + ['ThingTypeList']
        [
          ThingTypeDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThingTypeDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThingTypeDefinition
    class ThingTypeDefinition
      def self.default(visited=[])
        return nil if visited.include?('ThingTypeDefinition')
        visited = visited + ['ThingTypeDefinition']
        {
          thing_type_name: 'thing_type_name',
          thing_type_arn: 'thing_type_arn',
          thing_type_properties: ThingTypeProperties.default(visited),
          thing_type_metadata: ThingTypeMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingTypeDefinition.new
        data = {}
        data['thingTypeName'] = stub[:thing_type_name] unless stub[:thing_type_name].nil?
        data['thingTypeArn'] = stub[:thing_type_arn] unless stub[:thing_type_arn].nil?
        data['thingTypeProperties'] = ThingTypeProperties.stub(stub[:thing_type_properties]) unless stub[:thing_type_properties].nil?
        data['thingTypeMetadata'] = ThingTypeMetadata.stub(stub[:thing_type_metadata]) unless stub[:thing_type_metadata].nil?
        data
      end
    end

    # Operation Stubber for ListThings
    class ListThings
      def self.default(visited=[])
        {
          things: ThingAttributeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['things'] = ThingAttributeList.stub(stub[:things]) unless stub[:things].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThingAttributeList
    class ThingAttributeList
      def self.default(visited=[])
        return nil if visited.include?('ThingAttributeList')
        visited = visited + ['ThingAttributeList']
        [
          ThingAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThingAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThingAttribute
    class ThingAttribute
      def self.default(visited=[])
        return nil if visited.include?('ThingAttribute')
        visited = visited + ['ThingAttribute']
        {
          thing_name: 'thing_name',
          thing_type_name: 'thing_type_name',
          thing_arn: 'thing_arn',
          attributes: Attributes.default(visited),
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingAttribute.new
        data = {}
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['thingTypeName'] = stub[:thing_type_name] unless stub[:thing_type_name].nil?
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['attributes'] = Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for ListThingsInBillingGroup
    class ListThingsInBillingGroup
      def self.default(visited=[])
        {
          things: ThingNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['things'] = ThingNameList.stub(stub[:things]) unless stub[:things].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListThingsInThingGroup
    class ListThingsInThingGroup
      def self.default(visited=[])
        {
          things: ThingNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['things'] = ThingNameList.stub(stub[:things]) unless stub[:things].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTopicRuleDestinations
    class ListTopicRuleDestinations
      def self.default(visited=[])
        {
          destination_summaries: TopicRuleDestinationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['destinationSummaries'] = TopicRuleDestinationSummaries.stub(stub[:destination_summaries]) unless stub[:destination_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TopicRuleDestinationSummaries
    class TopicRuleDestinationSummaries
      def self.default(visited=[])
        return nil if visited.include?('TopicRuleDestinationSummaries')
        visited = visited + ['TopicRuleDestinationSummaries']
        [
          TopicRuleDestinationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TopicRuleDestinationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TopicRuleDestinationSummary
    class TopicRuleDestinationSummary
      def self.default(visited=[])
        return nil if visited.include?('TopicRuleDestinationSummary')
        visited = visited + ['TopicRuleDestinationSummary']
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          last_updated_at: Time.now,
          status_reason: 'status_reason',
          http_url_summary: HttpUrlDestinationSummary.default(visited),
          vpc_destination_summary: VpcDestinationSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TopicRuleDestinationSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['httpUrlSummary'] = HttpUrlDestinationSummary.stub(stub[:http_url_summary]) unless stub[:http_url_summary].nil?
        data['vpcDestinationSummary'] = VpcDestinationSummary.stub(stub[:vpc_destination_summary]) unless stub[:vpc_destination_summary].nil?
        data
      end
    end

    # Structure Stubber for VpcDestinationSummary
    class VpcDestinationSummary
      def self.default(visited=[])
        return nil if visited.include?('VpcDestinationSummary')
        visited = visited + ['VpcDestinationSummary']
        {
          subnet_ids: SubnetIdList.default(visited),
          security_groups: SecurityGroupList.default(visited),
          vpc_id: 'vpc_id',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcDestinationSummary.new
        data = {}
        data['subnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroups'] = SecurityGroupList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for HttpUrlDestinationSummary
    class HttpUrlDestinationSummary
      def self.default(visited=[])
        return nil if visited.include?('HttpUrlDestinationSummary')
        visited = visited + ['HttpUrlDestinationSummary']
        {
          confirmation_url: 'confirmation_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpUrlDestinationSummary.new
        data = {}
        data['confirmationUrl'] = stub[:confirmation_url] unless stub[:confirmation_url].nil?
        data
      end
    end

    # Operation Stubber for ListTopicRules
    class ListTopicRules
      def self.default(visited=[])
        {
          rules: TopicRuleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['rules'] = TopicRuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TopicRuleList
    class TopicRuleList
      def self.default(visited=[])
        return nil if visited.include?('TopicRuleList')
        visited = visited + ['TopicRuleList']
        [
          TopicRuleListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TopicRuleListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TopicRuleListItem
    class TopicRuleListItem
      def self.default(visited=[])
        return nil if visited.include?('TopicRuleListItem')
        visited = visited + ['TopicRuleListItem']
        {
          rule_arn: 'rule_arn',
          rule_name: 'rule_name',
          topic_pattern: 'topic_pattern',
          created_at: Time.now,
          rule_disabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TopicRuleListItem.new
        data = {}
        data['ruleArn'] = stub[:rule_arn] unless stub[:rule_arn].nil?
        data['ruleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['topicPattern'] = stub[:topic_pattern] unless stub[:topic_pattern].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ruleDisabled'] = stub[:rule_disabled] unless stub[:rule_disabled].nil?
        data
      end
    end

    # Operation Stubber for ListV2LoggingLevels
    class ListV2LoggingLevels
      def self.default(visited=[])
        {
          log_target_configurations: LogTargetConfigurations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['logTargetConfigurations'] = LogTargetConfigurations.stub(stub[:log_target_configurations]) unless stub[:log_target_configurations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LogTargetConfigurations
    class LogTargetConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LogTargetConfigurations')
        visited = visited + ['LogTargetConfigurations']
        [
          LogTargetConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LogTargetConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogTargetConfiguration
    class LogTargetConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LogTargetConfiguration')
        visited = visited + ['LogTargetConfiguration']
        {
          log_target: LogTarget.default(visited),
          log_level: 'log_level',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogTargetConfiguration.new
        data = {}
        data['logTarget'] = LogTarget.stub(stub[:log_target]) unless stub[:log_target].nil?
        data['logLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data
      end
    end

    # Structure Stubber for LogTarget
    class LogTarget
      def self.default(visited=[])
        return nil if visited.include?('LogTarget')
        visited = visited + ['LogTarget']
        {
          target_type: 'target_type',
          target_name: 'target_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogTarget.new
        data = {}
        data['targetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['targetName'] = stub[:target_name] unless stub[:target_name].nil?
        data
      end
    end

    # Operation Stubber for ListViolationEvents
    class ListViolationEvents
      def self.default(visited=[])
        {
          violation_events: ViolationEvents.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['violationEvents'] = ViolationEvents.stub(stub[:violation_events]) unless stub[:violation_events].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ViolationEvents
    class ViolationEvents
      def self.default(visited=[])
        return nil if visited.include?('ViolationEvents')
        visited = visited + ['ViolationEvents']
        [
          ViolationEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ViolationEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ViolationEvent
    class ViolationEvent
      def self.default(visited=[])
        return nil if visited.include?('ViolationEvent')
        visited = visited + ['ViolationEvent']
        {
          violation_id: 'violation_id',
          thing_name: 'thing_name',
          security_profile_name: 'security_profile_name',
          behavior: Behavior.default(visited),
          metric_value: MetricValue.default(visited),
          violation_event_additional_info: ViolationEventAdditionalInfo.default(visited),
          violation_event_type: 'violation_event_type',
          verification_state: 'verification_state',
          verification_state_description: 'verification_state_description',
          violation_event_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ViolationEvent.new
        data = {}
        data['violationId'] = stub[:violation_id] unless stub[:violation_id].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['behavior'] = Behavior.stub(stub[:behavior]) unless stub[:behavior].nil?
        data['metricValue'] = MetricValue.stub(stub[:metric_value]) unless stub[:metric_value].nil?
        data['violationEventAdditionalInfo'] = ViolationEventAdditionalInfo.stub(stub[:violation_event_additional_info]) unless stub[:violation_event_additional_info].nil?
        data['violationEventType'] = stub[:violation_event_type] unless stub[:violation_event_type].nil?
        data['verificationState'] = stub[:verification_state] unless stub[:verification_state].nil?
        data['verificationStateDescription'] = stub[:verification_state_description] unless stub[:verification_state_description].nil?
        data['violationEventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:violation_event_time]).to_i unless stub[:violation_event_time].nil?
        data
      end
    end

    # Operation Stubber for PutVerificationStateOnViolation
    class PutVerificationStateOnViolation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterCACertificate
    class RegisterCACertificate
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterCertificate
    class RegisterCertificate
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterCertificateWithoutCA
    class RegisterCertificateWithoutCA
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
          certificate_id: 'certificate_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateId'] = stub[:certificate_id] unless stub[:certificate_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterThing
    class RegisterThing
      def self.default(visited=[])
        {
          certificate_pem: 'certificate_pem',
          resource_arns: ResourceArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificatePem'] = stub[:certificate_pem] unless stub[:certificate_pem].nil?
        data['resourceArns'] = ResourceArns.stub(stub[:resource_arns]) unless stub[:resource_arns].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ResourceArns
    class ResourceArns
      def self.default(visited=[])
        return nil if visited.include?('ResourceArns')
        visited = visited + ['ResourceArns']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for RejectCertificateTransfer
    class RejectCertificateTransfer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveThingFromBillingGroup
    class RemoveThingFromBillingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveThingFromThingGroup
    class RemoveThingFromThingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReplaceTopicRule
    class ReplaceTopicRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchIndex
    class SearchIndex
      def self.default(visited=[])
        {
          next_token: 'next_token',
          things: ThingDocumentList.default(visited),
          thing_groups: ThingGroupDocumentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['things'] = ThingDocumentList.stub(stub[:things]) unless stub[:things].nil?
        data['thingGroups'] = ThingGroupDocumentList.stub(stub[:thing_groups]) unless stub[:thing_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThingGroupDocumentList
    class ThingGroupDocumentList
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupDocumentList')
        visited = visited + ['ThingGroupDocumentList']
        [
          ThingGroupDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThingGroupDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThingGroupDocument
    class ThingGroupDocument
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupDocument')
        visited = visited + ['ThingGroupDocument']
        {
          thing_group_name: 'thing_group_name',
          thing_group_id: 'thing_group_id',
          thing_group_description: 'thing_group_description',
          attributes: Attributes.default(visited),
          parent_group_names: ThingGroupNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingGroupDocument.new
        data = {}
        data['thingGroupName'] = stub[:thing_group_name] unless stub[:thing_group_name].nil?
        data['thingGroupId'] = stub[:thing_group_id] unless stub[:thing_group_id].nil?
        data['thingGroupDescription'] = stub[:thing_group_description] unless stub[:thing_group_description].nil?
        data['attributes'] = Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['parentGroupNames'] = ThingGroupNameList.stub(stub[:parent_group_names]) unless stub[:parent_group_names].nil?
        data
      end
    end

    # List Stubber for ThingGroupNameList
    class ThingGroupNameList
      def self.default(visited=[])
        return nil if visited.include?('ThingGroupNameList')
        visited = visited + ['ThingGroupNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ThingDocumentList
    class ThingDocumentList
      def self.default(visited=[])
        return nil if visited.include?('ThingDocumentList')
        visited = visited + ['ThingDocumentList']
        [
          ThingDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThingDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThingDocument
    class ThingDocument
      def self.default(visited=[])
        return nil if visited.include?('ThingDocument')
        visited = visited + ['ThingDocument']
        {
          thing_name: 'thing_name',
          thing_id: 'thing_id',
          thing_type_name: 'thing_type_name',
          thing_group_names: ThingGroupNameList.default(visited),
          attributes: Attributes.default(visited),
          shadow: 'shadow',
          device_defender: 'device_defender',
          connectivity: ThingConnectivity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingDocument.new
        data = {}
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['thingId'] = stub[:thing_id] unless stub[:thing_id].nil?
        data['thingTypeName'] = stub[:thing_type_name] unless stub[:thing_type_name].nil?
        data['thingGroupNames'] = ThingGroupNameList.stub(stub[:thing_group_names]) unless stub[:thing_group_names].nil?
        data['attributes'] = Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['shadow'] = stub[:shadow] unless stub[:shadow].nil?
        data['deviceDefender'] = stub[:device_defender] unless stub[:device_defender].nil?
        data['connectivity'] = ThingConnectivity.stub(stub[:connectivity]) unless stub[:connectivity].nil?
        data
      end
    end

    # Structure Stubber for ThingConnectivity
    class ThingConnectivity
      def self.default(visited=[])
        return nil if visited.include?('ThingConnectivity')
        visited = visited + ['ThingConnectivity']
        {
          connected: false,
          timestamp: 1,
          disconnect_reason: 'disconnect_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThingConnectivity.new
        data = {}
        data['connected'] = stub[:connected] unless stub[:connected].nil?
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['disconnectReason'] = stub[:disconnect_reason] unless stub[:disconnect_reason].nil?
        data
      end
    end

    # Operation Stubber for SetDefaultAuthorizer
    class SetDefaultAuthorizer
      def self.default(visited=[])
        {
          authorizer_name: 'authorizer_name',
          authorizer_arn: 'authorizer_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerName'] = stub[:authorizer_name] unless stub[:authorizer_name].nil?
        data['authorizerArn'] = stub[:authorizer_arn] unless stub[:authorizer_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SetDefaultPolicyVersion
    class SetDefaultPolicyVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetLoggingOptions
    class SetLoggingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetV2LoggingLevel
    class SetV2LoggingLevel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetV2LoggingOptions
    class SetV2LoggingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAuditMitigationActionsTask
    class StartAuditMitigationActionsTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartDetectMitigationActionsTask
    class StartDetectMitigationActionsTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartOnDemandAuditTask
    class StartOnDemandAuditTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartThingRegistrationTask
    class StartThingRegistrationTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopThingRegistrationTask
    class StopThingRegistrationTask
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestAuthorization
    class TestAuthorization
      def self.default(visited=[])
        {
          auth_results: AuthResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authResults'] = AuthResults.stub(stub[:auth_results]) unless stub[:auth_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AuthResults
    class AuthResults
      def self.default(visited=[])
        return nil if visited.include?('AuthResults')
        visited = visited + ['AuthResults']
        [
          AuthResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuthResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuthResult
    class AuthResult
      def self.default(visited=[])
        return nil if visited.include?('AuthResult')
        visited = visited + ['AuthResult']
        {
          auth_info: AuthInfo.default(visited),
          allowed: Allowed.default(visited),
          denied: Denied.default(visited),
          auth_decision: 'auth_decision',
          missing_context_values: MissingContextValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthResult.new
        data = {}
        data['authInfo'] = AuthInfo.stub(stub[:auth_info]) unless stub[:auth_info].nil?
        data['allowed'] = Allowed.stub(stub[:allowed]) unless stub[:allowed].nil?
        data['denied'] = Denied.stub(stub[:denied]) unless stub[:denied].nil?
        data['authDecision'] = stub[:auth_decision] unless stub[:auth_decision].nil?
        data['missingContextValues'] = MissingContextValues.stub(stub[:missing_context_values]) unless stub[:missing_context_values].nil?
        data
      end
    end

    # List Stubber for MissingContextValues
    class MissingContextValues
      def self.default(visited=[])
        return nil if visited.include?('MissingContextValues')
        visited = visited + ['MissingContextValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Denied
    class Denied
      def self.default(visited=[])
        return nil if visited.include?('Denied')
        visited = visited + ['Denied']
        {
          implicit_deny: ImplicitDeny.default(visited),
          explicit_deny: ExplicitDeny.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Denied.new
        data = {}
        data['implicitDeny'] = ImplicitDeny.stub(stub[:implicit_deny]) unless stub[:implicit_deny].nil?
        data['explicitDeny'] = ExplicitDeny.stub(stub[:explicit_deny]) unless stub[:explicit_deny].nil?
        data
      end
    end

    # Structure Stubber for ExplicitDeny
    class ExplicitDeny
      def self.default(visited=[])
        return nil if visited.include?('ExplicitDeny')
        visited = visited + ['ExplicitDeny']
        {
          policies: Policies.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExplicitDeny.new
        data = {}
        data['policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data
      end
    end

    # Structure Stubber for ImplicitDeny
    class ImplicitDeny
      def self.default(visited=[])
        return nil if visited.include?('ImplicitDeny')
        visited = visited + ['ImplicitDeny']
        {
          policies: Policies.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImplicitDeny.new
        data = {}
        data['policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data
      end
    end

    # Structure Stubber for Allowed
    class Allowed
      def self.default(visited=[])
        return nil if visited.include?('Allowed')
        visited = visited + ['Allowed']
        {
          policies: Policies.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Allowed.new
        data = {}
        data['policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data
      end
    end

    # Structure Stubber for AuthInfo
    class AuthInfo
      def self.default(visited=[])
        return nil if visited.include?('AuthInfo')
        visited = visited + ['AuthInfo']
        {
          action_type: 'action_type',
          resources: Resources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthInfo.new
        data = {}
        data['actionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['resources'] = Resources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for TestInvokeAuthorizer
    class TestInvokeAuthorizer
      def self.default(visited=[])
        {
          is_authenticated: false,
          principal_id: 'principal_id',
          policy_documents: PolicyDocuments.default(visited),
          refresh_after_in_seconds: 1,
          disconnect_after_in_seconds: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['isAuthenticated'] = stub[:is_authenticated] unless stub[:is_authenticated].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['policyDocuments'] = PolicyDocuments.stub(stub[:policy_documents]) unless stub[:policy_documents].nil?
        data['refreshAfterInSeconds'] = stub[:refresh_after_in_seconds] unless stub[:refresh_after_in_seconds].nil?
        data['disconnectAfterInSeconds'] = stub[:disconnect_after_in_seconds] unless stub[:disconnect_after_in_seconds].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PolicyDocuments
    class PolicyDocuments
      def self.default(visited=[])
        return nil if visited.include?('PolicyDocuments')
        visited = visited + ['PolicyDocuments']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for TransferCertificate
    class TransferCertificate
      def self.default(visited=[])
        {
          transferred_certificate_arn: 'transferred_certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['transferredCertificateArn'] = stub[:transferred_certificate_arn] unless stub[:transferred_certificate_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAccountAuditConfiguration
    class UpdateAccountAuditConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAuditSuppression
    class UpdateAuditSuppression
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAuthorizer
    class UpdateAuthorizer
      def self.default(visited=[])
        {
          authorizer_name: 'authorizer_name',
          authorizer_arn: 'authorizer_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerName'] = stub[:authorizer_name] unless stub[:authorizer_name].nil?
        data['authorizerArn'] = stub[:authorizer_arn] unless stub[:authorizer_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBillingGroup
    class UpdateBillingGroup
      def self.default(visited=[])
        {
          version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateCACertificate
    class UpdateCACertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCertificate
    class UpdateCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomMetric
    class UpdateCustomMetric
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_arn: 'metric_arn',
          metric_type: 'metric_type',
          display_name: 'display_name',
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricArn'] = stub[:metric_arn] unless stub[:metric_arn].nil?
        data['metricType'] = stub[:metric_type] unless stub[:metric_type].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDimension
    class UpdateDimension
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          type: 'type',
          string_values: DimensionStringValues.default(visited),
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['stringValues'] = DimensionStringValues.stub(stub[:string_values]) unless stub[:string_values].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDomainConfiguration
    class UpdateDomainConfiguration
      def self.default(visited=[])
        {
          domain_configuration_name: 'domain_configuration_name',
          domain_configuration_arn: 'domain_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainConfigurationName'] = stub[:domain_configuration_name] unless stub[:domain_configuration_name].nil?
        data['domainConfigurationArn'] = stub[:domain_configuration_arn] unless stub[:domain_configuration_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDynamicThingGroup
    class UpdateDynamicThingGroup
      def self.default(visited=[])
        {
          version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEventConfigurations
    class UpdateEventConfigurations
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFleetMetric
    class UpdateFleetMetric
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIndexingConfiguration
    class UpdateIndexingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateJob
    class UpdateJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMitigationAction
    class UpdateMitigationAction
      def self.default(visited=[])
        {
          action_arn: 'action_arn',
          action_id: 'action_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['actionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        data['actionId'] = stub[:action_id] unless stub[:action_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProvisioningTemplate
    class UpdateProvisioningTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoleAlias
    class UpdateRoleAlias
      def self.default(visited=[])
        {
          role_alias: 'role_alias',
          role_alias_arn: 'role_alias_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleAlias'] = stub[:role_alias] unless stub[:role_alias].nil?
        data['roleAliasArn'] = stub[:role_alias_arn] unless stub[:role_alias_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateScheduledAudit
    class UpdateScheduledAudit
      def self.default(visited=[])
        {
          scheduled_audit_arn: 'scheduled_audit_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['scheduledAuditArn'] = stub[:scheduled_audit_arn] unless stub[:scheduled_audit_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSecurityProfile
    class UpdateSecurityProfile
      def self.default(visited=[])
        {
          security_profile_name: 'security_profile_name',
          security_profile_arn: 'security_profile_arn',
          security_profile_description: 'security_profile_description',
          behaviors: Behaviors.default(visited),
          alert_targets: AlertTargets.default(visited),
          additional_metrics_to_retain: AdditionalMetricsToRetainList.default(visited),
          additional_metrics_to_retain_v2: AdditionalMetricsToRetainV2List.default(visited),
          version: 1,
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['securityProfileArn'] = stub[:security_profile_arn] unless stub[:security_profile_arn].nil?
        data['securityProfileDescription'] = stub[:security_profile_description] unless stub[:security_profile_description].nil?
        data['behaviors'] = Behaviors.stub(stub[:behaviors]) unless stub[:behaviors].nil?
        data['alertTargets'] = AlertTargets.stub(stub[:alert_targets]) unless stub[:alert_targets].nil?
        data['additionalMetricsToRetain'] = AdditionalMetricsToRetainList.stub(stub[:additional_metrics_to_retain]) unless stub[:additional_metrics_to_retain].nil?
        data['additionalMetricsToRetainV2'] = AdditionalMetricsToRetainV2List.stub(stub[:additional_metrics_to_retain_v2]) unless stub[:additional_metrics_to_retain_v2].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStream
    class UpdateStream
      def self.default(visited=[])
        {
          stream_id: 'stream_id',
          stream_arn: 'stream_arn',
          description: 'description',
          stream_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['streamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['streamVersion'] = stub[:stream_version] unless stub[:stream_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateThing
    class UpdateThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateThingGroup
    class UpdateThingGroup
      def self.default(visited=[])
        {
          version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateThingGroupsForThing
    class UpdateThingGroupsForThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTopicRuleDestination
    class UpdateTopicRuleDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidateSecurityProfileBehaviors
    class ValidateSecurityProfileBehaviors
      def self.default(visited=[])
        {
          valid: false,
          validation_errors: ValidationErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['valid'] = stub[:valid] unless stub[:valid].nil?
        data['validationErrors'] = ValidationErrors.stub(stub[:validation_errors]) unless stub[:validation_errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ValidationErrors
    class ValidationErrors
      def self.default(visited=[])
        return nil if visited.include?('ValidationErrors')
        visited = visited + ['ValidationErrors']
        [
          ValidationError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ValidationError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationError
    class ValidationError
      def self.default(visited=[])
        return nil if visited.include?('ValidationError')
        visited = visited + ['ValidationError']
        {
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationError.new
        data = {}
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end
  end
end
