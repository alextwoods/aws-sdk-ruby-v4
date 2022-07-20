# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ConfigService
  module Builders

    # Operation Builder for BatchGetAggregateResourceConfig
    class BatchGetAggregateResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.BatchGetAggregateResourceConfig'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['ResourceIdentifiers'] = ResourceIdentifiersList.build(input[:resource_identifiers]) unless input[:resource_identifiers].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceIdentifiersList
    class ResourceIdentifiersList
      def self.build(input)
        data = []
        input.each do |element|
          data << AggregateResourceIdentifier.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AggregateResourceIdentifier
    class AggregateResourceIdentifier
      def self.build(input)
        data = {}
        data['SourceAccountId'] = input[:source_account_id] unless input[:source_account_id].nil?
        data['SourceRegion'] = input[:source_region] unless input[:source_region].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data
      end
    end

    # Operation Builder for BatchGetResourceConfig
    class BatchGetResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.BatchGetResourceConfig'
        data = {}
        data['resourceKeys'] = ResourceKeys.build(input[:resource_keys]) unless input[:resource_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceKeys
    class ResourceKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << ResourceKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceKey
    class ResourceKey
      def self.build(input)
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data
      end
    end

    # Operation Builder for DeleteAggregationAuthorization
    class DeleteAggregationAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteAggregationAuthorization'
        data = {}
        data['AuthorizedAccountId'] = input[:authorized_account_id] unless input[:authorized_account_id].nil?
        data['AuthorizedAwsRegion'] = input[:authorized_aws_region] unless input[:authorized_aws_region].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConfigRule
    class DeleteConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteConfigRule'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConfigurationAggregator
    class DeleteConfigurationAggregator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteConfigurationAggregator'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConfigurationRecorder
    class DeleteConfigurationRecorder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteConfigurationRecorder'
        data = {}
        data['ConfigurationRecorderName'] = input[:configuration_recorder_name] unless input[:configuration_recorder_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConformancePack
    class DeleteConformancePack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteConformancePack'
        data = {}
        data['ConformancePackName'] = input[:conformance_pack_name] unless input[:conformance_pack_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDeliveryChannel
    class DeleteDeliveryChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteDeliveryChannel'
        data = {}
        data['DeliveryChannelName'] = input[:delivery_channel_name] unless input[:delivery_channel_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEvaluationResults
    class DeleteEvaluationResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteEvaluationResults'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOrganizationConfigRule
    class DeleteOrganizationConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteOrganizationConfigRule'
        data = {}
        data['OrganizationConfigRuleName'] = input[:organization_config_rule_name] unless input[:organization_config_rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOrganizationConformancePack
    class DeleteOrganizationConformancePack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteOrganizationConformancePack'
        data = {}
        data['OrganizationConformancePackName'] = input[:organization_conformance_pack_name] unless input[:organization_conformance_pack_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePendingAggregationRequest
    class DeletePendingAggregationRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeletePendingAggregationRequest'
        data = {}
        data['RequesterAccountId'] = input[:requester_account_id] unless input[:requester_account_id].nil?
        data['RequesterAwsRegion'] = input[:requester_aws_region] unless input[:requester_aws_region].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRemediationConfiguration
    class DeleteRemediationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteRemediationConfiguration'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRemediationExceptions
    class DeleteRemediationExceptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteRemediationExceptions'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ResourceKeys'] = RemediationExceptionResourceKeys.build(input[:resource_keys]) unless input[:resource_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RemediationExceptionResourceKeys
    class RemediationExceptionResourceKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << RemediationExceptionResourceKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RemediationExceptionResourceKey
    class RemediationExceptionResourceKey
      def self.build(input)
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data
      end
    end

    # Operation Builder for DeleteResourceConfig
    class DeleteResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteResourceConfig'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRetentionConfiguration
    class DeleteRetentionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteRetentionConfiguration'
        data = {}
        data['RetentionConfigurationName'] = input[:retention_configuration_name] unless input[:retention_configuration_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStoredQuery
    class DeleteStoredQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeleteStoredQuery'
        data = {}
        data['QueryName'] = input[:query_name] unless input[:query_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeliverConfigSnapshot
    class DeliverConfigSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DeliverConfigSnapshot'
        data = {}
        data['deliveryChannelName'] = input[:delivery_channel_name] unless input[:delivery_channel_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAggregateComplianceByConfigRules
    class DescribeAggregateComplianceByConfigRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeAggregateComplianceByConfigRules'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['Filters'] = ConfigRuleComplianceFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConfigRuleComplianceFilters
    class ConfigRuleComplianceFilters
      def self.build(input)
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Operation Builder for DescribeAggregateComplianceByConformancePacks
    class DescribeAggregateComplianceByConformancePacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeAggregateComplianceByConformancePacks'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['Filters'] = AggregateConformancePackComplianceFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AggregateConformancePackComplianceFilters
    class AggregateConformancePackComplianceFilters
      def self.build(input)
        data = {}
        data['ConformancePackName'] = input[:conformance_pack_name] unless input[:conformance_pack_name].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Operation Builder for DescribeAggregationAuthorizations
    class DescribeAggregationAuthorizations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeAggregationAuthorizations'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeComplianceByConfigRule
    class DescribeComplianceByConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeComplianceByConfigRule'
        data = {}
        data['ConfigRuleNames'] = ConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        data['ComplianceTypes'] = ComplianceTypes.build(input[:compliance_types]) unless input[:compliance_types].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ComplianceTypes
    class ComplianceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ConfigRuleNames
    class ConfigRuleNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeComplianceByResource
    class DescribeComplianceByResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeComplianceByResource'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ComplianceTypes'] = ComplianceTypes.build(input[:compliance_types]) unless input[:compliance_types].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConfigRuleEvaluationStatus
    class DescribeConfigRuleEvaluationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConfigRuleEvaluationStatus'
        data = {}
        data['ConfigRuleNames'] = ConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConfigRules
    class DescribeConfigRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConfigRules'
        data = {}
        data['ConfigRuleNames'] = ConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConfigurationAggregatorSourcesStatus
    class DescribeConfigurationAggregatorSourcesStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConfigurationAggregatorSourcesStatus'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['UpdateStatus'] = AggregatedSourceStatusTypeList.build(input[:update_status]) unless input[:update_status].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AggregatedSourceStatusTypeList
    class AggregatedSourceStatusTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConfigurationAggregators
    class DescribeConfigurationAggregators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConfigurationAggregators'
        data = {}
        data['ConfigurationAggregatorNames'] = ConfigurationAggregatorNameList.build(input[:configuration_aggregator_names]) unless input[:configuration_aggregator_names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConfigurationAggregatorNameList
    class ConfigurationAggregatorNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConfigurationRecorderStatus
    class DescribeConfigurationRecorderStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConfigurationRecorderStatus'
        data = {}
        data['ConfigurationRecorderNames'] = ConfigurationRecorderNameList.build(input[:configuration_recorder_names]) unless input[:configuration_recorder_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConfigurationRecorderNameList
    class ConfigurationRecorderNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConfigurationRecorders
    class DescribeConfigurationRecorders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConfigurationRecorders'
        data = {}
        data['ConfigurationRecorderNames'] = ConfigurationRecorderNameList.build(input[:configuration_recorder_names]) unless input[:configuration_recorder_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConformancePackCompliance
    class DescribeConformancePackCompliance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConformancePackCompliance'
        data = {}
        data['ConformancePackName'] = input[:conformance_pack_name] unless input[:conformance_pack_name].nil?
        data['Filters'] = ConformancePackComplianceFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConformancePackComplianceFilters
    class ConformancePackComplianceFilters
      def self.build(input)
        data = {}
        data['ConfigRuleNames'] = ConformancePackConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data
      end
    end

    # List Builder for ConformancePackConfigRuleNames
    class ConformancePackConfigRuleNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConformancePackStatus
    class DescribeConformancePackStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConformancePackStatus'
        data = {}
        data['ConformancePackNames'] = ConformancePackNamesList.build(input[:conformance_pack_names]) unless input[:conformance_pack_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConformancePackNamesList
    class ConformancePackNamesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConformancePacks
    class DescribeConformancePacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeConformancePacks'
        data = {}
        data['ConformancePackNames'] = ConformancePackNamesList.build(input[:conformance_pack_names]) unless input[:conformance_pack_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDeliveryChannelStatus
    class DescribeDeliveryChannelStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeDeliveryChannelStatus'
        data = {}
        data['DeliveryChannelNames'] = DeliveryChannelNameList.build(input[:delivery_channel_names]) unless input[:delivery_channel_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeliveryChannelNameList
    class DeliveryChannelNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDeliveryChannels
    class DescribeDeliveryChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeDeliveryChannels'
        data = {}
        data['DeliveryChannelNames'] = DeliveryChannelNameList.build(input[:delivery_channel_names]) unless input[:delivery_channel_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganizationConfigRuleStatuses
    class DescribeOrganizationConfigRuleStatuses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeOrganizationConfigRuleStatuses'
        data = {}
        data['OrganizationConfigRuleNames'] = OrganizationConfigRuleNames.build(input[:organization_config_rule_names]) unless input[:organization_config_rule_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OrganizationConfigRuleNames
    class OrganizationConfigRuleNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeOrganizationConfigRules
    class DescribeOrganizationConfigRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeOrganizationConfigRules'
        data = {}
        data['OrganizationConfigRuleNames'] = OrganizationConfigRuleNames.build(input[:organization_config_rule_names]) unless input[:organization_config_rule_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganizationConformancePackStatuses
    class DescribeOrganizationConformancePackStatuses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeOrganizationConformancePackStatuses'
        data = {}
        data['OrganizationConformancePackNames'] = OrganizationConformancePackNames.build(input[:organization_conformance_pack_names]) unless input[:organization_conformance_pack_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OrganizationConformancePackNames
    class OrganizationConformancePackNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeOrganizationConformancePacks
    class DescribeOrganizationConformancePacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeOrganizationConformancePacks'
        data = {}
        data['OrganizationConformancePackNames'] = OrganizationConformancePackNames.build(input[:organization_conformance_pack_names]) unless input[:organization_conformance_pack_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePendingAggregationRequests
    class DescribePendingAggregationRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribePendingAggregationRequests'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRemediationConfigurations
    class DescribeRemediationConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeRemediationConfigurations'
        data = {}
        data['ConfigRuleNames'] = ConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRemediationExceptions
    class DescribeRemediationExceptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeRemediationExceptions'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ResourceKeys'] = RemediationExceptionResourceKeys.build(input[:resource_keys]) unless input[:resource_keys].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRemediationExecutionStatus
    class DescribeRemediationExecutionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeRemediationExecutionStatus'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ResourceKeys'] = ResourceKeys.build(input[:resource_keys]) unless input[:resource_keys].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRetentionConfigurations
    class DescribeRetentionConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.DescribeRetentionConfigurations'
        data = {}
        data['RetentionConfigurationNames'] = RetentionConfigurationNameList.build(input[:retention_configuration_names]) unless input[:retention_configuration_names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RetentionConfigurationNameList
    class RetentionConfigurationNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetAggregateComplianceDetailsByConfigRule
    class GetAggregateComplianceDetailsByConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetAggregateComplianceDetailsByConfigRule'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAggregateConfigRuleComplianceSummary
    class GetAggregateConfigRuleComplianceSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetAggregateConfigRuleComplianceSummary'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['Filters'] = ConfigRuleComplianceSummaryFilters.build(input[:filters]) unless input[:filters].nil?
        data['GroupByKey'] = input[:group_by_key] unless input[:group_by_key].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConfigRuleComplianceSummaryFilters
    class ConfigRuleComplianceSummaryFilters
      def self.build(input)
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Operation Builder for GetAggregateConformancePackComplianceSummary
    class GetAggregateConformancePackComplianceSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetAggregateConformancePackComplianceSummary'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['Filters'] = AggregateConformancePackComplianceSummaryFilters.build(input[:filters]) unless input[:filters].nil?
        data['GroupByKey'] = input[:group_by_key] unless input[:group_by_key].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AggregateConformancePackComplianceSummaryFilters
    class AggregateConformancePackComplianceSummaryFilters
      def self.build(input)
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Operation Builder for GetAggregateDiscoveredResourceCounts
    class GetAggregateDiscoveredResourceCounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetAggregateDiscoveredResourceCounts'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['Filters'] = ResourceCountFilters.build(input[:filters]) unless input[:filters].nil?
        data['GroupByKey'] = input[:group_by_key] unless input[:group_by_key].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceCountFilters
    class ResourceCountFilters
      def self.build(input)
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data
      end
    end

    # Operation Builder for GetAggregateResourceConfig
    class GetAggregateResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetAggregateResourceConfig'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['ResourceIdentifier'] = AggregateResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComplianceDetailsByConfigRule
    class GetComplianceDetailsByConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetComplianceDetailsByConfigRule'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ComplianceTypes'] = ComplianceTypes.build(input[:compliance_types]) unless input[:compliance_types].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComplianceDetailsByResource
    class GetComplianceDetailsByResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetComplianceDetailsByResource'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ComplianceTypes'] = ComplianceTypes.build(input[:compliance_types]) unless input[:compliance_types].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComplianceSummaryByConfigRule
    class GetComplianceSummaryByConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetComplianceSummaryByConfigRule'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComplianceSummaryByResourceType
    class GetComplianceSummaryByResourceType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetComplianceSummaryByResourceType'
        data = {}
        data['ResourceTypes'] = ResourceTypes.build(input[:resource_types]) unless input[:resource_types].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceTypes
    class ResourceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetConformancePackComplianceDetails
    class GetConformancePackComplianceDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetConformancePackComplianceDetails'
        data = {}
        data['ConformancePackName'] = input[:conformance_pack_name] unless input[:conformance_pack_name].nil?
        data['Filters'] = ConformancePackEvaluationFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConformancePackEvaluationFilters
    class ConformancePackEvaluationFilters
      def self.build(input)
        data = {}
        data['ConfigRuleNames'] = ConformancePackConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceIds'] = ConformancePackComplianceResourceIds.build(input[:resource_ids]) unless input[:resource_ids].nil?
        data
      end
    end

    # List Builder for ConformancePackComplianceResourceIds
    class ConformancePackComplianceResourceIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetConformancePackComplianceSummary
    class GetConformancePackComplianceSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetConformancePackComplianceSummary'
        data = {}
        data['ConformancePackNames'] = ConformancePackNamesToSummarizeList.build(input[:conformance_pack_names]) unless input[:conformance_pack_names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConformancePackNamesToSummarizeList
    class ConformancePackNamesToSummarizeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetCustomRulePolicy
    class GetCustomRulePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetCustomRulePolicy'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDiscoveredResourceCounts
    class GetDiscoveredResourceCounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetDiscoveredResourceCounts'
        data = {}
        data['resourceTypes'] = ResourceTypes.build(input[:resource_types]) unless input[:resource_types].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOrganizationConfigRuleDetailedStatus
    class GetOrganizationConfigRuleDetailedStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetOrganizationConfigRuleDetailedStatus'
        data = {}
        data['OrganizationConfigRuleName'] = input[:organization_config_rule_name] unless input[:organization_config_rule_name].nil?
        data['Filters'] = StatusDetailFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StatusDetailFilters
    class StatusDetailFilters
      def self.build(input)
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['MemberAccountRuleStatus'] = input[:member_account_rule_status] unless input[:member_account_rule_status].nil?
        data
      end
    end

    # Operation Builder for GetOrganizationConformancePackDetailedStatus
    class GetOrganizationConformancePackDetailedStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetOrganizationConformancePackDetailedStatus'
        data = {}
        data['OrganizationConformancePackName'] = input[:organization_conformance_pack_name] unless input[:organization_conformance_pack_name].nil?
        data['Filters'] = OrganizationResourceDetailedStatusFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationResourceDetailedStatusFilters
    class OrganizationResourceDetailedStatusFilters
      def self.build(input)
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for GetOrganizationCustomRulePolicy
    class GetOrganizationCustomRulePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetOrganizationCustomRulePolicy'
        data = {}
        data['OrganizationConfigRuleName'] = input[:organization_config_rule_name] unless input[:organization_config_rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourceConfigHistory
    class GetResourceConfigHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetResourceConfigHistory'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['laterTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:later_time]).to_i unless input[:later_time].nil?
        data['earlierTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:earlier_time]).to_i unless input[:earlier_time].nil?
        data['chronologicalOrder'] = input[:chronological_order] unless input[:chronological_order].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStoredQuery
    class GetStoredQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.GetStoredQuery'
        data = {}
        data['QueryName'] = input[:query_name] unless input[:query_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAggregateDiscoveredResources
    class ListAggregateDiscoveredResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.ListAggregateDiscoveredResources'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Filters'] = ResourceFilters.build(input[:filters]) unless input[:filters].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceFilters
    class ResourceFilters
      def self.build(input)
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data
      end
    end

    # Operation Builder for ListDiscoveredResources
    class ListDiscoveredResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.ListDiscoveredResources'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceIds'] = ResourceIdList.build(input[:resource_ids]) unless input[:resource_ids].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['includeDeletedResources'] = input[:include_deleted_resources] unless input[:include_deleted_resources].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceIdList
    class ResourceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListStoredQueries
    class ListStoredQueries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.ListStoredQueries'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAggregationAuthorization
    class PutAggregationAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutAggregationAuthorization'
        data = {}
        data['AuthorizedAccountId'] = input[:authorized_account_id] unless input[:authorized_account_id].nil?
        data['AuthorizedAwsRegion'] = input[:authorized_aws_region] unless input[:authorized_aws_region].nil?
        data['Tags'] = TagsList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagsList
    class TagsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for PutConfigRule
    class PutConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutConfigRule'
        data = {}
        data['ConfigRule'] = ConfigRule.build(input[:config_rule]) unless input[:config_rule].nil?
        data['Tags'] = TagsList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConfigRule
    class ConfigRule
      def self.build(input)
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ConfigRuleArn'] = input[:config_rule_arn] unless input[:config_rule_arn].nil?
        data['ConfigRuleId'] = input[:config_rule_id] unless input[:config_rule_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Scope'] = Scope.build(input[:scope]) unless input[:scope].nil?
        data['Source'] = Source.build(input[:source]) unless input[:source].nil?
        data['InputParameters'] = input[:input_parameters] unless input[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = input[:maximum_execution_frequency] unless input[:maximum_execution_frequency].nil?
        data['ConfigRuleState'] = input[:config_rule_state] unless input[:config_rule_state].nil?
        data['CreatedBy'] = input[:created_by] unless input[:created_by].nil?
        data
      end
    end

    # Structure Builder for Source
    class Source
      def self.build(input)
        data = {}
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data['SourceIdentifier'] = input[:source_identifier] unless input[:source_identifier].nil?
        data['SourceDetails'] = SourceDetails.build(input[:source_details]) unless input[:source_details].nil?
        data['CustomPolicyDetails'] = CustomPolicyDetails.build(input[:custom_policy_details]) unless input[:custom_policy_details].nil?
        data
      end
    end

    # Structure Builder for CustomPolicyDetails
    class CustomPolicyDetails
      def self.build(input)
        data = {}
        data['PolicyRuntime'] = input[:policy_runtime] unless input[:policy_runtime].nil?
        data['PolicyText'] = input[:policy_text] unless input[:policy_text].nil?
        data['EnableDebugLogDelivery'] = input[:enable_debug_log_delivery] unless input[:enable_debug_log_delivery].nil?
        data
      end
    end

    # List Builder for SourceDetails
    class SourceDetails
      def self.build(input)
        data = []
        input.each do |element|
          data << SourceDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SourceDetail
    class SourceDetail
      def self.build(input)
        data = {}
        data['EventSource'] = input[:event_source] unless input[:event_source].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['MaximumExecutionFrequency'] = input[:maximum_execution_frequency] unless input[:maximum_execution_frequency].nil?
        data
      end
    end

    # Structure Builder for Scope
    class Scope
      def self.build(input)
        data = {}
        data['ComplianceResourceTypes'] = ComplianceResourceTypes.build(input[:compliance_resource_types]) unless input[:compliance_resource_types].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValue'] = input[:tag_value] unless input[:tag_value].nil?
        data['ComplianceResourceId'] = input[:compliance_resource_id] unless input[:compliance_resource_id].nil?
        data
      end
    end

    # List Builder for ComplianceResourceTypes
    class ComplianceResourceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutConfigurationAggregator
    class PutConfigurationAggregator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutConfigurationAggregator'
        data = {}
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['AccountAggregationSources'] = AccountAggregationSourceList.build(input[:account_aggregation_sources]) unless input[:account_aggregation_sources].nil?
        data['OrganizationAggregationSource'] = OrganizationAggregationSource.build(input[:organization_aggregation_source]) unless input[:organization_aggregation_source].nil?
        data['Tags'] = TagsList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationAggregationSource
    class OrganizationAggregationSource
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['AwsRegions'] = AggregatorRegionList.build(input[:aws_regions]) unless input[:aws_regions].nil?
        data['AllAwsRegions'] = input[:all_aws_regions] unless input[:all_aws_regions].nil?
        data
      end
    end

    # List Builder for AggregatorRegionList
    class AggregatorRegionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AccountAggregationSourceList
    class AccountAggregationSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << AccountAggregationSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccountAggregationSource
    class AccountAggregationSource
      def self.build(input)
        data = {}
        data['AccountIds'] = AccountAggregationSourceAccountList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['AllAwsRegions'] = input[:all_aws_regions] unless input[:all_aws_regions].nil?
        data['AwsRegions'] = AggregatorRegionList.build(input[:aws_regions]) unless input[:aws_regions].nil?
        data
      end
    end

    # List Builder for AccountAggregationSourceAccountList
    class AccountAggregationSourceAccountList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutConfigurationRecorder
    class PutConfigurationRecorder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutConfigurationRecorder'
        data = {}
        data['ConfigurationRecorder'] = ConfigurationRecorder.build(input[:configuration_recorder]) unless input[:configuration_recorder].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConfigurationRecorder
    class ConfigurationRecorder
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['roleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['recordingGroup'] = RecordingGroup.build(input[:recording_group]) unless input[:recording_group].nil?
        data
      end
    end

    # Structure Builder for RecordingGroup
    class RecordingGroup
      def self.build(input)
        data = {}
        data['allSupported'] = input[:all_supported] unless input[:all_supported].nil?
        data['includeGlobalResourceTypes'] = input[:include_global_resource_types] unless input[:include_global_resource_types].nil?
        data['resourceTypes'] = ResourceTypeList.build(input[:resource_types]) unless input[:resource_types].nil?
        data
      end
    end

    # List Builder for ResourceTypeList
    class ResourceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutConformancePack
    class PutConformancePack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutConformancePack'
        data = {}
        data['ConformancePackName'] = input[:conformance_pack_name] unless input[:conformance_pack_name].nil?
        data['TemplateS3Uri'] = input[:template_s3_uri] unless input[:template_s3_uri].nil?
        data['TemplateBody'] = input[:template_body] unless input[:template_body].nil?
        data['DeliveryS3Bucket'] = input[:delivery_s3_bucket] unless input[:delivery_s3_bucket].nil?
        data['DeliveryS3KeyPrefix'] = input[:delivery_s3_key_prefix] unless input[:delivery_s3_key_prefix].nil?
        data['ConformancePackInputParameters'] = ConformancePackInputParameters.build(input[:conformance_pack_input_parameters]) unless input[:conformance_pack_input_parameters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConformancePackInputParameters
    class ConformancePackInputParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << ConformancePackInputParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConformancePackInputParameter
    class ConformancePackInputParameter
      def self.build(input)
        data = {}
        data['ParameterName'] = input[:parameter_name] unless input[:parameter_name].nil?
        data['ParameterValue'] = input[:parameter_value] unless input[:parameter_value].nil?
        data
      end
    end

    # Operation Builder for PutDeliveryChannel
    class PutDeliveryChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutDeliveryChannel'
        data = {}
        data['DeliveryChannel'] = DeliveryChannel.build(input[:delivery_channel]) unless input[:delivery_channel].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeliveryChannel
    class DeliveryChannel
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['s3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['s3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['s3KmsKeyArn'] = input[:s3_kms_key_arn] unless input[:s3_kms_key_arn].nil?
        data['snsTopicARN'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['configSnapshotDeliveryProperties'] = ConfigSnapshotDeliveryProperties.build(input[:config_snapshot_delivery_properties]) unless input[:config_snapshot_delivery_properties].nil?
        data
      end
    end

    # Structure Builder for ConfigSnapshotDeliveryProperties
    class ConfigSnapshotDeliveryProperties
      def self.build(input)
        data = {}
        data['deliveryFrequency'] = input[:delivery_frequency] unless input[:delivery_frequency].nil?
        data
      end
    end

    # Operation Builder for PutEvaluations
    class PutEvaluations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutEvaluations'
        data = {}
        data['Evaluations'] = Evaluations.build(input[:evaluations]) unless input[:evaluations].nil?
        data['ResultToken'] = input[:result_token] unless input[:result_token].nil?
        data['TestMode'] = input[:test_mode] unless input[:test_mode].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Evaluations
    class Evaluations
      def self.build(input)
        data = []
        input.each do |element|
          data << Evaluation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Evaluation
    class Evaluation
      def self.build(input)
        data = {}
        data['ComplianceResourceType'] = input[:compliance_resource_type] unless input[:compliance_resource_type].nil?
        data['ComplianceResourceId'] = input[:compliance_resource_id] unless input[:compliance_resource_id].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['Annotation'] = input[:annotation] unless input[:annotation].nil?
        data['OrderingTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:ordering_timestamp]).to_i unless input[:ordering_timestamp].nil?
        data
      end
    end

    # Operation Builder for PutExternalEvaluation
    class PutExternalEvaluation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutExternalEvaluation'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ExternalEvaluation'] = ExternalEvaluation.build(input[:external_evaluation]) unless input[:external_evaluation].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExternalEvaluation
    class ExternalEvaluation
      def self.build(input)
        data = {}
        data['ComplianceResourceType'] = input[:compliance_resource_type] unless input[:compliance_resource_type].nil?
        data['ComplianceResourceId'] = input[:compliance_resource_id] unless input[:compliance_resource_id].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['Annotation'] = input[:annotation] unless input[:annotation].nil?
        data['OrderingTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:ordering_timestamp]).to_i unless input[:ordering_timestamp].nil?
        data
      end
    end

    # Operation Builder for PutOrganizationConfigRule
    class PutOrganizationConfigRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutOrganizationConfigRule'
        data = {}
        data['OrganizationConfigRuleName'] = input[:organization_config_rule_name] unless input[:organization_config_rule_name].nil?
        data['OrganizationManagedRuleMetadata'] = OrganizationManagedRuleMetadata.build(input[:organization_managed_rule_metadata]) unless input[:organization_managed_rule_metadata].nil?
        data['OrganizationCustomRuleMetadata'] = OrganizationCustomRuleMetadata.build(input[:organization_custom_rule_metadata]) unless input[:organization_custom_rule_metadata].nil?
        data['ExcludedAccounts'] = ExcludedAccounts.build(input[:excluded_accounts]) unless input[:excluded_accounts].nil?
        data['OrganizationCustomPolicyRuleMetadata'] = OrganizationCustomPolicyRuleMetadata.build(input[:organization_custom_policy_rule_metadata]) unless input[:organization_custom_policy_rule_metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationCustomPolicyRuleMetadata
    class OrganizationCustomPolicyRuleMetadata
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['OrganizationConfigRuleTriggerTypes'] = OrganizationConfigRuleTriggerTypeNoSNs.build(input[:organization_config_rule_trigger_types]) unless input[:organization_config_rule_trigger_types].nil?
        data['InputParameters'] = input[:input_parameters] unless input[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = input[:maximum_execution_frequency] unless input[:maximum_execution_frequency].nil?
        data['ResourceTypesScope'] = ResourceTypesScope.build(input[:resource_types_scope]) unless input[:resource_types_scope].nil?
        data['ResourceIdScope'] = input[:resource_id_scope] unless input[:resource_id_scope].nil?
        data['TagKeyScope'] = input[:tag_key_scope] unless input[:tag_key_scope].nil?
        data['TagValueScope'] = input[:tag_value_scope] unless input[:tag_value_scope].nil?
        data['PolicyRuntime'] = input[:policy_runtime] unless input[:policy_runtime].nil?
        data['PolicyText'] = input[:policy_text] unless input[:policy_text].nil?
        data['DebugLogDeliveryAccounts'] = DebugLogDeliveryAccounts.build(input[:debug_log_delivery_accounts]) unless input[:debug_log_delivery_accounts].nil?
        data
      end
    end

    # List Builder for DebugLogDeliveryAccounts
    class DebugLogDeliveryAccounts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceTypesScope
    class ResourceTypesScope
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for OrganizationConfigRuleTriggerTypeNoSNs
    class OrganizationConfigRuleTriggerTypeNoSNs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExcludedAccounts
    class ExcludedAccounts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OrganizationCustomRuleMetadata
    class OrganizationCustomRuleMetadata
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['LambdaFunctionArn'] = input[:lambda_function_arn] unless input[:lambda_function_arn].nil?
        data['OrganizationConfigRuleTriggerTypes'] = OrganizationConfigRuleTriggerTypes.build(input[:organization_config_rule_trigger_types]) unless input[:organization_config_rule_trigger_types].nil?
        data['InputParameters'] = input[:input_parameters] unless input[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = input[:maximum_execution_frequency] unless input[:maximum_execution_frequency].nil?
        data['ResourceTypesScope'] = ResourceTypesScope.build(input[:resource_types_scope]) unless input[:resource_types_scope].nil?
        data['ResourceIdScope'] = input[:resource_id_scope] unless input[:resource_id_scope].nil?
        data['TagKeyScope'] = input[:tag_key_scope] unless input[:tag_key_scope].nil?
        data['TagValueScope'] = input[:tag_value_scope] unless input[:tag_value_scope].nil?
        data
      end
    end

    # List Builder for OrganizationConfigRuleTriggerTypes
    class OrganizationConfigRuleTriggerTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OrganizationManagedRuleMetadata
    class OrganizationManagedRuleMetadata
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['RuleIdentifier'] = input[:rule_identifier] unless input[:rule_identifier].nil?
        data['InputParameters'] = input[:input_parameters] unless input[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = input[:maximum_execution_frequency] unless input[:maximum_execution_frequency].nil?
        data['ResourceTypesScope'] = ResourceTypesScope.build(input[:resource_types_scope]) unless input[:resource_types_scope].nil?
        data['ResourceIdScope'] = input[:resource_id_scope] unless input[:resource_id_scope].nil?
        data['TagKeyScope'] = input[:tag_key_scope] unless input[:tag_key_scope].nil?
        data['TagValueScope'] = input[:tag_value_scope] unless input[:tag_value_scope].nil?
        data
      end
    end

    # Operation Builder for PutOrganizationConformancePack
    class PutOrganizationConformancePack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutOrganizationConformancePack'
        data = {}
        data['OrganizationConformancePackName'] = input[:organization_conformance_pack_name] unless input[:organization_conformance_pack_name].nil?
        data['TemplateS3Uri'] = input[:template_s3_uri] unless input[:template_s3_uri].nil?
        data['TemplateBody'] = input[:template_body] unless input[:template_body].nil?
        data['DeliveryS3Bucket'] = input[:delivery_s3_bucket] unless input[:delivery_s3_bucket].nil?
        data['DeliveryS3KeyPrefix'] = input[:delivery_s3_key_prefix] unless input[:delivery_s3_key_prefix].nil?
        data['ConformancePackInputParameters'] = ConformancePackInputParameters.build(input[:conformance_pack_input_parameters]) unless input[:conformance_pack_input_parameters].nil?
        data['ExcludedAccounts'] = ExcludedAccounts.build(input[:excluded_accounts]) unless input[:excluded_accounts].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRemediationConfigurations
    class PutRemediationConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutRemediationConfigurations'
        data = {}
        data['RemediationConfigurations'] = RemediationConfigurations.build(input[:remediation_configurations]) unless input[:remediation_configurations].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RemediationConfigurations
    class RemediationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << RemediationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RemediationConfiguration
    class RemediationConfiguration
      def self.build(input)
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        data['TargetVersion'] = input[:target_version] unless input[:target_version].nil?
        data['Parameters'] = RemediationParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Automatic'] = input[:automatic] unless input[:automatic].nil?
        data['ExecutionControls'] = ExecutionControls.build(input[:execution_controls]) unless input[:execution_controls].nil?
        data['MaximumAutomaticAttempts'] = input[:maximum_automatic_attempts] unless input[:maximum_automatic_attempts].nil?
        data['RetryAttemptSeconds'] = input[:retry_attempt_seconds] unless input[:retry_attempt_seconds].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['CreatedByService'] = input[:created_by_service] unless input[:created_by_service].nil?
        data
      end
    end

    # Structure Builder for ExecutionControls
    class ExecutionControls
      def self.build(input)
        data = {}
        data['SsmControls'] = SsmControls.build(input[:ssm_controls]) unless input[:ssm_controls].nil?
        data
      end
    end

    # Structure Builder for SsmControls
    class SsmControls
      def self.build(input)
        data = {}
        data['ConcurrentExecutionRatePercentage'] = input[:concurrent_execution_rate_percentage] unless input[:concurrent_execution_rate_percentage].nil?
        data['ErrorPercentage'] = input[:error_percentage] unless input[:error_percentage].nil?
        data
      end
    end

    # Map Builder for RemediationParameters
    class RemediationParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = RemediationParameterValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for RemediationParameterValue
    class RemediationParameterValue
      def self.build(input)
        data = {}
        data['ResourceValue'] = ResourceValue.build(input[:resource_value]) unless input[:resource_value].nil?
        data['StaticValue'] = StaticValue.build(input[:static_value]) unless input[:static_value].nil?
        data
      end
    end

    # Structure Builder for StaticValue
    class StaticValue
      def self.build(input)
        data = {}
        data['Values'] = StaticParameterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for StaticParameterValues
    class StaticParameterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceValue
    class ResourceValue
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for PutRemediationExceptions
    class PutRemediationExceptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutRemediationExceptions'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ResourceKeys'] = RemediationExceptionResourceKeys.build(input[:resource_keys]) unless input[:resource_keys].nil?
        data['Message'] = input[:message] unless input[:message].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:expiration_time]).to_i unless input[:expiration_time].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResourceConfig
    class PutResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutResourceConfig'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['SchemaVersionId'] = input[:schema_version_id] unless input[:schema_version_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['Configuration'] = input[:configuration] unless input[:configuration].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for PutRetentionConfiguration
    class PutRetentionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutRetentionConfiguration'
        data = {}
        data['RetentionPeriodInDays'] = input[:retention_period_in_days] unless input[:retention_period_in_days].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutStoredQuery
    class PutStoredQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.PutStoredQuery'
        data = {}
        data['StoredQuery'] = StoredQuery.build(input[:stored_query]) unless input[:stored_query].nil?
        data['Tags'] = TagsList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StoredQuery
    class StoredQuery
      def self.build(input)
        data = {}
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        data['QueryArn'] = input[:query_arn] unless input[:query_arn].nil?
        data['QueryName'] = input[:query_name] unless input[:query_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # Operation Builder for SelectAggregateResourceConfig
    class SelectAggregateResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.SelectAggregateResourceConfig'
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['ConfigurationAggregatorName'] = input[:configuration_aggregator_name] unless input[:configuration_aggregator_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SelectResourceConfig
    class SelectResourceConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.SelectResourceConfig'
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartConfigRulesEvaluation
    class StartConfigRulesEvaluation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.StartConfigRulesEvaluation'
        data = {}
        data['ConfigRuleNames'] = ReevaluateConfigRuleNames.build(input[:config_rule_names]) unless input[:config_rule_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReevaluateConfigRuleNames
    class ReevaluateConfigRuleNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartConfigurationRecorder
    class StartConfigurationRecorder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.StartConfigurationRecorder'
        data = {}
        data['ConfigurationRecorderName'] = input[:configuration_recorder_name] unless input[:configuration_recorder_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRemediationExecution
    class StartRemediationExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.StartRemediationExecution'
        data = {}
        data['ConfigRuleName'] = input[:config_rule_name] unless input[:config_rule_name].nil?
        data['ResourceKeys'] = ResourceKeys.build(input[:resource_keys]) unless input[:resource_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopConfigurationRecorder
    class StopConfigurationRecorder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.StopConfigurationRecorder'
        data = {}
        data['ConfigurationRecorderName'] = input[:configuration_recorder_name] unless input[:configuration_recorder_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StarlingDoveService.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
