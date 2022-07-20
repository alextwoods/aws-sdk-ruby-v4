# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ConfigService
  module Stubs

    # Operation Stubber for BatchGetAggregateResourceConfig
    class BatchGetAggregateResourceConfig
      def self.default(visited=[])
        {
          base_configuration_items: BaseConfigurationItems.default(visited),
          unprocessed_resource_identifiers: UnprocessedResourceIdentifierList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaseConfigurationItems'] = BaseConfigurationItems.stub(stub[:base_configuration_items]) unless stub[:base_configuration_items].nil?
        data['UnprocessedResourceIdentifiers'] = UnprocessedResourceIdentifierList.stub(stub[:unprocessed_resource_identifiers]) unless stub[:unprocessed_resource_identifiers].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnprocessedResourceIdentifierList
    class UnprocessedResourceIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedResourceIdentifierList')
        visited = visited + ['UnprocessedResourceIdentifierList']
        [
          AggregateResourceIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateResourceIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateResourceIdentifier
    class AggregateResourceIdentifier
      def self.default(visited=[])
        return nil if visited.include?('AggregateResourceIdentifier')
        visited = visited + ['AggregateResourceIdentifier']
        {
          source_account_id: 'source_account_id',
          source_region: 'source_region',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_name: 'resource_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateResourceIdentifier.new
        data = {}
        data['SourceAccountId'] = stub[:source_account_id] unless stub[:source_account_id].nil?
        data['SourceRegion'] = stub[:source_region] unless stub[:source_region].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data
      end
    end

    # List Stubber for BaseConfigurationItems
    class BaseConfigurationItems
      def self.default(visited=[])
        return nil if visited.include?('BaseConfigurationItems')
        visited = visited + ['BaseConfigurationItems']
        [
          BaseConfigurationItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BaseConfigurationItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BaseConfigurationItem
    class BaseConfigurationItem
      def self.default(visited=[])
        return nil if visited.include?('BaseConfigurationItem')
        visited = visited + ['BaseConfigurationItem']
        {
          version: 'version',
          account_id: 'account_id',
          configuration_item_capture_time: Time.now,
          configuration_item_status: 'configuration_item_status',
          configuration_state_id: 'configuration_state_id',
          arn: 'arn',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_name: 'resource_name',
          aws_region: 'aws_region',
          availability_zone: 'availability_zone',
          resource_creation_time: Time.now,
          configuration: 'configuration',
          supplementary_configuration: SupplementaryConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BaseConfigurationItem.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['configurationItemCaptureTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:configuration_item_capture_time]).to_i unless stub[:configuration_item_capture_time].nil?
        data['configurationItemStatus'] = stub[:configuration_item_status] unless stub[:configuration_item_status].nil?
        data['configurationStateId'] = stub[:configuration_state_id] unless stub[:configuration_state_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['resourceCreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:resource_creation_time]).to_i unless stub[:resource_creation_time].nil?
        data['configuration'] = stub[:configuration] unless stub[:configuration].nil?
        data['supplementaryConfiguration'] = SupplementaryConfiguration.stub(stub[:supplementary_configuration]) unless stub[:supplementary_configuration].nil?
        data
      end
    end

    # Map Stubber for SupplementaryConfiguration
    class SupplementaryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SupplementaryConfiguration')
        visited = visited + ['SupplementaryConfiguration']
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

    # Operation Stubber for BatchGetResourceConfig
    class BatchGetResourceConfig
      def self.default(visited=[])
        {
          base_configuration_items: BaseConfigurationItems.default(visited),
          unprocessed_resource_keys: ResourceKeys.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['baseConfigurationItems'] = BaseConfigurationItems.stub(stub[:base_configuration_items]) unless stub[:base_configuration_items].nil?
        data['unprocessedResourceKeys'] = ResourceKeys.stub(stub[:unprocessed_resource_keys]) unless stub[:unprocessed_resource_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceKeys
    class ResourceKeys
      def self.default(visited=[])
        return nil if visited.include?('ResourceKeys')
        visited = visited + ['ResourceKeys']
        [
          ResourceKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceKey
    class ResourceKey
      def self.default(visited=[])
        return nil if visited.include?('ResourceKey')
        visited = visited + ['ResourceKey']
        {
          resource_type: 'resource_type',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceKey.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data
      end
    end

    # Operation Stubber for DeleteAggregationAuthorization
    class DeleteAggregationAuthorization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigRule
    class DeleteConfigRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationAggregator
    class DeleteConfigurationAggregator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationRecorder
    class DeleteConfigurationRecorder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConformancePack
    class DeleteConformancePack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeliveryChannel
    class DeleteDeliveryChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEvaluationResults
    class DeleteEvaluationResults
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOrganizationConfigRule
    class DeleteOrganizationConfigRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOrganizationConformancePack
    class DeleteOrganizationConformancePack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePendingAggregationRequest
    class DeletePendingAggregationRequest
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRemediationConfiguration
    class DeleteRemediationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRemediationExceptions
    class DeleteRemediationExceptions
      def self.default(visited=[])
        {
          failed_batches: FailedDeleteRemediationExceptionsBatches.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedBatches'] = FailedDeleteRemediationExceptionsBatches.stub(stub[:failed_batches]) unless stub[:failed_batches].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedDeleteRemediationExceptionsBatches
    class FailedDeleteRemediationExceptionsBatches
      def self.default(visited=[])
        return nil if visited.include?('FailedDeleteRemediationExceptionsBatches')
        visited = visited + ['FailedDeleteRemediationExceptionsBatches']
        [
          FailedDeleteRemediationExceptionsBatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedDeleteRemediationExceptionsBatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedDeleteRemediationExceptionsBatch
    class FailedDeleteRemediationExceptionsBatch
      def self.default(visited=[])
        return nil if visited.include?('FailedDeleteRemediationExceptionsBatch')
        visited = visited + ['FailedDeleteRemediationExceptionsBatch']
        {
          failure_message: 'failure_message',
          failed_items: RemediationExceptionResourceKeys.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedDeleteRemediationExceptionsBatch.new
        data = {}
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['FailedItems'] = RemediationExceptionResourceKeys.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        data
      end
    end

    # List Stubber for RemediationExceptionResourceKeys
    class RemediationExceptionResourceKeys
      def self.default(visited=[])
        return nil if visited.include?('RemediationExceptionResourceKeys')
        visited = visited + ['RemediationExceptionResourceKeys']
        [
          RemediationExceptionResourceKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemediationExceptionResourceKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationExceptionResourceKey
    class RemediationExceptionResourceKey
      def self.default(visited=[])
        return nil if visited.include?('RemediationExceptionResourceKey')
        visited = visited + ['RemediationExceptionResourceKey']
        {
          resource_type: 'resource_type',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationExceptionResourceKey.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data
      end
    end

    # Operation Stubber for DeleteResourceConfig
    class DeleteResourceConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRetentionConfiguration
    class DeleteRetentionConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStoredQuery
    class DeleteStoredQuery
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeliverConfigSnapshot
    class DeliverConfigSnapshot
      def self.default(visited=[])
        {
          config_snapshot_id: 'config_snapshot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configSnapshotId'] = stub[:config_snapshot_id] unless stub[:config_snapshot_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAggregateComplianceByConfigRules
    class DescribeAggregateComplianceByConfigRules
      def self.default(visited=[])
        {
          aggregate_compliance_by_config_rules: AggregateComplianceByConfigRuleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregateComplianceByConfigRules'] = AggregateComplianceByConfigRuleList.stub(stub[:aggregate_compliance_by_config_rules]) unless stub[:aggregate_compliance_by_config_rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregateComplianceByConfigRuleList
    class AggregateComplianceByConfigRuleList
      def self.default(visited=[])
        return nil if visited.include?('AggregateComplianceByConfigRuleList')
        visited = visited + ['AggregateComplianceByConfigRuleList']
        [
          AggregateComplianceByConfigRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateComplianceByConfigRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateComplianceByConfigRule
    class AggregateComplianceByConfigRule
      def self.default(visited=[])
        return nil if visited.include?('AggregateComplianceByConfigRule')
        visited = visited + ['AggregateComplianceByConfigRule']
        {
          config_rule_name: 'config_rule_name',
          compliance: Compliance.default(visited),
          account_id: 'account_id',
          aws_region: 'aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateComplianceByConfigRule.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['Compliance'] = Compliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data
      end
    end

    # Structure Stubber for Compliance
    class Compliance
      def self.default(visited=[])
        return nil if visited.include?('Compliance')
        visited = visited + ['Compliance']
        {
          compliance_type: 'compliance_type',
          compliance_contributor_count: ComplianceContributorCount.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Compliance.new
        data = {}
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['ComplianceContributorCount'] = ComplianceContributorCount.stub(stub[:compliance_contributor_count]) unless stub[:compliance_contributor_count].nil?
        data
      end
    end

    # Structure Stubber for ComplianceContributorCount
    class ComplianceContributorCount
      def self.default(visited=[])
        return nil if visited.include?('ComplianceContributorCount')
        visited = visited + ['ComplianceContributorCount']
        {
          capped_count: 1,
          cap_exceeded: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceContributorCount.new
        data = {}
        data['CappedCount'] = stub[:capped_count] unless stub[:capped_count].nil?
        data['CapExceeded'] = stub[:cap_exceeded] unless stub[:cap_exceeded].nil?
        data
      end
    end

    # Operation Stubber for DescribeAggregateComplianceByConformancePacks
    class DescribeAggregateComplianceByConformancePacks
      def self.default(visited=[])
        {
          aggregate_compliance_by_conformance_packs: AggregateComplianceByConformancePackList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregateComplianceByConformancePacks'] = AggregateComplianceByConformancePackList.stub(stub[:aggregate_compliance_by_conformance_packs]) unless stub[:aggregate_compliance_by_conformance_packs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregateComplianceByConformancePackList
    class AggregateComplianceByConformancePackList
      def self.default(visited=[])
        return nil if visited.include?('AggregateComplianceByConformancePackList')
        visited = visited + ['AggregateComplianceByConformancePackList']
        [
          AggregateComplianceByConformancePack.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateComplianceByConformancePack.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateComplianceByConformancePack
    class AggregateComplianceByConformancePack
      def self.default(visited=[])
        return nil if visited.include?('AggregateComplianceByConformancePack')
        visited = visited + ['AggregateComplianceByConformancePack']
        {
          conformance_pack_name: 'conformance_pack_name',
          compliance: AggregateConformancePackCompliance.default(visited),
          account_id: 'account_id',
          aws_region: 'aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateComplianceByConformancePack.new
        data = {}
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['Compliance'] = AggregateConformancePackCompliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data
      end
    end

    # Structure Stubber for AggregateConformancePackCompliance
    class AggregateConformancePackCompliance
      def self.default(visited=[])
        return nil if visited.include?('AggregateConformancePackCompliance')
        visited = visited + ['AggregateConformancePackCompliance']
        {
          compliance_type: 'compliance_type',
          compliant_rule_count: 1,
          non_compliant_rule_count: 1,
          total_rule_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateConformancePackCompliance.new
        data = {}
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['CompliantRuleCount'] = stub[:compliant_rule_count] unless stub[:compliant_rule_count].nil?
        data['NonCompliantRuleCount'] = stub[:non_compliant_rule_count] unless stub[:non_compliant_rule_count].nil?
        data['TotalRuleCount'] = stub[:total_rule_count] unless stub[:total_rule_count].nil?
        data
      end
    end

    # Operation Stubber for DescribeAggregationAuthorizations
    class DescribeAggregationAuthorizations
      def self.default(visited=[])
        {
          aggregation_authorizations: AggregationAuthorizationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregationAuthorizations'] = AggregationAuthorizationList.stub(stub[:aggregation_authorizations]) unless stub[:aggregation_authorizations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregationAuthorizationList
    class AggregationAuthorizationList
      def self.default(visited=[])
        return nil if visited.include?('AggregationAuthorizationList')
        visited = visited + ['AggregationAuthorizationList']
        [
          AggregationAuthorization.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregationAuthorization.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregationAuthorization
    class AggregationAuthorization
      def self.default(visited=[])
        return nil if visited.include?('AggregationAuthorization')
        visited = visited + ['AggregationAuthorization']
        {
          aggregation_authorization_arn: 'aggregation_authorization_arn',
          authorized_account_id: 'authorized_account_id',
          authorized_aws_region: 'authorized_aws_region',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregationAuthorization.new
        data = {}
        data['AggregationAuthorizationArn'] = stub[:aggregation_authorization_arn] unless stub[:aggregation_authorization_arn].nil?
        data['AuthorizedAccountId'] = stub[:authorized_account_id] unless stub[:authorized_account_id].nil?
        data['AuthorizedAwsRegion'] = stub[:authorized_aws_region] unless stub[:authorized_aws_region].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeComplianceByConfigRule
    class DescribeComplianceByConfigRule
      def self.default(visited=[])
        {
          compliance_by_config_rules: ComplianceByConfigRules.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComplianceByConfigRules'] = ComplianceByConfigRules.stub(stub[:compliance_by_config_rules]) unless stub[:compliance_by_config_rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComplianceByConfigRules
    class ComplianceByConfigRules
      def self.default(visited=[])
        return nil if visited.include?('ComplianceByConfigRules')
        visited = visited + ['ComplianceByConfigRules']
        [
          ComplianceByConfigRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComplianceByConfigRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceByConfigRule
    class ComplianceByConfigRule
      def self.default(visited=[])
        return nil if visited.include?('ComplianceByConfigRule')
        visited = visited + ['ComplianceByConfigRule']
        {
          config_rule_name: 'config_rule_name',
          compliance: Compliance.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceByConfigRule.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['Compliance'] = Compliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data
      end
    end

    # Operation Stubber for DescribeComplianceByResource
    class DescribeComplianceByResource
      def self.default(visited=[])
        {
          compliance_by_resources: ComplianceByResources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComplianceByResources'] = ComplianceByResources.stub(stub[:compliance_by_resources]) unless stub[:compliance_by_resources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComplianceByResources
    class ComplianceByResources
      def self.default(visited=[])
        return nil if visited.include?('ComplianceByResources')
        visited = visited + ['ComplianceByResources']
        [
          ComplianceByResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComplianceByResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceByResource
    class ComplianceByResource
      def self.default(visited=[])
        return nil if visited.include?('ComplianceByResource')
        visited = visited + ['ComplianceByResource']
        {
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          compliance: Compliance.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceByResource.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Compliance'] = Compliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfigRuleEvaluationStatus
    class DescribeConfigRuleEvaluationStatus
      def self.default(visited=[])
        {
          config_rules_evaluation_status: ConfigRuleEvaluationStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigRulesEvaluationStatus'] = ConfigRuleEvaluationStatusList.stub(stub[:config_rules_evaluation_status]) unless stub[:config_rules_evaluation_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigRuleEvaluationStatusList
    class ConfigRuleEvaluationStatusList
      def self.default(visited=[])
        return nil if visited.include?('ConfigRuleEvaluationStatusList')
        visited = visited + ['ConfigRuleEvaluationStatusList']
        [
          ConfigRuleEvaluationStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfigRuleEvaluationStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigRuleEvaluationStatus
    class ConfigRuleEvaluationStatus
      def self.default(visited=[])
        return nil if visited.include?('ConfigRuleEvaluationStatus')
        visited = visited + ['ConfigRuleEvaluationStatus']
        {
          config_rule_name: 'config_rule_name',
          config_rule_arn: 'config_rule_arn',
          config_rule_id: 'config_rule_id',
          last_successful_invocation_time: Time.now,
          last_failed_invocation_time: Time.now,
          last_successful_evaluation_time: Time.now,
          last_failed_evaluation_time: Time.now,
          first_activated_time: Time.now,
          last_deactivated_time: Time.now,
          last_error_code: 'last_error_code',
          last_error_message: 'last_error_message',
          first_evaluation_started: false,
          last_debug_log_delivery_status: 'last_debug_log_delivery_status',
          last_debug_log_delivery_status_reason: 'last_debug_log_delivery_status_reason',
          last_debug_log_delivery_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigRuleEvaluationStatus.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['ConfigRuleArn'] = stub[:config_rule_arn] unless stub[:config_rule_arn].nil?
        data['ConfigRuleId'] = stub[:config_rule_id] unless stub[:config_rule_id].nil?
        data['LastSuccessfulInvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_invocation_time]).to_i unless stub[:last_successful_invocation_time].nil?
        data['LastFailedInvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_failed_invocation_time]).to_i unless stub[:last_failed_invocation_time].nil?
        data['LastSuccessfulEvaluationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_evaluation_time]).to_i unless stub[:last_successful_evaluation_time].nil?
        data['LastFailedEvaluationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_failed_evaluation_time]).to_i unless stub[:last_failed_evaluation_time].nil?
        data['FirstActivatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_activated_time]).to_i unless stub[:first_activated_time].nil?
        data['LastDeactivatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deactivated_time]).to_i unless stub[:last_deactivated_time].nil?
        data['LastErrorCode'] = stub[:last_error_code] unless stub[:last_error_code].nil?
        data['LastErrorMessage'] = stub[:last_error_message] unless stub[:last_error_message].nil?
        data['FirstEvaluationStarted'] = stub[:first_evaluation_started] unless stub[:first_evaluation_started].nil?
        data['LastDebugLogDeliveryStatus'] = stub[:last_debug_log_delivery_status] unless stub[:last_debug_log_delivery_status].nil?
        data['LastDebugLogDeliveryStatusReason'] = stub[:last_debug_log_delivery_status_reason] unless stub[:last_debug_log_delivery_status_reason].nil?
        data['LastDebugLogDeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_debug_log_delivery_time]).to_i unless stub[:last_debug_log_delivery_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfigRules
    class DescribeConfigRules
      def self.default(visited=[])
        {
          config_rules: ConfigRules.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigRules'] = ConfigRules.stub(stub[:config_rules]) unless stub[:config_rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigRules
    class ConfigRules
      def self.default(visited=[])
        return nil if visited.include?('ConfigRules')
        visited = visited + ['ConfigRules']
        [
          ConfigRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfigRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigRule
    class ConfigRule
      def self.default(visited=[])
        return nil if visited.include?('ConfigRule')
        visited = visited + ['ConfigRule']
        {
          config_rule_name: 'config_rule_name',
          config_rule_arn: 'config_rule_arn',
          config_rule_id: 'config_rule_id',
          description: 'description',
          scope: Scope.default(visited),
          source: Source.default(visited),
          input_parameters: 'input_parameters',
          maximum_execution_frequency: 'maximum_execution_frequency',
          config_rule_state: 'config_rule_state',
          created_by: 'created_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigRule.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['ConfigRuleArn'] = stub[:config_rule_arn] unless stub[:config_rule_arn].nil?
        data['ConfigRuleId'] = stub[:config_rule_id] unless stub[:config_rule_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Scope'] = Scope.stub(stub[:scope]) unless stub[:scope].nil?
        data['Source'] = Source.stub(stub[:source]) unless stub[:source].nil?
        data['InputParameters'] = stub[:input_parameters] unless stub[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = stub[:maximum_execution_frequency] unless stub[:maximum_execution_frequency].nil?
        data['ConfigRuleState'] = stub[:config_rule_state] unless stub[:config_rule_state].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data
      end
    end

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          owner: 'owner',
          source_identifier: 'source_identifier',
          source_details: SourceDetails.default(visited),
          custom_policy_details: CustomPolicyDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['SourceIdentifier'] = stub[:source_identifier] unless stub[:source_identifier].nil?
        data['SourceDetails'] = SourceDetails.stub(stub[:source_details]) unless stub[:source_details].nil?
        data['CustomPolicyDetails'] = CustomPolicyDetails.stub(stub[:custom_policy_details]) unless stub[:custom_policy_details].nil?
        data
      end
    end

    # Structure Stubber for CustomPolicyDetails
    class CustomPolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('CustomPolicyDetails')
        visited = visited + ['CustomPolicyDetails']
        {
          policy_runtime: 'policy_runtime',
          policy_text: 'policy_text',
          enable_debug_log_delivery: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomPolicyDetails.new
        data = {}
        data['PolicyRuntime'] = stub[:policy_runtime] unless stub[:policy_runtime].nil?
        data['PolicyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        data['EnableDebugLogDelivery'] = stub[:enable_debug_log_delivery] unless stub[:enable_debug_log_delivery].nil?
        data
      end
    end

    # List Stubber for SourceDetails
    class SourceDetails
      def self.default(visited=[])
        return nil if visited.include?('SourceDetails')
        visited = visited + ['SourceDetails']
        [
          SourceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SourceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceDetail
    class SourceDetail
      def self.default(visited=[])
        return nil if visited.include?('SourceDetail')
        visited = visited + ['SourceDetail']
        {
          event_source: 'event_source',
          message_type: 'message_type',
          maximum_execution_frequency: 'maximum_execution_frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceDetail.new
        data = {}
        data['EventSource'] = stub[:event_source] unless stub[:event_source].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['MaximumExecutionFrequency'] = stub[:maximum_execution_frequency] unless stub[:maximum_execution_frequency].nil?
        data
      end
    end

    # Structure Stubber for Scope
    class Scope
      def self.default(visited=[])
        return nil if visited.include?('Scope')
        visited = visited + ['Scope']
        {
          compliance_resource_types: ComplianceResourceTypes.default(visited),
          tag_key: 'tag_key',
          tag_value: 'tag_value',
          compliance_resource_id: 'compliance_resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scope.new
        data = {}
        data['ComplianceResourceTypes'] = ComplianceResourceTypes.stub(stub[:compliance_resource_types]) unless stub[:compliance_resource_types].nil?
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['TagValue'] = stub[:tag_value] unless stub[:tag_value].nil?
        data['ComplianceResourceId'] = stub[:compliance_resource_id] unless stub[:compliance_resource_id].nil?
        data
      end
    end

    # List Stubber for ComplianceResourceTypes
    class ComplianceResourceTypes
      def self.default(visited=[])
        return nil if visited.include?('ComplianceResourceTypes')
        visited = visited + ['ComplianceResourceTypes']
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

    # Operation Stubber for DescribeConfigurationAggregatorSourcesStatus
    class DescribeConfigurationAggregatorSourcesStatus
      def self.default(visited=[])
        {
          aggregated_source_status_list: AggregatedSourceStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregatedSourceStatusList'] = AggregatedSourceStatusList.stub(stub[:aggregated_source_status_list]) unless stub[:aggregated_source_status_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregatedSourceStatusList
    class AggregatedSourceStatusList
      def self.default(visited=[])
        return nil if visited.include?('AggregatedSourceStatusList')
        visited = visited + ['AggregatedSourceStatusList']
        [
          AggregatedSourceStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregatedSourceStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregatedSourceStatus
    class AggregatedSourceStatus
      def self.default(visited=[])
        return nil if visited.include?('AggregatedSourceStatus')
        visited = visited + ['AggregatedSourceStatus']
        {
          source_id: 'source_id',
          source_type: 'source_type',
          aws_region: 'aws_region',
          last_update_status: 'last_update_status',
          last_update_time: Time.now,
          last_error_code: 'last_error_code',
          last_error_message: 'last_error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregatedSourceStatus.new
        data = {}
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['LastErrorCode'] = stub[:last_error_code] unless stub[:last_error_code].nil?
        data['LastErrorMessage'] = stub[:last_error_message] unless stub[:last_error_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfigurationAggregators
    class DescribeConfigurationAggregators
      def self.default(visited=[])
        {
          configuration_aggregators: ConfigurationAggregatorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationAggregators'] = ConfigurationAggregatorList.stub(stub[:configuration_aggregators]) unless stub[:configuration_aggregators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationAggregatorList
    class ConfigurationAggregatorList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationAggregatorList')
        visited = visited + ['ConfigurationAggregatorList']
        [
          ConfigurationAggregator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfigurationAggregator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationAggregator
    class ConfigurationAggregator
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationAggregator')
        visited = visited + ['ConfigurationAggregator']
        {
          configuration_aggregator_name: 'configuration_aggregator_name',
          configuration_aggregator_arn: 'configuration_aggregator_arn',
          account_aggregation_sources: AccountAggregationSourceList.default(visited),
          organization_aggregation_source: OrganizationAggregationSource.default(visited),
          creation_time: Time.now,
          last_updated_time: Time.now,
          created_by: 'created_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationAggregator.new
        data = {}
        data['ConfigurationAggregatorName'] = stub[:configuration_aggregator_name] unless stub[:configuration_aggregator_name].nil?
        data['ConfigurationAggregatorArn'] = stub[:configuration_aggregator_arn] unless stub[:configuration_aggregator_arn].nil?
        data['AccountAggregationSources'] = AccountAggregationSourceList.stub(stub[:account_aggregation_sources]) unless stub[:account_aggregation_sources].nil?
        data['OrganizationAggregationSource'] = OrganizationAggregationSource.stub(stub[:organization_aggregation_source]) unless stub[:organization_aggregation_source].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data
      end
    end

    # Structure Stubber for OrganizationAggregationSource
    class OrganizationAggregationSource
      def self.default(visited=[])
        return nil if visited.include?('OrganizationAggregationSource')
        visited = visited + ['OrganizationAggregationSource']
        {
          role_arn: 'role_arn',
          aws_regions: AggregatorRegionList.default(visited),
          all_aws_regions: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationAggregationSource.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['AwsRegions'] = AggregatorRegionList.stub(stub[:aws_regions]) unless stub[:aws_regions].nil?
        data['AllAwsRegions'] = stub[:all_aws_regions] unless stub[:all_aws_regions].nil?
        data
      end
    end

    # List Stubber for AggregatorRegionList
    class AggregatorRegionList
      def self.default(visited=[])
        return nil if visited.include?('AggregatorRegionList')
        visited = visited + ['AggregatorRegionList']
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

    # List Stubber for AccountAggregationSourceList
    class AccountAggregationSourceList
      def self.default(visited=[])
        return nil if visited.include?('AccountAggregationSourceList')
        visited = visited + ['AccountAggregationSourceList']
        [
          AccountAggregationSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccountAggregationSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountAggregationSource
    class AccountAggregationSource
      def self.default(visited=[])
        return nil if visited.include?('AccountAggregationSource')
        visited = visited + ['AccountAggregationSource']
        {
          account_ids: AccountAggregationSourceAccountList.default(visited),
          all_aws_regions: false,
          aws_regions: AggregatorRegionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAggregationSource.new
        data = {}
        data['AccountIds'] = AccountAggregationSourceAccountList.stub(stub[:account_ids]) unless stub[:account_ids].nil?
        data['AllAwsRegions'] = stub[:all_aws_regions] unless stub[:all_aws_regions].nil?
        data['AwsRegions'] = AggregatorRegionList.stub(stub[:aws_regions]) unless stub[:aws_regions].nil?
        data
      end
    end

    # List Stubber for AccountAggregationSourceAccountList
    class AccountAggregationSourceAccountList
      def self.default(visited=[])
        return nil if visited.include?('AccountAggregationSourceAccountList')
        visited = visited + ['AccountAggregationSourceAccountList']
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

    # Operation Stubber for DescribeConfigurationRecorderStatus
    class DescribeConfigurationRecorderStatus
      def self.default(visited=[])
        {
          configuration_recorders_status: ConfigurationRecorderStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationRecordersStatus'] = ConfigurationRecorderStatusList.stub(stub[:configuration_recorders_status]) unless stub[:configuration_recorders_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationRecorderStatusList
    class ConfigurationRecorderStatusList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationRecorderStatusList')
        visited = visited + ['ConfigurationRecorderStatusList']
        [
          ConfigurationRecorderStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfigurationRecorderStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationRecorderStatus
    class ConfigurationRecorderStatus
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationRecorderStatus')
        visited = visited + ['ConfigurationRecorderStatus']
        {
          name: 'name',
          last_start_time: Time.now,
          last_stop_time: Time.now,
          recording: false,
          last_status: 'last_status',
          last_error_code: 'last_error_code',
          last_error_message: 'last_error_message',
          last_status_change_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationRecorderStatus.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['lastStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_start_time]).to_i unless stub[:last_start_time].nil?
        data['lastStopTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_stop_time]).to_i unless stub[:last_stop_time].nil?
        data['recording'] = stub[:recording] unless stub[:recording].nil?
        data['lastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['lastErrorCode'] = stub[:last_error_code] unless stub[:last_error_code].nil?
        data['lastErrorMessage'] = stub[:last_error_message] unless stub[:last_error_message].nil?
        data['lastStatusChangeTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_change_time]).to_i unless stub[:last_status_change_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfigurationRecorders
    class DescribeConfigurationRecorders
      def self.default(visited=[])
        {
          configuration_recorders: ConfigurationRecorderList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationRecorders'] = ConfigurationRecorderList.stub(stub[:configuration_recorders]) unless stub[:configuration_recorders].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationRecorderList
    class ConfigurationRecorderList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationRecorderList')
        visited = visited + ['ConfigurationRecorderList']
        [
          ConfigurationRecorder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfigurationRecorder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationRecorder
    class ConfigurationRecorder
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationRecorder')
        visited = visited + ['ConfigurationRecorder']
        {
          name: 'name',
          role_arn: 'role_arn',
          recording_group: RecordingGroup.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationRecorder.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['roleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['recordingGroup'] = RecordingGroup.stub(stub[:recording_group]) unless stub[:recording_group].nil?
        data
      end
    end

    # Structure Stubber for RecordingGroup
    class RecordingGroup
      def self.default(visited=[])
        return nil if visited.include?('RecordingGroup')
        visited = visited + ['RecordingGroup']
        {
          all_supported: false,
          include_global_resource_types: false,
          resource_types: ResourceTypeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecordingGroup.new
        data = {}
        data['allSupported'] = stub[:all_supported] unless stub[:all_supported].nil?
        data['includeGlobalResourceTypes'] = stub[:include_global_resource_types] unless stub[:include_global_resource_types].nil?
        data['resourceTypes'] = ResourceTypeList.stub(stub[:resource_types]) unless stub[:resource_types].nil?
        data
      end
    end

    # List Stubber for ResourceTypeList
    class ResourceTypeList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypeList')
        visited = visited + ['ResourceTypeList']
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

    # Operation Stubber for DescribeConformancePackCompliance
    class DescribeConformancePackCompliance
      def self.default(visited=[])
        {
          conformance_pack_name: 'conformance_pack_name',
          conformance_pack_rule_compliance_list: ConformancePackRuleComplianceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['ConformancePackRuleComplianceList'] = ConformancePackRuleComplianceList.stub(stub[:conformance_pack_rule_compliance_list]) unless stub[:conformance_pack_rule_compliance_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConformancePackRuleComplianceList
    class ConformancePackRuleComplianceList
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackRuleComplianceList')
        visited = visited + ['ConformancePackRuleComplianceList']
        [
          ConformancePackRuleCompliance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConformancePackRuleCompliance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConformancePackRuleCompliance
    class ConformancePackRuleCompliance
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackRuleCompliance')
        visited = visited + ['ConformancePackRuleCompliance']
        {
          config_rule_name: 'config_rule_name',
          compliance_type: 'compliance_type',
          controls: ControlsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConformancePackRuleCompliance.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['Controls'] = ControlsList.stub(stub[:controls]) unless stub[:controls].nil?
        data
      end
    end

    # List Stubber for ControlsList
    class ControlsList
      def self.default(visited=[])
        return nil if visited.include?('ControlsList')
        visited = visited + ['ControlsList']
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

    # Operation Stubber for DescribeConformancePackStatus
    class DescribeConformancePackStatus
      def self.default(visited=[])
        {
          conformance_pack_status_details: ConformancePackStatusDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConformancePackStatusDetails'] = ConformancePackStatusDetailsList.stub(stub[:conformance_pack_status_details]) unless stub[:conformance_pack_status_details].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConformancePackStatusDetailsList
    class ConformancePackStatusDetailsList
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackStatusDetailsList')
        visited = visited + ['ConformancePackStatusDetailsList']
        [
          ConformancePackStatusDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConformancePackStatusDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConformancePackStatusDetail
    class ConformancePackStatusDetail
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackStatusDetail')
        visited = visited + ['ConformancePackStatusDetail']
        {
          conformance_pack_name: 'conformance_pack_name',
          conformance_pack_id: 'conformance_pack_id',
          conformance_pack_arn: 'conformance_pack_arn',
          conformance_pack_state: 'conformance_pack_state',
          stack_arn: 'stack_arn',
          conformance_pack_status_reason: 'conformance_pack_status_reason',
          last_update_requested_time: Time.now,
          last_update_completed_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConformancePackStatusDetail.new
        data = {}
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['ConformancePackId'] = stub[:conformance_pack_id] unless stub[:conformance_pack_id].nil?
        data['ConformancePackArn'] = stub[:conformance_pack_arn] unless stub[:conformance_pack_arn].nil?
        data['ConformancePackState'] = stub[:conformance_pack_state] unless stub[:conformance_pack_state].nil?
        data['StackArn'] = stub[:stack_arn] unless stub[:stack_arn].nil?
        data['ConformancePackStatusReason'] = stub[:conformance_pack_status_reason] unless stub[:conformance_pack_status_reason].nil?
        data['LastUpdateRequestedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_requested_time]).to_i unless stub[:last_update_requested_time].nil?
        data['LastUpdateCompletedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_completed_time]).to_i unless stub[:last_update_completed_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeConformancePacks
    class DescribeConformancePacks
      def self.default(visited=[])
        {
          conformance_pack_details: ConformancePackDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConformancePackDetails'] = ConformancePackDetailList.stub(stub[:conformance_pack_details]) unless stub[:conformance_pack_details].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConformancePackDetailList
    class ConformancePackDetailList
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackDetailList')
        visited = visited + ['ConformancePackDetailList']
        [
          ConformancePackDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConformancePackDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConformancePackDetail
    class ConformancePackDetail
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackDetail')
        visited = visited + ['ConformancePackDetail']
        {
          conformance_pack_name: 'conformance_pack_name',
          conformance_pack_arn: 'conformance_pack_arn',
          conformance_pack_id: 'conformance_pack_id',
          delivery_s3_bucket: 'delivery_s3_bucket',
          delivery_s3_key_prefix: 'delivery_s3_key_prefix',
          conformance_pack_input_parameters: ConformancePackInputParameters.default(visited),
          last_update_requested_time: Time.now,
          created_by: 'created_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConformancePackDetail.new
        data = {}
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['ConformancePackArn'] = stub[:conformance_pack_arn] unless stub[:conformance_pack_arn].nil?
        data['ConformancePackId'] = stub[:conformance_pack_id] unless stub[:conformance_pack_id].nil?
        data['DeliveryS3Bucket'] = stub[:delivery_s3_bucket] unless stub[:delivery_s3_bucket].nil?
        data['DeliveryS3KeyPrefix'] = stub[:delivery_s3_key_prefix] unless stub[:delivery_s3_key_prefix].nil?
        data['ConformancePackInputParameters'] = ConformancePackInputParameters.stub(stub[:conformance_pack_input_parameters]) unless stub[:conformance_pack_input_parameters].nil?
        data['LastUpdateRequestedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_requested_time]).to_i unless stub[:last_update_requested_time].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data
      end
    end

    # List Stubber for ConformancePackInputParameters
    class ConformancePackInputParameters
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackInputParameters')
        visited = visited + ['ConformancePackInputParameters']
        [
          ConformancePackInputParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConformancePackInputParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConformancePackInputParameter
    class ConformancePackInputParameter
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackInputParameter')
        visited = visited + ['ConformancePackInputParameter']
        {
          parameter_name: 'parameter_name',
          parameter_value: 'parameter_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConformancePackInputParameter.new
        data = {}
        data['ParameterName'] = stub[:parameter_name] unless stub[:parameter_name].nil?
        data['ParameterValue'] = stub[:parameter_value] unless stub[:parameter_value].nil?
        data
      end
    end

    # Operation Stubber for DescribeDeliveryChannelStatus
    class DescribeDeliveryChannelStatus
      def self.default(visited=[])
        {
          delivery_channels_status: DeliveryChannelStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeliveryChannelsStatus'] = DeliveryChannelStatusList.stub(stub[:delivery_channels_status]) unless stub[:delivery_channels_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeliveryChannelStatusList
    class DeliveryChannelStatusList
      def self.default(visited=[])
        return nil if visited.include?('DeliveryChannelStatusList')
        visited = visited + ['DeliveryChannelStatusList']
        [
          DeliveryChannelStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeliveryChannelStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeliveryChannelStatus
    class DeliveryChannelStatus
      def self.default(visited=[])
        return nil if visited.include?('DeliveryChannelStatus')
        visited = visited + ['DeliveryChannelStatus']
        {
          name: 'name',
          config_snapshot_delivery_info: ConfigExportDeliveryInfo.default(visited),
          config_history_delivery_info: ConfigExportDeliveryInfo.default(visited),
          config_stream_delivery_info: ConfigStreamDeliveryInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeliveryChannelStatus.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['configSnapshotDeliveryInfo'] = ConfigExportDeliveryInfo.stub(stub[:config_snapshot_delivery_info]) unless stub[:config_snapshot_delivery_info].nil?
        data['configHistoryDeliveryInfo'] = ConfigExportDeliveryInfo.stub(stub[:config_history_delivery_info]) unless stub[:config_history_delivery_info].nil?
        data['configStreamDeliveryInfo'] = ConfigStreamDeliveryInfo.stub(stub[:config_stream_delivery_info]) unless stub[:config_stream_delivery_info].nil?
        data
      end
    end

    # Structure Stubber for ConfigStreamDeliveryInfo
    class ConfigStreamDeliveryInfo
      def self.default(visited=[])
        return nil if visited.include?('ConfigStreamDeliveryInfo')
        visited = visited + ['ConfigStreamDeliveryInfo']
        {
          last_status: 'last_status',
          last_error_code: 'last_error_code',
          last_error_message: 'last_error_message',
          last_status_change_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigStreamDeliveryInfo.new
        data = {}
        data['lastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['lastErrorCode'] = stub[:last_error_code] unless stub[:last_error_code].nil?
        data['lastErrorMessage'] = stub[:last_error_message] unless stub[:last_error_message].nil?
        data['lastStatusChangeTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_change_time]).to_i unless stub[:last_status_change_time].nil?
        data
      end
    end

    # Structure Stubber for ConfigExportDeliveryInfo
    class ConfigExportDeliveryInfo
      def self.default(visited=[])
        return nil if visited.include?('ConfigExportDeliveryInfo')
        visited = visited + ['ConfigExportDeliveryInfo']
        {
          last_status: 'last_status',
          last_error_code: 'last_error_code',
          last_error_message: 'last_error_message',
          last_attempt_time: Time.now,
          last_successful_time: Time.now,
          next_delivery_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigExportDeliveryInfo.new
        data = {}
        data['lastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['lastErrorCode'] = stub[:last_error_code] unless stub[:last_error_code].nil?
        data['lastErrorMessage'] = stub[:last_error_message] unless stub[:last_error_message].nil?
        data['lastAttemptTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_attempt_time]).to_i unless stub[:last_attempt_time].nil?
        data['lastSuccessfulTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_time]).to_i unless stub[:last_successful_time].nil?
        data['nextDeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:next_delivery_time]).to_i unless stub[:next_delivery_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeDeliveryChannels
    class DescribeDeliveryChannels
      def self.default(visited=[])
        {
          delivery_channels: DeliveryChannelList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeliveryChannels'] = DeliveryChannelList.stub(stub[:delivery_channels]) unless stub[:delivery_channels].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeliveryChannelList
    class DeliveryChannelList
      def self.default(visited=[])
        return nil if visited.include?('DeliveryChannelList')
        visited = visited + ['DeliveryChannelList']
        [
          DeliveryChannel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeliveryChannel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeliveryChannel
    class DeliveryChannel
      def self.default(visited=[])
        return nil if visited.include?('DeliveryChannel')
        visited = visited + ['DeliveryChannel']
        {
          name: 'name',
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          s3_kms_key_arn: 's3_kms_key_arn',
          sns_topic_arn: 'sns_topic_arn',
          config_snapshot_delivery_properties: ConfigSnapshotDeliveryProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeliveryChannel.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['s3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['s3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['s3KmsKeyArn'] = stub[:s3_kms_key_arn] unless stub[:s3_kms_key_arn].nil?
        data['snsTopicARN'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['configSnapshotDeliveryProperties'] = ConfigSnapshotDeliveryProperties.stub(stub[:config_snapshot_delivery_properties]) unless stub[:config_snapshot_delivery_properties].nil?
        data
      end
    end

    # Structure Stubber for ConfigSnapshotDeliveryProperties
    class ConfigSnapshotDeliveryProperties
      def self.default(visited=[])
        return nil if visited.include?('ConfigSnapshotDeliveryProperties')
        visited = visited + ['ConfigSnapshotDeliveryProperties']
        {
          delivery_frequency: 'delivery_frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigSnapshotDeliveryProperties.new
        data = {}
        data['deliveryFrequency'] = stub[:delivery_frequency] unless stub[:delivery_frequency].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrganizationConfigRuleStatuses
    class DescribeOrganizationConfigRuleStatuses
      def self.default(visited=[])
        {
          organization_config_rule_statuses: OrganizationConfigRuleStatuses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConfigRuleStatuses'] = OrganizationConfigRuleStatuses.stub(stub[:organization_config_rule_statuses]) unless stub[:organization_config_rule_statuses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationConfigRuleStatuses
    class OrganizationConfigRuleStatuses
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRuleStatuses')
        visited = visited + ['OrganizationConfigRuleStatuses']
        [
          OrganizationConfigRuleStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationConfigRuleStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationConfigRuleStatus
    class OrganizationConfigRuleStatus
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRuleStatus')
        visited = visited + ['OrganizationConfigRuleStatus']
        {
          organization_config_rule_name: 'organization_config_rule_name',
          organization_rule_status: 'organization_rule_status',
          error_code: 'error_code',
          error_message: 'error_message',
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationConfigRuleStatus.new
        data = {}
        data['OrganizationConfigRuleName'] = stub[:organization_config_rule_name] unless stub[:organization_config_rule_name].nil?
        data['OrganizationRuleStatus'] = stub[:organization_rule_status] unless stub[:organization_rule_status].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrganizationConfigRules
    class DescribeOrganizationConfigRules
      def self.default(visited=[])
        {
          organization_config_rules: OrganizationConfigRules.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConfigRules'] = OrganizationConfigRules.stub(stub[:organization_config_rules]) unless stub[:organization_config_rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationConfigRules
    class OrganizationConfigRules
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRules')
        visited = visited + ['OrganizationConfigRules']
        [
          OrganizationConfigRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationConfigRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationConfigRule
    class OrganizationConfigRule
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRule')
        visited = visited + ['OrganizationConfigRule']
        {
          organization_config_rule_name: 'organization_config_rule_name',
          organization_config_rule_arn: 'organization_config_rule_arn',
          organization_managed_rule_metadata: OrganizationManagedRuleMetadata.default(visited),
          organization_custom_rule_metadata: OrganizationCustomRuleMetadata.default(visited),
          excluded_accounts: ExcludedAccounts.default(visited),
          last_update_time: Time.now,
          organization_custom_policy_rule_metadata: OrganizationCustomPolicyRuleMetadataNoPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationConfigRule.new
        data = {}
        data['OrganizationConfigRuleName'] = stub[:organization_config_rule_name] unless stub[:organization_config_rule_name].nil?
        data['OrganizationConfigRuleArn'] = stub[:organization_config_rule_arn] unless stub[:organization_config_rule_arn].nil?
        data['OrganizationManagedRuleMetadata'] = OrganizationManagedRuleMetadata.stub(stub[:organization_managed_rule_metadata]) unless stub[:organization_managed_rule_metadata].nil?
        data['OrganizationCustomRuleMetadata'] = OrganizationCustomRuleMetadata.stub(stub[:organization_custom_rule_metadata]) unless stub[:organization_custom_rule_metadata].nil?
        data['ExcludedAccounts'] = ExcludedAccounts.stub(stub[:excluded_accounts]) unless stub[:excluded_accounts].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['OrganizationCustomPolicyRuleMetadata'] = OrganizationCustomPolicyRuleMetadataNoPolicy.stub(stub[:organization_custom_policy_rule_metadata]) unless stub[:organization_custom_policy_rule_metadata].nil?
        data
      end
    end

    # Structure Stubber for OrganizationCustomPolicyRuleMetadataNoPolicy
    class OrganizationCustomPolicyRuleMetadataNoPolicy
      def self.default(visited=[])
        return nil if visited.include?('OrganizationCustomPolicyRuleMetadataNoPolicy')
        visited = visited + ['OrganizationCustomPolicyRuleMetadataNoPolicy']
        {
          description: 'description',
          organization_config_rule_trigger_types: OrganizationConfigRuleTriggerTypeNoSNs.default(visited),
          input_parameters: 'input_parameters',
          maximum_execution_frequency: 'maximum_execution_frequency',
          resource_types_scope: ResourceTypesScope.default(visited),
          resource_id_scope: 'resource_id_scope',
          tag_key_scope: 'tag_key_scope',
          tag_value_scope: 'tag_value_scope',
          policy_runtime: 'policy_runtime',
          debug_log_delivery_accounts: DebugLogDeliveryAccounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationCustomPolicyRuleMetadataNoPolicy.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['OrganizationConfigRuleTriggerTypes'] = OrganizationConfigRuleTriggerTypeNoSNs.stub(stub[:organization_config_rule_trigger_types]) unless stub[:organization_config_rule_trigger_types].nil?
        data['InputParameters'] = stub[:input_parameters] unless stub[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = stub[:maximum_execution_frequency] unless stub[:maximum_execution_frequency].nil?
        data['ResourceTypesScope'] = ResourceTypesScope.stub(stub[:resource_types_scope]) unless stub[:resource_types_scope].nil?
        data['ResourceIdScope'] = stub[:resource_id_scope] unless stub[:resource_id_scope].nil?
        data['TagKeyScope'] = stub[:tag_key_scope] unless stub[:tag_key_scope].nil?
        data['TagValueScope'] = stub[:tag_value_scope] unless stub[:tag_value_scope].nil?
        data['PolicyRuntime'] = stub[:policy_runtime] unless stub[:policy_runtime].nil?
        data['DebugLogDeliveryAccounts'] = DebugLogDeliveryAccounts.stub(stub[:debug_log_delivery_accounts]) unless stub[:debug_log_delivery_accounts].nil?
        data
      end
    end

    # List Stubber for DebugLogDeliveryAccounts
    class DebugLogDeliveryAccounts
      def self.default(visited=[])
        return nil if visited.include?('DebugLogDeliveryAccounts')
        visited = visited + ['DebugLogDeliveryAccounts']
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

    # List Stubber for ResourceTypesScope
    class ResourceTypesScope
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypesScope')
        visited = visited + ['ResourceTypesScope']
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

    # List Stubber for OrganizationConfigRuleTriggerTypeNoSNs
    class OrganizationConfigRuleTriggerTypeNoSNs
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRuleTriggerTypeNoSNs')
        visited = visited + ['OrganizationConfigRuleTriggerTypeNoSNs']
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

    # List Stubber for ExcludedAccounts
    class ExcludedAccounts
      def self.default(visited=[])
        return nil if visited.include?('ExcludedAccounts')
        visited = visited + ['ExcludedAccounts']
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

    # Structure Stubber for OrganizationCustomRuleMetadata
    class OrganizationCustomRuleMetadata
      def self.default(visited=[])
        return nil if visited.include?('OrganizationCustomRuleMetadata')
        visited = visited + ['OrganizationCustomRuleMetadata']
        {
          description: 'description',
          lambda_function_arn: 'lambda_function_arn',
          organization_config_rule_trigger_types: OrganizationConfigRuleTriggerTypes.default(visited),
          input_parameters: 'input_parameters',
          maximum_execution_frequency: 'maximum_execution_frequency',
          resource_types_scope: ResourceTypesScope.default(visited),
          resource_id_scope: 'resource_id_scope',
          tag_key_scope: 'tag_key_scope',
          tag_value_scope: 'tag_value_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationCustomRuleMetadata.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LambdaFunctionArn'] = stub[:lambda_function_arn] unless stub[:lambda_function_arn].nil?
        data['OrganizationConfigRuleTriggerTypes'] = OrganizationConfigRuleTriggerTypes.stub(stub[:organization_config_rule_trigger_types]) unless stub[:organization_config_rule_trigger_types].nil?
        data['InputParameters'] = stub[:input_parameters] unless stub[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = stub[:maximum_execution_frequency] unless stub[:maximum_execution_frequency].nil?
        data['ResourceTypesScope'] = ResourceTypesScope.stub(stub[:resource_types_scope]) unless stub[:resource_types_scope].nil?
        data['ResourceIdScope'] = stub[:resource_id_scope] unless stub[:resource_id_scope].nil?
        data['TagKeyScope'] = stub[:tag_key_scope] unless stub[:tag_key_scope].nil?
        data['TagValueScope'] = stub[:tag_value_scope] unless stub[:tag_value_scope].nil?
        data
      end
    end

    # List Stubber for OrganizationConfigRuleTriggerTypes
    class OrganizationConfigRuleTriggerTypes
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRuleTriggerTypes')
        visited = visited + ['OrganizationConfigRuleTriggerTypes']
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

    # Structure Stubber for OrganizationManagedRuleMetadata
    class OrganizationManagedRuleMetadata
      def self.default(visited=[])
        return nil if visited.include?('OrganizationManagedRuleMetadata')
        visited = visited + ['OrganizationManagedRuleMetadata']
        {
          description: 'description',
          rule_identifier: 'rule_identifier',
          input_parameters: 'input_parameters',
          maximum_execution_frequency: 'maximum_execution_frequency',
          resource_types_scope: ResourceTypesScope.default(visited),
          resource_id_scope: 'resource_id_scope',
          tag_key_scope: 'tag_key_scope',
          tag_value_scope: 'tag_value_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationManagedRuleMetadata.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RuleIdentifier'] = stub[:rule_identifier] unless stub[:rule_identifier].nil?
        data['InputParameters'] = stub[:input_parameters] unless stub[:input_parameters].nil?
        data['MaximumExecutionFrequency'] = stub[:maximum_execution_frequency] unless stub[:maximum_execution_frequency].nil?
        data['ResourceTypesScope'] = ResourceTypesScope.stub(stub[:resource_types_scope]) unless stub[:resource_types_scope].nil?
        data['ResourceIdScope'] = stub[:resource_id_scope] unless stub[:resource_id_scope].nil?
        data['TagKeyScope'] = stub[:tag_key_scope] unless stub[:tag_key_scope].nil?
        data['TagValueScope'] = stub[:tag_value_scope] unless stub[:tag_value_scope].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrganizationConformancePackStatuses
    class DescribeOrganizationConformancePackStatuses
      def self.default(visited=[])
        {
          organization_conformance_pack_statuses: OrganizationConformancePackStatuses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConformancePackStatuses'] = OrganizationConformancePackStatuses.stub(stub[:organization_conformance_pack_statuses]) unless stub[:organization_conformance_pack_statuses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationConformancePackStatuses
    class OrganizationConformancePackStatuses
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConformancePackStatuses')
        visited = visited + ['OrganizationConformancePackStatuses']
        [
          OrganizationConformancePackStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationConformancePackStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationConformancePackStatus
    class OrganizationConformancePackStatus
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConformancePackStatus')
        visited = visited + ['OrganizationConformancePackStatus']
        {
          organization_conformance_pack_name: 'organization_conformance_pack_name',
          status: 'status',
          error_code: 'error_code',
          error_message: 'error_message',
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationConformancePackStatus.new
        data = {}
        data['OrganizationConformancePackName'] = stub[:organization_conformance_pack_name] unless stub[:organization_conformance_pack_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrganizationConformancePacks
    class DescribeOrganizationConformancePacks
      def self.default(visited=[])
        {
          organization_conformance_packs: OrganizationConformancePacks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConformancePacks'] = OrganizationConformancePacks.stub(stub[:organization_conformance_packs]) unless stub[:organization_conformance_packs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationConformancePacks
    class OrganizationConformancePacks
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConformancePacks')
        visited = visited + ['OrganizationConformancePacks']
        [
          OrganizationConformancePack.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationConformancePack.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationConformancePack
    class OrganizationConformancePack
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConformancePack')
        visited = visited + ['OrganizationConformancePack']
        {
          organization_conformance_pack_name: 'organization_conformance_pack_name',
          organization_conformance_pack_arn: 'organization_conformance_pack_arn',
          delivery_s3_bucket: 'delivery_s3_bucket',
          delivery_s3_key_prefix: 'delivery_s3_key_prefix',
          conformance_pack_input_parameters: ConformancePackInputParameters.default(visited),
          excluded_accounts: ExcludedAccounts.default(visited),
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationConformancePack.new
        data = {}
        data['OrganizationConformancePackName'] = stub[:organization_conformance_pack_name] unless stub[:organization_conformance_pack_name].nil?
        data['OrganizationConformancePackArn'] = stub[:organization_conformance_pack_arn] unless stub[:organization_conformance_pack_arn].nil?
        data['DeliveryS3Bucket'] = stub[:delivery_s3_bucket] unless stub[:delivery_s3_bucket].nil?
        data['DeliveryS3KeyPrefix'] = stub[:delivery_s3_key_prefix] unless stub[:delivery_s3_key_prefix].nil?
        data['ConformancePackInputParameters'] = ConformancePackInputParameters.stub(stub[:conformance_pack_input_parameters]) unless stub[:conformance_pack_input_parameters].nil?
        data['ExcludedAccounts'] = ExcludedAccounts.stub(stub[:excluded_accounts]) unless stub[:excluded_accounts].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for DescribePendingAggregationRequests
    class DescribePendingAggregationRequests
      def self.default(visited=[])
        {
          pending_aggregation_requests: PendingAggregationRequestList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PendingAggregationRequests'] = PendingAggregationRequestList.stub(stub[:pending_aggregation_requests]) unless stub[:pending_aggregation_requests].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PendingAggregationRequestList
    class PendingAggregationRequestList
      def self.default(visited=[])
        return nil if visited.include?('PendingAggregationRequestList')
        visited = visited + ['PendingAggregationRequestList']
        [
          PendingAggregationRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PendingAggregationRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PendingAggregationRequest
    class PendingAggregationRequest
      def self.default(visited=[])
        return nil if visited.include?('PendingAggregationRequest')
        visited = visited + ['PendingAggregationRequest']
        {
          requester_account_id: 'requester_account_id',
          requester_aws_region: 'requester_aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingAggregationRequest.new
        data = {}
        data['RequesterAccountId'] = stub[:requester_account_id] unless stub[:requester_account_id].nil?
        data['RequesterAwsRegion'] = stub[:requester_aws_region] unless stub[:requester_aws_region].nil?
        data
      end
    end

    # Operation Stubber for DescribeRemediationConfigurations
    class DescribeRemediationConfigurations
      def self.default(visited=[])
        {
          remediation_configurations: RemediationConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RemediationConfigurations'] = RemediationConfigurations.stub(stub[:remediation_configurations]) unless stub[:remediation_configurations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RemediationConfigurations
    class RemediationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('RemediationConfigurations')
        visited = visited + ['RemediationConfigurations']
        [
          RemediationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemediationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationConfiguration
    class RemediationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RemediationConfiguration')
        visited = visited + ['RemediationConfiguration']
        {
          config_rule_name: 'config_rule_name',
          target_type: 'target_type',
          target_id: 'target_id',
          target_version: 'target_version',
          parameters: RemediationParameters.default(visited),
          resource_type: 'resource_type',
          automatic: false,
          execution_controls: ExecutionControls.default(visited),
          maximum_automatic_attempts: 1,
          retry_attempt_seconds: 1,
          arn: 'arn',
          created_by_service: 'created_by_service',
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationConfiguration.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['TargetVersion'] = stub[:target_version] unless stub[:target_version].nil?
        data['Parameters'] = RemediationParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Automatic'] = stub[:automatic] unless stub[:automatic].nil?
        data['ExecutionControls'] = ExecutionControls.stub(stub[:execution_controls]) unless stub[:execution_controls].nil?
        data['MaximumAutomaticAttempts'] = stub[:maximum_automatic_attempts] unless stub[:maximum_automatic_attempts].nil?
        data['RetryAttemptSeconds'] = stub[:retry_attempt_seconds] unless stub[:retry_attempt_seconds].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedByService'] = stub[:created_by_service] unless stub[:created_by_service].nil?
        data
      end
    end

    # Structure Stubber for ExecutionControls
    class ExecutionControls
      def self.default(visited=[])
        return nil if visited.include?('ExecutionControls')
        visited = visited + ['ExecutionControls']
        {
          ssm_controls: SsmControls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionControls.new
        data = {}
        data['SsmControls'] = SsmControls.stub(stub[:ssm_controls]) unless stub[:ssm_controls].nil?
        data
      end
    end

    # Structure Stubber for SsmControls
    class SsmControls
      def self.default(visited=[])
        return nil if visited.include?('SsmControls')
        visited = visited + ['SsmControls']
        {
          concurrent_execution_rate_percentage: 1,
          error_percentage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SsmControls.new
        data = {}
        data['ConcurrentExecutionRatePercentage'] = stub[:concurrent_execution_rate_percentage] unless stub[:concurrent_execution_rate_percentage].nil?
        data['ErrorPercentage'] = stub[:error_percentage] unless stub[:error_percentage].nil?
        data
      end
    end

    # Map Stubber for RemediationParameters
    class RemediationParameters
      def self.default(visited=[])
        return nil if visited.include?('RemediationParameters')
        visited = visited + ['RemediationParameters']
        {
          test_key: RemediationParameterValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = RemediationParameterValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationParameterValue
    class RemediationParameterValue
      def self.default(visited=[])
        return nil if visited.include?('RemediationParameterValue')
        visited = visited + ['RemediationParameterValue']
        {
          resource_value: ResourceValue.default(visited),
          static_value: StaticValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationParameterValue.new
        data = {}
        data['ResourceValue'] = ResourceValue.stub(stub[:resource_value]) unless stub[:resource_value].nil?
        data['StaticValue'] = StaticValue.stub(stub[:static_value]) unless stub[:static_value].nil?
        data
      end
    end

    # Structure Stubber for StaticValue
    class StaticValue
      def self.default(visited=[])
        return nil if visited.include?('StaticValue')
        visited = visited + ['StaticValue']
        {
          values: StaticParameterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticValue.new
        data = {}
        data['Values'] = StaticParameterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for StaticParameterValues
    class StaticParameterValues
      def self.default(visited=[])
        return nil if visited.include?('StaticParameterValues')
        visited = visited + ['StaticParameterValues']
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

    # Structure Stubber for ResourceValue
    class ResourceValue
      def self.default(visited=[])
        return nil if visited.include?('ResourceValue')
        visited = visited + ['ResourceValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceValue.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeRemediationExceptions
    class DescribeRemediationExceptions
      def self.default(visited=[])
        {
          remediation_exceptions: RemediationExceptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RemediationExceptions'] = RemediationExceptions.stub(stub[:remediation_exceptions]) unless stub[:remediation_exceptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RemediationExceptions
    class RemediationExceptions
      def self.default(visited=[])
        return nil if visited.include?('RemediationExceptions')
        visited = visited + ['RemediationExceptions']
        [
          RemediationException.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemediationException.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationException
    class RemediationException
      def self.default(visited=[])
        return nil if visited.include?('RemediationException')
        visited = visited + ['RemediationException']
        {
          config_rule_name: 'config_rule_name',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          message: 'message',
          expiration_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationException.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeRemediationExecutionStatus
    class DescribeRemediationExecutionStatus
      def self.default(visited=[])
        {
          remediation_execution_statuses: RemediationExecutionStatuses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RemediationExecutionStatuses'] = RemediationExecutionStatuses.stub(stub[:remediation_execution_statuses]) unless stub[:remediation_execution_statuses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RemediationExecutionStatuses
    class RemediationExecutionStatuses
      def self.default(visited=[])
        return nil if visited.include?('RemediationExecutionStatuses')
        visited = visited + ['RemediationExecutionStatuses']
        [
          RemediationExecutionStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemediationExecutionStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationExecutionStatus
    class RemediationExecutionStatus
      def self.default(visited=[])
        return nil if visited.include?('RemediationExecutionStatus')
        visited = visited + ['RemediationExecutionStatus']
        {
          resource_key: ResourceKey.default(visited),
          state: 'state',
          step_details: RemediationExecutionSteps.default(visited),
          invocation_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationExecutionStatus.new
        data = {}
        data['ResourceKey'] = ResourceKey.stub(stub[:resource_key]) unless stub[:resource_key].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StepDetails'] = RemediationExecutionSteps.stub(stub[:step_details]) unless stub[:step_details].nil?
        data['InvocationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:invocation_time]).to_i unless stub[:invocation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # List Stubber for RemediationExecutionSteps
    class RemediationExecutionSteps
      def self.default(visited=[])
        return nil if visited.include?('RemediationExecutionSteps')
        visited = visited + ['RemediationExecutionSteps']
        [
          RemediationExecutionStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemediationExecutionStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationExecutionStep
    class RemediationExecutionStep
      def self.default(visited=[])
        return nil if visited.include?('RemediationExecutionStep')
        visited = visited + ['RemediationExecutionStep']
        {
          name: 'name',
          state: 'state',
          error_message: 'error_message',
          start_time: Time.now,
          stop_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationExecutionStep.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['StopTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_time]).to_i unless stub[:stop_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeRetentionConfigurations
    class DescribeRetentionConfigurations
      def self.default(visited=[])
        {
          retention_configurations: RetentionConfigurationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RetentionConfigurations'] = RetentionConfigurationList.stub(stub[:retention_configurations]) unless stub[:retention_configurations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RetentionConfigurationList
    class RetentionConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('RetentionConfigurationList')
        visited = visited + ['RetentionConfigurationList']
        [
          RetentionConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RetentionConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RetentionConfiguration
    class RetentionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RetentionConfiguration')
        visited = visited + ['RetentionConfiguration']
        {
          name: 'name',
          retention_period_in_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetentionConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RetentionPeriodInDays'] = stub[:retention_period_in_days] unless stub[:retention_period_in_days].nil?
        data
      end
    end

    # Operation Stubber for GetAggregateComplianceDetailsByConfigRule
    class GetAggregateComplianceDetailsByConfigRule
      def self.default(visited=[])
        {
          aggregate_evaluation_results: AggregateEvaluationResultList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregateEvaluationResults'] = AggregateEvaluationResultList.stub(stub[:aggregate_evaluation_results]) unless stub[:aggregate_evaluation_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregateEvaluationResultList
    class AggregateEvaluationResultList
      def self.default(visited=[])
        return nil if visited.include?('AggregateEvaluationResultList')
        visited = visited + ['AggregateEvaluationResultList']
        [
          AggregateEvaluationResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateEvaluationResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateEvaluationResult
    class AggregateEvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('AggregateEvaluationResult')
        visited = visited + ['AggregateEvaluationResult']
        {
          evaluation_result_identifier: EvaluationResultIdentifier.default(visited),
          compliance_type: 'compliance_type',
          result_recorded_time: Time.now,
          config_rule_invoked_time: Time.now,
          annotation: 'annotation',
          account_id: 'account_id',
          aws_region: 'aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateEvaluationResult.new
        data = {}
        data['EvaluationResultIdentifier'] = EvaluationResultIdentifier.stub(stub[:evaluation_result_identifier]) unless stub[:evaluation_result_identifier].nil?
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['ResultRecordedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:result_recorded_time]).to_i unless stub[:result_recorded_time].nil?
        data['ConfigRuleInvokedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:config_rule_invoked_time]).to_i unless stub[:config_rule_invoked_time].nil?
        data['Annotation'] = stub[:annotation] unless stub[:annotation].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data
      end
    end

    # Structure Stubber for EvaluationResultIdentifier
    class EvaluationResultIdentifier
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResultIdentifier')
        visited = visited + ['EvaluationResultIdentifier']
        {
          evaluation_result_qualifier: EvaluationResultQualifier.default(visited),
          ordering_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResultIdentifier.new
        data = {}
        data['EvaluationResultQualifier'] = EvaluationResultQualifier.stub(stub[:evaluation_result_qualifier]) unless stub[:evaluation_result_qualifier].nil?
        data['OrderingTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ordering_timestamp]).to_i unless stub[:ordering_timestamp].nil?
        data
      end
    end

    # Structure Stubber for EvaluationResultQualifier
    class EvaluationResultQualifier
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResultQualifier')
        visited = visited + ['EvaluationResultQualifier']
        {
          config_rule_name: 'config_rule_name',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResultQualifier.new
        data = {}
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data
      end
    end

    # Operation Stubber for GetAggregateConfigRuleComplianceSummary
    class GetAggregateConfigRuleComplianceSummary
      def self.default(visited=[])
        {
          group_by_key: 'group_by_key',
          aggregate_compliance_counts: AggregateComplianceCountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GroupByKey'] = stub[:group_by_key] unless stub[:group_by_key].nil?
        data['AggregateComplianceCounts'] = AggregateComplianceCountList.stub(stub[:aggregate_compliance_counts]) unless stub[:aggregate_compliance_counts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregateComplianceCountList
    class AggregateComplianceCountList
      def self.default(visited=[])
        return nil if visited.include?('AggregateComplianceCountList')
        visited = visited + ['AggregateComplianceCountList']
        [
          AggregateComplianceCount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateComplianceCount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateComplianceCount
    class AggregateComplianceCount
      def self.default(visited=[])
        return nil if visited.include?('AggregateComplianceCount')
        visited = visited + ['AggregateComplianceCount']
        {
          group_name: 'group_name',
          compliance_summary: ComplianceSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateComplianceCount.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['ComplianceSummary'] = ComplianceSummary.stub(stub[:compliance_summary]) unless stub[:compliance_summary].nil?
        data
      end
    end

    # Structure Stubber for ComplianceSummary
    class ComplianceSummary
      def self.default(visited=[])
        return nil if visited.include?('ComplianceSummary')
        visited = visited + ['ComplianceSummary']
        {
          compliant_resource_count: ComplianceContributorCount.default(visited),
          non_compliant_resource_count: ComplianceContributorCount.default(visited),
          compliance_summary_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceSummary.new
        data = {}
        data['CompliantResourceCount'] = ComplianceContributorCount.stub(stub[:compliant_resource_count]) unless stub[:compliant_resource_count].nil?
        data['NonCompliantResourceCount'] = ComplianceContributorCount.stub(stub[:non_compliant_resource_count]) unless stub[:non_compliant_resource_count].nil?
        data['ComplianceSummaryTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:compliance_summary_timestamp]).to_i unless stub[:compliance_summary_timestamp].nil?
        data
      end
    end

    # Operation Stubber for GetAggregateConformancePackComplianceSummary
    class GetAggregateConformancePackComplianceSummary
      def self.default(visited=[])
        {
          aggregate_conformance_pack_compliance_summaries: AggregateConformancePackComplianceSummaryList.default(visited),
          group_by_key: 'group_by_key',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregateConformancePackComplianceSummaries'] = AggregateConformancePackComplianceSummaryList.stub(stub[:aggregate_conformance_pack_compliance_summaries]) unless stub[:aggregate_conformance_pack_compliance_summaries].nil?
        data['GroupByKey'] = stub[:group_by_key] unless stub[:group_by_key].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AggregateConformancePackComplianceSummaryList
    class AggregateConformancePackComplianceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AggregateConformancePackComplianceSummaryList')
        visited = visited + ['AggregateConformancePackComplianceSummaryList']
        [
          AggregateConformancePackComplianceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateConformancePackComplianceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregateConformancePackComplianceSummary
    class AggregateConformancePackComplianceSummary
      def self.default(visited=[])
        return nil if visited.include?('AggregateConformancePackComplianceSummary')
        visited = visited + ['AggregateConformancePackComplianceSummary']
        {
          compliance_summary: AggregateConformancePackComplianceCount.default(visited),
          group_name: 'group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateConformancePackComplianceSummary.new
        data = {}
        data['ComplianceSummary'] = AggregateConformancePackComplianceCount.stub(stub[:compliance_summary]) unless stub[:compliance_summary].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data
      end
    end

    # Structure Stubber for AggregateConformancePackComplianceCount
    class AggregateConformancePackComplianceCount
      def self.default(visited=[])
        return nil if visited.include?('AggregateConformancePackComplianceCount')
        visited = visited + ['AggregateConformancePackComplianceCount']
        {
          compliant_conformance_pack_count: 1,
          non_compliant_conformance_pack_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregateConformancePackComplianceCount.new
        data = {}
        data['CompliantConformancePackCount'] = stub[:compliant_conformance_pack_count] unless stub[:compliant_conformance_pack_count].nil?
        data['NonCompliantConformancePackCount'] = stub[:non_compliant_conformance_pack_count] unless stub[:non_compliant_conformance_pack_count].nil?
        data
      end
    end

    # Operation Stubber for GetAggregateDiscoveredResourceCounts
    class GetAggregateDiscoveredResourceCounts
      def self.default(visited=[])
        {
          total_discovered_resources: 1,
          group_by_key: 'group_by_key',
          grouped_resource_counts: GroupedResourceCountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TotalDiscoveredResources'] = stub[:total_discovered_resources] unless stub[:total_discovered_resources].nil?
        data['GroupByKey'] = stub[:group_by_key] unless stub[:group_by_key].nil?
        data['GroupedResourceCounts'] = GroupedResourceCountList.stub(stub[:grouped_resource_counts]) unless stub[:grouped_resource_counts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GroupedResourceCountList
    class GroupedResourceCountList
      def self.default(visited=[])
        return nil if visited.include?('GroupedResourceCountList')
        visited = visited + ['GroupedResourceCountList']
        [
          GroupedResourceCount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupedResourceCount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupedResourceCount
    class GroupedResourceCount
      def self.default(visited=[])
        return nil if visited.include?('GroupedResourceCount')
        visited = visited + ['GroupedResourceCount']
        {
          group_name: 'group_name',
          resource_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupedResourceCount.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['ResourceCount'] = stub[:resource_count] unless stub[:resource_count].nil?
        data
      end
    end

    # Operation Stubber for GetAggregateResourceConfig
    class GetAggregateResourceConfig
      def self.default(visited=[])
        {
          configuration_item: ConfigurationItem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationItem'] = ConfigurationItem.stub(stub[:configuration_item]) unless stub[:configuration_item].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ConfigurationItem
    class ConfigurationItem
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationItem')
        visited = visited + ['ConfigurationItem']
        {
          version: 'version',
          account_id: 'account_id',
          configuration_item_capture_time: Time.now,
          configuration_item_status: 'configuration_item_status',
          configuration_state_id: 'configuration_state_id',
          configuration_item_md5_hash: 'configuration_item_md5_hash',
          arn: 'arn',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_name: 'resource_name',
          aws_region: 'aws_region',
          availability_zone: 'availability_zone',
          resource_creation_time: Time.now,
          tags: Tags.default(visited),
          related_events: RelatedEventList.default(visited),
          relationships: RelationshipList.default(visited),
          configuration: 'configuration',
          supplementary_configuration: SupplementaryConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationItem.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['configurationItemCaptureTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:configuration_item_capture_time]).to_i unless stub[:configuration_item_capture_time].nil?
        data['configurationItemStatus'] = stub[:configuration_item_status] unless stub[:configuration_item_status].nil?
        data['configurationStateId'] = stub[:configuration_state_id] unless stub[:configuration_state_id].nil?
        data['configurationItemMD5Hash'] = stub[:configuration_item_md5_hash] unless stub[:configuration_item_md5_hash].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['resourceCreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:resource_creation_time]).to_i unless stub[:resource_creation_time].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['relatedEvents'] = RelatedEventList.stub(stub[:related_events]) unless stub[:related_events].nil?
        data['relationships'] = RelationshipList.stub(stub[:relationships]) unless stub[:relationships].nil?
        data['configuration'] = stub[:configuration] unless stub[:configuration].nil?
        data['supplementaryConfiguration'] = SupplementaryConfiguration.stub(stub[:supplementary_configuration]) unless stub[:supplementary_configuration].nil?
        data
      end
    end

    # List Stubber for RelationshipList
    class RelationshipList
      def self.default(visited=[])
        return nil if visited.include?('RelationshipList')
        visited = visited + ['RelationshipList']
        [
          Relationship.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Relationship.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Relationship
    class Relationship
      def self.default(visited=[])
        return nil if visited.include?('Relationship')
        visited = visited + ['Relationship']
        {
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_name: 'resource_name',
          relationship_name: 'relationship_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Relationship.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['relationshipName'] = stub[:relationship_name] unless stub[:relationship_name].nil?
        data
      end
    end

    # List Stubber for RelatedEventList
    class RelatedEventList
      def self.default(visited=[])
        return nil if visited.include?('RelatedEventList')
        visited = visited + ['RelatedEventList']
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

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for GetComplianceDetailsByConfigRule
    class GetComplianceDetailsByConfigRule
      def self.default(visited=[])
        {
          evaluation_results: EvaluationResults.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EvaluationResults'] = EvaluationResults.stub(stub[:evaluation_results]) unless stub[:evaluation_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EvaluationResults
    class EvaluationResults
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResults')
        visited = visited + ['EvaluationResults']
        [
          EvaluationResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EvaluationResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluationResult
    class EvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResult')
        visited = visited + ['EvaluationResult']
        {
          evaluation_result_identifier: EvaluationResultIdentifier.default(visited),
          compliance_type: 'compliance_type',
          result_recorded_time: Time.now,
          config_rule_invoked_time: Time.now,
          annotation: 'annotation',
          result_token: 'result_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResult.new
        data = {}
        data['EvaluationResultIdentifier'] = EvaluationResultIdentifier.stub(stub[:evaluation_result_identifier]) unless stub[:evaluation_result_identifier].nil?
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['ResultRecordedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:result_recorded_time]).to_i unless stub[:result_recorded_time].nil?
        data['ConfigRuleInvokedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:config_rule_invoked_time]).to_i unless stub[:config_rule_invoked_time].nil?
        data['Annotation'] = stub[:annotation] unless stub[:annotation].nil?
        data['ResultToken'] = stub[:result_token] unless stub[:result_token].nil?
        data
      end
    end

    # Operation Stubber for GetComplianceDetailsByResource
    class GetComplianceDetailsByResource
      def self.default(visited=[])
        {
          evaluation_results: EvaluationResults.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EvaluationResults'] = EvaluationResults.stub(stub[:evaluation_results]) unless stub[:evaluation_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetComplianceSummaryByConfigRule
    class GetComplianceSummaryByConfigRule
      def self.default(visited=[])
        {
          compliance_summary: ComplianceSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComplianceSummary'] = ComplianceSummary.stub(stub[:compliance_summary]) unless stub[:compliance_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetComplianceSummaryByResourceType
    class GetComplianceSummaryByResourceType
      def self.default(visited=[])
        {
          compliance_summaries_by_resource_type: ComplianceSummariesByResourceType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComplianceSummariesByResourceType'] = ComplianceSummariesByResourceType.stub(stub[:compliance_summaries_by_resource_type]) unless stub[:compliance_summaries_by_resource_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComplianceSummariesByResourceType
    class ComplianceSummariesByResourceType
      def self.default(visited=[])
        return nil if visited.include?('ComplianceSummariesByResourceType')
        visited = visited + ['ComplianceSummariesByResourceType']
        [
          ComplianceSummaryByResourceType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComplianceSummaryByResourceType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceSummaryByResourceType
    class ComplianceSummaryByResourceType
      def self.default(visited=[])
        return nil if visited.include?('ComplianceSummaryByResourceType')
        visited = visited + ['ComplianceSummaryByResourceType']
        {
          resource_type: 'resource_type',
          compliance_summary: ComplianceSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceSummaryByResourceType.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ComplianceSummary'] = ComplianceSummary.stub(stub[:compliance_summary]) unless stub[:compliance_summary].nil?
        data
      end
    end

    # Operation Stubber for GetConformancePackComplianceDetails
    class GetConformancePackComplianceDetails
      def self.default(visited=[])
        {
          conformance_pack_name: 'conformance_pack_name',
          conformance_pack_rule_evaluation_results: ConformancePackRuleEvaluationResultsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['ConformancePackRuleEvaluationResults'] = ConformancePackRuleEvaluationResultsList.stub(stub[:conformance_pack_rule_evaluation_results]) unless stub[:conformance_pack_rule_evaluation_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConformancePackRuleEvaluationResultsList
    class ConformancePackRuleEvaluationResultsList
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackRuleEvaluationResultsList')
        visited = visited + ['ConformancePackRuleEvaluationResultsList']
        [
          ConformancePackEvaluationResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConformancePackEvaluationResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConformancePackEvaluationResult
    class ConformancePackEvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackEvaluationResult')
        visited = visited + ['ConformancePackEvaluationResult']
        {
          compliance_type: 'compliance_type',
          evaluation_result_identifier: EvaluationResultIdentifier.default(visited),
          config_rule_invoked_time: Time.now,
          result_recorded_time: Time.now,
          annotation: 'annotation',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConformancePackEvaluationResult.new
        data = {}
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['EvaluationResultIdentifier'] = EvaluationResultIdentifier.stub(stub[:evaluation_result_identifier]) unless stub[:evaluation_result_identifier].nil?
        data['ConfigRuleInvokedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:config_rule_invoked_time]).to_i unless stub[:config_rule_invoked_time].nil?
        data['ResultRecordedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:result_recorded_time]).to_i unless stub[:result_recorded_time].nil?
        data['Annotation'] = stub[:annotation] unless stub[:annotation].nil?
        data
      end
    end

    # Operation Stubber for GetConformancePackComplianceSummary
    class GetConformancePackComplianceSummary
      def self.default(visited=[])
        {
          conformance_pack_compliance_summary_list: ConformancePackComplianceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConformancePackComplianceSummaryList'] = ConformancePackComplianceSummaryList.stub(stub[:conformance_pack_compliance_summary_list]) unless stub[:conformance_pack_compliance_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConformancePackComplianceSummaryList
    class ConformancePackComplianceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackComplianceSummaryList')
        visited = visited + ['ConformancePackComplianceSummaryList']
        [
          ConformancePackComplianceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConformancePackComplianceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConformancePackComplianceSummary
    class ConformancePackComplianceSummary
      def self.default(visited=[])
        return nil if visited.include?('ConformancePackComplianceSummary')
        visited = visited + ['ConformancePackComplianceSummary']
        {
          conformance_pack_name: 'conformance_pack_name',
          conformance_pack_compliance_status: 'conformance_pack_compliance_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConformancePackComplianceSummary.new
        data = {}
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['ConformancePackComplianceStatus'] = stub[:conformance_pack_compliance_status] unless stub[:conformance_pack_compliance_status].nil?
        data
      end
    end

    # Operation Stubber for GetCustomRulePolicy
    class GetCustomRulePolicy
      def self.default(visited=[])
        {
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDiscoveredResourceCounts
    class GetDiscoveredResourceCounts
      def self.default(visited=[])
        {
          total_discovered_resources: 1,
          resource_counts: ResourceCounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['totalDiscoveredResources'] = stub[:total_discovered_resources] unless stub[:total_discovered_resources].nil?
        data['resourceCounts'] = ResourceCounts.stub(stub[:resource_counts]) unless stub[:resource_counts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceCounts
    class ResourceCounts
      def self.default(visited=[])
        return nil if visited.include?('ResourceCounts')
        visited = visited + ['ResourceCounts']
        [
          ResourceCount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceCount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceCount
    class ResourceCount
      def self.default(visited=[])
        return nil if visited.include?('ResourceCount')
        visited = visited + ['ResourceCount']
        {
          resource_type: 'resource_type',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceCount.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for GetOrganizationConfigRuleDetailedStatus
    class GetOrganizationConfigRuleDetailedStatus
      def self.default(visited=[])
        {
          organization_config_rule_detailed_status: OrganizationConfigRuleDetailedStatus.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConfigRuleDetailedStatus'] = OrganizationConfigRuleDetailedStatus.stub(stub[:organization_config_rule_detailed_status]) unless stub[:organization_config_rule_detailed_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationConfigRuleDetailedStatus
    class OrganizationConfigRuleDetailedStatus
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConfigRuleDetailedStatus')
        visited = visited + ['OrganizationConfigRuleDetailedStatus']
        [
          MemberAccountStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MemberAccountStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberAccountStatus
    class MemberAccountStatus
      def self.default(visited=[])
        return nil if visited.include?('MemberAccountStatus')
        visited = visited + ['MemberAccountStatus']
        {
          account_id: 'account_id',
          config_rule_name: 'config_rule_name',
          member_account_rule_status: 'member_account_rule_status',
          error_code: 'error_code',
          error_message: 'error_message',
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberAccountStatus.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['ConfigRuleName'] = stub[:config_rule_name] unless stub[:config_rule_name].nil?
        data['MemberAccountRuleStatus'] = stub[:member_account_rule_status] unless stub[:member_account_rule_status].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for GetOrganizationConformancePackDetailedStatus
    class GetOrganizationConformancePackDetailedStatus
      def self.default(visited=[])
        {
          organization_conformance_pack_detailed_statuses: OrganizationConformancePackDetailedStatuses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConformancePackDetailedStatuses'] = OrganizationConformancePackDetailedStatuses.stub(stub[:organization_conformance_pack_detailed_statuses]) unless stub[:organization_conformance_pack_detailed_statuses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationConformancePackDetailedStatuses
    class OrganizationConformancePackDetailedStatuses
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConformancePackDetailedStatuses')
        visited = visited + ['OrganizationConformancePackDetailedStatuses']
        [
          OrganizationConformancePackDetailedStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationConformancePackDetailedStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrganizationConformancePackDetailedStatus
    class OrganizationConformancePackDetailedStatus
      def self.default(visited=[])
        return nil if visited.include?('OrganizationConformancePackDetailedStatus')
        visited = visited + ['OrganizationConformancePackDetailedStatus']
        {
          account_id: 'account_id',
          conformance_pack_name: 'conformance_pack_name',
          status: 'status',
          error_code: 'error_code',
          error_message: 'error_message',
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationConformancePackDetailedStatus.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['ConformancePackName'] = stub[:conformance_pack_name] unless stub[:conformance_pack_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for GetOrganizationCustomRulePolicy
    class GetOrganizationCustomRulePolicy
      def self.default(visited=[])
        {
          policy_text: 'policy_text',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResourceConfigHistory
    class GetResourceConfigHistory
      def self.default(visited=[])
        {
          configuration_items: ConfigurationItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configurationItems'] = ConfigurationItemList.stub(stub[:configuration_items]) unless stub[:configuration_items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationItemList
    class ConfigurationItemList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationItemList')
        visited = visited + ['ConfigurationItemList']
        [
          ConfigurationItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfigurationItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetStoredQuery
    class GetStoredQuery
      def self.default(visited=[])
        {
          stored_query: StoredQuery.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StoredQuery'] = StoredQuery.stub(stub[:stored_query]) unless stub[:stored_query].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StoredQuery
    class StoredQuery
      def self.default(visited=[])
        return nil if visited.include?('StoredQuery')
        visited = visited + ['StoredQuery']
        {
          query_id: 'query_id',
          query_arn: 'query_arn',
          query_name: 'query_name',
          description: 'description',
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::StoredQuery.new
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['QueryArn'] = stub[:query_arn] unless stub[:query_arn].nil?
        data['QueryName'] = stub[:query_name] unless stub[:query_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # Operation Stubber for ListAggregateDiscoveredResources
    class ListAggregateDiscoveredResources
      def self.default(visited=[])
        {
          resource_identifiers: DiscoveredResourceIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceIdentifiers'] = DiscoveredResourceIdentifierList.stub(stub[:resource_identifiers]) unless stub[:resource_identifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DiscoveredResourceIdentifierList
    class DiscoveredResourceIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('DiscoveredResourceIdentifierList')
        visited = visited + ['DiscoveredResourceIdentifierList']
        [
          AggregateResourceIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregateResourceIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDiscoveredResources
    class ListDiscoveredResources
      def self.default(visited=[])
        {
          resource_identifiers: ResourceIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceIdentifiers'] = ResourceIdentifierList.stub(stub[:resource_identifiers]) unless stub[:resource_identifiers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceIdentifierList
    class ResourceIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifierList')
        visited = visited + ['ResourceIdentifierList']
        [
          ResourceIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceIdentifier.stub(element) unless element.nil?
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
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          resource_name: 'resource_name',
          resource_deletion_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceIdentifier.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['resourceDeletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:resource_deletion_time]).to_i unless stub[:resource_deletion_time].nil?
        data
      end
    end

    # Operation Stubber for ListStoredQueries
    class ListStoredQueries
      def self.default(visited=[])
        {
          stored_query_metadata: StoredQueryMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StoredQueryMetadata'] = StoredQueryMetadataList.stub(stub[:stored_query_metadata]) unless stub[:stored_query_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StoredQueryMetadataList
    class StoredQueryMetadataList
      def self.default(visited=[])
        return nil if visited.include?('StoredQueryMetadataList')
        visited = visited + ['StoredQueryMetadataList']
        [
          StoredQueryMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StoredQueryMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StoredQueryMetadata
    class StoredQueryMetadata
      def self.default(visited=[])
        return nil if visited.include?('StoredQueryMetadata')
        visited = visited + ['StoredQueryMetadata']
        {
          query_id: 'query_id',
          query_arn: 'query_arn',
          query_name: 'query_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::StoredQueryMetadata.new
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['QueryArn'] = stub[:query_arn] unless stub[:query_arn].nil?
        data['QueryName'] = stub[:query_name] unless stub[:query_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
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
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

    # Operation Stubber for PutAggregationAuthorization
    class PutAggregationAuthorization
      def self.default(visited=[])
        {
          aggregation_authorization: AggregationAuthorization.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AggregationAuthorization'] = AggregationAuthorization.stub(stub[:aggregation_authorization]) unless stub[:aggregation_authorization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigRule
    class PutConfigRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationAggregator
    class PutConfigurationAggregator
      def self.default(visited=[])
        {
          configuration_aggregator: ConfigurationAggregator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationAggregator'] = ConfigurationAggregator.stub(stub[:configuration_aggregator]) unless stub[:configuration_aggregator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationRecorder
    class PutConfigurationRecorder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConformancePack
    class PutConformancePack
      def self.default(visited=[])
        {
          conformance_pack_arn: 'conformance_pack_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConformancePackArn'] = stub[:conformance_pack_arn] unless stub[:conformance_pack_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDeliveryChannel
    class PutDeliveryChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEvaluations
    class PutEvaluations
      def self.default(visited=[])
        {
          failed_evaluations: Evaluations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEvaluations'] = Evaluations.stub(stub[:failed_evaluations]) unless stub[:failed_evaluations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Evaluations
    class Evaluations
      def self.default(visited=[])
        return nil if visited.include?('Evaluations')
        visited = visited + ['Evaluations']
        [
          Evaluation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Evaluation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Evaluation
    class Evaluation
      def self.default(visited=[])
        return nil if visited.include?('Evaluation')
        visited = visited + ['Evaluation']
        {
          compliance_resource_type: 'compliance_resource_type',
          compliance_resource_id: 'compliance_resource_id',
          compliance_type: 'compliance_type',
          annotation: 'annotation',
          ordering_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Evaluation.new
        data = {}
        data['ComplianceResourceType'] = stub[:compliance_resource_type] unless stub[:compliance_resource_type].nil?
        data['ComplianceResourceId'] = stub[:compliance_resource_id] unless stub[:compliance_resource_id].nil?
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['Annotation'] = stub[:annotation] unless stub[:annotation].nil?
        data['OrderingTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ordering_timestamp]).to_i unless stub[:ordering_timestamp].nil?
        data
      end
    end

    # Operation Stubber for PutExternalEvaluation
    class PutExternalEvaluation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutOrganizationConfigRule
    class PutOrganizationConfigRule
      def self.default(visited=[])
        {
          organization_config_rule_arn: 'organization_config_rule_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConfigRuleArn'] = stub[:organization_config_rule_arn] unless stub[:organization_config_rule_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutOrganizationConformancePack
    class PutOrganizationConformancePack
      def self.default(visited=[])
        {
          organization_conformance_pack_arn: 'organization_conformance_pack_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationConformancePackArn'] = stub[:organization_conformance_pack_arn] unless stub[:organization_conformance_pack_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRemediationConfigurations
    class PutRemediationConfigurations
      def self.default(visited=[])
        {
          failed_batches: FailedRemediationBatches.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedBatches'] = FailedRemediationBatches.stub(stub[:failed_batches]) unless stub[:failed_batches].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedRemediationBatches
    class FailedRemediationBatches
      def self.default(visited=[])
        return nil if visited.include?('FailedRemediationBatches')
        visited = visited + ['FailedRemediationBatches']
        [
          FailedRemediationBatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedRemediationBatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedRemediationBatch
    class FailedRemediationBatch
      def self.default(visited=[])
        return nil if visited.include?('FailedRemediationBatch')
        visited = visited + ['FailedRemediationBatch']
        {
          failure_message: 'failure_message',
          failed_items: RemediationConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedRemediationBatch.new
        data = {}
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['FailedItems'] = RemediationConfigurations.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        data
      end
    end

    # Operation Stubber for PutRemediationExceptions
    class PutRemediationExceptions
      def self.default(visited=[])
        {
          failed_batches: FailedRemediationExceptionBatches.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedBatches'] = FailedRemediationExceptionBatches.stub(stub[:failed_batches]) unless stub[:failed_batches].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedRemediationExceptionBatches
    class FailedRemediationExceptionBatches
      def self.default(visited=[])
        return nil if visited.include?('FailedRemediationExceptionBatches')
        visited = visited + ['FailedRemediationExceptionBatches']
        [
          FailedRemediationExceptionBatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedRemediationExceptionBatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedRemediationExceptionBatch
    class FailedRemediationExceptionBatch
      def self.default(visited=[])
        return nil if visited.include?('FailedRemediationExceptionBatch')
        visited = visited + ['FailedRemediationExceptionBatch']
        {
          failure_message: 'failure_message',
          failed_items: RemediationExceptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedRemediationExceptionBatch.new
        data = {}
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['FailedItems'] = RemediationExceptions.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        data
      end
    end

    # Operation Stubber for PutResourceConfig
    class PutResourceConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRetentionConfiguration
    class PutRetentionConfiguration
      def self.default(visited=[])
        {
          retention_configuration: RetentionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RetentionConfiguration'] = RetentionConfiguration.stub(stub[:retention_configuration]) unless stub[:retention_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutStoredQuery
    class PutStoredQuery
      def self.default(visited=[])
        {
          query_arn: 'query_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryArn'] = stub[:query_arn] unless stub[:query_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SelectAggregateResourceConfig
    class SelectAggregateResourceConfig
      def self.default(visited=[])
        {
          results: Results.default(visited),
          query_info: QueryInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Results.stub(stub[:results]) unless stub[:results].nil?
        data['QueryInfo'] = QueryInfo.stub(stub[:query_info]) unless stub[:query_info].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for QueryInfo
    class QueryInfo
      def self.default(visited=[])
        return nil if visited.include?('QueryInfo')
        visited = visited + ['QueryInfo']
        {
          select_fields: FieldInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryInfo.new
        data = {}
        data['SelectFields'] = FieldInfoList.stub(stub[:select_fields]) unless stub[:select_fields].nil?
        data
      end
    end

    # List Stubber for FieldInfoList
    class FieldInfoList
      def self.default(visited=[])
        return nil if visited.include?('FieldInfoList')
        visited = visited + ['FieldInfoList']
        [
          FieldInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FieldInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FieldInfo
    class FieldInfo
      def self.default(visited=[])
        return nil if visited.include?('FieldInfo')
        visited = visited + ['FieldInfo']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldInfo.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for Results
    class Results
      def self.default(visited=[])
        return nil if visited.include?('Results')
        visited = visited + ['Results']
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

    # Operation Stubber for SelectResourceConfig
    class SelectResourceConfig
      def self.default(visited=[])
        {
          results: Results.default(visited),
          query_info: QueryInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Results.stub(stub[:results]) unless stub[:results].nil?
        data['QueryInfo'] = QueryInfo.stub(stub[:query_info]) unless stub[:query_info].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartConfigRulesEvaluation
    class StartConfigRulesEvaluation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartConfigurationRecorder
    class StartConfigurationRecorder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartRemediationExecution
    class StartRemediationExecution
      def self.default(visited=[])
        {
          failure_message: 'failure_message',
          failed_items: ResourceKeys.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['FailedItems'] = ResourceKeys.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopConfigurationRecorder
    class StopConfigurationRecorder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
