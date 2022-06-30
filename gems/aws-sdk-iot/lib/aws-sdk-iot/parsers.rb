# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoT
  module Parsers

    # Operation Parser for AcceptCertificateTransfer
    class AcceptCertificateTransfer
      def self.parse(http_resp)
        data = Types::AcceptCertificateTransferOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TransferAlreadyCompletedException
    class TransferAlreadyCompletedException
      def self.parse(http_resp)
        data = Types::TransferAlreadyCompletedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AddThingToBillingGroup
    class AddThingToBillingGroup
      def self.parse(http_resp)
        data = Types::AddThingToBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AddThingToThingGroup
    class AddThingToThingGroup
      def self.parse(http_resp)
        data = Types::AddThingToThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateTargetsWithJob
    class AssociateTargetsWithJob
      def self.parse(http_resp)
        data = Types::AssociateTargetsWithJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.description = map['description']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AttachPolicy
    class AttachPolicy
      def self.parse(http_resp)
        data = Types::AttachPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AttachPrincipalPolicy
    class AttachPrincipalPolicy
      def self.parse(http_resp)
        data = Types::AttachPrincipalPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AttachSecurityProfile
    class AttachSecurityProfile
      def self.parse(http_resp)
        data = Types::AttachSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for VersionConflictException
    class VersionConflictException
      def self.parse(http_resp)
        data = Types::VersionConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AttachThingPrincipal
    class AttachThingPrincipal
      def self.parse(http_resp)
        data = Types::AttachThingPrincipalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelAuditMitigationActionsTask
    class CancelAuditMitigationActionsTask
      def self.parse(http_resp)
        data = Types::CancelAuditMitigationActionsTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelAuditTask
    class CancelAuditTask
      def self.parse(http_resp)
        data = Types::CancelAuditTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelCertificateTransfer
    class CancelCertificateTransfer
      def self.parse(http_resp)
        data = Types::CancelCertificateTransferOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelDetectMitigationActionsTask
    class CancelDetectMitigationActionsTask
      def self.parse(http_resp)
        data = Types::CancelDetectMitigationActionsTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for CancelJobExecution
    class CancelJobExecution
      def self.parse(http_resp)
        data = Types::CancelJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidStateTransitionException
    class InvalidStateTransitionException
      def self.parse(http_resp)
        data = Types::InvalidStateTransitionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ClearDefaultAuthorizer
    class ClearDefaultAuthorizer
      def self.parse(http_resp)
        data = Types::ClearDefaultAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ConfirmTopicRuleDestination
    class ConfirmTopicRuleDestination
      def self.parse(http_resp)
        data = Types::ConfirmTopicRuleDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConflictingResourceUpdateException
    class ConflictingResourceUpdateException
      def self.parse(http_resp)
        data = Types::ConflictingResourceUpdateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateAuditSuppression
    class CreateAuditSuppression
      def self.parse(http_resp)
        data = Types::CreateAuditSuppressionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for CreateAuthorizer
    class CreateAuthorizer
      def self.parse(http_resp)
        data = Types::CreateAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_name = map['authorizerName']
        data.authorizer_arn = map['authorizerArn']
        data
      end
    end

    # Operation Parser for CreateBillingGroup
    class CreateBillingGroup
      def self.parse(http_resp)
        data = Types::CreateBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_group_name = map['billingGroupName']
        data.billing_group_arn = map['billingGroupArn']
        data.billing_group_id = map['billingGroupId']
        data
      end
    end

    # Operation Parser for CreateCertificateFromCsr
    class CreateCertificateFromCsr
      def self.parse(http_resp)
        data = Types::CreateCertificateFromCsrOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.certificate_pem = map['certificatePem']
        data
      end
    end

    # Operation Parser for CreateCustomMetric
    class CreateCustomMetric
      def self.parse(http_resp)
        data = Types::CreateCustomMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_name = map['metricName']
        data.metric_arn = map['metricArn']
        data
      end
    end

    # Operation Parser for CreateDimension
    class CreateDimension
      def self.parse(http_resp)
        data = Types::CreateDimensionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for CreateDomainConfiguration
    class CreateDomainConfiguration
      def self.parse(http_resp)
        data = Types::CreateDomainConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_configuration_name = map['domainConfigurationName']
        data.domain_configuration_arn = map['domainConfigurationArn']
        data
      end
    end

    # Error Parser for CertificateValidationException
    class CertificateValidationException
      def self.parse(http_resp)
        data = Types::CertificateValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateDynamicThingGroup
    class CreateDynamicThingGroup
      def self.parse(http_resp)
        data = Types::CreateDynamicThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_group_name = map['thingGroupName']
        data.thing_group_arn = map['thingGroupArn']
        data.thing_group_id = map['thingGroupId']
        data.index_name = map['indexName']
        data.query_string = map['queryString']
        data.query_version = map['queryVersion']
        data
      end
    end

    # Error Parser for InvalidQueryException
    class InvalidQueryException
      def self.parse(http_resp)
        data = Types::InvalidQueryException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateFleetMetric
    class CreateFleetMetric
      def self.parse(http_resp)
        data = Types::CreateFleetMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_name = map['metricName']
        data.metric_arn = map['metricArn']
        data
      end
    end

    # Error Parser for IndexNotReadyException
    class IndexNotReadyException
      def self.parse(http_resp)
        data = Types::IndexNotReadyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidAggregationException
    class InvalidAggregationException
      def self.parse(http_resp)
        data = Types::InvalidAggregationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for CreateJobTemplate
    class CreateJobTemplate
      def self.parse(http_resp)
        data = Types::CreateJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_template_arn = map['jobTemplateArn']
        data.job_template_id = map['jobTemplateId']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateKeysAndCertificate
    class CreateKeysAndCertificate
      def self.parse(http_resp)
        data = Types::CreateKeysAndCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.certificate_pem = map['certificatePem']
        data.key_pair = (Parsers::KeyPair.parse(map['keyPair']) unless map['keyPair'].nil?)
        data
      end
    end

    class KeyPair
      def self.parse(map)
        data = Types::KeyPair.new
        data.public_key = map['PublicKey']
        data.private_key = map['PrivateKey']
        return data
      end
    end

    # Operation Parser for CreateMitigationAction
    class CreateMitigationAction
      def self.parse(http_resp)
        data = Types::CreateMitigationActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_arn = map['actionArn']
        data.action_id = map['actionId']
        data
      end
    end

    # Operation Parser for CreateOTAUpdate
    class CreateOTAUpdate
      def self.parse(http_resp)
        data = Types::CreateOTAUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ota_update_id = map['otaUpdateId']
        data.aws_iot_job_id = map['awsIotJobId']
        data.ota_update_arn = map['otaUpdateArn']
        data.aws_iot_job_arn = map['awsIotJobArn']
        data.ota_update_status = map['otaUpdateStatus']
        data
      end
    end

    # Operation Parser for CreatePolicy
    class CreatePolicy
      def self.parse(http_resp)
        data = Types::CreatePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_name = map['policyName']
        data.policy_arn = map['policyArn']
        data.policy_document = map['policyDocument']
        data.policy_version_id = map['policyVersionId']
        data
      end
    end

    # Error Parser for MalformedPolicyException
    class MalformedPolicyException
      def self.parse(http_resp)
        data = Types::MalformedPolicyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreatePolicyVersion
    class CreatePolicyVersion
      def self.parse(http_resp)
        data = Types::CreatePolicyVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_arn = map['policyArn']
        data.policy_document = map['policyDocument']
        data.policy_version_id = map['policyVersionId']
        data.is_default_version = map['isDefaultVersion']
        data
      end
    end

    # Error Parser for VersionsLimitExceededException
    class VersionsLimitExceededException
      def self.parse(http_resp)
        data = Types::VersionsLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateProvisioningClaim
    class CreateProvisioningClaim
      def self.parse(http_resp)
        data = Types::CreateProvisioningClaimOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_id = map['certificateId']
        data.certificate_pem = map['certificatePem']
        data.key_pair = (Parsers::KeyPair.parse(map['keyPair']) unless map['keyPair'].nil?)
        data.expiration = Time.at(map['expiration'].to_i) if map['expiration']
        data
      end
    end

    # Operation Parser for CreateProvisioningTemplate
    class CreateProvisioningTemplate
      def self.parse(http_resp)
        data = Types::CreateProvisioningTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_arn = map['templateArn']
        data.template_name = map['templateName']
        data.default_version_id = map['defaultVersionId']
        data
      end
    end

    # Operation Parser for CreateProvisioningTemplateVersion
    class CreateProvisioningTemplateVersion
      def self.parse(http_resp)
        data = Types::CreateProvisioningTemplateVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_arn = map['templateArn']
        data.template_name = map['templateName']
        data.version_id = map['versionId']
        data.is_default_version = map['isDefaultVersion']
        data
      end
    end

    # Operation Parser for CreateRoleAlias
    class CreateRoleAlias
      def self.parse(http_resp)
        data = Types::CreateRoleAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_alias = map['roleAlias']
        data.role_alias_arn = map['roleAliasArn']
        data
      end
    end

    # Operation Parser for CreateScheduledAudit
    class CreateScheduledAudit
      def self.parse(http_resp)
        data = Types::CreateScheduledAuditOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.scheduled_audit_arn = map['scheduledAuditArn']
        data
      end
    end

    # Operation Parser for CreateSecurityProfile
    class CreateSecurityProfile
      def self.parse(http_resp)
        data = Types::CreateSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_name = map['securityProfileName']
        data.security_profile_arn = map['securityProfileArn']
        data
      end
    end

    # Operation Parser for CreateStream
    class CreateStream
      def self.parse(http_resp)
        data = Types::CreateStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_id = map['streamId']
        data.stream_arn = map['streamArn']
        data.description = map['description']
        data.stream_version = map['streamVersion']
        data
      end
    end

    # Operation Parser for CreateThing
    class CreateThing
      def self.parse(http_resp)
        data = Types::CreateThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_name = map['thingName']
        data.thing_arn = map['thingArn']
        data.thing_id = map['thingId']
        data
      end
    end

    # Operation Parser for CreateThingGroup
    class CreateThingGroup
      def self.parse(http_resp)
        data = Types::CreateThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_group_name = map['thingGroupName']
        data.thing_group_arn = map['thingGroupArn']
        data.thing_group_id = map['thingGroupId']
        data
      end
    end

    # Operation Parser for CreateThingType
    class CreateThingType
      def self.parse(http_resp)
        data = Types::CreateThingTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_type_name = map['thingTypeName']
        data.thing_type_arn = map['thingTypeArn']
        data.thing_type_id = map['thingTypeId']
        data
      end
    end

    # Operation Parser for CreateTopicRule
    class CreateTopicRule
      def self.parse(http_resp)
        data = Types::CreateTopicRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for SqlParseException
    class SqlParseException
      def self.parse(http_resp)
        data = Types::SqlParseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateTopicRuleDestination
    class CreateTopicRuleDestination
      def self.parse(http_resp)
        data = Types::CreateTopicRuleDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.topic_rule_destination = (Parsers::TopicRuleDestination.parse(map['topicRuleDestination']) unless map['topicRuleDestination'].nil?)
        data
      end
    end

    class TopicRuleDestination
      def self.parse(map)
        data = Types::TopicRuleDestination.new
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.status_reason = map['statusReason']
        data.http_url_properties = (Parsers::HttpUrlDestinationProperties.parse(map['httpUrlProperties']) unless map['httpUrlProperties'].nil?)
        data.vpc_properties = (Parsers::VpcDestinationProperties.parse(map['vpcProperties']) unless map['vpcProperties'].nil?)
        return data
      end
    end

    class VpcDestinationProperties
      def self.parse(map)
        data = Types::VpcDestinationProperties.new
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_groups = (Parsers::SecurityGroupList.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.vpc_id = map['vpcId']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class SecurityGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class HttpUrlDestinationProperties
      def self.parse(map)
        data = Types::HttpUrlDestinationProperties.new
        data.confirmation_url = map['confirmationUrl']
        return data
      end
    end

    # Operation Parser for DeleteAccountAuditConfiguration
    class DeleteAccountAuditConfiguration
      def self.parse(http_resp)
        data = Types::DeleteAccountAuditConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAuditSuppression
    class DeleteAuditSuppression
      def self.parse(http_resp)
        data = Types::DeleteAuditSuppressionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAuthorizer
    class DeleteAuthorizer
      def self.parse(http_resp)
        data = Types::DeleteAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for DeleteConflictException
    class DeleteConflictException
      def self.parse(http_resp)
        data = Types::DeleteConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteBillingGroup
    class DeleteBillingGroup
      def self.parse(http_resp)
        data = Types::DeleteBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCACertificate
    class DeleteCACertificate
      def self.parse(http_resp)
        data = Types::DeleteCACertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for CertificateStateException
    class CertificateStateException
      def self.parse(http_resp)
        data = Types::CertificateStateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteCertificate
    class DeleteCertificate
      def self.parse(http_resp)
        data = Types::DeleteCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCustomMetric
    class DeleteCustomMetric
      def self.parse(http_resp)
        data = Types::DeleteCustomMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDimension
    class DeleteDimension
      def self.parse(http_resp)
        data = Types::DeleteDimensionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDomainConfiguration
    class DeleteDomainConfiguration
      def self.parse(http_resp)
        data = Types::DeleteDomainConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDynamicThingGroup
    class DeleteDynamicThingGroup
      def self.parse(http_resp)
        data = Types::DeleteDynamicThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFleetMetric
    class DeleteFleetMetric
      def self.parse(http_resp)
        data = Types::DeleteFleetMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteJob
    class DeleteJob
      def self.parse(http_resp)
        data = Types::DeleteJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteJobExecution
    class DeleteJobExecution
      def self.parse(http_resp)
        data = Types::DeleteJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteJobTemplate
    class DeleteJobTemplate
      def self.parse(http_resp)
        data = Types::DeleteJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMitigationAction
    class DeleteMitigationAction
      def self.parse(http_resp)
        data = Types::DeleteMitigationActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteOTAUpdate
    class DeleteOTAUpdate
      def self.parse(http_resp)
        data = Types::DeleteOTAUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePolicyVersion
    class DeletePolicyVersion
      def self.parse(http_resp)
        data = Types::DeletePolicyVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteProvisioningTemplate
    class DeleteProvisioningTemplate
      def self.parse(http_resp)
        data = Types::DeleteProvisioningTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteProvisioningTemplateVersion
    class DeleteProvisioningTemplateVersion
      def self.parse(http_resp)
        data = Types::DeleteProvisioningTemplateVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRegistrationCode
    class DeleteRegistrationCode
      def self.parse(http_resp)
        data = Types::DeleteRegistrationCodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRoleAlias
    class DeleteRoleAlias
      def self.parse(http_resp)
        data = Types::DeleteRoleAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteScheduledAudit
    class DeleteScheduledAudit
      def self.parse(http_resp)
        data = Types::DeleteScheduledAuditOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSecurityProfile
    class DeleteSecurityProfile
      def self.parse(http_resp)
        data = Types::DeleteSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteStream
    class DeleteStream
      def self.parse(http_resp)
        data = Types::DeleteStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteThing
    class DeleteThing
      def self.parse(http_resp)
        data = Types::DeleteThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteThingGroup
    class DeleteThingGroup
      def self.parse(http_resp)
        data = Types::DeleteThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteThingType
    class DeleteThingType
      def self.parse(http_resp)
        data = Types::DeleteThingTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTopicRule
    class DeleteTopicRule
      def self.parse(http_resp)
        data = Types::DeleteTopicRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTopicRuleDestination
    class DeleteTopicRuleDestination
      def self.parse(http_resp)
        data = Types::DeleteTopicRuleDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteV2LoggingLevel
    class DeleteV2LoggingLevel
      def self.parse(http_resp)
        data = Types::DeleteV2LoggingLevelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeprecateThingType
    class DeprecateThingType
      def self.parse(http_resp)
        data = Types::DeprecateThingTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAccountAuditConfiguration
    class DescribeAccountAuditConfiguration
      def self.parse(http_resp)
        data = Types::DescribeAccountAuditConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_arn = map['roleArn']
        data.audit_notification_target_configurations = (Parsers::AuditNotificationTargetConfigurations.parse(map['auditNotificationTargetConfigurations']) unless map['auditNotificationTargetConfigurations'].nil?)
        data.audit_check_configurations = (Parsers::AuditCheckConfigurations.parse(map['auditCheckConfigurations']) unless map['auditCheckConfigurations'].nil?)
        data
      end
    end

    class AuditCheckConfigurations
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AuditCheckConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditCheckConfiguration
      def self.parse(map)
        data = Types::AuditCheckConfiguration.new
        data.enabled = map['enabled']
        return data
      end
    end

    class AuditNotificationTargetConfigurations
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AuditNotificationTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditNotificationTarget
      def self.parse(map)
        data = Types::AuditNotificationTarget.new
        data.target_arn = map['targetArn']
        data.role_arn = map['roleArn']
        data.enabled = map['enabled']
        return data
      end
    end

    # Operation Parser for DescribeAuditFinding
    class DescribeAuditFinding
      def self.parse(http_resp)
        data = Types::DescribeAuditFindingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding = (Parsers::AuditFinding.parse(map['finding']) unless map['finding'].nil?)
        data
      end
    end

    class AuditFinding
      def self.parse(map)
        data = Types::AuditFinding.new
        data.finding_id = map['findingId']
        data.task_id = map['taskId']
        data.check_name = map['checkName']
        data.task_start_time = Time.at(map['taskStartTime'].to_i) if map['taskStartTime']
        data.finding_time = Time.at(map['findingTime'].to_i) if map['findingTime']
        data.severity = map['severity']
        data.non_compliant_resource = (Parsers::NonCompliantResource.parse(map['nonCompliantResource']) unless map['nonCompliantResource'].nil?)
        data.related_resources = (Parsers::RelatedResources.parse(map['relatedResources']) unless map['relatedResources'].nil?)
        data.reason_for_non_compliance = map['reasonForNonCompliance']
        data.reason_for_non_compliance_code = map['reasonForNonComplianceCode']
        data.is_suppressed = map['isSuppressed']
        return data
      end
    end

    class RelatedResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RelatedResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class RelatedResource
      def self.parse(map)
        data = Types::RelatedResource.new
        data.resource_type = map['resourceType']
        data.resource_identifier = (Parsers::ResourceIdentifier.parse(map['resourceIdentifier']) unless map['resourceIdentifier'].nil?)
        data.additional_info = (Parsers::StringMap.parse(map['additionalInfo']) unless map['additionalInfo'].nil?)
        return data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResourceIdentifier
      def self.parse(map)
        data = Types::ResourceIdentifier.new
        data.device_certificate_id = map['deviceCertificateId']
        data.ca_certificate_id = map['caCertificateId']
        data.cognito_identity_pool_id = map['cognitoIdentityPoolId']
        data.client_id = map['clientId']
        data.policy_version_identifier = (Parsers::PolicyVersionIdentifier.parse(map['policyVersionIdentifier']) unless map['policyVersionIdentifier'].nil?)
        data.account = map['account']
        data.iam_role_arn = map['iamRoleArn']
        data.role_alias_arn = map['roleAliasArn']
        return data
      end
    end

    class PolicyVersionIdentifier
      def self.parse(map)
        data = Types::PolicyVersionIdentifier.new
        data.policy_name = map['policyName']
        data.policy_version_id = map['policyVersionId']
        return data
      end
    end

    class NonCompliantResource
      def self.parse(map)
        data = Types::NonCompliantResource.new
        data.resource_type = map['resourceType']
        data.resource_identifier = (Parsers::ResourceIdentifier.parse(map['resourceIdentifier']) unless map['resourceIdentifier'].nil?)
        data.additional_info = (Parsers::StringMap.parse(map['additionalInfo']) unless map['additionalInfo'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeAuditMitigationActionsTask
    class DescribeAuditMitigationActionsTask
      def self.parse(http_resp)
        data = Types::DescribeAuditMitigationActionsTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_status = map['taskStatus']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.task_statistics = (Parsers::AuditMitigationActionsTaskStatistics.parse(map['taskStatistics']) unless map['taskStatistics'].nil?)
        data.target = (Parsers::AuditMitigationActionsTaskTarget.parse(map['target']) unless map['target'].nil?)
        data.audit_check_to_actions_mapping = (Parsers::AuditCheckToActionsMapping.parse(map['auditCheckToActionsMapping']) unless map['auditCheckToActionsMapping'].nil?)
        data.actions_definition = (Parsers::MitigationActionList.parse(map['actionsDefinition']) unless map['actionsDefinition'].nil?)
        data
      end
    end

    class MitigationActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MitigationAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class MitigationAction
      def self.parse(map)
        data = Types::MitigationAction.new
        data.name = map['name']
        data.id = map['id']
        data.role_arn = map['roleArn']
        data.action_params = (Parsers::MitigationActionParams.parse(map['actionParams']) unless map['actionParams'].nil?)
        return data
      end
    end

    class MitigationActionParams
      def self.parse(map)
        data = Types::MitigationActionParams.new
        data.update_device_certificate_params = (Parsers::UpdateDeviceCertificateParams.parse(map['updateDeviceCertificateParams']) unless map['updateDeviceCertificateParams'].nil?)
        data.update_ca_certificate_params = (Parsers::UpdateCACertificateParams.parse(map['updateCACertificateParams']) unless map['updateCACertificateParams'].nil?)
        data.add_things_to_thing_group_params = (Parsers::AddThingsToThingGroupParams.parse(map['addThingsToThingGroupParams']) unless map['addThingsToThingGroupParams'].nil?)
        data.replace_default_policy_version_params = (Parsers::ReplaceDefaultPolicyVersionParams.parse(map['replaceDefaultPolicyVersionParams']) unless map['replaceDefaultPolicyVersionParams'].nil?)
        data.enable_io_t_logging_params = (Parsers::EnableIoTLoggingParams.parse(map['enableIoTLoggingParams']) unless map['enableIoTLoggingParams'].nil?)
        data.publish_finding_to_sns_params = (Parsers::PublishFindingToSnsParams.parse(map['publishFindingToSnsParams']) unless map['publishFindingToSnsParams'].nil?)
        return data
      end
    end

    class PublishFindingToSnsParams
      def self.parse(map)
        data = Types::PublishFindingToSnsParams.new
        data.topic_arn = map['topicArn']
        return data
      end
    end

    class EnableIoTLoggingParams
      def self.parse(map)
        data = Types::EnableIoTLoggingParams.new
        data.role_arn_for_logging = map['roleArnForLogging']
        data.log_level = map['logLevel']
        return data
      end
    end

    class ReplaceDefaultPolicyVersionParams
      def self.parse(map)
        data = Types::ReplaceDefaultPolicyVersionParams.new
        data.template_name = map['templateName']
        return data
      end
    end

    class AddThingsToThingGroupParams
      def self.parse(map)
        data = Types::AddThingsToThingGroupParams.new
        data.thing_group_names = (Parsers::ThingGroupNames.parse(map['thingGroupNames']) unless map['thingGroupNames'].nil?)
        data.override_dynamic_groups = map['overrideDynamicGroups']
        return data
      end
    end

    class ThingGroupNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class UpdateCACertificateParams
      def self.parse(map)
        data = Types::UpdateCACertificateParams.new
        data.action = map['action']
        return data
      end
    end

    class UpdateDeviceCertificateParams
      def self.parse(map)
        data = Types::UpdateDeviceCertificateParams.new
        data.action = map['action']
        return data
      end
    end

    class AuditCheckToActionsMapping
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::MitigationActionNameList.parse(value) unless value.nil?
        end
        data
      end
    end

    class MitigationActionNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AuditMitigationActionsTaskTarget
      def self.parse(map)
        data = Types::AuditMitigationActionsTaskTarget.new
        data.audit_task_id = map['auditTaskId']
        data.finding_ids = (Parsers::FindingIds.parse(map['findingIds']) unless map['findingIds'].nil?)
        data.audit_check_to_reason_code_filter = (Parsers::AuditCheckToReasonCodeFilter.parse(map['auditCheckToReasonCodeFilter']) unless map['auditCheckToReasonCodeFilter'].nil?)
        return data
      end
    end

    class AuditCheckToReasonCodeFilter
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ReasonForNonComplianceCodes.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReasonForNonComplianceCodes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FindingIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AuditMitigationActionsTaskStatistics
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::TaskStatisticsForAuditCheck.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaskStatisticsForAuditCheck
      def self.parse(map)
        data = Types::TaskStatisticsForAuditCheck.new
        data.total_findings_count = map['totalFindingsCount']
        data.failed_findings_count = map['failedFindingsCount']
        data.succeeded_findings_count = map['succeededFindingsCount']
        data.skipped_findings_count = map['skippedFindingsCount']
        data.canceled_findings_count = map['canceledFindingsCount']
        return data
      end
    end

    # Operation Parser for DescribeAuditSuppression
    class DescribeAuditSuppression
      def self.parse(http_resp)
        data = Types::DescribeAuditSuppressionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.check_name = map['checkName']
        data.resource_identifier = (Parsers::ResourceIdentifier.parse(map['resourceIdentifier']) unless map['resourceIdentifier'].nil?)
        data.expiration_date = Time.at(map['expirationDate'].to_i) if map['expirationDate']
        data.suppress_indefinitely = map['suppressIndefinitely']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for DescribeAuditTask
    class DescribeAuditTask
      def self.parse(http_resp)
        data = Types::DescribeAuditTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_status = map['taskStatus']
        data.task_type = map['taskType']
        data.task_start_time = Time.at(map['taskStartTime'].to_i) if map['taskStartTime']
        data.task_statistics = (Parsers::TaskStatistics.parse(map['taskStatistics']) unless map['taskStatistics'].nil?)
        data.scheduled_audit_name = map['scheduledAuditName']
        data.audit_details = (Parsers::AuditDetails.parse(map['auditDetails']) unless map['auditDetails'].nil?)
        data
      end
    end

    class AuditDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AuditCheckDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditCheckDetails
      def self.parse(map)
        data = Types::AuditCheckDetails.new
        data.check_run_status = map['checkRunStatus']
        data.check_compliant = map['checkCompliant']
        data.total_resources_count = map['totalResourcesCount']
        data.non_compliant_resources_count = map['nonCompliantResourcesCount']
        data.suppressed_non_compliant_resources_count = map['suppressedNonCompliantResourcesCount']
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class TaskStatistics
      def self.parse(map)
        data = Types::TaskStatistics.new
        data.total_checks = map['totalChecks']
        data.in_progress_checks = map['inProgressChecks']
        data.waiting_for_data_collection_checks = map['waitingForDataCollectionChecks']
        data.compliant_checks = map['compliantChecks']
        data.non_compliant_checks = map['nonCompliantChecks']
        data.failed_checks = map['failedChecks']
        data.canceled_checks = map['canceledChecks']
        return data
      end
    end

    # Operation Parser for DescribeAuthorizer
    class DescribeAuthorizer
      def self.parse(http_resp)
        data = Types::DescribeAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_description = (Parsers::AuthorizerDescription.parse(map['authorizerDescription']) unless map['authorizerDescription'].nil?)
        data
      end
    end

    class AuthorizerDescription
      def self.parse(map)
        data = Types::AuthorizerDescription.new
        data.authorizer_name = map['authorizerName']
        data.authorizer_arn = map['authorizerArn']
        data.authorizer_function_arn = map['authorizerFunctionArn']
        data.token_key_name = map['tokenKeyName']
        data.token_signing_public_keys = (Parsers::PublicKeyMap.parse(map['tokenSigningPublicKeys']) unless map['tokenSigningPublicKeys'].nil?)
        data.status = map['status']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.signing_disabled = map['signingDisabled']
        data.enable_caching_for_http = map['enableCachingForHttp']
        return data
      end
    end

    class PublicKeyMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeBillingGroup
    class DescribeBillingGroup
      def self.parse(http_resp)
        data = Types::DescribeBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_group_name = map['billingGroupName']
        data.billing_group_id = map['billingGroupId']
        data.billing_group_arn = map['billingGroupArn']
        data.version = map['version']
        data.billing_group_properties = (Parsers::BillingGroupProperties.parse(map['billingGroupProperties']) unless map['billingGroupProperties'].nil?)
        data.billing_group_metadata = (Parsers::BillingGroupMetadata.parse(map['billingGroupMetadata']) unless map['billingGroupMetadata'].nil?)
        data
      end
    end

    class BillingGroupMetadata
      def self.parse(map)
        data = Types::BillingGroupMetadata.new
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    class BillingGroupProperties
      def self.parse(map)
        data = Types::BillingGroupProperties.new
        data.billing_group_description = map['billingGroupDescription']
        return data
      end
    end

    # Operation Parser for DescribeCACertificate
    class DescribeCACertificate
      def self.parse(http_resp)
        data = Types::DescribeCACertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_description = (Parsers::CACertificateDescription.parse(map['certificateDescription']) unless map['certificateDescription'].nil?)
        data.registration_config = (Parsers::RegistrationConfig.parse(map['registrationConfig']) unless map['registrationConfig'].nil?)
        data
      end
    end

    class RegistrationConfig
      def self.parse(map)
        data = Types::RegistrationConfig.new
        data.template_body = map['templateBody']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class CACertificateDescription
      def self.parse(map)
        data = Types::CACertificateDescription.new
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.status = map['status']
        data.certificate_pem = map['certificatePem']
        data.owned_by = map['ownedBy']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.auto_registration_status = map['autoRegistrationStatus']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.customer_version = map['customerVersion']
        data.generation_id = map['generationId']
        data.validity = (Parsers::CertificateValidity.parse(map['validity']) unless map['validity'].nil?)
        return data
      end
    end

    class CertificateValidity
      def self.parse(map)
        data = Types::CertificateValidity.new
        data.not_before = Time.at(map['notBefore'].to_i) if map['notBefore']
        data.not_after = Time.at(map['notAfter'].to_i) if map['notAfter']
        return data
      end
    end

    # Operation Parser for DescribeCertificate
    class DescribeCertificate
      def self.parse(http_resp)
        data = Types::DescribeCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_description = (Parsers::CertificateDescription.parse(map['certificateDescription']) unless map['certificateDescription'].nil?)
        data
      end
    end

    class CertificateDescription
      def self.parse(map)
        data = Types::CertificateDescription.new
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.ca_certificate_id = map['caCertificateId']
        data.status = map['status']
        data.certificate_pem = map['certificatePem']
        data.owned_by = map['ownedBy']
        data.previous_owned_by = map['previousOwnedBy']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.customer_version = map['customerVersion']
        data.transfer_data = (Parsers::TransferData.parse(map['transferData']) unless map['transferData'].nil?)
        data.generation_id = map['generationId']
        data.validity = (Parsers::CertificateValidity.parse(map['validity']) unless map['validity'].nil?)
        data.certificate_mode = map['certificateMode']
        return data
      end
    end

    class TransferData
      def self.parse(map)
        data = Types::TransferData.new
        data.transfer_message = map['transferMessage']
        data.reject_reason = map['rejectReason']
        data.transfer_date = Time.at(map['transferDate'].to_i) if map['transferDate']
        data.accept_date = Time.at(map['acceptDate'].to_i) if map['acceptDate']
        data.reject_date = Time.at(map['rejectDate'].to_i) if map['rejectDate']
        return data
      end
    end

    # Operation Parser for DescribeCustomMetric
    class DescribeCustomMetric
      def self.parse(http_resp)
        data = Types::DescribeCustomMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_name = map['metricName']
        data.metric_arn = map['metricArn']
        data.metric_type = map['metricType']
        data.display_name = map['displayName']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    # Operation Parser for DescribeDefaultAuthorizer
    class DescribeDefaultAuthorizer
      def self.parse(http_resp)
        data = Types::DescribeDefaultAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_description = (Parsers::AuthorizerDescription.parse(map['authorizerDescription']) unless map['authorizerDescription'].nil?)
        data
      end
    end

    # Operation Parser for DescribeDetectMitigationActionsTask
    class DescribeDetectMitigationActionsTask
      def self.parse(http_resp)
        data = Types::DescribeDetectMitigationActionsTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_summary = (Parsers::DetectMitigationActionsTaskSummary.parse(map['taskSummary']) unless map['taskSummary'].nil?)
        data
      end
    end

    class DetectMitigationActionsTaskSummary
      def self.parse(map)
        data = Types::DetectMitigationActionsTaskSummary.new
        data.task_id = map['taskId']
        data.task_status = map['taskStatus']
        data.task_start_time = Time.at(map['taskStartTime'].to_i) if map['taskStartTime']
        data.task_end_time = Time.at(map['taskEndTime'].to_i) if map['taskEndTime']
        data.target = (Parsers::DetectMitigationActionsTaskTarget.parse(map['target']) unless map['target'].nil?)
        data.violation_event_occurrence_range = (Parsers::ViolationEventOccurrenceRange.parse(map['violationEventOccurrenceRange']) unless map['violationEventOccurrenceRange'].nil?)
        data.only_active_violations_included = map['onlyActiveViolationsIncluded']
        data.suppressed_alerts_included = map['suppressedAlertsIncluded']
        data.actions_definition = (Parsers::MitigationActionList.parse(map['actionsDefinition']) unless map['actionsDefinition'].nil?)
        data.task_statistics = (Parsers::DetectMitigationActionsTaskStatistics.parse(map['taskStatistics']) unless map['taskStatistics'].nil?)
        return data
      end
    end

    class DetectMitigationActionsTaskStatistics
      def self.parse(map)
        data = Types::DetectMitigationActionsTaskStatistics.new
        data.actions_executed = map['actionsExecuted']
        data.actions_skipped = map['actionsSkipped']
        data.actions_failed = map['actionsFailed']
        return data
      end
    end

    class ViolationEventOccurrenceRange
      def self.parse(map)
        data = Types::ViolationEventOccurrenceRange.new
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        return data
      end
    end

    class DetectMitigationActionsTaskTarget
      def self.parse(map)
        data = Types::DetectMitigationActionsTaskTarget.new
        data.violation_ids = (Parsers::TargetViolationIdsForDetectMitigationActions.parse(map['violationIds']) unless map['violationIds'].nil?)
        data.security_profile_name = map['securityProfileName']
        data.behavior_name = map['behaviorName']
        return data
      end
    end

    class TargetViolationIdsForDetectMitigationActions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDimension
    class DescribeDimension
      def self.parse(http_resp)
        data = Types::DescribeDimensionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data.type = map['type']
        data.string_values = (Parsers::DimensionStringValues.parse(map['stringValues']) unless map['stringValues'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    class DimensionStringValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDomainConfiguration
    class DescribeDomainConfiguration
      def self.parse(http_resp)
        data = Types::DescribeDomainConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_configuration_name = map['domainConfigurationName']
        data.domain_configuration_arn = map['domainConfigurationArn']
        data.domain_name = map['domainName']
        data.server_certificates = (Parsers::ServerCertificates.parse(map['serverCertificates']) unless map['serverCertificates'].nil?)
        data.authorizer_config = (Parsers::AuthorizerConfig.parse(map['authorizerConfig']) unless map['authorizerConfig'].nil?)
        data.domain_configuration_status = map['domainConfigurationStatus']
        data.service_type = map['serviceType']
        data.domain_type = map['domainType']
        data.last_status_change_date = Time.at(map['lastStatusChangeDate'].to_i) if map['lastStatusChangeDate']
        data
      end
    end

    class AuthorizerConfig
      def self.parse(map)
        data = Types::AuthorizerConfig.new
        data.default_authorizer_name = map['defaultAuthorizerName']
        data.allow_authorizer_override = map['allowAuthorizerOverride']
        return data
      end
    end

    class ServerCertificates
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServerCertificateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServerCertificateSummary
      def self.parse(map)
        data = Types::ServerCertificateSummary.new
        data.server_certificate_arn = map['serverCertificateArn']
        data.server_certificate_status = map['serverCertificateStatus']
        data.server_certificate_status_detail = map['serverCertificateStatusDetail']
        return data
      end
    end

    # Operation Parser for DescribeEndpoint
    class DescribeEndpoint
      def self.parse(http_resp)
        data = Types::DescribeEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoint_address = map['endpointAddress']
        data
      end
    end

    # Operation Parser for DescribeEventConfigurations
    class DescribeEventConfigurations
      def self.parse(http_resp)
        data = Types::DescribeEventConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_configurations = (Parsers::EventConfigurations.parse(map['eventConfigurations']) unless map['eventConfigurations'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    class EventConfigurations
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Configuration
      def self.parse(map)
        data = Types::Configuration.new
        data.enabled = map['Enabled']
        return data
      end
    end

    # Operation Parser for DescribeFleetMetric
    class DescribeFleetMetric
      def self.parse(http_resp)
        data = Types::DescribeFleetMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_name = map['metricName']
        data.query_string = map['queryString']
        data.aggregation_type = (Parsers::AggregationType.parse(map['aggregationType']) unless map['aggregationType'].nil?)
        data.period = map['period']
        data.aggregation_field = map['aggregationField']
        data.description = map['description']
        data.query_version = map['queryVersion']
        data.index_name = map['indexName']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.unit = map['unit']
        data.version = map['version']
        data.metric_arn = map['metricArn']
        data
      end
    end

    class AggregationType
      def self.parse(map)
        data = Types::AggregationType.new
        data.name = map['name']
        data.values = (Parsers::AggregationTypeValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class AggregationTypeValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeIndex
    class DescribeIndex
      def self.parse(http_resp)
        data = Types::DescribeIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_name = map['indexName']
        data.index_status = map['indexStatus']
        data.schema = map['schema']
        data
      end
    end

    # Operation Parser for DescribeJob
    class DescribeJob
      def self.parse(http_resp)
        data = Types::DescribeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.document_source = map['documentSource']
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.target_selection = map['targetSelection']
        data.status = map['status']
        data.force_canceled = map['forceCanceled']
        data.reason_code = map['reasonCode']
        data.comment = map['comment']
        data.targets = (Parsers::JobTargets.parse(map['targets']) unless map['targets'].nil?)
        data.description = map['description']
        data.presigned_url_config = (Parsers::PresignedUrlConfig.parse(map['presignedUrlConfig']) unless map['presignedUrlConfig'].nil?)
        data.job_executions_rollout_config = (Parsers::JobExecutionsRolloutConfig.parse(map['jobExecutionsRolloutConfig']) unless map['jobExecutionsRolloutConfig'].nil?)
        data.abort_config = (Parsers::AbortConfig.parse(map['abortConfig']) unless map['abortConfig'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.completed_at = Time.at(map['completedAt'].to_i) if map['completedAt']
        data.job_process_details = (Parsers::JobProcessDetails.parse(map['jobProcessDetails']) unless map['jobProcessDetails'].nil?)
        data.timeout_config = (Parsers::TimeoutConfig.parse(map['timeoutConfig']) unless map['timeoutConfig'].nil?)
        data.namespace_id = map['namespaceId']
        data.job_template_arn = map['jobTemplateArn']
        data.job_executions_retry_config = (Parsers::JobExecutionsRetryConfig.parse(map['jobExecutionsRetryConfig']) unless map['jobExecutionsRetryConfig'].nil?)
        data.document_parameters = (Parsers::ParameterMap.parse(map['documentParameters']) unless map['documentParameters'].nil?)
        data.is_concurrent = map['isConcurrent']
        return data
      end
    end

    class ParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class JobExecutionsRetryConfig
      def self.parse(map)
        data = Types::JobExecutionsRetryConfig.new
        data.criteria_list = (Parsers::RetryCriteriaList.parse(map['criteriaList']) unless map['criteriaList'].nil?)
        return data
      end
    end

    class RetryCriteriaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RetryCriteria.parse(value) unless value.nil?
        end
        data
      end
    end

    class RetryCriteria
      def self.parse(map)
        data = Types::RetryCriteria.new
        data.failure_type = map['failureType']
        data.number_of_retries = map['numberOfRetries']
        return data
      end
    end

    class TimeoutConfig
      def self.parse(map)
        data = Types::TimeoutConfig.new
        data.in_progress_timeout_in_minutes = map['inProgressTimeoutInMinutes']
        return data
      end
    end

    class JobProcessDetails
      def self.parse(map)
        data = Types::JobProcessDetails.new
        data.processing_targets = (Parsers::ProcessingTargetNameList.parse(map['processingTargets']) unless map['processingTargets'].nil?)
        data.number_of_canceled_things = map['numberOfCanceledThings']
        data.number_of_succeeded_things = map['numberOfSucceededThings']
        data.number_of_failed_things = map['numberOfFailedThings']
        data.number_of_rejected_things = map['numberOfRejectedThings']
        data.number_of_queued_things = map['numberOfQueuedThings']
        data.number_of_in_progress_things = map['numberOfInProgressThings']
        data.number_of_removed_things = map['numberOfRemovedThings']
        data.number_of_timed_out_things = map['numberOfTimedOutThings']
        return data
      end
    end

    class ProcessingTargetNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AbortConfig
      def self.parse(map)
        data = Types::AbortConfig.new
        data.criteria_list = (Parsers::AbortCriteriaList.parse(map['criteriaList']) unless map['criteriaList'].nil?)
        return data
      end
    end

    class AbortCriteriaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AbortCriteria.parse(value) unless value.nil?
        end
        data
      end
    end

    class AbortCriteria
      def self.parse(map)
        data = Types::AbortCriteria.new
        data.failure_type = map['failureType']
        data.action = map['action']
        data.threshold_percentage = Hearth::NumberHelper.deserialize(map['thresholdPercentage'])
        data.min_number_of_executed_things = map['minNumberOfExecutedThings']
        return data
      end
    end

    class JobExecutionsRolloutConfig
      def self.parse(map)
        data = Types::JobExecutionsRolloutConfig.new
        data.maximum_per_minute = map['maximumPerMinute']
        data.exponential_rate = (Parsers::ExponentialRolloutRate.parse(map['exponentialRate']) unless map['exponentialRate'].nil?)
        return data
      end
    end

    class ExponentialRolloutRate
      def self.parse(map)
        data = Types::ExponentialRolloutRate.new
        data.base_rate_per_minute = map['baseRatePerMinute']
        data.increment_factor = Hearth::NumberHelper.deserialize(map['incrementFactor'])
        data.rate_increase_criteria = (Parsers::RateIncreaseCriteria.parse(map['rateIncreaseCriteria']) unless map['rateIncreaseCriteria'].nil?)
        return data
      end
    end

    class RateIncreaseCriteria
      def self.parse(map)
        data = Types::RateIncreaseCriteria.new
        data.number_of_notified_things = map['numberOfNotifiedThings']
        data.number_of_succeeded_things = map['numberOfSucceededThings']
        return data
      end
    end

    class PresignedUrlConfig
      def self.parse(map)
        data = Types::PresignedUrlConfig.new
        data.role_arn = map['roleArn']
        data.expires_in_sec = map['expiresInSec']
        return data
      end
    end

    class JobTargets
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeJobExecution
    class DescribeJobExecution
      def self.parse(http_resp)
        data = Types::DescribeJobExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution = (Parsers::JobExecution.parse(map['execution']) unless map['execution'].nil?)
        data
      end
    end

    class JobExecution
      def self.parse(map)
        data = Types::JobExecution.new
        data.job_id = map['jobId']
        data.status = map['status']
        data.force_canceled = map['forceCanceled']
        data.status_details = (Parsers::JobExecutionStatusDetails.parse(map['statusDetails']) unless map['statusDetails'].nil?)
        data.thing_arn = map['thingArn']
        data.queued_at = Time.at(map['queuedAt'].to_i) if map['queuedAt']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.execution_number = map['executionNumber']
        data.version_number = map['versionNumber']
        data.approximate_seconds_before_timed_out = map['approximateSecondsBeforeTimedOut']
        return data
      end
    end

    class JobExecutionStatusDetails
      def self.parse(map)
        data = Types::JobExecutionStatusDetails.new
        data.details_map = (Parsers::DetailsMap.parse(map['detailsMap']) unless map['detailsMap'].nil?)
        return data
      end
    end

    class DetailsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeJobTemplate
    class DescribeJobTemplate
      def self.parse(http_resp)
        data = Types::DescribeJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_template_arn = map['jobTemplateArn']
        data.job_template_id = map['jobTemplateId']
        data.description = map['description']
        data.document_source = map['documentSource']
        data.document = map['document']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.presigned_url_config = (Parsers::PresignedUrlConfig.parse(map['presignedUrlConfig']) unless map['presignedUrlConfig'].nil?)
        data.job_executions_rollout_config = (Parsers::JobExecutionsRolloutConfig.parse(map['jobExecutionsRolloutConfig']) unless map['jobExecutionsRolloutConfig'].nil?)
        data.abort_config = (Parsers::AbortConfig.parse(map['abortConfig']) unless map['abortConfig'].nil?)
        data.timeout_config = (Parsers::TimeoutConfig.parse(map['timeoutConfig']) unless map['timeoutConfig'].nil?)
        data.job_executions_retry_config = (Parsers::JobExecutionsRetryConfig.parse(map['jobExecutionsRetryConfig']) unless map['jobExecutionsRetryConfig'].nil?)
        data
      end
    end

    # Operation Parser for DescribeManagedJobTemplate
    class DescribeManagedJobTemplate
      def self.parse(http_resp)
        data = Types::DescribeManagedJobTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_name = map['templateName']
        data.template_arn = map['templateArn']
        data.description = map['description']
        data.template_version = map['templateVersion']
        data.environments = (Parsers::Environments.parse(map['environments']) unless map['environments'].nil?)
        data.document_parameters = (Parsers::DocumentParameters.parse(map['documentParameters']) unless map['documentParameters'].nil?)
        data.document = map['document']
        data
      end
    end

    class DocumentParameters
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DocumentParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class DocumentParameter
      def self.parse(map)
        data = Types::DocumentParameter.new
        data.key = map['key']
        data.description = map['description']
        data.regex = map['regex']
        data.example = map['example']
        data.optional = map['optional']
        return data
      end
    end

    class Environments
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeMitigationAction
    class DescribeMitigationAction
      def self.parse(http_resp)
        data = Types::DescribeMitigationActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_name = map['actionName']
        data.action_type = map['actionType']
        data.action_arn = map['actionArn']
        data.action_id = map['actionId']
        data.role_arn = map['roleArn']
        data.action_params = (Parsers::MitigationActionParams.parse(map['actionParams']) unless map['actionParams'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    # Operation Parser for DescribeProvisioningTemplate
    class DescribeProvisioningTemplate
      def self.parse(http_resp)
        data = Types::DescribeProvisioningTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_arn = map['templateArn']
        data.template_name = map['templateName']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.default_version_id = map['defaultVersionId']
        data.template_body = map['templateBody']
        data.enabled = map['enabled']
        data.provisioning_role_arn = map['provisioningRoleArn']
        data.pre_provisioning_hook = (Parsers::ProvisioningHook.parse(map['preProvisioningHook']) unless map['preProvisioningHook'].nil?)
        data
      end
    end

    class ProvisioningHook
      def self.parse(map)
        data = Types::ProvisioningHook.new
        data.payload_version = map['payloadVersion']
        data.target_arn = map['targetArn']
        return data
      end
    end

    # Operation Parser for DescribeProvisioningTemplateVersion
    class DescribeProvisioningTemplateVersion
      def self.parse(http_resp)
        data = Types::DescribeProvisioningTemplateVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version_id = map['versionId']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.template_body = map['templateBody']
        data.is_default_version = map['isDefaultVersion']
        data
      end
    end

    # Operation Parser for DescribeRoleAlias
    class DescribeRoleAlias
      def self.parse(http_resp)
        data = Types::DescribeRoleAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_alias_description = (Parsers::RoleAliasDescription.parse(map['roleAliasDescription']) unless map['roleAliasDescription'].nil?)
        data
      end
    end

    class RoleAliasDescription
      def self.parse(map)
        data = Types::RoleAliasDescription.new
        data.role_alias = map['roleAlias']
        data.role_alias_arn = map['roleAliasArn']
        data.role_arn = map['roleArn']
        data.owner = map['owner']
        data.credential_duration_seconds = map['credentialDurationSeconds']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        return data
      end
    end

    # Operation Parser for DescribeScheduledAudit
    class DescribeScheduledAudit
      def self.parse(http_resp)
        data = Types::DescribeScheduledAuditOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.frequency = map['frequency']
        data.day_of_month = map['dayOfMonth']
        data.day_of_week = map['dayOfWeek']
        data.target_check_names = (Parsers::TargetAuditCheckNames.parse(map['targetCheckNames']) unless map['targetCheckNames'].nil?)
        data.scheduled_audit_name = map['scheduledAuditName']
        data.scheduled_audit_arn = map['scheduledAuditArn']
        data
      end
    end

    class TargetAuditCheckNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeSecurityProfile
    class DescribeSecurityProfile
      def self.parse(http_resp)
        data = Types::DescribeSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_name = map['securityProfileName']
        data.security_profile_arn = map['securityProfileArn']
        data.security_profile_description = map['securityProfileDescription']
        data.behaviors = (Parsers::Behaviors.parse(map['behaviors']) unless map['behaviors'].nil?)
        data.alert_targets = (Parsers::AlertTargets.parse(map['alertTargets']) unless map['alertTargets'].nil?)
        data.additional_metrics_to_retain = (Parsers::AdditionalMetricsToRetainList.parse(map['additionalMetricsToRetain']) unless map['additionalMetricsToRetain'].nil?)
        data.additional_metrics_to_retain_v2 = (Parsers::AdditionalMetricsToRetainV2List.parse(map['additionalMetricsToRetainV2']) unless map['additionalMetricsToRetainV2'].nil?)
        data.version = map['version']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    class AdditionalMetricsToRetainV2List
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MetricToRetain.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricToRetain
      def self.parse(map)
        data = Types::MetricToRetain.new
        data.metric = map['metric']
        data.metric_dimension = (Parsers::MetricDimension.parse(map['metricDimension']) unless map['metricDimension'].nil?)
        return data
      end
    end

    class MetricDimension
      def self.parse(map)
        data = Types::MetricDimension.new
        data.dimension_name = map['dimensionName']
        data.operator = map['operator']
        return data
      end
    end

    class AdditionalMetricsToRetainList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AlertTargets
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AlertTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlertTarget
      def self.parse(map)
        data = Types::AlertTarget.new
        data.alert_target_arn = map['alertTargetArn']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class Behaviors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Behavior.parse(value) unless value.nil?
        end
        data
      end
    end

    class Behavior
      def self.parse(map)
        data = Types::Behavior.new
        data.name = map['name']
        data.metric = map['metric']
        data.metric_dimension = (Parsers::MetricDimension.parse(map['metricDimension']) unless map['metricDimension'].nil?)
        data.criteria = (Parsers::BehaviorCriteria.parse(map['criteria']) unless map['criteria'].nil?)
        data.suppress_alerts = map['suppressAlerts']
        return data
      end
    end

    class BehaviorCriteria
      def self.parse(map)
        data = Types::BehaviorCriteria.new
        data.comparison_operator = map['comparisonOperator']
        data.value = (Parsers::MetricValue.parse(map['value']) unless map['value'].nil?)
        data.duration_seconds = map['durationSeconds']
        data.consecutive_datapoints_to_alarm = map['consecutiveDatapointsToAlarm']
        data.consecutive_datapoints_to_clear = map['consecutiveDatapointsToClear']
        data.statistical_threshold = (Parsers::StatisticalThreshold.parse(map['statisticalThreshold']) unless map['statisticalThreshold'].nil?)
        data.ml_detection_config = (Parsers::MachineLearningDetectionConfig.parse(map['mlDetectionConfig']) unless map['mlDetectionConfig'].nil?)
        return data
      end
    end

    class MachineLearningDetectionConfig
      def self.parse(map)
        data = Types::MachineLearningDetectionConfig.new
        data.confidence_level = map['confidenceLevel']
        return data
      end
    end

    class StatisticalThreshold
      def self.parse(map)
        data = Types::StatisticalThreshold.new
        data.statistic = map['statistic']
        return data
      end
    end

    class MetricValue
      def self.parse(map)
        data = Types::MetricValue.new
        data.count = map['count']
        data.cidrs = (Parsers::Cidrs.parse(map['cidrs']) unless map['cidrs'].nil?)
        data.ports = (Parsers::Ports.parse(map['ports']) unless map['ports'].nil?)
        data.number = Hearth::NumberHelper.deserialize(map['number'])
        data.numbers = (Parsers::NumberList.parse(map['numbers']) unless map['numbers'].nil?)
        data.strings = (Parsers::StringList.parse(map['strings']) unless map['strings'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class NumberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class Ports
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Cidrs
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeStream
    class DescribeStream
      def self.parse(http_resp)
        data = Types::DescribeStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_info = (Parsers::StreamInfo.parse(map['streamInfo']) unless map['streamInfo'].nil?)
        data
      end
    end

    class StreamInfo
      def self.parse(map)
        data = Types::StreamInfo.new
        data.stream_id = map['streamId']
        data.stream_arn = map['streamArn']
        data.stream_version = map['streamVersion']
        data.description = map['description']
        data.files = (Parsers::StreamFiles.parse(map['files']) unless map['files'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class StreamFiles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamFile.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamFile
      def self.parse(map)
        data = Types::StreamFile.new
        data.file_id = map['fileId']
        data.s3_location = (Parsers::S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.key = map['key']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for DescribeThing
    class DescribeThing
      def self.parse(http_resp)
        data = Types::DescribeThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.default_client_id = map['defaultClientId']
        data.thing_name = map['thingName']
        data.thing_id = map['thingId']
        data.thing_arn = map['thingArn']
        data.thing_type_name = map['thingTypeName']
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.version = map['version']
        data.billing_group_name = map['billingGroupName']
        data
      end
    end

    class Attributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeThingGroup
    class DescribeThingGroup
      def self.parse(http_resp)
        data = Types::DescribeThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_group_name = map['thingGroupName']
        data.thing_group_id = map['thingGroupId']
        data.thing_group_arn = map['thingGroupArn']
        data.version = map['version']
        data.thing_group_properties = (Parsers::ThingGroupProperties.parse(map['thingGroupProperties']) unless map['thingGroupProperties'].nil?)
        data.thing_group_metadata = (Parsers::ThingGroupMetadata.parse(map['thingGroupMetadata']) unless map['thingGroupMetadata'].nil?)
        data.index_name = map['indexName']
        data.query_string = map['queryString']
        data.query_version = map['queryVersion']
        data.status = map['status']
        data
      end
    end

    class ThingGroupMetadata
      def self.parse(map)
        data = Types::ThingGroupMetadata.new
        data.parent_group_name = map['parentGroupName']
        data.root_to_parent_thing_groups = (Parsers::ThingGroupNameAndArnList.parse(map['rootToParentThingGroups']) unless map['rootToParentThingGroups'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    class ThingGroupNameAndArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupNameAndArn.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupNameAndArn
      def self.parse(map)
        data = Types::GroupNameAndArn.new
        data.group_name = map['groupName']
        data.group_arn = map['groupArn']
        return data
      end
    end

    class ThingGroupProperties
      def self.parse(map)
        data = Types::ThingGroupProperties.new
        data.thing_group_description = map['thingGroupDescription']
        data.attribute_payload = (Parsers::AttributePayload.parse(map['attributePayload']) unless map['attributePayload'].nil?)
        return data
      end
    end

    class AttributePayload
      def self.parse(map)
        data = Types::AttributePayload.new
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.merge = map['merge']
        return data
      end
    end

    # Operation Parser for DescribeThingRegistrationTask
    class DescribeThingRegistrationTask
      def self.parse(http_resp)
        data = Types::DescribeThingRegistrationTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.template_body = map['templateBody']
        data.input_file_bucket = map['inputFileBucket']
        data.input_file_key = map['inputFileKey']
        data.role_arn = map['roleArn']
        data.status = map['status']
        data.message = map['message'] || map['Message']
        data.success_count = map['successCount']
        data.failure_count = map['failureCount']
        data.percentage_progress = map['percentageProgress']
        data
      end
    end

    # Operation Parser for DescribeThingType
    class DescribeThingType
      def self.parse(http_resp)
        data = Types::DescribeThingTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_type_name = map['thingTypeName']
        data.thing_type_id = map['thingTypeId']
        data.thing_type_arn = map['thingTypeArn']
        data.thing_type_properties = (Parsers::ThingTypeProperties.parse(map['thingTypeProperties']) unless map['thingTypeProperties'].nil?)
        data.thing_type_metadata = (Parsers::ThingTypeMetadata.parse(map['thingTypeMetadata']) unless map['thingTypeMetadata'].nil?)
        data
      end
    end

    class ThingTypeMetadata
      def self.parse(map)
        data = Types::ThingTypeMetadata.new
        data.deprecated = map['deprecated']
        data.deprecation_date = Time.at(map['deprecationDate'].to_i) if map['deprecationDate']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    class ThingTypeProperties
      def self.parse(map)
        data = Types::ThingTypeProperties.new
        data.thing_type_description = map['thingTypeDescription']
        data.searchable_attributes = (Parsers::SearchableAttributes.parse(map['searchableAttributes']) unless map['searchableAttributes'].nil?)
        return data
      end
    end

    class SearchableAttributes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DetachPolicy
    class DetachPolicy
      def self.parse(http_resp)
        data = Types::DetachPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DetachPrincipalPolicy
    class DetachPrincipalPolicy
      def self.parse(http_resp)
        data = Types::DetachPrincipalPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DetachSecurityProfile
    class DetachSecurityProfile
      def self.parse(http_resp)
        data = Types::DetachSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DetachThingPrincipal
    class DetachThingPrincipal
      def self.parse(http_resp)
        data = Types::DetachThingPrincipalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisableTopicRule
    class DisableTopicRule
      def self.parse(http_resp)
        data = Types::DisableTopicRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EnableTopicRule
    class EnableTopicRule
      def self.parse(http_resp)
        data = Types::EnableTopicRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetBehaviorModelTrainingSummaries
    class GetBehaviorModelTrainingSummaries
      def self.parse(http_resp)
        data = Types::GetBehaviorModelTrainingSummariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.summaries = (Parsers::BehaviorModelTrainingSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BehaviorModelTrainingSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BehaviorModelTrainingSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BehaviorModelTrainingSummary
      def self.parse(map)
        data = Types::BehaviorModelTrainingSummary.new
        data.security_profile_name = map['securityProfileName']
        data.behavior_name = map['behaviorName']
        data.training_data_collection_start_date = Time.at(map['trainingDataCollectionStartDate'].to_i) if map['trainingDataCollectionStartDate']
        data.model_status = map['modelStatus']
        data.datapoints_collection_percentage = Hearth::NumberHelper.deserialize(map['datapointsCollectionPercentage'])
        data.last_model_refresh_date = Time.at(map['lastModelRefreshDate'].to_i) if map['lastModelRefreshDate']
        return data
      end
    end

    # Operation Parser for GetBucketsAggregation
    class GetBucketsAggregation
      def self.parse(http_resp)
        data = Types::GetBucketsAggregationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.total_count = map['totalCount']
        data.buckets = (Parsers::Buckets.parse(map['buckets']) unless map['buckets'].nil?)
        data
      end
    end

    class Buckets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Bucket.parse(value) unless value.nil?
        end
        data
      end
    end

    class Bucket
      def self.parse(map)
        data = Types::Bucket.new
        data.key_value = map['keyValue']
        data.count = map['count']
        return data
      end
    end

    # Operation Parser for GetCardinality
    class GetCardinality
      def self.parse(http_resp)
        data = Types::GetCardinalityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cardinality = map['cardinality']
        data
      end
    end

    # Operation Parser for GetEffectivePolicies
    class GetEffectivePolicies
      def self.parse(http_resp)
        data = Types::GetEffectivePoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.effective_policies = (Parsers::EffectivePolicies.parse(map['effectivePolicies']) unless map['effectivePolicies'].nil?)
        data
      end
    end

    class EffectivePolicies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EffectivePolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class EffectivePolicy
      def self.parse(map)
        data = Types::EffectivePolicy.new
        data.policy_name = map['policyName']
        data.policy_arn = map['policyArn']
        data.policy_document = map['policyDocument']
        return data
      end
    end

    # Operation Parser for GetIndexingConfiguration
    class GetIndexingConfiguration
      def self.parse(http_resp)
        data = Types::GetIndexingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_indexing_configuration = (Parsers::ThingIndexingConfiguration.parse(map['thingIndexingConfiguration']) unless map['thingIndexingConfiguration'].nil?)
        data.thing_group_indexing_configuration = (Parsers::ThingGroupIndexingConfiguration.parse(map['thingGroupIndexingConfiguration']) unless map['thingGroupIndexingConfiguration'].nil?)
        data
      end
    end

    class ThingGroupIndexingConfiguration
      def self.parse(map)
        data = Types::ThingGroupIndexingConfiguration.new
        data.thing_group_indexing_mode = map['thingGroupIndexingMode']
        data.managed_fields = (Parsers::Fields.parse(map['managedFields']) unless map['managedFields'].nil?)
        data.custom_fields = (Parsers::Fields.parse(map['customFields']) unless map['customFields'].nil?)
        return data
      end
    end

    class Fields
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Field.parse(value) unless value.nil?
        end
        data
      end
    end

    class Field
      def self.parse(map)
        data = Types::Field.new
        data.name = map['name']
        data.type = map['type']
        return data
      end
    end

    class ThingIndexingConfiguration
      def self.parse(map)
        data = Types::ThingIndexingConfiguration.new
        data.thing_indexing_mode = map['thingIndexingMode']
        data.thing_connectivity_indexing_mode = map['thingConnectivityIndexingMode']
        data.device_defender_indexing_mode = map['deviceDefenderIndexingMode']
        data.named_shadow_indexing_mode = map['namedShadowIndexingMode']
        data.managed_fields = (Parsers::Fields.parse(map['managedFields']) unless map['managedFields'].nil?)
        data.custom_fields = (Parsers::Fields.parse(map['customFields']) unless map['customFields'].nil?)
        return data
      end
    end

    # Operation Parser for GetJobDocument
    class GetJobDocument
      def self.parse(http_resp)
        data = Types::GetJobDocumentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.document = map['document']
        data
      end
    end

    # Operation Parser for GetLoggingOptions
    class GetLoggingOptions
      def self.parse(http_resp)
        data = Types::GetLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_arn = map['roleArn']
        data.log_level = map['logLevel']
        data
      end
    end

    # Operation Parser for GetOTAUpdate
    class GetOTAUpdate
      def self.parse(http_resp)
        data = Types::GetOTAUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ota_update_info = (Parsers::OTAUpdateInfo.parse(map['otaUpdateInfo']) unless map['otaUpdateInfo'].nil?)
        data
      end
    end

    class OTAUpdateInfo
      def self.parse(map)
        data = Types::OTAUpdateInfo.new
        data.ota_update_id = map['otaUpdateId']
        data.ota_update_arn = map['otaUpdateArn']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.description = map['description']
        data.targets = (Parsers::Targets.parse(map['targets']) unless map['targets'].nil?)
        data.protocols = (Parsers::Protocols.parse(map['protocols']) unless map['protocols'].nil?)
        data.aws_job_executions_rollout_config = (Parsers::AwsJobExecutionsRolloutConfig.parse(map['awsJobExecutionsRolloutConfig']) unless map['awsJobExecutionsRolloutConfig'].nil?)
        data.aws_job_presigned_url_config = (Parsers::AwsJobPresignedUrlConfig.parse(map['awsJobPresignedUrlConfig']) unless map['awsJobPresignedUrlConfig'].nil?)
        data.target_selection = map['targetSelection']
        data.ota_update_files = (Parsers::OTAUpdateFiles.parse(map['otaUpdateFiles']) unless map['otaUpdateFiles'].nil?)
        data.ota_update_status = map['otaUpdateStatus']
        data.aws_iot_job_id = map['awsIotJobId']
        data.aws_iot_job_arn = map['awsIotJobArn']
        data.error_info = (Parsers::ErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.additional_parameters = (Parsers::AdditionalParameterMap.parse(map['additionalParameters']) unless map['additionalParameters'].nil?)
        return data
      end
    end

    class AdditionalParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ErrorInfo
      def self.parse(map)
        data = Types::ErrorInfo.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class OTAUpdateFiles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OTAUpdateFile.parse(value) unless value.nil?
        end
        data
      end
    end

    class OTAUpdateFile
      def self.parse(map)
        data = Types::OTAUpdateFile.new
        data.file_name = map['fileName']
        data.file_type = map['fileType']
        data.file_version = map['fileVersion']
        data.file_location = (Parsers::FileLocation.parse(map['fileLocation']) unless map['fileLocation'].nil?)
        data.code_signing = (Parsers::CodeSigning.parse(map['codeSigning']) unless map['codeSigning'].nil?)
        data.attributes = (Parsers::AttributesMap.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class AttributesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class CodeSigning
      def self.parse(map)
        data = Types::CodeSigning.new
        data.aws_signer_job_id = map['awsSignerJobId']
        data.start_signing_job_parameter = (Parsers::StartSigningJobParameter.parse(map['startSigningJobParameter']) unless map['startSigningJobParameter'].nil?)
        data.custom_code_signing = (Parsers::CustomCodeSigning.parse(map['customCodeSigning']) unless map['customCodeSigning'].nil?)
        return data
      end
    end

    class CustomCodeSigning
      def self.parse(map)
        data = Types::CustomCodeSigning.new
        data.signature = (Parsers::CodeSigningSignature.parse(map['signature']) unless map['signature'].nil?)
        data.certificate_chain = (Parsers::CodeSigningCertificateChain.parse(map['certificateChain']) unless map['certificateChain'].nil?)
        data.hash_algorithm = map['hashAlgorithm']
        data.signature_algorithm = map['signatureAlgorithm']
        return data
      end
    end

    class CodeSigningCertificateChain
      def self.parse(map)
        data = Types::CodeSigningCertificateChain.new
        data.certificate_name = map['certificateName']
        data.inline_document = map['inlineDocument']
        return data
      end
    end

    class CodeSigningSignature
      def self.parse(map)
        data = Types::CodeSigningSignature.new
        data.inline_document = Base64::decode64(map['inlineDocument']) unless map['inlineDocument'].nil?
        return data
      end
    end

    class StartSigningJobParameter
      def self.parse(map)
        data = Types::StartSigningJobParameter.new
        data.signing_profile_parameter = (Parsers::SigningProfileParameter.parse(map['signingProfileParameter']) unless map['signingProfileParameter'].nil?)
        data.signing_profile_name = map['signingProfileName']
        data.destination = (Parsers::Destination.parse(map['destination']) unless map['destination'].nil?)
        return data
      end
    end

    class Destination
      def self.parse(map)
        data = Types::Destination.new
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        return data
      end
    end

    class S3Destination
      def self.parse(map)
        data = Types::S3Destination.new
        data.bucket = map['bucket']
        data.prefix = map['prefix']
        return data
      end
    end

    class SigningProfileParameter
      def self.parse(map)
        data = Types::SigningProfileParameter.new
        data.certificate_arn = map['certificateArn']
        data.platform = map['platform']
        data.certificate_path_on_device = map['certificatePathOnDevice']
        return data
      end
    end

    class FileLocation
      def self.parse(map)
        data = Types::FileLocation.new
        data.stream = (Parsers::Stream.parse(map['stream']) unless map['stream'].nil?)
        data.s3_location = (Parsers::S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    class Stream
      def self.parse(map)
        data = Types::Stream.new
        data.stream_id = map['streamId']
        data.file_id = map['fileId']
        return data
      end
    end

    class AwsJobPresignedUrlConfig
      def self.parse(map)
        data = Types::AwsJobPresignedUrlConfig.new
        data.expires_in_sec = map['expiresInSec']
        return data
      end
    end

    class AwsJobExecutionsRolloutConfig
      def self.parse(map)
        data = Types::AwsJobExecutionsRolloutConfig.new
        data.maximum_per_minute = map['maximumPerMinute']
        data.exponential_rate = (Parsers::AwsJobExponentialRolloutRate.parse(map['exponentialRate']) unless map['exponentialRate'].nil?)
        return data
      end
    end

    class AwsJobExponentialRolloutRate
      def self.parse(map)
        data = Types::AwsJobExponentialRolloutRate.new
        data.base_rate_per_minute = map['baseRatePerMinute']
        data.increment_factor = Hearth::NumberHelper.deserialize(map['incrementFactor'])
        data.rate_increase_criteria = (Parsers::AwsJobRateIncreaseCriteria.parse(map['rateIncreaseCriteria']) unless map['rateIncreaseCriteria'].nil?)
        return data
      end
    end

    class AwsJobRateIncreaseCriteria
      def self.parse(map)
        data = Types::AwsJobRateIncreaseCriteria.new
        data.number_of_notified_things = map['numberOfNotifiedThings']
        data.number_of_succeeded_things = map['numberOfSucceededThings']
        return data
      end
    end

    class Protocols
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Targets
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetPercentiles
    class GetPercentiles
      def self.parse(http_resp)
        data = Types::GetPercentilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.percentiles = (Parsers::Percentiles.parse(map['percentiles']) unless map['percentiles'].nil?)
        data
      end
    end

    class Percentiles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PercentPair.parse(value) unless value.nil?
        end
        data
      end
    end

    class PercentPair
      def self.parse(map)
        data = Types::PercentPair.new
        data.percent = Hearth::NumberHelper.deserialize(map['percent'])
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        return data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_name = map['policyName']
        data.policy_arn = map['policyArn']
        data.policy_document = map['policyDocument']
        data.default_version_id = map['defaultVersionId']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.generation_id = map['generationId']
        data
      end
    end

    # Operation Parser for GetPolicyVersion
    class GetPolicyVersion
      def self.parse(http_resp)
        data = Types::GetPolicyVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_arn = map['policyArn']
        data.policy_name = map['policyName']
        data.policy_document = map['policyDocument']
        data.policy_version_id = map['policyVersionId']
        data.is_default_version = map['isDefaultVersion']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.generation_id = map['generationId']
        data
      end
    end

    # Operation Parser for GetRegistrationCode
    class GetRegistrationCode
      def self.parse(http_resp)
        data = Types::GetRegistrationCodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.registration_code = map['registrationCode']
        data
      end
    end

    # Operation Parser for GetStatistics
    class GetStatistics
      def self.parse(http_resp)
        data = Types::GetStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.statistics = (Parsers::Statistics.parse(map['statistics']) unless map['statistics'].nil?)
        data
      end
    end

    class Statistics
      def self.parse(map)
        data = Types::Statistics.new
        data.count = map['count']
        data.average = Hearth::NumberHelper.deserialize(map['average'])
        data.sum = Hearth::NumberHelper.deserialize(map['sum'])
        data.minimum = Hearth::NumberHelper.deserialize(map['minimum'])
        data.maximum = Hearth::NumberHelper.deserialize(map['maximum'])
        data.sum_of_squares = Hearth::NumberHelper.deserialize(map['sumOfSquares'])
        data.variance = Hearth::NumberHelper.deserialize(map['variance'])
        data.std_deviation = Hearth::NumberHelper.deserialize(map['stdDeviation'])
        return data
      end
    end

    # Operation Parser for GetTopicRule
    class GetTopicRule
      def self.parse(http_resp)
        data = Types::GetTopicRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rule_arn = map['ruleArn']
        data.rule = (Parsers::TopicRule.parse(map['rule']) unless map['rule'].nil?)
        data
      end
    end

    class TopicRule
      def self.parse(map)
        data = Types::TopicRule.new
        data.rule_name = map['ruleName']
        data.sql = map['sql']
        data.description = map['description']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.actions = (Parsers::ActionList.parse(map['actions']) unless map['actions'].nil?)
        data.rule_disabled = map['ruleDisabled']
        data.aws_iot_sql_version = map['awsIotSqlVersion']
        data.error_action = (Parsers::Action.parse(map['errorAction']) unless map['errorAction'].nil?)
        return data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.dynamo_db = (Parsers::DynamoDBAction.parse(map['dynamoDB']) unless map['dynamoDB'].nil?)
        data.dynamo_d_bv2 = (Parsers::DynamoDBv2Action.parse(map['dynamoDBv2']) unless map['dynamoDBv2'].nil?)
        data.lambda = (Parsers::LambdaAction.parse(map['lambda']) unless map['lambda'].nil?)
        data.sns = (Parsers::SnsAction.parse(map['sns']) unless map['sns'].nil?)
        data.sqs = (Parsers::SqsAction.parse(map['sqs']) unless map['sqs'].nil?)
        data.kinesis = (Parsers::KinesisAction.parse(map['kinesis']) unless map['kinesis'].nil?)
        data.republish = (Parsers::RepublishAction.parse(map['republish']) unless map['republish'].nil?)
        data.s3 = (Parsers::S3Action.parse(map['s3']) unless map['s3'].nil?)
        data.firehose = (Parsers::FirehoseAction.parse(map['firehose']) unless map['firehose'].nil?)
        data.cloudwatch_metric = (Parsers::CloudwatchMetricAction.parse(map['cloudwatchMetric']) unless map['cloudwatchMetric'].nil?)
        data.cloudwatch_alarm = (Parsers::CloudwatchAlarmAction.parse(map['cloudwatchAlarm']) unless map['cloudwatchAlarm'].nil?)
        data.cloudwatch_logs = (Parsers::CloudwatchLogsAction.parse(map['cloudwatchLogs']) unless map['cloudwatchLogs'].nil?)
        data.elasticsearch = (Parsers::ElasticsearchAction.parse(map['elasticsearch']) unless map['elasticsearch'].nil?)
        data.salesforce = (Parsers::SalesforceAction.parse(map['salesforce']) unless map['salesforce'].nil?)
        data.iot_analytics = (Parsers::IotAnalyticsAction.parse(map['iotAnalytics']) unless map['iotAnalytics'].nil?)
        data.iot_events = (Parsers::IotEventsAction.parse(map['iotEvents']) unless map['iotEvents'].nil?)
        data.iot_site_wise = (Parsers::IotSiteWiseAction.parse(map['iotSiteWise']) unless map['iotSiteWise'].nil?)
        data.step_functions = (Parsers::StepFunctionsAction.parse(map['stepFunctions']) unless map['stepFunctions'].nil?)
        data.timestream = (Parsers::TimestreamAction.parse(map['timestream']) unless map['timestream'].nil?)
        data.http = (Parsers::HttpAction.parse(map['http']) unless map['http'].nil?)
        data.kafka = (Parsers::KafkaAction.parse(map['kafka']) unless map['kafka'].nil?)
        data.open_search = (Parsers::OpenSearchAction.parse(map['openSearch']) unless map['openSearch'].nil?)
        return data
      end
    end

    class OpenSearchAction
      def self.parse(map)
        data = Types::OpenSearchAction.new
        data.role_arn = map['roleArn']
        data.endpoint = map['endpoint']
        data.index = map['index']
        data.type = map['type']
        data.id = map['id']
        return data
      end
    end

    class KafkaAction
      def self.parse(map)
        data = Types::KafkaAction.new
        data.destination_arn = map['destinationArn']
        data.topic = map['topic']
        data.key = map['key']
        data.partition = map['partition']
        data.client_properties = (Parsers::ClientProperties.parse(map['clientProperties']) unless map['clientProperties'].nil?)
        return data
      end
    end

    class ClientProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class HttpAction
      def self.parse(map)
        data = Types::HttpAction.new
        data.url = map['url']
        data.confirmation_url = map['confirmationUrl']
        data.headers = (Parsers::HeaderList.parse(map['headers']) unless map['headers'].nil?)
        data.auth = (Parsers::HttpAuthorization.parse(map['auth']) unless map['auth'].nil?)
        return data
      end
    end

    class HttpAuthorization
      def self.parse(map)
        data = Types::HttpAuthorization.new
        data.sigv4 = (Parsers::SigV4Authorization.parse(map['sigv4']) unless map['sigv4'].nil?)
        return data
      end
    end

    class SigV4Authorization
      def self.parse(map)
        data = Types::SigV4Authorization.new
        data.signing_region = map['signingRegion']
        data.service_name = map['serviceName']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class HeaderList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HttpActionHeader.parse(value) unless value.nil?
        end
        data
      end
    end

    class HttpActionHeader
      def self.parse(map)
        data = Types::HttpActionHeader.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class TimestreamAction
      def self.parse(map)
        data = Types::TimestreamAction.new
        data.role_arn = map['roleArn']
        data.database_name = map['databaseName']
        data.table_name = map['tableName']
        data.dimensions = (Parsers::TimestreamDimensionList.parse(map['dimensions']) unless map['dimensions'].nil?)
        data.timestamp = (Parsers::TimestreamTimestamp.parse(map['timestamp']) unless map['timestamp'].nil?)
        return data
      end
    end

    class TimestreamTimestamp
      def self.parse(map)
        data = Types::TimestreamTimestamp.new
        data.value = map['value']
        data.unit = map['unit']
        return data
      end
    end

    class TimestreamDimensionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TimestreamDimension.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimestreamDimension
      def self.parse(map)
        data = Types::TimestreamDimension.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    class StepFunctionsAction
      def self.parse(map)
        data = Types::StepFunctionsAction.new
        data.execution_name_prefix = map['executionNamePrefix']
        data.state_machine_name = map['stateMachineName']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class IotSiteWiseAction
      def self.parse(map)
        data = Types::IotSiteWiseAction.new
        data.put_asset_property_value_entries = (Parsers::PutAssetPropertyValueEntryList.parse(map['putAssetPropertyValueEntries']) unless map['putAssetPropertyValueEntries'].nil?)
        data.role_arn = map['roleArn']
        return data
      end
    end

    class PutAssetPropertyValueEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PutAssetPropertyValueEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class PutAssetPropertyValueEntry
      def self.parse(map)
        data = Types::PutAssetPropertyValueEntry.new
        data.entry_id = map['entryId']
        data.asset_id = map['assetId']
        data.property_id = map['propertyId']
        data.property_alias = map['propertyAlias']
        data.property_values = (Parsers::AssetPropertyValueList.parse(map['propertyValues']) unless map['propertyValues'].nil?)
        return data
      end
    end

    class AssetPropertyValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssetPropertyValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetPropertyValue
      def self.parse(map)
        data = Types::AssetPropertyValue.new
        data.value = (Parsers::AssetPropertyVariant.parse(map['value']) unless map['value'].nil?)
        data.timestamp = (Parsers::AssetPropertyTimestamp.parse(map['timestamp']) unless map['timestamp'].nil?)
        data.quality = map['quality']
        return data
      end
    end

    class AssetPropertyTimestamp
      def self.parse(map)
        data = Types::AssetPropertyTimestamp.new
        data.time_in_seconds = map['timeInSeconds']
        data.offset_in_nanos = map['offsetInNanos']
        return data
      end
    end

    class AssetPropertyVariant
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'stringValue'
          value = value
          Types::AssetPropertyVariant::StringValue.new(value) if value
        when 'integerValue'
          value = value
          Types::AssetPropertyVariant::IntegerValue.new(value) if value
        when 'doubleValue'
          value = value
          Types::AssetPropertyVariant::DoubleValue.new(value) if value
        when 'booleanValue'
          value = value
          Types::AssetPropertyVariant::BooleanValue.new(value) if value
        else
          Types::AssetPropertyVariant::Unknown.new({name: key, value: value})
        end
      end
    end

    class IotEventsAction
      def self.parse(map)
        data = Types::IotEventsAction.new
        data.input_name = map['inputName']
        data.message_id = map['messageId']
        data.batch_mode = map['batchMode']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class IotAnalyticsAction
      def self.parse(map)
        data = Types::IotAnalyticsAction.new
        data.channel_arn = map['channelArn']
        data.channel_name = map['channelName']
        data.batch_mode = map['batchMode']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class SalesforceAction
      def self.parse(map)
        data = Types::SalesforceAction.new
        data.token = map['token']
        data.url = map['url']
        return data
      end
    end

    class ElasticsearchAction
      def self.parse(map)
        data = Types::ElasticsearchAction.new
        data.role_arn = map['roleArn']
        data.endpoint = map['endpoint']
        data.index = map['index']
        data.type = map['type']
        data.id = map['id']
        return data
      end
    end

    class CloudwatchLogsAction
      def self.parse(map)
        data = Types::CloudwatchLogsAction.new
        data.role_arn = map['roleArn']
        data.log_group_name = map['logGroupName']
        return data
      end
    end

    class CloudwatchAlarmAction
      def self.parse(map)
        data = Types::CloudwatchAlarmAction.new
        data.role_arn = map['roleArn']
        data.alarm_name = map['alarmName']
        data.state_reason = map['stateReason']
        data.state_value = map['stateValue']
        return data
      end
    end

    class CloudwatchMetricAction
      def self.parse(map)
        data = Types::CloudwatchMetricAction.new
        data.role_arn = map['roleArn']
        data.metric_namespace = map['metricNamespace']
        data.metric_name = map['metricName']
        data.metric_value = map['metricValue']
        data.metric_unit = map['metricUnit']
        data.metric_timestamp = map['metricTimestamp']
        return data
      end
    end

    class FirehoseAction
      def self.parse(map)
        data = Types::FirehoseAction.new
        data.role_arn = map['roleArn']
        data.delivery_stream_name = map['deliveryStreamName']
        data.separator = map['separator']
        data.batch_mode = map['batchMode']
        return data
      end
    end

    class S3Action
      def self.parse(map)
        data = Types::S3Action.new
        data.role_arn = map['roleArn']
        data.bucket_name = map['bucketName']
        data.key = map['key']
        data.canned_acl = map['cannedAcl']
        return data
      end
    end

    class RepublishAction
      def self.parse(map)
        data = Types::RepublishAction.new
        data.role_arn = map['roleArn']
        data.topic = map['topic']
        data.qos = map['qos']
        return data
      end
    end

    class KinesisAction
      def self.parse(map)
        data = Types::KinesisAction.new
        data.role_arn = map['roleArn']
        data.stream_name = map['streamName']
        data.partition_key = map['partitionKey']
        return data
      end
    end

    class SqsAction
      def self.parse(map)
        data = Types::SqsAction.new
        data.role_arn = map['roleArn']
        data.queue_url = map['queueUrl']
        data.use_base64 = map['useBase64']
        return data
      end
    end

    class SnsAction
      def self.parse(map)
        data = Types::SnsAction.new
        data.target_arn = map['targetArn']
        data.role_arn = map['roleArn']
        data.message_format = map['messageFormat']
        return data
      end
    end

    class LambdaAction
      def self.parse(map)
        data = Types::LambdaAction.new
        data.function_arn = map['functionArn']
        return data
      end
    end

    class DynamoDBv2Action
      def self.parse(map)
        data = Types::DynamoDBv2Action.new
        data.role_arn = map['roleArn']
        data.put_item = (Parsers::PutItemInput.parse(map['putItem']) unless map['putItem'].nil?)
        return data
      end
    end

    class PutItemInput
      def self.parse(map)
        data = Types::PutItemInput.new
        data.table_name = map['tableName']
        return data
      end
    end

    class DynamoDBAction
      def self.parse(map)
        data = Types::DynamoDBAction.new
        data.table_name = map['tableName']
        data.role_arn = map['roleArn']
        data.operation = map['operation']
        data.hash_key_field = map['hashKeyField']
        data.hash_key_value = map['hashKeyValue']
        data.hash_key_type = map['hashKeyType']
        data.range_key_field = map['rangeKeyField']
        data.range_key_value = map['rangeKeyValue']
        data.range_key_type = map['rangeKeyType']
        data.payload_field = map['payloadField']
        return data
      end
    end

    class ActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Action.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetTopicRuleDestination
    class GetTopicRuleDestination
      def self.parse(http_resp)
        data = Types::GetTopicRuleDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.topic_rule_destination = (Parsers::TopicRuleDestination.parse(map['topicRuleDestination']) unless map['topicRuleDestination'].nil?)
        data
      end
    end

    # Operation Parser for GetV2LoggingOptions
    class GetV2LoggingOptions
      def self.parse(http_resp)
        data = Types::GetV2LoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_arn = map['roleArn']
        data.default_log_level = map['defaultLogLevel']
        data.disable_all_logs = map['disableAllLogs']
        data
      end
    end

    # Error Parser for NotConfiguredException
    class NotConfiguredException
      def self.parse(http_resp)
        data = Types::NotConfiguredException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListActiveViolations
    class ListActiveViolations
      def self.parse(http_resp)
        data = Types::ListActiveViolationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.active_violations = (Parsers::ActiveViolations.parse(map['activeViolations']) unless map['activeViolations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ActiveViolations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActiveViolation.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActiveViolation
      def self.parse(map)
        data = Types::ActiveViolation.new
        data.violation_id = map['violationId']
        data.thing_name = map['thingName']
        data.security_profile_name = map['securityProfileName']
        data.behavior = (Parsers::Behavior.parse(map['behavior']) unless map['behavior'].nil?)
        data.last_violation_value = (Parsers::MetricValue.parse(map['lastViolationValue']) unless map['lastViolationValue'].nil?)
        data.violation_event_additional_info = (Parsers::ViolationEventAdditionalInfo.parse(map['violationEventAdditionalInfo']) unless map['violationEventAdditionalInfo'].nil?)
        data.verification_state = map['verificationState']
        data.verification_state_description = map['verificationStateDescription']
        data.last_violation_time = Time.at(map['lastViolationTime'].to_i) if map['lastViolationTime']
        data.violation_start_time = Time.at(map['violationStartTime'].to_i) if map['violationStartTime']
        return data
      end
    end

    class ViolationEventAdditionalInfo
      def self.parse(map)
        data = Types::ViolationEventAdditionalInfo.new
        data.confidence_level = map['confidenceLevel']
        return data
      end
    end

    # Operation Parser for ListAttachedPolicies
    class ListAttachedPolicies
      def self.parse(http_resp)
        data = Types::ListAttachedPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policies = (Parsers::Policies.parse(map['policies']) unless map['policies'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class Policies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Policy.parse(value) unless value.nil?
        end
        data
      end
    end

    class Policy
      def self.parse(map)
        data = Types::Policy.new
        data.policy_name = map['policyName']
        data.policy_arn = map['policyArn']
        return data
      end
    end

    # Operation Parser for ListAuditFindings
    class ListAuditFindings
      def self.parse(http_resp)
        data = Types::ListAuditFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Parsers::AuditFindings.parse(map['findings']) unless map['findings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AuditFindings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuditFinding.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAuditMitigationActionsExecutions
    class ListAuditMitigationActionsExecutions
      def self.parse(http_resp)
        data = Types::ListAuditMitigationActionsExecutionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.actions_executions = (Parsers::AuditMitigationActionExecutionMetadataList.parse(map['actionsExecutions']) unless map['actionsExecutions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AuditMitigationActionExecutionMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuditMitigationActionExecutionMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditMitigationActionExecutionMetadata
      def self.parse(map)
        data = Types::AuditMitigationActionExecutionMetadata.new
        data.task_id = map['taskId']
        data.finding_id = map['findingId']
        data.action_name = map['actionName']
        data.action_id = map['actionId']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for ListAuditMitigationActionsTasks
    class ListAuditMitigationActionsTasks
      def self.parse(http_resp)
        data = Types::ListAuditMitigationActionsTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tasks = (Parsers::AuditMitigationActionsTaskMetadataList.parse(map['tasks']) unless map['tasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AuditMitigationActionsTaskMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuditMitigationActionsTaskMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditMitigationActionsTaskMetadata
      def self.parse(map)
        data = Types::AuditMitigationActionsTaskMetadata.new
        data.task_id = map['taskId']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.task_status = map['taskStatus']
        return data
      end
    end

    # Operation Parser for ListAuditSuppressions
    class ListAuditSuppressions
      def self.parse(http_resp)
        data = Types::ListAuditSuppressionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.suppressions = (Parsers::AuditSuppressionList.parse(map['suppressions']) unless map['suppressions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AuditSuppressionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuditSuppression.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditSuppression
      def self.parse(map)
        data = Types::AuditSuppression.new
        data.check_name = map['checkName']
        data.resource_identifier = (Parsers::ResourceIdentifier.parse(map['resourceIdentifier']) unless map['resourceIdentifier'].nil?)
        data.expiration_date = Time.at(map['expirationDate'].to_i) if map['expirationDate']
        data.suppress_indefinitely = map['suppressIndefinitely']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListAuditTasks
    class ListAuditTasks
      def self.parse(http_resp)
        data = Types::ListAuditTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tasks = (Parsers::AuditTaskMetadataList.parse(map['tasks']) unless map['tasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AuditTaskMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuditTaskMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuditTaskMetadata
      def self.parse(map)
        data = Types::AuditTaskMetadata.new
        data.task_id = map['taskId']
        data.task_status = map['taskStatus']
        data.task_type = map['taskType']
        return data
      end
    end

    # Operation Parser for ListAuthorizers
    class ListAuthorizers
      def self.parse(http_resp)
        data = Types::ListAuthorizersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizers = (Parsers::Authorizers.parse(map['authorizers']) unless map['authorizers'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class Authorizers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuthorizerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuthorizerSummary
      def self.parse(map)
        data = Types::AuthorizerSummary.new
        data.authorizer_name = map['authorizerName']
        data.authorizer_arn = map['authorizerArn']
        return data
      end
    end

    # Operation Parser for ListBillingGroups
    class ListBillingGroups
      def self.parse(http_resp)
        data = Types::ListBillingGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_groups = (Parsers::BillingGroupNameAndArnList.parse(map['billingGroups']) unless map['billingGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BillingGroupNameAndArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupNameAndArn.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListCACertificates
    class ListCACertificates
      def self.parse(http_resp)
        data = Types::ListCACertificatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificates = (Parsers::CACertificates.parse(map['certificates']) unless map['certificates'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class CACertificates
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CACertificate.parse(value) unless value.nil?
        end
        data
      end
    end

    class CACertificate
      def self.parse(map)
        data = Types::CACertificate.new
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.status = map['status']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListCertificates
    class ListCertificates
      def self.parse(http_resp)
        data = Types::ListCertificatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificates = (Parsers::Certificates.parse(map['certificates']) unless map['certificates'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class Certificates
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Certificate.parse(value) unless value.nil?
        end
        data
      end
    end

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.status = map['status']
        data.certificate_mode = map['certificateMode']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListCertificatesByCA
    class ListCertificatesByCA
      def self.parse(http_resp)
        data = Types::ListCertificatesByCAOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificates = (Parsers::Certificates.parse(map['certificates']) unless map['certificates'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    # Operation Parser for ListCustomMetrics
    class ListCustomMetrics
      def self.parse(http_resp)
        data = Types::ListCustomMetricsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_names = (Parsers::MetricNames.parse(map['metricNames']) unless map['metricNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MetricNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDetectMitigationActionsExecutions
    class ListDetectMitigationActionsExecutions
      def self.parse(http_resp)
        data = Types::ListDetectMitigationActionsExecutionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.actions_executions = (Parsers::DetectMitigationActionExecutionList.parse(map['actionsExecutions']) unless map['actionsExecutions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectMitigationActionExecutionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DetectMitigationActionExecution.parse(value) unless value.nil?
        end
        data
      end
    end

    class DetectMitigationActionExecution
      def self.parse(map)
        data = Types::DetectMitigationActionExecution.new
        data.task_id = map['taskId']
        data.violation_id = map['violationId']
        data.action_name = map['actionName']
        data.thing_name = map['thingName']
        data.execution_start_date = Time.at(map['executionStartDate'].to_i) if map['executionStartDate']
        data.execution_end_date = Time.at(map['executionEndDate'].to_i) if map['executionEndDate']
        data.status = map['status']
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for ListDetectMitigationActionsTasks
    class ListDetectMitigationActionsTasks
      def self.parse(http_resp)
        data = Types::ListDetectMitigationActionsTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tasks = (Parsers::DetectMitigationActionsTaskSummaryList.parse(map['tasks']) unless map['tasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectMitigationActionsTaskSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DetectMitigationActionsTaskSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDimensions
    class ListDimensions
      def self.parse(http_resp)
        data = Types::ListDimensionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dimension_names = (Parsers::DimensionNames.parse(map['dimensionNames']) unless map['dimensionNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DimensionNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDomainConfigurations
    class ListDomainConfigurations
      def self.parse(http_resp)
        data = Types::ListDomainConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_configurations = (Parsers::DomainConfigurations.parse(map['domainConfigurations']) unless map['domainConfigurations'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class DomainConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainConfigurationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainConfigurationSummary
      def self.parse(map)
        data = Types::DomainConfigurationSummary.new
        data.domain_configuration_name = map['domainConfigurationName']
        data.domain_configuration_arn = map['domainConfigurationArn']
        data.service_type = map['serviceType']
        return data
      end
    end

    # Operation Parser for ListFleetMetrics
    class ListFleetMetrics
      def self.parse(http_resp)
        data = Types::ListFleetMetricsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fleet_metrics = (Parsers::FleetMetricNameAndArnList.parse(map['fleetMetrics']) unless map['fleetMetrics'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FleetMetricNameAndArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FleetMetricNameAndArn.parse(value) unless value.nil?
        end
        data
      end
    end

    class FleetMetricNameAndArn
      def self.parse(map)
        data = Types::FleetMetricNameAndArn.new
        data.metric_name = map['metricName']
        data.metric_arn = map['metricArn']
        return data
      end
    end

    # Operation Parser for ListIndices
    class ListIndices
      def self.parse(http_resp)
        data = Types::ListIndicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_names = (Parsers::IndexNamesList.parse(map['indexNames']) unless map['indexNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class IndexNamesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListJobExecutionsForJob
    class ListJobExecutionsForJob
      def self.parse(http_resp)
        data = Types::ListJobExecutionsForJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_summaries = (Parsers::JobExecutionSummaryForJobList.parse(map['executionSummaries']) unless map['executionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobExecutionSummaryForJobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobExecutionSummaryForJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobExecutionSummaryForJob
      def self.parse(map)
        data = Types::JobExecutionSummaryForJob.new
        data.thing_arn = map['thingArn']
        data.job_execution_summary = (Parsers::JobExecutionSummary.parse(map['jobExecutionSummary']) unless map['jobExecutionSummary'].nil?)
        return data
      end
    end

    class JobExecutionSummary
      def self.parse(map)
        data = Types::JobExecutionSummary.new
        data.status = map['status']
        data.queued_at = Time.at(map['queuedAt'].to_i) if map['queuedAt']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.execution_number = map['executionNumber']
        data.retry_attempt = map['retryAttempt']
        return data
      end
    end

    # Operation Parser for ListJobExecutionsForThing
    class ListJobExecutionsForThing
      def self.parse(http_resp)
        data = Types::ListJobExecutionsForThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_summaries = (Parsers::JobExecutionSummaryForThingList.parse(map['executionSummaries']) unless map['executionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobExecutionSummaryForThingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobExecutionSummaryForThing.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobExecutionSummaryForThing
      def self.parse(map)
        data = Types::JobExecutionSummaryForThing.new
        data.job_id = map['jobId']
        data.job_execution_summary = (Parsers::JobExecutionSummary.parse(map['jobExecutionSummary']) unless map['jobExecutionSummary'].nil?)
        return data
      end
    end

    # Operation Parser for ListJobTemplates
    class ListJobTemplates
      def self.parse(http_resp)
        data = Types::ListJobTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_templates = (Parsers::JobTemplateSummaryList.parse(map['jobTemplates']) unless map['jobTemplates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobTemplateSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobTemplateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobTemplateSummary
      def self.parse(map)
        data = Types::JobTemplateSummary.new
        data.job_template_arn = map['jobTemplateArn']
        data.job_template_id = map['jobTemplateId']
        data.description = map['description']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::JobSummaryList.parse(map['jobs']) unless map['jobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobSummary
      def self.parse(map)
        data = Types::JobSummary.new
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.thing_group_id = map['thingGroupId']
        data.target_selection = map['targetSelection']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.completed_at = Time.at(map['completedAt'].to_i) if map['completedAt']
        data.is_concurrent = map['isConcurrent']
        return data
      end
    end

    # Operation Parser for ListManagedJobTemplates
    class ListManagedJobTemplates
      def self.parse(http_resp)
        data = Types::ListManagedJobTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.managed_job_templates = (Parsers::ManagedJobTemplatesSummaryList.parse(map['managedJobTemplates']) unless map['managedJobTemplates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ManagedJobTemplatesSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ManagedJobTemplateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ManagedJobTemplateSummary
      def self.parse(map)
        data = Types::ManagedJobTemplateSummary.new
        data.template_arn = map['templateArn']
        data.template_name = map['templateName']
        data.description = map['description']
        data.environments = (Parsers::Environments.parse(map['environments']) unless map['environments'].nil?)
        data.template_version = map['templateVersion']
        return data
      end
    end

    # Operation Parser for ListMetricValues
    class ListMetricValues
      def self.parse(http_resp)
        data = Types::ListMetricValuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_datum_list = (Parsers::MetricDatumList.parse(map['metricDatumList']) unless map['metricDatumList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MetricDatumList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MetricDatum.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricDatum
      def self.parse(map)
        data = Types::MetricDatum.new
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.value = (Parsers::MetricValue.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    # Operation Parser for ListMitigationActions
    class ListMitigationActions
      def self.parse(http_resp)
        data = Types::ListMitigationActionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_identifiers = (Parsers::MitigationActionIdentifierList.parse(map['actionIdentifiers']) unless map['actionIdentifiers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MitigationActionIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MitigationActionIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class MitigationActionIdentifier
      def self.parse(map)
        data = Types::MitigationActionIdentifier.new
        data.action_name = map['actionName']
        data.action_arn = map['actionArn']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListOTAUpdates
    class ListOTAUpdates
      def self.parse(http_resp)
        data = Types::ListOTAUpdatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ota_updates = (Parsers::OTAUpdatesSummary.parse(map['otaUpdates']) unless map['otaUpdates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class OTAUpdatesSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OTAUpdateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class OTAUpdateSummary
      def self.parse(map)
        data = Types::OTAUpdateSummary.new
        data.ota_update_id = map['otaUpdateId']
        data.ota_update_arn = map['otaUpdateArn']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListOutgoingCertificates
    class ListOutgoingCertificates
      def self.parse(http_resp)
        data = Types::ListOutgoingCertificatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.outgoing_certificates = (Parsers::OutgoingCertificates.parse(map['outgoingCertificates']) unless map['outgoingCertificates'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class OutgoingCertificates
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutgoingCertificate.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutgoingCertificate
      def self.parse(map)
        data = Types::OutgoingCertificate.new
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data.transferred_to = map['transferredTo']
        data.transfer_date = Time.at(map['transferDate'].to_i) if map['transferDate']
        data.transfer_message = map['transferMessage']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        return data
      end
    end

    # Operation Parser for ListPolicies
    class ListPolicies
      def self.parse(http_resp)
        data = Types::ListPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policies = (Parsers::Policies.parse(map['policies']) unless map['policies'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    # Operation Parser for ListPolicyPrincipals
    class ListPolicyPrincipals
      def self.parse(http_resp)
        data = Types::ListPolicyPrincipalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.principals = (Parsers::Principals.parse(map['principals']) unless map['principals'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class Principals
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPolicyVersions
    class ListPolicyVersions
      def self.parse(http_resp)
        data = Types::ListPolicyVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_versions = (Parsers::PolicyVersions.parse(map['policyVersions']) unless map['policyVersions'].nil?)
        data
      end
    end

    class PolicyVersions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PolicyVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class PolicyVersion
      def self.parse(map)
        data = Types::PolicyVersion.new
        data.version_id = map['versionId']
        data.is_default_version = map['isDefaultVersion']
        data.create_date = Time.at(map['createDate'].to_i) if map['createDate']
        return data
      end
    end

    # Operation Parser for ListPrincipalPolicies
    class ListPrincipalPolicies
      def self.parse(http_resp)
        data = Types::ListPrincipalPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policies = (Parsers::Policies.parse(map['policies']) unless map['policies'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    # Operation Parser for ListPrincipalThings
    class ListPrincipalThings
      def self.parse(http_resp)
        data = Types::ListPrincipalThingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.things = (Parsers::ThingNameList.parse(map['things']) unless map['things'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ThingNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListProvisioningTemplateVersions
    class ListProvisioningTemplateVersions
      def self.parse(http_resp)
        data = Types::ListProvisioningTemplateVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.versions = (Parsers::ProvisioningTemplateVersionListing.parse(map['versions']) unless map['versions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProvisioningTemplateVersionListing
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProvisioningTemplateVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProvisioningTemplateVersionSummary
      def self.parse(map)
        data = Types::ProvisioningTemplateVersionSummary.new
        data.version_id = map['versionId']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.is_default_version = map['isDefaultVersion']
        return data
      end
    end

    # Operation Parser for ListProvisioningTemplates
    class ListProvisioningTemplates
      def self.parse(http_resp)
        data = Types::ListProvisioningTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.templates = (Parsers::ProvisioningTemplateListing.parse(map['templates']) unless map['templates'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProvisioningTemplateListing
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProvisioningTemplateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProvisioningTemplateSummary
      def self.parse(map)
        data = Types::ProvisioningTemplateSummary.new
        data.template_arn = map['templateArn']
        data.template_name = map['templateName']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.enabled = map['enabled']
        return data
      end
    end

    # Operation Parser for ListRoleAliases
    class ListRoleAliases
      def self.parse(http_resp)
        data = Types::ListRoleAliasesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_aliases = (Parsers::RoleAliases.parse(map['roleAliases']) unless map['roleAliases'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class RoleAliases
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListScheduledAudits
    class ListScheduledAudits
      def self.parse(http_resp)
        data = Types::ListScheduledAuditsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.scheduled_audits = (Parsers::ScheduledAuditMetadataList.parse(map['scheduledAudits']) unless map['scheduledAudits'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ScheduledAuditMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ScheduledAuditMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class ScheduledAuditMetadata
      def self.parse(map)
        data = Types::ScheduledAuditMetadata.new
        data.scheduled_audit_name = map['scheduledAuditName']
        data.scheduled_audit_arn = map['scheduledAuditArn']
        data.frequency = map['frequency']
        data.day_of_month = map['dayOfMonth']
        data.day_of_week = map['dayOfWeek']
        return data
      end
    end

    # Operation Parser for ListSecurityProfiles
    class ListSecurityProfiles
      def self.parse(http_resp)
        data = Types::ListSecurityProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_identifiers = (Parsers::SecurityProfileIdentifiers.parse(map['securityProfileIdentifiers']) unless map['securityProfileIdentifiers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SecurityProfileIdentifiers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SecurityProfileIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecurityProfileIdentifier
      def self.parse(map)
        data = Types::SecurityProfileIdentifier.new
        data.name = map['name']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for ListSecurityProfilesForTarget
    class ListSecurityProfilesForTarget
      def self.parse(http_resp)
        data = Types::ListSecurityProfilesForTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_target_mappings = (Parsers::SecurityProfileTargetMappings.parse(map['securityProfileTargetMappings']) unless map['securityProfileTargetMappings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SecurityProfileTargetMappings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SecurityProfileTargetMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecurityProfileTargetMapping
      def self.parse(map)
        data = Types::SecurityProfileTargetMapping.new
        data.security_profile_identifier = (Parsers::SecurityProfileIdentifier.parse(map['securityProfileIdentifier']) unless map['securityProfileIdentifier'].nil?)
        data.target = (Parsers::SecurityProfileTarget.parse(map['target']) unless map['target'].nil?)
        return data
      end
    end

    class SecurityProfileTarget
      def self.parse(map)
        data = Types::SecurityProfileTarget.new
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for ListStreams
    class ListStreams
      def self.parse(http_resp)
        data = Types::ListStreamsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streams = (Parsers::StreamsSummary.parse(map['streams']) unless map['streams'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StreamsSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamSummary
      def self.parse(map)
        data = Types::StreamSummary.new
        data.stream_id = map['streamId']
        data.stream_arn = map['streamArn']
        data.stream_version = map['streamVersion']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListTargetsForPolicy
    class ListTargetsForPolicy
      def self.parse(http_resp)
        data = Types::ListTargetsForPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.targets = (Parsers::PolicyTargets.parse(map['targets']) unless map['targets'].nil?)
        data.next_marker = map['nextMarker']
        data
      end
    end

    class PolicyTargets
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTargetsForSecurityProfile
    class ListTargetsForSecurityProfile
      def self.parse(http_resp)
        data = Types::ListTargetsForSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_targets = (Parsers::SecurityProfileTargets.parse(map['securityProfileTargets']) unless map['securityProfileTargets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SecurityProfileTargets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SecurityProfileTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListThingGroups
    class ListThingGroups
      def self.parse(http_resp)
        data = Types::ListThingGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_groups = (Parsers::ThingGroupNameAndArnList.parse(map['thingGroups']) unless map['thingGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListThingGroupsForThing
    class ListThingGroupsForThing
      def self.parse(http_resp)
        data = Types::ListThingGroupsForThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_groups = (Parsers::ThingGroupNameAndArnList.parse(map['thingGroups']) unless map['thingGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListThingPrincipals
    class ListThingPrincipals
      def self.parse(http_resp)
        data = Types::ListThingPrincipalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.principals = (Parsers::Principals.parse(map['principals']) unless map['principals'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListThingRegistrationTaskReports
    class ListThingRegistrationTaskReports
      def self.parse(http_resp)
        data = Types::ListThingRegistrationTaskReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_links = (Parsers::S3FileUrlList.parse(map['resourceLinks']) unless map['resourceLinks'].nil?)
        data.report_type = map['reportType']
        data.next_token = map['nextToken']
        data
      end
    end

    class S3FileUrlList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListThingRegistrationTasks
    class ListThingRegistrationTasks
      def self.parse(http_resp)
        data = Types::ListThingRegistrationTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_ids = (Parsers::TaskIdList.parse(map['taskIds']) unless map['taskIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TaskIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListThingTypes
    class ListThingTypes
      def self.parse(http_resp)
        data = Types::ListThingTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.thing_types = (Parsers::ThingTypeList.parse(map['thingTypes']) unless map['thingTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ThingTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThingTypeDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThingTypeDefinition
      def self.parse(map)
        data = Types::ThingTypeDefinition.new
        data.thing_type_name = map['thingTypeName']
        data.thing_type_arn = map['thingTypeArn']
        data.thing_type_properties = (Parsers::ThingTypeProperties.parse(map['thingTypeProperties']) unless map['thingTypeProperties'].nil?)
        data.thing_type_metadata = (Parsers::ThingTypeMetadata.parse(map['thingTypeMetadata']) unless map['thingTypeMetadata'].nil?)
        return data
      end
    end

    # Operation Parser for ListThings
    class ListThings
      def self.parse(http_resp)
        data = Types::ListThingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.things = (Parsers::ThingAttributeList.parse(map['things']) unless map['things'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ThingAttributeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThingAttribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThingAttribute
      def self.parse(map)
        data = Types::ThingAttribute.new
        data.thing_name = map['thingName']
        data.thing_type_name = map['thingTypeName']
        data.thing_arn = map['thingArn']
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for ListThingsInBillingGroup
    class ListThingsInBillingGroup
      def self.parse(http_resp)
        data = Types::ListThingsInBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.things = (Parsers::ThingNameList.parse(map['things']) unless map['things'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListThingsInThingGroup
    class ListThingsInThingGroup
      def self.parse(http_resp)
        data = Types::ListThingsInThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.things = (Parsers::ThingNameList.parse(map['things']) unless map['things'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTopicRuleDestinations
    class ListTopicRuleDestinations
      def self.parse(http_resp)
        data = Types::ListTopicRuleDestinationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.destination_summaries = (Parsers::TopicRuleDestinationSummaries.parse(map['destinationSummaries']) unless map['destinationSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TopicRuleDestinationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TopicRuleDestinationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TopicRuleDestinationSummary
      def self.parse(map)
        data = Types::TopicRuleDestinationSummary.new
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.status_reason = map['statusReason']
        data.http_url_summary = (Parsers::HttpUrlDestinationSummary.parse(map['httpUrlSummary']) unless map['httpUrlSummary'].nil?)
        data.vpc_destination_summary = (Parsers::VpcDestinationSummary.parse(map['vpcDestinationSummary']) unless map['vpcDestinationSummary'].nil?)
        return data
      end
    end

    class VpcDestinationSummary
      def self.parse(map)
        data = Types::VpcDestinationSummary.new
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_groups = (Parsers::SecurityGroupList.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.vpc_id = map['vpcId']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class HttpUrlDestinationSummary
      def self.parse(map)
        data = Types::HttpUrlDestinationSummary.new
        data.confirmation_url = map['confirmationUrl']
        return data
      end
    end

    # Operation Parser for ListTopicRules
    class ListTopicRules
      def self.parse(http_resp)
        data = Types::ListTopicRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rules = (Parsers::TopicRuleList.parse(map['rules']) unless map['rules'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TopicRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TopicRuleListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class TopicRuleListItem
      def self.parse(map)
        data = Types::TopicRuleListItem.new
        data.rule_arn = map['ruleArn']
        data.rule_name = map['ruleName']
        data.topic_pattern = map['topicPattern']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.rule_disabled = map['ruleDisabled']
        return data
      end
    end

    # Operation Parser for ListV2LoggingLevels
    class ListV2LoggingLevels
      def self.parse(http_resp)
        data = Types::ListV2LoggingLevelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.log_target_configurations = (Parsers::LogTargetConfigurations.parse(map['logTargetConfigurations']) unless map['logTargetConfigurations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LogTargetConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LogTargetConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class LogTargetConfiguration
      def self.parse(map)
        data = Types::LogTargetConfiguration.new
        data.log_target = (Parsers::LogTarget.parse(map['logTarget']) unless map['logTarget'].nil?)
        data.log_level = map['logLevel']
        return data
      end
    end

    class LogTarget
      def self.parse(map)
        data = Types::LogTarget.new
        data.target_type = map['targetType']
        data.target_name = map['targetName']
        return data
      end
    end

    # Operation Parser for ListViolationEvents
    class ListViolationEvents
      def self.parse(http_resp)
        data = Types::ListViolationEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.violation_events = (Parsers::ViolationEvents.parse(map['violationEvents']) unless map['violationEvents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ViolationEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ViolationEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class ViolationEvent
      def self.parse(map)
        data = Types::ViolationEvent.new
        data.violation_id = map['violationId']
        data.thing_name = map['thingName']
        data.security_profile_name = map['securityProfileName']
        data.behavior = (Parsers::Behavior.parse(map['behavior']) unless map['behavior'].nil?)
        data.metric_value = (Parsers::MetricValue.parse(map['metricValue']) unless map['metricValue'].nil?)
        data.violation_event_additional_info = (Parsers::ViolationEventAdditionalInfo.parse(map['violationEventAdditionalInfo']) unless map['violationEventAdditionalInfo'].nil?)
        data.violation_event_type = map['violationEventType']
        data.verification_state = map['verificationState']
        data.verification_state_description = map['verificationStateDescription']
        data.violation_event_time = Time.at(map['violationEventTime'].to_i) if map['violationEventTime']
        return data
      end
    end

    # Operation Parser for PutVerificationStateOnViolation
    class PutVerificationStateOnViolation
      def self.parse(http_resp)
        data = Types::PutVerificationStateOnViolationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RegisterCACertificate
    class RegisterCACertificate
      def self.parse(http_resp)
        data = Types::RegisterCACertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data
      end
    end

    # Error Parser for RegistrationCodeValidationException
    class RegistrationCodeValidationException
      def self.parse(http_resp)
        data = Types::RegistrationCodeValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for RegisterCertificate
    class RegisterCertificate
      def self.parse(http_resp)
        data = Types::RegisterCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data
      end
    end

    # Error Parser for CertificateConflictException
    class CertificateConflictException
      def self.parse(http_resp)
        data = Types::CertificateConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for RegisterCertificateWithoutCA
    class RegisterCertificateWithoutCA
      def self.parse(http_resp)
        data = Types::RegisterCertificateWithoutCAOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_arn = map['certificateArn']
        data.certificate_id = map['certificateId']
        data
      end
    end

    # Operation Parser for RegisterThing
    class RegisterThing
      def self.parse(http_resp)
        data = Types::RegisterThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_pem = map['certificatePem']
        data.resource_arns = (Parsers::ResourceArns.parse(map['resourceArns']) unless map['resourceArns'].nil?)
        data
      end
    end

    class ResourceArns
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ResourceRegistrationFailureException
    class ResourceRegistrationFailureException
      def self.parse(http_resp)
        data = Types::ResourceRegistrationFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for RejectCertificateTransfer
    class RejectCertificateTransfer
      def self.parse(http_resp)
        data = Types::RejectCertificateTransferOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveThingFromBillingGroup
    class RemoveThingFromBillingGroup
      def self.parse(http_resp)
        data = Types::RemoveThingFromBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveThingFromThingGroup
    class RemoveThingFromThingGroup
      def self.parse(http_resp)
        data = Types::RemoveThingFromThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ReplaceTopicRule
    class ReplaceTopicRule
      def self.parse(http_resp)
        data = Types::ReplaceTopicRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchIndex
    class SearchIndex
      def self.parse(http_resp)
        data = Types::SearchIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.things = (Parsers::ThingDocumentList.parse(map['things']) unless map['things'].nil?)
        data.thing_groups = (Parsers::ThingGroupDocumentList.parse(map['thingGroups']) unless map['thingGroups'].nil?)
        data
      end
    end

    class ThingGroupDocumentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThingGroupDocument.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThingGroupDocument
      def self.parse(map)
        data = Types::ThingGroupDocument.new
        data.thing_group_name = map['thingGroupName']
        data.thing_group_id = map['thingGroupId']
        data.thing_group_description = map['thingGroupDescription']
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.parent_group_names = (Parsers::ThingGroupNameList.parse(map['parentGroupNames']) unless map['parentGroupNames'].nil?)
        return data
      end
    end

    class ThingGroupNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ThingDocumentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThingDocument.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThingDocument
      def self.parse(map)
        data = Types::ThingDocument.new
        data.thing_name = map['thingName']
        data.thing_id = map['thingId']
        data.thing_type_name = map['thingTypeName']
        data.thing_group_names = (Parsers::ThingGroupNameList.parse(map['thingGroupNames']) unless map['thingGroupNames'].nil?)
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.shadow = map['shadow']
        data.device_defender = map['deviceDefender']
        data.connectivity = (Parsers::ThingConnectivity.parse(map['connectivity']) unless map['connectivity'].nil?)
        return data
      end
    end

    class ThingConnectivity
      def self.parse(map)
        data = Types::ThingConnectivity.new
        data.connected = map['connected']
        data.timestamp = map['timestamp']
        data.disconnect_reason = map['disconnectReason']
        return data
      end
    end

    # Operation Parser for SetDefaultAuthorizer
    class SetDefaultAuthorizer
      def self.parse(http_resp)
        data = Types::SetDefaultAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_name = map['authorizerName']
        data.authorizer_arn = map['authorizerArn']
        data
      end
    end

    # Operation Parser for SetDefaultPolicyVersion
    class SetDefaultPolicyVersion
      def self.parse(http_resp)
        data = Types::SetDefaultPolicyVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetLoggingOptions
    class SetLoggingOptions
      def self.parse(http_resp)
        data = Types::SetLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetV2LoggingLevel
    class SetV2LoggingLevel
      def self.parse(http_resp)
        data = Types::SetV2LoggingLevelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetV2LoggingOptions
    class SetV2LoggingOptions
      def self.parse(http_resp)
        data = Types::SetV2LoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartAuditMitigationActionsTask
    class StartAuditMitigationActionsTask
      def self.parse(http_resp)
        data = Types::StartAuditMitigationActionsTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data
      end
    end

    # Error Parser for TaskAlreadyExistsException
    class TaskAlreadyExistsException
      def self.parse(http_resp)
        data = Types::TaskAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StartDetectMitigationActionsTask
    class StartDetectMitigationActionsTask
      def self.parse(http_resp)
        data = Types::StartDetectMitigationActionsTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data
      end
    end

    # Operation Parser for StartOnDemandAuditTask
    class StartOnDemandAuditTask
      def self.parse(http_resp)
        data = Types::StartOnDemandAuditTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data
      end
    end

    # Operation Parser for StartThingRegistrationTask
    class StartThingRegistrationTask
      def self.parse(http_resp)
        data = Types::StartThingRegistrationTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data
      end
    end

    # Operation Parser for StopThingRegistrationTask
    class StopThingRegistrationTask
      def self.parse(http_resp)
        data = Types::StopThingRegistrationTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TestAuthorization
    class TestAuthorization
      def self.parse(http_resp)
        data = Types::TestAuthorizationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auth_results = (Parsers::AuthResults.parse(map['authResults']) unless map['authResults'].nil?)
        data
      end
    end

    class AuthResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuthResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuthResult
      def self.parse(map)
        data = Types::AuthResult.new
        data.auth_info = (Parsers::AuthInfo.parse(map['authInfo']) unless map['authInfo'].nil?)
        data.allowed = (Parsers::Allowed.parse(map['allowed']) unless map['allowed'].nil?)
        data.denied = (Parsers::Denied.parse(map['denied']) unless map['denied'].nil?)
        data.auth_decision = map['authDecision']
        data.missing_context_values = (Parsers::MissingContextValues.parse(map['missingContextValues']) unless map['missingContextValues'].nil?)
        return data
      end
    end

    class MissingContextValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Denied
      def self.parse(map)
        data = Types::Denied.new
        data.implicit_deny = (Parsers::ImplicitDeny.parse(map['implicitDeny']) unless map['implicitDeny'].nil?)
        data.explicit_deny = (Parsers::ExplicitDeny.parse(map['explicitDeny']) unless map['explicitDeny'].nil?)
        return data
      end
    end

    class ExplicitDeny
      def self.parse(map)
        data = Types::ExplicitDeny.new
        data.policies = (Parsers::Policies.parse(map['policies']) unless map['policies'].nil?)
        return data
      end
    end

    class ImplicitDeny
      def self.parse(map)
        data = Types::ImplicitDeny.new
        data.policies = (Parsers::Policies.parse(map['policies']) unless map['policies'].nil?)
        return data
      end
    end

    class Allowed
      def self.parse(map)
        data = Types::Allowed.new
        data.policies = (Parsers::Policies.parse(map['policies']) unless map['policies'].nil?)
        return data
      end
    end

    class AuthInfo
      def self.parse(map)
        data = Types::AuthInfo.new
        data.action_type = map['actionType']
        data.resources = (Parsers::Resources.parse(map['resources']) unless map['resources'].nil?)
        return data
      end
    end

    class Resources
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for TestInvokeAuthorizer
    class TestInvokeAuthorizer
      def self.parse(http_resp)
        data = Types::TestInvokeAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.is_authenticated = map['isAuthenticated']
        data.principal_id = map['principalId']
        data.policy_documents = (Parsers::PolicyDocuments.parse(map['policyDocuments']) unless map['policyDocuments'].nil?)
        data.refresh_after_in_seconds = map['refreshAfterInSeconds']
        data.disconnect_after_in_seconds = map['disconnectAfterInSeconds']
        data
      end
    end

    class PolicyDocuments
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidResponseException
    class InvalidResponseException
      def self.parse(http_resp)
        data = Types::InvalidResponseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for TransferCertificate
    class TransferCertificate
      def self.parse(http_resp)
        data = Types::TransferCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transferred_certificate_arn = map['transferredCertificateArn']
        data
      end
    end

    # Error Parser for TransferConflictException
    class TransferConflictException
      def self.parse(http_resp)
        data = Types::TransferConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAccountAuditConfiguration
    class UpdateAccountAuditConfiguration
      def self.parse(http_resp)
        data = Types::UpdateAccountAuditConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAuditSuppression
    class UpdateAuditSuppression
      def self.parse(http_resp)
        data = Types::UpdateAuditSuppressionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAuthorizer
    class UpdateAuthorizer
      def self.parse(http_resp)
        data = Types::UpdateAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_name = map['authorizerName']
        data.authorizer_arn = map['authorizerArn']
        data
      end
    end

    # Operation Parser for UpdateBillingGroup
    class UpdateBillingGroup
      def self.parse(http_resp)
        data = Types::UpdateBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['version']
        data
      end
    end

    # Operation Parser for UpdateCACertificate
    class UpdateCACertificate
      def self.parse(http_resp)
        data = Types::UpdateCACertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateCertificate
    class UpdateCertificate
      def self.parse(http_resp)
        data = Types::UpdateCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateCustomMetric
    class UpdateCustomMetric
      def self.parse(http_resp)
        data = Types::UpdateCustomMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_name = map['metricName']
        data.metric_arn = map['metricArn']
        data.metric_type = map['metricType']
        data.display_name = map['displayName']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    # Operation Parser for UpdateDimension
    class UpdateDimension
      def self.parse(http_resp)
        data = Types::UpdateDimensionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data.type = map['type']
        data.string_values = (Parsers::DimensionStringValues.parse(map['stringValues']) unless map['stringValues'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    # Operation Parser for UpdateDomainConfiguration
    class UpdateDomainConfiguration
      def self.parse(http_resp)
        data = Types::UpdateDomainConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_configuration_name = map['domainConfigurationName']
        data.domain_configuration_arn = map['domainConfigurationArn']
        data
      end
    end

    # Operation Parser for UpdateDynamicThingGroup
    class UpdateDynamicThingGroup
      def self.parse(http_resp)
        data = Types::UpdateDynamicThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['version']
        data
      end
    end

    # Operation Parser for UpdateEventConfigurations
    class UpdateEventConfigurations
      def self.parse(http_resp)
        data = Types::UpdateEventConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFleetMetric
    class UpdateFleetMetric
      def self.parse(http_resp)
        data = Types::UpdateFleetMetricOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateIndexingConfiguration
    class UpdateIndexingConfiguration
      def self.parse(http_resp)
        data = Types::UpdateIndexingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateJob
    class UpdateJob
      def self.parse(http_resp)
        data = Types::UpdateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateMitigationAction
    class UpdateMitigationAction
      def self.parse(http_resp)
        data = Types::UpdateMitigationActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action_arn = map['actionArn']
        data.action_id = map['actionId']
        data
      end
    end

    # Operation Parser for UpdateProvisioningTemplate
    class UpdateProvisioningTemplate
      def self.parse(http_resp)
        data = Types::UpdateProvisioningTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRoleAlias
    class UpdateRoleAlias
      def self.parse(http_resp)
        data = Types::UpdateRoleAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_alias = map['roleAlias']
        data.role_alias_arn = map['roleAliasArn']
        data
      end
    end

    # Operation Parser for UpdateScheduledAudit
    class UpdateScheduledAudit
      def self.parse(http_resp)
        data = Types::UpdateScheduledAuditOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.scheduled_audit_arn = map['scheduledAuditArn']
        data
      end
    end

    # Operation Parser for UpdateSecurityProfile
    class UpdateSecurityProfile
      def self.parse(http_resp)
        data = Types::UpdateSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_name = map['securityProfileName']
        data.security_profile_arn = map['securityProfileArn']
        data.security_profile_description = map['securityProfileDescription']
        data.behaviors = (Parsers::Behaviors.parse(map['behaviors']) unless map['behaviors'].nil?)
        data.alert_targets = (Parsers::AlertTargets.parse(map['alertTargets']) unless map['alertTargets'].nil?)
        data.additional_metrics_to_retain = (Parsers::AdditionalMetricsToRetainList.parse(map['additionalMetricsToRetain']) unless map['additionalMetricsToRetain'].nil?)
        data.additional_metrics_to_retain_v2 = (Parsers::AdditionalMetricsToRetainV2List.parse(map['additionalMetricsToRetainV2']) unless map['additionalMetricsToRetainV2'].nil?)
        data.version = map['version']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data
      end
    end

    # Operation Parser for UpdateStream
    class UpdateStream
      def self.parse(http_resp)
        data = Types::UpdateStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_id = map['streamId']
        data.stream_arn = map['streamArn']
        data.description = map['description']
        data.stream_version = map['streamVersion']
        data
      end
    end

    # Operation Parser for UpdateThing
    class UpdateThing
      def self.parse(http_resp)
        data = Types::UpdateThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateThingGroup
    class UpdateThingGroup
      def self.parse(http_resp)
        data = Types::UpdateThingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['version']
        data
      end
    end

    # Operation Parser for UpdateThingGroupsForThing
    class UpdateThingGroupsForThing
      def self.parse(http_resp)
        data = Types::UpdateThingGroupsForThingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateTopicRuleDestination
    class UpdateTopicRuleDestination
      def self.parse(http_resp)
        data = Types::UpdateTopicRuleDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ValidateSecurityProfileBehaviors
    class ValidateSecurityProfileBehaviors
      def self.parse(http_resp)
        data = Types::ValidateSecurityProfileBehaviorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.valid = map['valid']
        data.validation_errors = (Parsers::ValidationErrors.parse(map['validationErrors']) unless map['validationErrors'].nil?)
        data
      end
    end

    class ValidationErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationError.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationError
      def self.parse(map)
        data = Types::ValidationError.new
        data.error_message = map['errorMessage']
        return data
      end
    end
  end
end
