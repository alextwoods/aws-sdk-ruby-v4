# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConfigService
  module Parsers

    # Operation Parser for BatchGetAggregateResourceConfig
    class BatchGetAggregateResourceConfig
      def self.parse(http_resp)
        data = Types::BatchGetAggregateResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.base_configuration_items = (Parsers::BaseConfigurationItems.parse(map['BaseConfigurationItems']) unless map['BaseConfigurationItems'].nil?)
        data.unprocessed_resource_identifiers = (Parsers::UnprocessedResourceIdentifierList.parse(map['UnprocessedResourceIdentifiers']) unless map['UnprocessedResourceIdentifiers'].nil?)
        data
      end
    end

    class UnprocessedResourceIdentifierList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateResourceIdentifier.parse(value) unless value.nil?
        end
      end
    end

    class AggregateResourceIdentifier
      def self.parse(map)
        data = Types::AggregateResourceIdentifier.new
        data.source_account_id = map['SourceAccountId']
        data.source_region = map['SourceRegion']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.resource_name = map['ResourceName']
        return data
      end
    end

    class BaseConfigurationItems
      def self.parse(list)
        list.map do |value|
          Parsers::BaseConfigurationItem.parse(value) unless value.nil?
        end
      end
    end

    class BaseConfigurationItem
      def self.parse(map)
        data = Types::BaseConfigurationItem.new
        data.version = map['version']
        data.account_id = map['accountId']
        data.configuration_item_capture_time = Time.at(map['configurationItemCaptureTime'].to_i) if map['configurationItemCaptureTime']
        data.configuration_item_status = map['configurationItemStatus']
        data.configuration_state_id = map['configurationStateId']
        data.arn = map['arn']
        data.resource_type = map['resourceType']
        data.resource_id = map['resourceId']
        data.resource_name = map['resourceName']
        data.aws_region = map['awsRegion']
        data.availability_zone = map['availabilityZone']
        data.resource_creation_time = Time.at(map['resourceCreationTime'].to_i) if map['resourceCreationTime']
        data.configuration = map['configuration']
        data.supplementary_configuration = (Parsers::SupplementaryConfiguration.parse(map['supplementaryConfiguration']) unless map['supplementaryConfiguration'].nil?)
        return data
      end
    end

    class SupplementaryConfiguration
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoSuchConfigurationAggregatorException
    class NoSuchConfigurationAggregatorException
      def self.parse(http_resp)
        data = Types::NoSuchConfigurationAggregatorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetResourceConfig
    class BatchGetResourceConfig
      def self.parse(http_resp)
        data = Types::BatchGetResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.base_configuration_items = (Parsers::BaseConfigurationItems.parse(map['baseConfigurationItems']) unless map['baseConfigurationItems'].nil?)
        data.unprocessed_resource_keys = (Parsers::ResourceKeys.parse(map['unprocessedResourceKeys']) unless map['unprocessedResourceKeys'].nil?)
        data
      end
    end

    class ResourceKeys
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceKey.parse(value) unless value.nil?
        end
      end
    end

    class ResourceKey
      def self.parse(map)
        data = Types::ResourceKey.new
        data.resource_type = map['resourceType']
        data.resource_id = map['resourceId']
        return data
      end
    end

    # Error Parser for NoAvailableConfigurationRecorderException
    class NoAvailableConfigurationRecorderException
      def self.parse(http_resp)
        data = Types::NoAvailableConfigurationRecorderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteAggregationAuthorization
    class DeleteAggregationAuthorization
      def self.parse(http_resp)
        data = Types::DeleteAggregationAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteConfigRule
    class DeleteConfigRule
      def self.parse(http_resp)
        data = Types::DeleteConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoSuchConfigRuleException
    class NoSuchConfigRuleException
      def self.parse(http_resp)
        data = Types::NoSuchConfigRuleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteConfigurationAggregator
    class DeleteConfigurationAggregator
      def self.parse(http_resp)
        data = Types::DeleteConfigurationAggregatorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteConfigurationRecorder
    class DeleteConfigurationRecorder
      def self.parse(http_resp)
        data = Types::DeleteConfigurationRecorderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoSuchConfigurationRecorderException
    class NoSuchConfigurationRecorderException
      def self.parse(http_resp)
        data = Types::NoSuchConfigurationRecorderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteConformancePack
    class DeleteConformancePack
      def self.parse(http_resp)
        data = Types::DeleteConformancePackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoSuchConformancePackException
    class NoSuchConformancePackException
      def self.parse(http_resp)
        data = Types::NoSuchConformancePackException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteDeliveryChannel
    class DeleteDeliveryChannel
      def self.parse(http_resp)
        data = Types::DeleteDeliveryChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoSuchDeliveryChannelException
    class NoSuchDeliveryChannelException
      def self.parse(http_resp)
        data = Types::NoSuchDeliveryChannelException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LastDeliveryChannelDeleteFailedException
    class LastDeliveryChannelDeleteFailedException
      def self.parse(http_resp)
        data = Types::LastDeliveryChannelDeleteFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteEvaluationResults
    class DeleteEvaluationResults
      def self.parse(http_resp)
        data = Types::DeleteEvaluationResultsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteOrganizationConfigRule
    class DeleteOrganizationConfigRule
      def self.parse(http_resp)
        data = Types::DeleteOrganizationConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for OrganizationAccessDeniedException
    class OrganizationAccessDeniedException
      def self.parse(http_resp)
        data = Types::OrganizationAccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoSuchOrganizationConfigRuleException
    class NoSuchOrganizationConfigRuleException
      def self.parse(http_resp)
        data = Types::NoSuchOrganizationConfigRuleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteOrganizationConformancePack
    class DeleteOrganizationConformancePack
      def self.parse(http_resp)
        data = Types::DeleteOrganizationConformancePackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoSuchOrganizationConformancePackException
    class NoSuchOrganizationConformancePackException
      def self.parse(http_resp)
        data = Types::NoSuchOrganizationConformancePackException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeletePendingAggregationRequest
    class DeletePendingAggregationRequest
      def self.parse(http_resp)
        data = Types::DeletePendingAggregationRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRemediationConfiguration
    class DeleteRemediationConfiguration
      def self.parse(http_resp)
        data = Types::DeleteRemediationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InsufficientPermissionsException
    class InsufficientPermissionsException
      def self.parse(http_resp)
        data = Types::InsufficientPermissionsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RemediationInProgressException
    class RemediationInProgressException
      def self.parse(http_resp)
        data = Types::RemediationInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoSuchRemediationConfigurationException
    class NoSuchRemediationConfigurationException
      def self.parse(http_resp)
        data = Types::NoSuchRemediationConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteRemediationExceptions
    class DeleteRemediationExceptions
      def self.parse(http_resp)
        data = Types::DeleteRemediationExceptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_batches = (Parsers::FailedDeleteRemediationExceptionsBatches.parse(map['FailedBatches']) unless map['FailedBatches'].nil?)
        data
      end
    end

    class FailedDeleteRemediationExceptionsBatches
      def self.parse(list)
        list.map do |value|
          Parsers::FailedDeleteRemediationExceptionsBatch.parse(value) unless value.nil?
        end
      end
    end

    class FailedDeleteRemediationExceptionsBatch
      def self.parse(map)
        data = Types::FailedDeleteRemediationExceptionsBatch.new
        data.failure_message = map['FailureMessage']
        data.failed_items = (Parsers::RemediationExceptionResourceKeys.parse(map['FailedItems']) unless map['FailedItems'].nil?)
        return data
      end
    end

    class RemediationExceptionResourceKeys
      def self.parse(list)
        list.map do |value|
          Parsers::RemediationExceptionResourceKey.parse(value) unless value.nil?
        end
      end
    end

    class RemediationExceptionResourceKey
      def self.parse(map)
        data = Types::RemediationExceptionResourceKey.new
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        return data
      end
    end

    # Error Parser for NoSuchRemediationExceptionException
    class NoSuchRemediationExceptionException
      def self.parse(http_resp)
        data = Types::NoSuchRemediationExceptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteResourceConfig
    class DeleteResourceConfig
      def self.parse(http_resp)
        data = Types::DeleteResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoRunningConfigurationRecorderException
    class NoRunningConfigurationRecorderException
      def self.parse(http_resp)
        data = Types::NoRunningConfigurationRecorderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteRetentionConfiguration
    class DeleteRetentionConfiguration
      def self.parse(http_resp)
        data = Types::DeleteRetentionConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoSuchRetentionConfigurationException
    class NoSuchRetentionConfigurationException
      def self.parse(http_resp)
        data = Types::NoSuchRetentionConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteStoredQuery
    class DeleteStoredQuery
      def self.parse(http_resp)
        data = Types::DeleteStoredQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeliverConfigSnapshot
    class DeliverConfigSnapshot
      def self.parse(http_resp)
        data = Types::DeliverConfigSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.config_snapshot_id = map['configSnapshotId']
        data
      end
    end

    # Operation Parser for DescribeAggregateComplianceByConfigRules
    class DescribeAggregateComplianceByConfigRules
      def self.parse(http_resp)
        data = Types::DescribeAggregateComplianceByConfigRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregate_compliance_by_config_rules = (Parsers::AggregateComplianceByConfigRuleList.parse(map['AggregateComplianceByConfigRules']) unless map['AggregateComplianceByConfigRules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregateComplianceByConfigRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateComplianceByConfigRule.parse(value) unless value.nil?
        end
      end
    end

    class AggregateComplianceByConfigRule
      def self.parse(map)
        data = Types::AggregateComplianceByConfigRule.new
        data.config_rule_name = map['ConfigRuleName']
        data.compliance = (Parsers::Compliance.parse(map['Compliance']) unless map['Compliance'].nil?)
        data.account_id = map['AccountId']
        data.aws_region = map['AwsRegion']
        return data
      end
    end

    class Compliance
      def self.parse(map)
        data = Types::Compliance.new
        data.compliance_type = map['ComplianceType']
        data.compliance_contributor_count = (Parsers::ComplianceContributorCount.parse(map['ComplianceContributorCount']) unless map['ComplianceContributorCount'].nil?)
        return data
      end
    end

    class ComplianceContributorCount
      def self.parse(map)
        data = Types::ComplianceContributorCount.new
        data.capped_count = map['CappedCount']
        data.cap_exceeded = map['CapExceeded']
        return data
      end
    end

    # Error Parser for InvalidLimitException
    class InvalidLimitException
      def self.parse(http_resp)
        data = Types::InvalidLimitException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeAggregateComplianceByConformancePacks
    class DescribeAggregateComplianceByConformancePacks
      def self.parse(http_resp)
        data = Types::DescribeAggregateComplianceByConformancePacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregate_compliance_by_conformance_packs = (Parsers::AggregateComplianceByConformancePackList.parse(map['AggregateComplianceByConformancePacks']) unless map['AggregateComplianceByConformancePacks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregateComplianceByConformancePackList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateComplianceByConformancePack.parse(value) unless value.nil?
        end
      end
    end

    class AggregateComplianceByConformancePack
      def self.parse(map)
        data = Types::AggregateComplianceByConformancePack.new
        data.conformance_pack_name = map['ConformancePackName']
        data.compliance = (Parsers::AggregateConformancePackCompliance.parse(map['Compliance']) unless map['Compliance'].nil?)
        data.account_id = map['AccountId']
        data.aws_region = map['AwsRegion']
        return data
      end
    end

    class AggregateConformancePackCompliance
      def self.parse(map)
        data = Types::AggregateConformancePackCompliance.new
        data.compliance_type = map['ComplianceType']
        data.compliant_rule_count = map['CompliantRuleCount']
        data.non_compliant_rule_count = map['NonCompliantRuleCount']
        data.total_rule_count = map['TotalRuleCount']
        return data
      end
    end

    # Operation Parser for DescribeAggregationAuthorizations
    class DescribeAggregationAuthorizations
      def self.parse(http_resp)
        data = Types::DescribeAggregationAuthorizationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregation_authorizations = (Parsers::AggregationAuthorizationList.parse(map['AggregationAuthorizations']) unless map['AggregationAuthorizations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregationAuthorizationList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregationAuthorization.parse(value) unless value.nil?
        end
      end
    end

    class AggregationAuthorization
      def self.parse(map)
        data = Types::AggregationAuthorization.new
        data.aggregation_authorization_arn = map['AggregationAuthorizationArn']
        data.authorized_account_id = map['AuthorizedAccountId']
        data.authorized_aws_region = map['AuthorizedAwsRegion']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for DescribeComplianceByConfigRule
    class DescribeComplianceByConfigRule
      def self.parse(http_resp)
        data = Types::DescribeComplianceByConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compliance_by_config_rules = (Parsers::ComplianceByConfigRules.parse(map['ComplianceByConfigRules']) unless map['ComplianceByConfigRules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ComplianceByConfigRules
      def self.parse(list)
        list.map do |value|
          Parsers::ComplianceByConfigRule.parse(value) unless value.nil?
        end
      end
    end

    class ComplianceByConfigRule
      def self.parse(map)
        data = Types::ComplianceByConfigRule.new
        data.config_rule_name = map['ConfigRuleName']
        data.compliance = (Parsers::Compliance.parse(map['Compliance']) unless map['Compliance'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeComplianceByResource
    class DescribeComplianceByResource
      def self.parse(http_resp)
        data = Types::DescribeComplianceByResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compliance_by_resources = (Parsers::ComplianceByResources.parse(map['ComplianceByResources']) unless map['ComplianceByResources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ComplianceByResources
      def self.parse(list)
        list.map do |value|
          Parsers::ComplianceByResource.parse(value) unless value.nil?
        end
      end
    end

    class ComplianceByResource
      def self.parse(map)
        data = Types::ComplianceByResource.new
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.compliance = (Parsers::Compliance.parse(map['Compliance']) unless map['Compliance'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeConfigRuleEvaluationStatus
    class DescribeConfigRuleEvaluationStatus
      def self.parse(http_resp)
        data = Types::DescribeConfigRuleEvaluationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.config_rules_evaluation_status = (Parsers::ConfigRuleEvaluationStatusList.parse(map['ConfigRulesEvaluationStatus']) unless map['ConfigRulesEvaluationStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigRuleEvaluationStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigRuleEvaluationStatus.parse(value) unless value.nil?
        end
      end
    end

    class ConfigRuleEvaluationStatus
      def self.parse(map)
        data = Types::ConfigRuleEvaluationStatus.new
        data.config_rule_name = map['ConfigRuleName']
        data.config_rule_arn = map['ConfigRuleArn']
        data.config_rule_id = map['ConfigRuleId']
        data.last_successful_invocation_time = Time.at(map['LastSuccessfulInvocationTime'].to_i) if map['LastSuccessfulInvocationTime']
        data.last_failed_invocation_time = Time.at(map['LastFailedInvocationTime'].to_i) if map['LastFailedInvocationTime']
        data.last_successful_evaluation_time = Time.at(map['LastSuccessfulEvaluationTime'].to_i) if map['LastSuccessfulEvaluationTime']
        data.last_failed_evaluation_time = Time.at(map['LastFailedEvaluationTime'].to_i) if map['LastFailedEvaluationTime']
        data.first_activated_time = Time.at(map['FirstActivatedTime'].to_i) if map['FirstActivatedTime']
        data.last_deactivated_time = Time.at(map['LastDeactivatedTime'].to_i) if map['LastDeactivatedTime']
        data.last_error_code = map['LastErrorCode']
        data.last_error_message = map['LastErrorMessage']
        data.first_evaluation_started = map['FirstEvaluationStarted']
        data.last_debug_log_delivery_status = map['LastDebugLogDeliveryStatus']
        data.last_debug_log_delivery_status_reason = map['LastDebugLogDeliveryStatusReason']
        data.last_debug_log_delivery_time = Time.at(map['LastDebugLogDeliveryTime'].to_i) if map['LastDebugLogDeliveryTime']
        return data
      end
    end

    # Operation Parser for DescribeConfigRules
    class DescribeConfigRules
      def self.parse(http_resp)
        data = Types::DescribeConfigRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.config_rules = (Parsers::ConfigRules.parse(map['ConfigRules']) unless map['ConfigRules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigRules
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigRule.parse(value) unless value.nil?
        end
      end
    end

    class ConfigRule
      def self.parse(map)
        data = Types::ConfigRule.new
        data.config_rule_name = map['ConfigRuleName']
        data.config_rule_arn = map['ConfigRuleArn']
        data.config_rule_id = map['ConfigRuleId']
        data.description = map['Description']
        data.scope = (Parsers::Scope.parse(map['Scope']) unless map['Scope'].nil?)
        data.source = (Parsers::Source.parse(map['Source']) unless map['Source'].nil?)
        data.input_parameters = map['InputParameters']
        data.maximum_execution_frequency = map['MaximumExecutionFrequency']
        data.config_rule_state = map['ConfigRuleState']
        data.created_by = map['CreatedBy']
        return data
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.owner = map['Owner']
        data.source_identifier = map['SourceIdentifier']
        data.source_details = (Parsers::SourceDetails.parse(map['SourceDetails']) unless map['SourceDetails'].nil?)
        data.custom_policy_details = (Parsers::CustomPolicyDetails.parse(map['CustomPolicyDetails']) unless map['CustomPolicyDetails'].nil?)
        return data
      end
    end

    class CustomPolicyDetails
      def self.parse(map)
        data = Types::CustomPolicyDetails.new
        data.policy_runtime = map['PolicyRuntime']
        data.policy_text = map['PolicyText']
        data.enable_debug_log_delivery = map['EnableDebugLogDelivery']
        return data
      end
    end

    class SourceDetails
      def self.parse(list)
        list.map do |value|
          Parsers::SourceDetail.parse(value) unless value.nil?
        end
      end
    end

    class SourceDetail
      def self.parse(map)
        data = Types::SourceDetail.new
        data.event_source = map['EventSource']
        data.message_type = map['MessageType']
        data.maximum_execution_frequency = map['MaximumExecutionFrequency']
        return data
      end
    end

    class Scope
      def self.parse(map)
        data = Types::Scope.new
        data.compliance_resource_types = (Parsers::ComplianceResourceTypes.parse(map['ComplianceResourceTypes']) unless map['ComplianceResourceTypes'].nil?)
        data.tag_key = map['TagKey']
        data.tag_value = map['TagValue']
        data.compliance_resource_id = map['ComplianceResourceId']
        return data
      end
    end

    class ComplianceResourceTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeConfigurationAggregatorSourcesStatus
    class DescribeConfigurationAggregatorSourcesStatus
      def self.parse(http_resp)
        data = Types::DescribeConfigurationAggregatorSourcesStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregated_source_status_list = (Parsers::AggregatedSourceStatusList.parse(map['AggregatedSourceStatusList']) unless map['AggregatedSourceStatusList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregatedSourceStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregatedSourceStatus.parse(value) unless value.nil?
        end
      end
    end

    class AggregatedSourceStatus
      def self.parse(map)
        data = Types::AggregatedSourceStatus.new
        data.source_id = map['SourceId']
        data.source_type = map['SourceType']
        data.aws_region = map['AwsRegion']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        data.last_error_code = map['LastErrorCode']
        data.last_error_message = map['LastErrorMessage']
        return data
      end
    end

    # Operation Parser for DescribeConfigurationAggregators
    class DescribeConfigurationAggregators
      def self.parse(http_resp)
        data = Types::DescribeConfigurationAggregatorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_aggregators = (Parsers::ConfigurationAggregatorList.parse(map['ConfigurationAggregators']) unless map['ConfigurationAggregators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigurationAggregatorList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigurationAggregator.parse(value) unless value.nil?
        end
      end
    end

    class ConfigurationAggregator
      def self.parse(map)
        data = Types::ConfigurationAggregator.new
        data.configuration_aggregator_name = map['ConfigurationAggregatorName']
        data.configuration_aggregator_arn = map['ConfigurationAggregatorArn']
        data.account_aggregation_sources = (Parsers::AccountAggregationSourceList.parse(map['AccountAggregationSources']) unless map['AccountAggregationSources'].nil?)
        data.organization_aggregation_source = (Parsers::OrganizationAggregationSource.parse(map['OrganizationAggregationSource']) unless map['OrganizationAggregationSource'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_by = map['CreatedBy']
        return data
      end
    end

    class OrganizationAggregationSource
      def self.parse(map)
        data = Types::OrganizationAggregationSource.new
        data.role_arn = map['RoleArn']
        data.aws_regions = (Parsers::AggregatorRegionList.parse(map['AwsRegions']) unless map['AwsRegions'].nil?)
        data.all_aws_regions = map['AllAwsRegions']
        return data
      end
    end

    class AggregatorRegionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AccountAggregationSourceList
      def self.parse(list)
        list.map do |value|
          Parsers::AccountAggregationSource.parse(value) unless value.nil?
        end
      end
    end

    class AccountAggregationSource
      def self.parse(map)
        data = Types::AccountAggregationSource.new
        data.account_ids = (Parsers::AccountAggregationSourceAccountList.parse(map['AccountIds']) unless map['AccountIds'].nil?)
        data.all_aws_regions = map['AllAwsRegions']
        data.aws_regions = (Parsers::AggregatorRegionList.parse(map['AwsRegions']) unless map['AwsRegions'].nil?)
        return data
      end
    end

    class AccountAggregationSourceAccountList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeConfigurationRecorderStatus
    class DescribeConfigurationRecorderStatus
      def self.parse(http_resp)
        data = Types::DescribeConfigurationRecorderStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_recorders_status = (Parsers::ConfigurationRecorderStatusList.parse(map['ConfigurationRecordersStatus']) unless map['ConfigurationRecordersStatus'].nil?)
        data
      end
    end

    class ConfigurationRecorderStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigurationRecorderStatus.parse(value) unless value.nil?
        end
      end
    end

    class ConfigurationRecorderStatus
      def self.parse(map)
        data = Types::ConfigurationRecorderStatus.new
        data.name = map['name']
        data.last_start_time = Time.at(map['lastStartTime'].to_i) if map['lastStartTime']
        data.last_stop_time = Time.at(map['lastStopTime'].to_i) if map['lastStopTime']
        data.recording = map['recording']
        data.last_status = map['lastStatus']
        data.last_error_code = map['lastErrorCode']
        data.last_error_message = map['lastErrorMessage']
        data.last_status_change_time = Time.at(map['lastStatusChangeTime'].to_i) if map['lastStatusChangeTime']
        return data
      end
    end

    # Operation Parser for DescribeConfigurationRecorders
    class DescribeConfigurationRecorders
      def self.parse(http_resp)
        data = Types::DescribeConfigurationRecordersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_recorders = (Parsers::ConfigurationRecorderList.parse(map['ConfigurationRecorders']) unless map['ConfigurationRecorders'].nil?)
        data
      end
    end

    class ConfigurationRecorderList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigurationRecorder.parse(value) unless value.nil?
        end
      end
    end

    class ConfigurationRecorder
      def self.parse(map)
        data = Types::ConfigurationRecorder.new
        data.name = map['name']
        data.role_arn = map['roleARN']
        data.recording_group = (Parsers::RecordingGroup.parse(map['recordingGroup']) unless map['recordingGroup'].nil?)
        return data
      end
    end

    class RecordingGroup
      def self.parse(map)
        data = Types::RecordingGroup.new
        data.all_supported = map['allSupported']
        data.include_global_resource_types = map['includeGlobalResourceTypes']
        data.resource_types = (Parsers::ResourceTypeList.parse(map['resourceTypes']) unless map['resourceTypes'].nil?)
        return data
      end
    end

    class ResourceTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeConformancePackCompliance
    class DescribeConformancePackCompliance
      def self.parse(http_resp)
        data = Types::DescribeConformancePackComplianceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conformance_pack_name = map['ConformancePackName']
        data.conformance_pack_rule_compliance_list = (Parsers::ConformancePackRuleComplianceList.parse(map['ConformancePackRuleComplianceList']) unless map['ConformancePackRuleComplianceList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConformancePackRuleComplianceList
      def self.parse(list)
        list.map do |value|
          Parsers::ConformancePackRuleCompliance.parse(value) unless value.nil?
        end
      end
    end

    class ConformancePackRuleCompliance
      def self.parse(map)
        data = Types::ConformancePackRuleCompliance.new
        data.config_rule_name = map['ConfigRuleName']
        data.compliance_type = map['ComplianceType']
        data.controls = (Parsers::ControlsList.parse(map['Controls']) unless map['Controls'].nil?)
        return data
      end
    end

    class ControlsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for NoSuchConfigRuleInConformancePackException
    class NoSuchConfigRuleInConformancePackException
      def self.parse(http_resp)
        data = Types::NoSuchConfigRuleInConformancePackException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeConformancePackStatus
    class DescribeConformancePackStatus
      def self.parse(http_resp)
        data = Types::DescribeConformancePackStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conformance_pack_status_details = (Parsers::ConformancePackStatusDetailsList.parse(map['ConformancePackStatusDetails']) unless map['ConformancePackStatusDetails'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConformancePackStatusDetailsList
      def self.parse(list)
        list.map do |value|
          Parsers::ConformancePackStatusDetail.parse(value) unless value.nil?
        end
      end
    end

    class ConformancePackStatusDetail
      def self.parse(map)
        data = Types::ConformancePackStatusDetail.new
        data.conformance_pack_name = map['ConformancePackName']
        data.conformance_pack_id = map['ConformancePackId']
        data.conformance_pack_arn = map['ConformancePackArn']
        data.conformance_pack_state = map['ConformancePackState']
        data.stack_arn = map['StackArn']
        data.conformance_pack_status_reason = map['ConformancePackStatusReason']
        data.last_update_requested_time = Time.at(map['LastUpdateRequestedTime'].to_i) if map['LastUpdateRequestedTime']
        data.last_update_completed_time = Time.at(map['LastUpdateCompletedTime'].to_i) if map['LastUpdateCompletedTime']
        return data
      end
    end

    # Operation Parser for DescribeConformancePacks
    class DescribeConformancePacks
      def self.parse(http_resp)
        data = Types::DescribeConformancePacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conformance_pack_details = (Parsers::ConformancePackDetailList.parse(map['ConformancePackDetails']) unless map['ConformancePackDetails'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConformancePackDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ConformancePackDetail.parse(value) unless value.nil?
        end
      end
    end

    class ConformancePackDetail
      def self.parse(map)
        data = Types::ConformancePackDetail.new
        data.conformance_pack_name = map['ConformancePackName']
        data.conformance_pack_arn = map['ConformancePackArn']
        data.conformance_pack_id = map['ConformancePackId']
        data.delivery_s3_bucket = map['DeliveryS3Bucket']
        data.delivery_s3_key_prefix = map['DeliveryS3KeyPrefix']
        data.conformance_pack_input_parameters = (Parsers::ConformancePackInputParameters.parse(map['ConformancePackInputParameters']) unless map['ConformancePackInputParameters'].nil?)
        data.last_update_requested_time = Time.at(map['LastUpdateRequestedTime'].to_i) if map['LastUpdateRequestedTime']
        data.created_by = map['CreatedBy']
        return data
      end
    end

    class ConformancePackInputParameters
      def self.parse(list)
        list.map do |value|
          Parsers::ConformancePackInputParameter.parse(value) unless value.nil?
        end
      end
    end

    class ConformancePackInputParameter
      def self.parse(map)
        data = Types::ConformancePackInputParameter.new
        data.parameter_name = map['ParameterName']
        data.parameter_value = map['ParameterValue']
        return data
      end
    end

    # Operation Parser for DescribeDeliveryChannelStatus
    class DescribeDeliveryChannelStatus
      def self.parse(http_resp)
        data = Types::DescribeDeliveryChannelStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delivery_channels_status = (Parsers::DeliveryChannelStatusList.parse(map['DeliveryChannelsStatus']) unless map['DeliveryChannelsStatus'].nil?)
        data
      end
    end

    class DeliveryChannelStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::DeliveryChannelStatus.parse(value) unless value.nil?
        end
      end
    end

    class DeliveryChannelStatus
      def self.parse(map)
        data = Types::DeliveryChannelStatus.new
        data.name = map['name']
        data.config_snapshot_delivery_info = (Parsers::ConfigExportDeliveryInfo.parse(map['configSnapshotDeliveryInfo']) unless map['configSnapshotDeliveryInfo'].nil?)
        data.config_history_delivery_info = (Parsers::ConfigExportDeliveryInfo.parse(map['configHistoryDeliveryInfo']) unless map['configHistoryDeliveryInfo'].nil?)
        data.config_stream_delivery_info = (Parsers::ConfigStreamDeliveryInfo.parse(map['configStreamDeliveryInfo']) unless map['configStreamDeliveryInfo'].nil?)
        return data
      end
    end

    class ConfigStreamDeliveryInfo
      def self.parse(map)
        data = Types::ConfigStreamDeliveryInfo.new
        data.last_status = map['lastStatus']
        data.last_error_code = map['lastErrorCode']
        data.last_error_message = map['lastErrorMessage']
        data.last_status_change_time = Time.at(map['lastStatusChangeTime'].to_i) if map['lastStatusChangeTime']
        return data
      end
    end

    class ConfigExportDeliveryInfo
      def self.parse(map)
        data = Types::ConfigExportDeliveryInfo.new
        data.last_status = map['lastStatus']
        data.last_error_code = map['lastErrorCode']
        data.last_error_message = map['lastErrorMessage']
        data.last_attempt_time = Time.at(map['lastAttemptTime'].to_i) if map['lastAttemptTime']
        data.last_successful_time = Time.at(map['lastSuccessfulTime'].to_i) if map['lastSuccessfulTime']
        data.next_delivery_time = Time.at(map['nextDeliveryTime'].to_i) if map['nextDeliveryTime']
        return data
      end
    end

    # Operation Parser for DescribeDeliveryChannels
    class DescribeDeliveryChannels
      def self.parse(http_resp)
        data = Types::DescribeDeliveryChannelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delivery_channels = (Parsers::DeliveryChannelList.parse(map['DeliveryChannels']) unless map['DeliveryChannels'].nil?)
        data
      end
    end

    class DeliveryChannelList
      def self.parse(list)
        list.map do |value|
          Parsers::DeliveryChannel.parse(value) unless value.nil?
        end
      end
    end

    class DeliveryChannel
      def self.parse(map)
        data = Types::DeliveryChannel.new
        data.name = map['name']
        data.s3_bucket_name = map['s3BucketName']
        data.s3_key_prefix = map['s3KeyPrefix']
        data.s3_kms_key_arn = map['s3KmsKeyArn']
        data.sns_topic_arn = map['snsTopicARN']
        data.config_snapshot_delivery_properties = (Parsers::ConfigSnapshotDeliveryProperties.parse(map['configSnapshotDeliveryProperties']) unless map['configSnapshotDeliveryProperties'].nil?)
        return data
      end
    end

    class ConfigSnapshotDeliveryProperties
      def self.parse(map)
        data = Types::ConfigSnapshotDeliveryProperties.new
        data.delivery_frequency = map['deliveryFrequency']
        return data
      end
    end

    # Operation Parser for DescribeOrganizationConfigRuleStatuses
    class DescribeOrganizationConfigRuleStatuses
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigRuleStatusesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_config_rule_statuses = (Parsers::OrganizationConfigRuleStatuses.parse(map['OrganizationConfigRuleStatuses']) unless map['OrganizationConfigRuleStatuses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationConfigRuleStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationConfigRuleStatus.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationConfigRuleStatus
      def self.parse(map)
        data = Types::OrganizationConfigRuleStatus.new
        data.organization_config_rule_name = map['OrganizationConfigRuleName']
        data.organization_rule_status = map['OrganizationRuleStatus']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    # Operation Parser for DescribeOrganizationConfigRules
    class DescribeOrganizationConfigRules
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_config_rules = (Parsers::OrganizationConfigRules.parse(map['OrganizationConfigRules']) unless map['OrganizationConfigRules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationConfigRules
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationConfigRule.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationConfigRule
      def self.parse(map)
        data = Types::OrganizationConfigRule.new
        data.organization_config_rule_name = map['OrganizationConfigRuleName']
        data.organization_config_rule_arn = map['OrganizationConfigRuleArn']
        data.organization_managed_rule_metadata = (Parsers::OrganizationManagedRuleMetadata.parse(map['OrganizationManagedRuleMetadata']) unless map['OrganizationManagedRuleMetadata'].nil?)
        data.organization_custom_rule_metadata = (Parsers::OrganizationCustomRuleMetadata.parse(map['OrganizationCustomRuleMetadata']) unless map['OrganizationCustomRuleMetadata'].nil?)
        data.excluded_accounts = (Parsers::ExcludedAccounts.parse(map['ExcludedAccounts']) unless map['ExcludedAccounts'].nil?)
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        data.organization_custom_policy_rule_metadata = (Parsers::OrganizationCustomPolicyRuleMetadataNoPolicy.parse(map['OrganizationCustomPolicyRuleMetadata']) unless map['OrganizationCustomPolicyRuleMetadata'].nil?)
        return data
      end
    end

    class OrganizationCustomPolicyRuleMetadataNoPolicy
      def self.parse(map)
        data = Types::OrganizationCustomPolicyRuleMetadataNoPolicy.new
        data.description = map['Description']
        data.organization_config_rule_trigger_types = (Parsers::OrganizationConfigRuleTriggerTypeNoSNs.parse(map['OrganizationConfigRuleTriggerTypes']) unless map['OrganizationConfigRuleTriggerTypes'].nil?)
        data.input_parameters = map['InputParameters']
        data.maximum_execution_frequency = map['MaximumExecutionFrequency']
        data.resource_types_scope = (Parsers::ResourceTypesScope.parse(map['ResourceTypesScope']) unless map['ResourceTypesScope'].nil?)
        data.resource_id_scope = map['ResourceIdScope']
        data.tag_key_scope = map['TagKeyScope']
        data.tag_value_scope = map['TagValueScope']
        data.policy_runtime = map['PolicyRuntime']
        data.debug_log_delivery_accounts = (Parsers::DebugLogDeliveryAccounts.parse(map['DebugLogDeliveryAccounts']) unless map['DebugLogDeliveryAccounts'].nil?)
        return data
      end
    end

    class DebugLogDeliveryAccounts
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceTypesScope
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OrganizationConfigRuleTriggerTypeNoSNs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ExcludedAccounts
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OrganizationCustomRuleMetadata
      def self.parse(map)
        data = Types::OrganizationCustomRuleMetadata.new
        data.description = map['Description']
        data.lambda_function_arn = map['LambdaFunctionArn']
        data.organization_config_rule_trigger_types = (Parsers::OrganizationConfigRuleTriggerTypes.parse(map['OrganizationConfigRuleTriggerTypes']) unless map['OrganizationConfigRuleTriggerTypes'].nil?)
        data.input_parameters = map['InputParameters']
        data.maximum_execution_frequency = map['MaximumExecutionFrequency']
        data.resource_types_scope = (Parsers::ResourceTypesScope.parse(map['ResourceTypesScope']) unless map['ResourceTypesScope'].nil?)
        data.resource_id_scope = map['ResourceIdScope']
        data.tag_key_scope = map['TagKeyScope']
        data.tag_value_scope = map['TagValueScope']
        return data
      end
    end

    class OrganizationConfigRuleTriggerTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OrganizationManagedRuleMetadata
      def self.parse(map)
        data = Types::OrganizationManagedRuleMetadata.new
        data.description = map['Description']
        data.rule_identifier = map['RuleIdentifier']
        data.input_parameters = map['InputParameters']
        data.maximum_execution_frequency = map['MaximumExecutionFrequency']
        data.resource_types_scope = (Parsers::ResourceTypesScope.parse(map['ResourceTypesScope']) unless map['ResourceTypesScope'].nil?)
        data.resource_id_scope = map['ResourceIdScope']
        data.tag_key_scope = map['TagKeyScope']
        data.tag_value_scope = map['TagValueScope']
        return data
      end
    end

    # Operation Parser for DescribeOrganizationConformancePackStatuses
    class DescribeOrganizationConformancePackStatuses
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConformancePackStatusesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_conformance_pack_statuses = (Parsers::OrganizationConformancePackStatuses.parse(map['OrganizationConformancePackStatuses']) unless map['OrganizationConformancePackStatuses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationConformancePackStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationConformancePackStatus.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationConformancePackStatus
      def self.parse(map)
        data = Types::OrganizationConformancePackStatus.new
        data.organization_conformance_pack_name = map['OrganizationConformancePackName']
        data.status = map['Status']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    # Operation Parser for DescribeOrganizationConformancePacks
    class DescribeOrganizationConformancePacks
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConformancePacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_conformance_packs = (Parsers::OrganizationConformancePacks.parse(map['OrganizationConformancePacks']) unless map['OrganizationConformancePacks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationConformancePacks
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationConformancePack.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationConformancePack
      def self.parse(map)
        data = Types::OrganizationConformancePack.new
        data.organization_conformance_pack_name = map['OrganizationConformancePackName']
        data.organization_conformance_pack_arn = map['OrganizationConformancePackArn']
        data.delivery_s3_bucket = map['DeliveryS3Bucket']
        data.delivery_s3_key_prefix = map['DeliveryS3KeyPrefix']
        data.conformance_pack_input_parameters = (Parsers::ConformancePackInputParameters.parse(map['ConformancePackInputParameters']) unless map['ConformancePackInputParameters'].nil?)
        data.excluded_accounts = (Parsers::ExcludedAccounts.parse(map['ExcludedAccounts']) unless map['ExcludedAccounts'].nil?)
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    # Operation Parser for DescribePendingAggregationRequests
    class DescribePendingAggregationRequests
      def self.parse(http_resp)
        data = Types::DescribePendingAggregationRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pending_aggregation_requests = (Parsers::PendingAggregationRequestList.parse(map['PendingAggregationRequests']) unless map['PendingAggregationRequests'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PendingAggregationRequestList
      def self.parse(list)
        list.map do |value|
          Parsers::PendingAggregationRequest.parse(value) unless value.nil?
        end
      end
    end

    class PendingAggregationRequest
      def self.parse(map)
        data = Types::PendingAggregationRequest.new
        data.requester_account_id = map['RequesterAccountId']
        data.requester_aws_region = map['RequesterAwsRegion']
        return data
      end
    end

    # Operation Parser for DescribeRemediationConfigurations
    class DescribeRemediationConfigurations
      def self.parse(http_resp)
        data = Types::DescribeRemediationConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remediation_configurations = (Parsers::RemediationConfigurations.parse(map['RemediationConfigurations']) unless map['RemediationConfigurations'].nil?)
        data
      end
    end

    class RemediationConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::RemediationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class RemediationConfiguration
      def self.parse(map)
        data = Types::RemediationConfiguration.new
        data.config_rule_name = map['ConfigRuleName']
        data.target_type = map['TargetType']
        data.target_id = map['TargetId']
        data.target_version = map['TargetVersion']
        data.parameters = (Parsers::RemediationParameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.resource_type = map['ResourceType']
        data.automatic = map['Automatic']
        data.execution_controls = (Parsers::ExecutionControls.parse(map['ExecutionControls']) unless map['ExecutionControls'].nil?)
        data.maximum_automatic_attempts = map['MaximumAutomaticAttempts']
        data.retry_attempt_seconds = map['RetryAttemptSeconds']
        data.arn = map['Arn']
        data.created_by_service = map['CreatedByService']
        return data
      end
    end

    class ExecutionControls
      def self.parse(map)
        data = Types::ExecutionControls.new
        data.ssm_controls = (Parsers::SsmControls.parse(map['SsmControls']) unless map['SsmControls'].nil?)
        return data
      end
    end

    class SsmControls
      def self.parse(map)
        data = Types::SsmControls.new
        data.concurrent_execution_rate_percentage = map['ConcurrentExecutionRatePercentage']
        data.error_percentage = map['ErrorPercentage']
        return data
      end
    end

    class RemediationParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::RemediationParameterValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class RemediationParameterValue
      def self.parse(map)
        data = Types::RemediationParameterValue.new
        data.resource_value = (Parsers::ResourceValue.parse(map['ResourceValue']) unless map['ResourceValue'].nil?)
        data.static_value = (Parsers::StaticValue.parse(map['StaticValue']) unless map['StaticValue'].nil?)
        return data
      end
    end

    class StaticValue
      def self.parse(map)
        data = Types::StaticValue.new
        data.values = (Parsers::StaticParameterValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class StaticParameterValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceValue
      def self.parse(map)
        data = Types::ResourceValue.new
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeRemediationExceptions
    class DescribeRemediationExceptions
      def self.parse(http_resp)
        data = Types::DescribeRemediationExceptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remediation_exceptions = (Parsers::RemediationExceptions.parse(map['RemediationExceptions']) unless map['RemediationExceptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RemediationExceptions
      def self.parse(list)
        list.map do |value|
          Parsers::RemediationException.parse(value) unless value.nil?
        end
      end
    end

    class RemediationException
      def self.parse(map)
        data = Types::RemediationException.new
        data.config_rule_name = map['ConfigRuleName']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.message = map['Message']
        data.expiration_time = Time.at(map['ExpirationTime'].to_i) if map['ExpirationTime']
        return data
      end
    end

    # Operation Parser for DescribeRemediationExecutionStatus
    class DescribeRemediationExecutionStatus
      def self.parse(http_resp)
        data = Types::DescribeRemediationExecutionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remediation_execution_statuses = (Parsers::RemediationExecutionStatuses.parse(map['RemediationExecutionStatuses']) unless map['RemediationExecutionStatuses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RemediationExecutionStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::RemediationExecutionStatus.parse(value) unless value.nil?
        end
      end
    end

    class RemediationExecutionStatus
      def self.parse(map)
        data = Types::RemediationExecutionStatus.new
        data.resource_key = (Parsers::ResourceKey.parse(map['ResourceKey']) unless map['ResourceKey'].nil?)
        data.state = map['State']
        data.step_details = (Parsers::RemediationExecutionSteps.parse(map['StepDetails']) unless map['StepDetails'].nil?)
        data.invocation_time = Time.at(map['InvocationTime'].to_i) if map['InvocationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class RemediationExecutionSteps
      def self.parse(list)
        list.map do |value|
          Parsers::RemediationExecutionStep.parse(value) unless value.nil?
        end
      end
    end

    class RemediationExecutionStep
      def self.parse(map)
        data = Types::RemediationExecutionStep.new
        data.name = map['Name']
        data.state = map['State']
        data.error_message = map['ErrorMessage']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.stop_time = Time.at(map['StopTime'].to_i) if map['StopTime']
        return data
      end
    end

    # Operation Parser for DescribeRetentionConfigurations
    class DescribeRetentionConfigurations
      def self.parse(http_resp)
        data = Types::DescribeRetentionConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.retention_configurations = (Parsers::RetentionConfigurationList.parse(map['RetentionConfigurations']) unless map['RetentionConfigurations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RetentionConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::RetentionConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class RetentionConfiguration
      def self.parse(map)
        data = Types::RetentionConfiguration.new
        data.name = map['Name']
        data.retention_period_in_days = map['RetentionPeriodInDays']
        return data
      end
    end

    # Operation Parser for GetAggregateComplianceDetailsByConfigRule
    class GetAggregateComplianceDetailsByConfigRule
      def self.parse(http_resp)
        data = Types::GetAggregateComplianceDetailsByConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregate_evaluation_results = (Parsers::AggregateEvaluationResultList.parse(map['AggregateEvaluationResults']) unless map['AggregateEvaluationResults'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregateEvaluationResultList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateEvaluationResult.parse(value) unless value.nil?
        end
      end
    end

    class AggregateEvaluationResult
      def self.parse(map)
        data = Types::AggregateEvaluationResult.new
        data.evaluation_result_identifier = (Parsers::EvaluationResultIdentifier.parse(map['EvaluationResultIdentifier']) unless map['EvaluationResultIdentifier'].nil?)
        data.compliance_type = map['ComplianceType']
        data.result_recorded_time = Time.at(map['ResultRecordedTime'].to_i) if map['ResultRecordedTime']
        data.config_rule_invoked_time = Time.at(map['ConfigRuleInvokedTime'].to_i) if map['ConfigRuleInvokedTime']
        data.annotation = map['Annotation']
        data.account_id = map['AccountId']
        data.aws_region = map['AwsRegion']
        return data
      end
    end

    class EvaluationResultIdentifier
      def self.parse(map)
        data = Types::EvaluationResultIdentifier.new
        data.evaluation_result_qualifier = (Parsers::EvaluationResultQualifier.parse(map['EvaluationResultQualifier']) unless map['EvaluationResultQualifier'].nil?)
        data.ordering_timestamp = Time.at(map['OrderingTimestamp'].to_i) if map['OrderingTimestamp']
        return data
      end
    end

    class EvaluationResultQualifier
      def self.parse(map)
        data = Types::EvaluationResultQualifier.new
        data.config_rule_name = map['ConfigRuleName']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        return data
      end
    end

    # Operation Parser for GetAggregateConfigRuleComplianceSummary
    class GetAggregateConfigRuleComplianceSummary
      def self.parse(http_resp)
        data = Types::GetAggregateConfigRuleComplianceSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group_by_key = map['GroupByKey']
        data.aggregate_compliance_counts = (Parsers::AggregateComplianceCountList.parse(map['AggregateComplianceCounts']) unless map['AggregateComplianceCounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregateComplianceCountList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateComplianceCount.parse(value) unless value.nil?
        end
      end
    end

    class AggregateComplianceCount
      def self.parse(map)
        data = Types::AggregateComplianceCount.new
        data.group_name = map['GroupName']
        data.compliance_summary = (Parsers::ComplianceSummary.parse(map['ComplianceSummary']) unless map['ComplianceSummary'].nil?)
        return data
      end
    end

    class ComplianceSummary
      def self.parse(map)
        data = Types::ComplianceSummary.new
        data.compliant_resource_count = (Parsers::ComplianceContributorCount.parse(map['CompliantResourceCount']) unless map['CompliantResourceCount'].nil?)
        data.non_compliant_resource_count = (Parsers::ComplianceContributorCount.parse(map['NonCompliantResourceCount']) unless map['NonCompliantResourceCount'].nil?)
        data.compliance_summary_timestamp = Time.at(map['ComplianceSummaryTimestamp'].to_i) if map['ComplianceSummaryTimestamp']
        return data
      end
    end

    # Operation Parser for GetAggregateConformancePackComplianceSummary
    class GetAggregateConformancePackComplianceSummary
      def self.parse(http_resp)
        data = Types::GetAggregateConformancePackComplianceSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregate_conformance_pack_compliance_summaries = (Parsers::AggregateConformancePackComplianceSummaryList.parse(map['AggregateConformancePackComplianceSummaries']) unless map['AggregateConformancePackComplianceSummaries'].nil?)
        data.group_by_key = map['GroupByKey']
        data.next_token = map['NextToken']
        data
      end
    end

    class AggregateConformancePackComplianceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateConformancePackComplianceSummary.parse(value) unless value.nil?
        end
      end
    end

    class AggregateConformancePackComplianceSummary
      def self.parse(map)
        data = Types::AggregateConformancePackComplianceSummary.new
        data.compliance_summary = (Parsers::AggregateConformancePackComplianceCount.parse(map['ComplianceSummary']) unless map['ComplianceSummary'].nil?)
        data.group_name = map['GroupName']
        return data
      end
    end

    class AggregateConformancePackComplianceCount
      def self.parse(map)
        data = Types::AggregateConformancePackComplianceCount.new
        data.compliant_conformance_pack_count = map['CompliantConformancePackCount']
        data.non_compliant_conformance_pack_count = map['NonCompliantConformancePackCount']
        return data
      end
    end

    # Operation Parser for GetAggregateDiscoveredResourceCounts
    class GetAggregateDiscoveredResourceCounts
      def self.parse(http_resp)
        data = Types::GetAggregateDiscoveredResourceCountsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.total_discovered_resources = map['TotalDiscoveredResources']
        data.group_by_key = map['GroupByKey']
        data.grouped_resource_counts = (Parsers::GroupedResourceCountList.parse(map['GroupedResourceCounts']) unless map['GroupedResourceCounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GroupedResourceCountList
      def self.parse(list)
        list.map do |value|
          Parsers::GroupedResourceCount.parse(value) unless value.nil?
        end
      end
    end

    class GroupedResourceCount
      def self.parse(map)
        data = Types::GroupedResourceCount.new
        data.group_name = map['GroupName']
        data.resource_count = map['ResourceCount']
        return data
      end
    end

    # Operation Parser for GetAggregateResourceConfig
    class GetAggregateResourceConfig
      def self.parse(http_resp)
        data = Types::GetAggregateResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_item = (Parsers::ConfigurationItem.parse(map['ConfigurationItem']) unless map['ConfigurationItem'].nil?)
        data
      end
    end

    class ConfigurationItem
      def self.parse(map)
        data = Types::ConfigurationItem.new
        data.version = map['version']
        data.account_id = map['accountId']
        data.configuration_item_capture_time = Time.at(map['configurationItemCaptureTime'].to_i) if map['configurationItemCaptureTime']
        data.configuration_item_status = map['configurationItemStatus']
        data.configuration_state_id = map['configurationStateId']
        data.configuration_item_md5_hash = map['configurationItemMD5Hash']
        data.arn = map['arn']
        data.resource_type = map['resourceType']
        data.resource_id = map['resourceId']
        data.resource_name = map['resourceName']
        data.aws_region = map['awsRegion']
        data.availability_zone = map['availabilityZone']
        data.resource_creation_time = Time.at(map['resourceCreationTime'].to_i) if map['resourceCreationTime']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.related_events = (Parsers::RelatedEventList.parse(map['relatedEvents']) unless map['relatedEvents'].nil?)
        data.relationships = (Parsers::RelationshipList.parse(map['relationships']) unless map['relationships'].nil?)
        data.configuration = map['configuration']
        data.supplementary_configuration = (Parsers::SupplementaryConfiguration.parse(map['supplementaryConfiguration']) unless map['supplementaryConfiguration'].nil?)
        return data
      end
    end

    class RelationshipList
      def self.parse(list)
        list.map do |value|
          Parsers::Relationship.parse(value) unless value.nil?
        end
      end
    end

    class Relationship
      def self.parse(map)
        data = Types::Relationship.new
        data.resource_type = map['resourceType']
        data.resource_id = map['resourceId']
        data.resource_name = map['resourceName']
        data.relationship_name = map['relationshipName']
        return data
      end
    end

    class RelatedEventList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for OversizedConfigurationItemException
    class OversizedConfigurationItemException
      def self.parse(http_resp)
        data = Types::OversizedConfigurationItemException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotDiscoveredException
    class ResourceNotDiscoveredException
      def self.parse(http_resp)
        data = Types::ResourceNotDiscoveredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetComplianceDetailsByConfigRule
    class GetComplianceDetailsByConfigRule
      def self.parse(http_resp)
        data = Types::GetComplianceDetailsByConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation_results = (Parsers::EvaluationResults.parse(map['EvaluationResults']) unless map['EvaluationResults'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EvaluationResults
      def self.parse(list)
        list.map do |value|
          Parsers::EvaluationResult.parse(value) unless value.nil?
        end
      end
    end

    class EvaluationResult
      def self.parse(map)
        data = Types::EvaluationResult.new
        data.evaluation_result_identifier = (Parsers::EvaluationResultIdentifier.parse(map['EvaluationResultIdentifier']) unless map['EvaluationResultIdentifier'].nil?)
        data.compliance_type = map['ComplianceType']
        data.result_recorded_time = Time.at(map['ResultRecordedTime'].to_i) if map['ResultRecordedTime']
        data.config_rule_invoked_time = Time.at(map['ConfigRuleInvokedTime'].to_i) if map['ConfigRuleInvokedTime']
        data.annotation = map['Annotation']
        data.result_token = map['ResultToken']
        return data
      end
    end

    # Operation Parser for GetComplianceDetailsByResource
    class GetComplianceDetailsByResource
      def self.parse(http_resp)
        data = Types::GetComplianceDetailsByResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation_results = (Parsers::EvaluationResults.parse(map['EvaluationResults']) unless map['EvaluationResults'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetComplianceSummaryByConfigRule
    class GetComplianceSummaryByConfigRule
      def self.parse(http_resp)
        data = Types::GetComplianceSummaryByConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compliance_summary = (Parsers::ComplianceSummary.parse(map['ComplianceSummary']) unless map['ComplianceSummary'].nil?)
        data
      end
    end

    # Operation Parser for GetComplianceSummaryByResourceType
    class GetComplianceSummaryByResourceType
      def self.parse(http_resp)
        data = Types::GetComplianceSummaryByResourceTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compliance_summaries_by_resource_type = (Parsers::ComplianceSummariesByResourceType.parse(map['ComplianceSummariesByResourceType']) unless map['ComplianceSummariesByResourceType'].nil?)
        data
      end
    end

    class ComplianceSummariesByResourceType
      def self.parse(list)
        list.map do |value|
          Parsers::ComplianceSummaryByResourceType.parse(value) unless value.nil?
        end
      end
    end

    class ComplianceSummaryByResourceType
      def self.parse(map)
        data = Types::ComplianceSummaryByResourceType.new
        data.resource_type = map['ResourceType']
        data.compliance_summary = (Parsers::ComplianceSummary.parse(map['ComplianceSummary']) unless map['ComplianceSummary'].nil?)
        return data
      end
    end

    # Operation Parser for GetConformancePackComplianceDetails
    class GetConformancePackComplianceDetails
      def self.parse(http_resp)
        data = Types::GetConformancePackComplianceDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conformance_pack_name = map['ConformancePackName']
        data.conformance_pack_rule_evaluation_results = (Parsers::ConformancePackRuleEvaluationResultsList.parse(map['ConformancePackRuleEvaluationResults']) unless map['ConformancePackRuleEvaluationResults'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConformancePackRuleEvaluationResultsList
      def self.parse(list)
        list.map do |value|
          Parsers::ConformancePackEvaluationResult.parse(value) unless value.nil?
        end
      end
    end

    class ConformancePackEvaluationResult
      def self.parse(map)
        data = Types::ConformancePackEvaluationResult.new
        data.compliance_type = map['ComplianceType']
        data.evaluation_result_identifier = (Parsers::EvaluationResultIdentifier.parse(map['EvaluationResultIdentifier']) unless map['EvaluationResultIdentifier'].nil?)
        data.config_rule_invoked_time = Time.at(map['ConfigRuleInvokedTime'].to_i) if map['ConfigRuleInvokedTime']
        data.result_recorded_time = Time.at(map['ResultRecordedTime'].to_i) if map['ResultRecordedTime']
        data.annotation = map['Annotation']
        return data
      end
    end

    # Operation Parser for GetConformancePackComplianceSummary
    class GetConformancePackComplianceSummary
      def self.parse(http_resp)
        data = Types::GetConformancePackComplianceSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conformance_pack_compliance_summary_list = (Parsers::ConformancePackComplianceSummaryList.parse(map['ConformancePackComplianceSummaryList']) unless map['ConformancePackComplianceSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConformancePackComplianceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ConformancePackComplianceSummary.parse(value) unless value.nil?
        end
      end
    end

    class ConformancePackComplianceSummary
      def self.parse(map)
        data = Types::ConformancePackComplianceSummary.new
        data.conformance_pack_name = map['ConformancePackName']
        data.conformance_pack_compliance_status = map['ConformancePackComplianceStatus']
        return data
      end
    end

    # Operation Parser for GetCustomRulePolicy
    class GetCustomRulePolicy
      def self.parse(http_resp)
        data = Types::GetCustomRulePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_text = map['PolicyText']
        data
      end
    end

    # Operation Parser for GetDiscoveredResourceCounts
    class GetDiscoveredResourceCounts
      def self.parse(http_resp)
        data = Types::GetDiscoveredResourceCountsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.total_discovered_resources = map['totalDiscoveredResources']
        data.resource_counts = (Parsers::ResourceCounts.parse(map['resourceCounts']) unless map['resourceCounts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceCounts
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceCount.parse(value) unless value.nil?
        end
      end
    end

    class ResourceCount
      def self.parse(map)
        data = Types::ResourceCount.new
        data.resource_type = map['resourceType']
        data.count = map['count']
        return data
      end
    end

    # Operation Parser for GetOrganizationConfigRuleDetailedStatus
    class GetOrganizationConfigRuleDetailedStatus
      def self.parse(http_resp)
        data = Types::GetOrganizationConfigRuleDetailedStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_config_rule_detailed_status = (Parsers::OrganizationConfigRuleDetailedStatus.parse(map['OrganizationConfigRuleDetailedStatus']) unless map['OrganizationConfigRuleDetailedStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationConfigRuleDetailedStatus
      def self.parse(list)
        list.map do |value|
          Parsers::MemberAccountStatus.parse(value) unless value.nil?
        end
      end
    end

    class MemberAccountStatus
      def self.parse(map)
        data = Types::MemberAccountStatus.new
        data.account_id = map['AccountId']
        data.config_rule_name = map['ConfigRuleName']
        data.member_account_rule_status = map['MemberAccountRuleStatus']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    # Operation Parser for GetOrganizationConformancePackDetailedStatus
    class GetOrganizationConformancePackDetailedStatus
      def self.parse(http_resp)
        data = Types::GetOrganizationConformancePackDetailedStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_conformance_pack_detailed_statuses = (Parsers::OrganizationConformancePackDetailedStatuses.parse(map['OrganizationConformancePackDetailedStatuses']) unless map['OrganizationConformancePackDetailedStatuses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationConformancePackDetailedStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationConformancePackDetailedStatus.parse(value) unless value.nil?
        end
      end
    end

    class OrganizationConformancePackDetailedStatus
      def self.parse(map)
        data = Types::OrganizationConformancePackDetailedStatus.new
        data.account_id = map['AccountId']
        data.conformance_pack_name = map['ConformancePackName']
        data.status = map['Status']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    # Operation Parser for GetOrganizationCustomRulePolicy
    class GetOrganizationCustomRulePolicy
      def self.parse(http_resp)
        data = Types::GetOrganizationCustomRulePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_text = map['PolicyText']
        data
      end
    end

    # Operation Parser for GetResourceConfigHistory
    class GetResourceConfigHistory
      def self.parse(http_resp)
        data = Types::GetResourceConfigHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_items = (Parsers::ConfigurationItemList.parse(map['configurationItems']) unless map['configurationItems'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ConfigurationItemList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigurationItem.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidTimeRangeException
    class InvalidTimeRangeException
      def self.parse(http_resp)
        data = Types::InvalidTimeRangeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetStoredQuery
    class GetStoredQuery
      def self.parse(http_resp)
        data = Types::GetStoredQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stored_query = (Parsers::StoredQuery.parse(map['StoredQuery']) unless map['StoredQuery'].nil?)
        data
      end
    end

    class StoredQuery
      def self.parse(map)
        data = Types::StoredQuery.new
        data.query_id = map['QueryId']
        data.query_arn = map['QueryArn']
        data.query_name = map['QueryName']
        data.description = map['Description']
        data.expression = map['Expression']
        return data
      end
    end

    # Operation Parser for ListAggregateDiscoveredResources
    class ListAggregateDiscoveredResources
      def self.parse(http_resp)
        data = Types::ListAggregateDiscoveredResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_identifiers = (Parsers::DiscoveredResourceIdentifierList.parse(map['ResourceIdentifiers']) unless map['ResourceIdentifiers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DiscoveredResourceIdentifierList
      def self.parse(list)
        list.map do |value|
          Parsers::AggregateResourceIdentifier.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListDiscoveredResources
    class ListDiscoveredResources
      def self.parse(http_resp)
        data = Types::ListDiscoveredResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_identifiers = (Parsers::ResourceIdentifierList.parse(map['resourceIdentifiers']) unless map['resourceIdentifiers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceIdentifierList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceIdentifier.parse(value) unless value.nil?
        end
      end
    end

    class ResourceIdentifier
      def self.parse(map)
        data = Types::ResourceIdentifier.new
        data.resource_type = map['resourceType']
        data.resource_id = map['resourceId']
        data.resource_name = map['resourceName']
        data.resource_deletion_time = Time.at(map['resourceDeletionTime'].to_i) if map['resourceDeletionTime']
        return data
      end
    end

    # Operation Parser for ListStoredQueries
    class ListStoredQueries
      def self.parse(http_resp)
        data = Types::ListStoredQueriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stored_query_metadata = (Parsers::StoredQueryMetadataList.parse(map['StoredQueryMetadata']) unless map['StoredQueryMetadata'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StoredQueryMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::StoredQueryMetadata.parse(value) unless value.nil?
        end
      end
    end

    class StoredQueryMetadata
      def self.parse(map)
        data = Types::StoredQueryMetadata.new
        data.query_id = map['QueryId']
        data.query_arn = map['QueryArn']
        data.query_name = map['QueryName']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
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

    # Operation Parser for PutAggregationAuthorization
    class PutAggregationAuthorization
      def self.parse(http_resp)
        data = Types::PutAggregationAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aggregation_authorization = (Parsers::AggregationAuthorization.parse(map['AggregationAuthorization']) unless map['AggregationAuthorization'].nil?)
        data
      end
    end

    # Operation Parser for PutConfigRule
    class PutConfigRule
      def self.parse(http_resp)
        data = Types::PutConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for MaxNumberOfConfigRulesExceededException
    class MaxNumberOfConfigRulesExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfConfigRulesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutConfigurationAggregator
    class PutConfigurationAggregator
      def self.parse(http_resp)
        data = Types::PutConfigurationAggregatorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_aggregator = (Parsers::ConfigurationAggregator.parse(map['ConfigurationAggregator']) unless map['ConfigurationAggregator'].nil?)
        data
      end
    end

    # Error Parser for InvalidRoleException
    class InvalidRoleException
      def self.parse(http_resp)
        data = Types::InvalidRoleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoAvailableOrganizationException
    class NoAvailableOrganizationException
      def self.parse(http_resp)
        data = Types::NoAvailableOrganizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OrganizationAllFeaturesNotEnabledException
    class OrganizationAllFeaturesNotEnabledException
      def self.parse(http_resp)
        data = Types::OrganizationAllFeaturesNotEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutConfigurationRecorder
    class PutConfigurationRecorder
      def self.parse(http_resp)
        data = Types::PutConfigurationRecorderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidRecordingGroupException
    class InvalidRecordingGroupException
      def self.parse(http_resp)
        data = Types::InvalidRecordingGroupException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidConfigurationRecorderNameException
    class InvalidConfigurationRecorderNameException
      def self.parse(http_resp)
        data = Types::InvalidConfigurationRecorderNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaxNumberOfConfigurationRecordersExceededException
    class MaxNumberOfConfigurationRecordersExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfConfigurationRecordersExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutConformancePack
    class PutConformancePack
      def self.parse(http_resp)
        data = Types::PutConformancePackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conformance_pack_arn = map['ConformancePackArn']
        data
      end
    end

    # Error Parser for MaxNumberOfConformancePacksExceededException
    class MaxNumberOfConformancePacksExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfConformancePacksExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ConformancePackTemplateValidationException
    class ConformancePackTemplateValidationException
      def self.parse(http_resp)
        data = Types::ConformancePackTemplateValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutDeliveryChannel
    class PutDeliveryChannel
      def self.parse(http_resp)
        data = Types::PutDeliveryChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidS3KmsKeyArnException
    class InvalidS3KmsKeyArnException
      def self.parse(http_resp)
        data = Types::InvalidS3KmsKeyArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSNSTopicARNException
    class InvalidSNSTopicARNException
      def self.parse(http_resp)
        data = Types::InvalidSNSTopicARNException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InsufficientDeliveryPolicyException
    class InsufficientDeliveryPolicyException
      def self.parse(http_resp)
        data = Types::InsufficientDeliveryPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeliveryChannelNameException
    class InvalidDeliveryChannelNameException
      def self.parse(http_resp)
        data = Types::InvalidDeliveryChannelNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoSuchBucketException
    class NoSuchBucketException
      def self.parse(http_resp)
        data = Types::NoSuchBucketException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaxNumberOfDeliveryChannelsExceededException
    class MaxNumberOfDeliveryChannelsExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfDeliveryChannelsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidS3KeyPrefixException
    class InvalidS3KeyPrefixException
      def self.parse(http_resp)
        data = Types::InvalidS3KeyPrefixException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutEvaluations
    class PutEvaluations
      def self.parse(http_resp)
        data = Types::PutEvaluationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_evaluations = (Parsers::Evaluations.parse(map['FailedEvaluations']) unless map['FailedEvaluations'].nil?)
        data
      end
    end

    class Evaluations
      def self.parse(list)
        list.map do |value|
          Parsers::Evaluation.parse(value) unless value.nil?
        end
      end
    end

    class Evaluation
      def self.parse(map)
        data = Types::Evaluation.new
        data.compliance_resource_type = map['ComplianceResourceType']
        data.compliance_resource_id = map['ComplianceResourceId']
        data.compliance_type = map['ComplianceType']
        data.annotation = map['Annotation']
        data.ordering_timestamp = Time.at(map['OrderingTimestamp'].to_i) if map['OrderingTimestamp']
        return data
      end
    end

    # Error Parser for InvalidResultTokenException
    class InvalidResultTokenException
      def self.parse(http_resp)
        data = Types::InvalidResultTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutExternalEvaluation
    class PutExternalEvaluation
      def self.parse(http_resp)
        data = Types::PutExternalEvaluationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutOrganizationConfigRule
    class PutOrganizationConfigRule
      def self.parse(http_resp)
        data = Types::PutOrganizationConfigRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_config_rule_arn = map['OrganizationConfigRuleArn']
        data
      end
    end

    # Error Parser for MaxNumberOfOrganizationConfigRulesExceededException
    class MaxNumberOfOrganizationConfigRulesExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfOrganizationConfigRulesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutOrganizationConformancePack
    class PutOrganizationConformancePack
      def self.parse(http_resp)
        data = Types::PutOrganizationConformancePackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_conformance_pack_arn = map['OrganizationConformancePackArn']
        data
      end
    end

    # Error Parser for OrganizationConformancePackTemplateValidationException
    class OrganizationConformancePackTemplateValidationException
      def self.parse(http_resp)
        data = Types::OrganizationConformancePackTemplateValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaxNumberOfOrganizationConformancePacksExceededException
    class MaxNumberOfOrganizationConformancePacksExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfOrganizationConformancePacksExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutRemediationConfigurations
    class PutRemediationConfigurations
      def self.parse(http_resp)
        data = Types::PutRemediationConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_batches = (Parsers::FailedRemediationBatches.parse(map['FailedBatches']) unless map['FailedBatches'].nil?)
        data
      end
    end

    class FailedRemediationBatches
      def self.parse(list)
        list.map do |value|
          Parsers::FailedRemediationBatch.parse(value) unless value.nil?
        end
      end
    end

    class FailedRemediationBatch
      def self.parse(map)
        data = Types::FailedRemediationBatch.new
        data.failure_message = map['FailureMessage']
        data.failed_items = (Parsers::RemediationConfigurations.parse(map['FailedItems']) unless map['FailedItems'].nil?)
        return data
      end
    end

    # Operation Parser for PutRemediationExceptions
    class PutRemediationExceptions
      def self.parse(http_resp)
        data = Types::PutRemediationExceptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_batches = (Parsers::FailedRemediationExceptionBatches.parse(map['FailedBatches']) unless map['FailedBatches'].nil?)
        data
      end
    end

    class FailedRemediationExceptionBatches
      def self.parse(list)
        list.map do |value|
          Parsers::FailedRemediationExceptionBatch.parse(value) unless value.nil?
        end
      end
    end

    class FailedRemediationExceptionBatch
      def self.parse(map)
        data = Types::FailedRemediationExceptionBatch.new
        data.failure_message = map['FailureMessage']
        data.failed_items = (Parsers::RemediationExceptions.parse(map['FailedItems']) unless map['FailedItems'].nil?)
        return data
      end
    end

    # Operation Parser for PutResourceConfig
    class PutResourceConfig
      def self.parse(http_resp)
        data = Types::PutResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for MaxActiveResourcesExceededException
    class MaxActiveResourcesExceededException
      def self.parse(http_resp)
        data = Types::MaxActiveResourcesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutRetentionConfiguration
    class PutRetentionConfiguration
      def self.parse(http_resp)
        data = Types::PutRetentionConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.retention_configuration = (Parsers::RetentionConfiguration.parse(map['RetentionConfiguration']) unless map['RetentionConfiguration'].nil?)
        data
      end
    end

    # Error Parser for MaxNumberOfRetentionConfigurationsExceededException
    class MaxNumberOfRetentionConfigurationsExceededException
      def self.parse(http_resp)
        data = Types::MaxNumberOfRetentionConfigurationsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutStoredQuery
    class PutStoredQuery
      def self.parse(http_resp)
        data = Types::PutStoredQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_arn = map['QueryArn']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceConcurrentModificationException
    class ResourceConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ResourceConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for SelectAggregateResourceConfig
    class SelectAggregateResourceConfig
      def self.parse(http_resp)
        data = Types::SelectAggregateResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::Results.parse(map['Results']) unless map['Results'].nil?)
        data.query_info = (Parsers::QueryInfo.parse(map['QueryInfo']) unless map['QueryInfo'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class QueryInfo
      def self.parse(map)
        data = Types::QueryInfo.new
        data.select_fields = (Parsers::FieldInfoList.parse(map['SelectFields']) unless map['SelectFields'].nil?)
        return data
      end
    end

    class FieldInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::FieldInfo.parse(value) unless value.nil?
        end
      end
    end

    class FieldInfo
      def self.parse(map)
        data = Types::FieldInfo.new
        data.name = map['Name']
        return data
      end
    end

    class Results
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidExpressionException
    class InvalidExpressionException
      def self.parse(http_resp)
        data = Types::InvalidExpressionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for SelectResourceConfig
    class SelectResourceConfig
      def self.parse(http_resp)
        data = Types::SelectResourceConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::Results.parse(map['Results']) unless map['Results'].nil?)
        data.query_info = (Parsers::QueryInfo.parse(map['QueryInfo']) unless map['QueryInfo'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for StartConfigRulesEvaluation
    class StartConfigRulesEvaluation
      def self.parse(http_resp)
        data = Types::StartConfigRulesEvaluationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartConfigurationRecorder
    class StartConfigurationRecorder
      def self.parse(http_resp)
        data = Types::StartConfigurationRecorderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoAvailableDeliveryChannelException
    class NoAvailableDeliveryChannelException
      def self.parse(http_resp)
        data = Types::NoAvailableDeliveryChannelException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartRemediationExecution
    class StartRemediationExecution
      def self.parse(http_resp)
        data = Types::StartRemediationExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failure_message = map['FailureMessage']
        data.failed_items = (Parsers::ResourceKeys.parse(map['FailedItems']) unless map['FailedItems'].nil?)
        data
      end
    end

    # Operation Parser for StopConfigurationRecorder
    class StopConfigurationRecorder
      def self.parse(http_resp)
        data = Types::StopConfigurationRecorderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
