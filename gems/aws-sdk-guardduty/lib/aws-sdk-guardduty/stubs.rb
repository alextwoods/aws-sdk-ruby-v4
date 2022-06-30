# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GuardDuty
  module Stubs

    # Operation Stubber for AcceptInvitation
    class AcceptInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ArchiveFindings
    class ArchiveFindings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDetector
    class CreateDetector
      def self.default(visited=[])
        {
          detector_id: 'detector_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFilter
    class CreateFilter
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateIPSet
    class CreateIPSet
      def self.default(visited=[])
        {
          ip_set_id: 'ip_set_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ipSetId'] = stub[:ip_set_id] unless stub[:ip_set_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMembers
    class CreateMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnprocessedAccounts
    class UnprocessedAccounts
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedAccounts')
        visited = visited + ['UnprocessedAccounts']
        [
          Stubs::UnprocessedAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedAccount
    class UnprocessedAccount
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedAccount')
        visited = visited + ['UnprocessedAccount']
        {
          account_id: 'account_id',
          result: 'result',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data
      end
    end

    # Operation Stubber for CreatePublishingDestination
    class CreatePublishingDestination
      def self.default(visited=[])
        {
          destination_id: 'destination_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['destinationId'] = stub[:destination_id] unless stub[:destination_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSampleFindings
    class CreateSampleFindings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateThreatIntelSet
    class CreateThreatIntelSet
      def self.default(visited=[])
        {
          threat_intel_set_id: 'threat_intel_set_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['threatIntelSetId'] = stub[:threat_intel_set_id] unless stub[:threat_intel_set_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeclineInvitations
    class DeclineInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDetector
    class DeleteDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFilter
    class DeleteFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIPSet
    class DeleteIPSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInvitations
    class DeleteInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMembers
    class DeleteMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeletePublishingDestination
    class DeletePublishingDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteThreatIntelSet
    class DeleteThreatIntelSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.default(visited=[])
        {
          auto_enable: false,
          member_account_limit_reached: false,
          data_sources: Stubs::OrganizationDataSourceConfigurationsResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoEnable'] = stub[:auto_enable] unless stub[:auto_enable].nil?
        data['memberAccountLimitReached'] = stub[:member_account_limit_reached] unless stub[:member_account_limit_reached].nil?
        data['dataSources'] = Stubs::OrganizationDataSourceConfigurationsResult.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OrganizationDataSourceConfigurationsResult
    class OrganizationDataSourceConfigurationsResult
      def self.default(visited=[])
        return nil if visited.include?('OrganizationDataSourceConfigurationsResult')
        visited = visited + ['OrganizationDataSourceConfigurationsResult']
        {
          s3_logs: Stubs::OrganizationS3LogsConfigurationResult.default(visited),
          kubernetes: Stubs::OrganizationKubernetesConfigurationResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationDataSourceConfigurationsResult.new
        data = {}
        data['s3Logs'] = Stubs::OrganizationS3LogsConfigurationResult.stub(stub[:s3_logs]) unless stub[:s3_logs].nil?
        data['kubernetes'] = Stubs::OrganizationKubernetesConfigurationResult.stub(stub[:kubernetes]) unless stub[:kubernetes].nil?
        data
      end
    end

    # Structure Stubber for OrganizationKubernetesConfigurationResult
    class OrganizationKubernetesConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('OrganizationKubernetesConfigurationResult')
        visited = visited + ['OrganizationKubernetesConfigurationResult']
        {
          audit_logs: Stubs::OrganizationKubernetesAuditLogsConfigurationResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationKubernetesConfigurationResult.new
        data = {}
        data['auditLogs'] = Stubs::OrganizationKubernetesAuditLogsConfigurationResult.stub(stub[:audit_logs]) unless stub[:audit_logs].nil?
        data
      end
    end

    # Structure Stubber for OrganizationKubernetesAuditLogsConfigurationResult
    class OrganizationKubernetesAuditLogsConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('OrganizationKubernetesAuditLogsConfigurationResult')
        visited = visited + ['OrganizationKubernetesAuditLogsConfigurationResult']
        {
          auto_enable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationKubernetesAuditLogsConfigurationResult.new
        data = {}
        data['autoEnable'] = stub[:auto_enable] unless stub[:auto_enable].nil?
        data
      end
    end

    # Structure Stubber for OrganizationS3LogsConfigurationResult
    class OrganizationS3LogsConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('OrganizationS3LogsConfigurationResult')
        visited = visited + ['OrganizationS3LogsConfigurationResult']
        {
          auto_enable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationS3LogsConfigurationResult.new
        data = {}
        data['autoEnable'] = stub[:auto_enable] unless stub[:auto_enable].nil?
        data
      end
    end

    # Operation Stubber for DescribePublishingDestination
    class DescribePublishingDestination
      def self.default(visited=[])
        {
          destination_id: 'destination_id',
          destination_type: 'destination_type',
          status: 'status',
          publishing_failure_start_timestamp: 1,
          destination_properties: Stubs::DestinationProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['destinationId'] = stub[:destination_id] unless stub[:destination_id].nil?
        data['destinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['publishingFailureStartTimestamp'] = stub[:publishing_failure_start_timestamp] unless stub[:publishing_failure_start_timestamp].nil?
        data['destinationProperties'] = Stubs::DestinationProperties.stub(stub[:destination_properties]) unless stub[:destination_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DestinationProperties
    class DestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('DestinationProperties')
        visited = visited + ['DestinationProperties']
        {
          destination_arn: 'destination_arn',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationProperties.new
        data = {}
        data['destinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Operation Stubber for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateMembers
    class DisassociateMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDetector
    class GetDetector
      def self.default(visited=[])
        {
          created_at: 'created_at',
          finding_publishing_frequency: 'finding_publishing_frequency',
          service_role: 'service_role',
          status: 'status',
          updated_at: 'updated_at',
          data_sources: Stubs::DataSourceConfigurationsResult.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['findingPublishingFrequency'] = stub[:finding_publishing_frequency] unless stub[:finding_publishing_frequency].nil?
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['updatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        data['dataSources'] = Stubs::DataSourceConfigurationsResult.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Structure Stubber for DataSourceConfigurationsResult
    class DataSourceConfigurationsResult
      def self.default(visited=[])
        return nil if visited.include?('DataSourceConfigurationsResult')
        visited = visited + ['DataSourceConfigurationsResult']
        {
          cloud_trail: Stubs::CloudTrailConfigurationResult.default(visited),
          dns_logs: Stubs::DNSLogsConfigurationResult.default(visited),
          flow_logs: Stubs::FlowLogsConfigurationResult.default(visited),
          s3_logs: Stubs::S3LogsConfigurationResult.default(visited),
          kubernetes: Stubs::KubernetesConfigurationResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceConfigurationsResult.new
        data = {}
        data['cloudTrail'] = Stubs::CloudTrailConfigurationResult.stub(stub[:cloud_trail]) unless stub[:cloud_trail].nil?
        data['dnsLogs'] = Stubs::DNSLogsConfigurationResult.stub(stub[:dns_logs]) unless stub[:dns_logs].nil?
        data['flowLogs'] = Stubs::FlowLogsConfigurationResult.stub(stub[:flow_logs]) unless stub[:flow_logs].nil?
        data['s3Logs'] = Stubs::S3LogsConfigurationResult.stub(stub[:s3_logs]) unless stub[:s3_logs].nil?
        data['kubernetes'] = Stubs::KubernetesConfigurationResult.stub(stub[:kubernetes]) unless stub[:kubernetes].nil?
        data
      end
    end

    # Structure Stubber for KubernetesConfigurationResult
    class KubernetesConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('KubernetesConfigurationResult')
        visited = visited + ['KubernetesConfigurationResult']
        {
          audit_logs: Stubs::KubernetesAuditLogsConfigurationResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesConfigurationResult.new
        data = {}
        data['auditLogs'] = Stubs::KubernetesAuditLogsConfigurationResult.stub(stub[:audit_logs]) unless stub[:audit_logs].nil?
        data
      end
    end

    # Structure Stubber for KubernetesAuditLogsConfigurationResult
    class KubernetesAuditLogsConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('KubernetesAuditLogsConfigurationResult')
        visited = visited + ['KubernetesAuditLogsConfigurationResult']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesAuditLogsConfigurationResult.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for S3LogsConfigurationResult
    class S3LogsConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('S3LogsConfigurationResult')
        visited = visited + ['S3LogsConfigurationResult']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3LogsConfigurationResult.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for FlowLogsConfigurationResult
    class FlowLogsConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('FlowLogsConfigurationResult')
        visited = visited + ['FlowLogsConfigurationResult']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowLogsConfigurationResult.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for DNSLogsConfigurationResult
    class DNSLogsConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('DNSLogsConfigurationResult')
        visited = visited + ['DNSLogsConfigurationResult']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DNSLogsConfigurationResult.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for CloudTrailConfigurationResult
    class CloudTrailConfigurationResult
      def self.default(visited=[])
        return nil if visited.include?('CloudTrailConfigurationResult')
        visited = visited + ['CloudTrailConfigurationResult']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudTrailConfigurationResult.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for GetFilter
    class GetFilter
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          action: 'action',
          rank: 1,
          finding_criteria: Stubs::FindingCriteria.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data['rank'] = stub[:rank] unless stub[:rank].nil?
        data['findingCriteria'] = Stubs::FindingCriteria.stub(stub[:finding_criteria]) unless stub[:finding_criteria].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FindingCriteria
    class FindingCriteria
      def self.default(visited=[])
        return nil if visited.include?('FindingCriteria')
        visited = visited + ['FindingCriteria']
        {
          criterion: Stubs::Criterion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingCriteria.new
        data = {}
        data['criterion'] = Stubs::Criterion.stub(stub[:criterion]) unless stub[:criterion].nil?
        data
      end
    end

    # Map Stubber for Criterion
    class Criterion
      def self.default(visited=[])
        return nil if visited.include?('Criterion')
        visited = visited + ['Criterion']
        {
          test_key: Stubs::Condition.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Condition.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Condition
    class Condition
      def self.default(visited=[])
        return nil if visited.include?('Condition')
        visited = visited + ['Condition']
        {
          eq: Stubs::Eq.default(visited),
          neq: Stubs::Neq.default(visited),
          gt: 1,
          gte: 1,
          lt: 1,
          lte: 1,
          equals: Stubs::Equals.default(visited),
          not_equals: Stubs::NotEquals.default(visited),
          greater_than: 1,
          greater_than_or_equal: 1,
          less_than: 1,
          less_than_or_equal: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Condition.new
        data = {}
        data['eq'] = Stubs::Eq.stub(stub[:eq]) unless stub[:eq].nil?
        data['neq'] = Stubs::Neq.stub(stub[:neq]) unless stub[:neq].nil?
        data['gt'] = stub[:gt] unless stub[:gt].nil?
        data['gte'] = stub[:gte] unless stub[:gte].nil?
        data['lt'] = stub[:lt] unless stub[:lt].nil?
        data['lte'] = stub[:lte] unless stub[:lte].nil?
        data['equals'] = Stubs::Equals.stub(stub[:equals]) unless stub[:equals].nil?
        data['notEquals'] = Stubs::NotEquals.stub(stub[:not_equals]) unless stub[:not_equals].nil?
        data['greaterThan'] = stub[:greater_than] unless stub[:greater_than].nil?
        data['greaterThanOrEqual'] = stub[:greater_than_or_equal] unless stub[:greater_than_or_equal].nil?
        data['lessThan'] = stub[:less_than] unless stub[:less_than].nil?
        data['lessThanOrEqual'] = stub[:less_than_or_equal] unless stub[:less_than_or_equal].nil?
        data
      end
    end

    # List Stubber for NotEquals
    class NotEquals
      def self.default(visited=[])
        return nil if visited.include?('NotEquals')
        visited = visited + ['NotEquals']
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

    # List Stubber for Equals
    class Equals
      def self.default(visited=[])
        return nil if visited.include?('Equals')
        visited = visited + ['Equals']
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

    # List Stubber for Neq
    class Neq
      def self.default(visited=[])
        return nil if visited.include?('Neq')
        visited = visited + ['Neq']
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

    # List Stubber for Eq
    class Eq
      def self.default(visited=[])
        return nil if visited.include?('Eq')
        visited = visited + ['Eq']
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

    # Operation Stubber for GetFindings
    class GetFindings
      def self.default(visited=[])
        {
          findings: Stubs::Findings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findings'] = Stubs::Findings.stub(stub[:findings]) unless stub[:findings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Findings
    class Findings
      def self.default(visited=[])
        return nil if visited.include?('Findings')
        visited = visited + ['Findings']
        [
          Stubs::Finding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Finding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Finding
    class Finding
      def self.default(visited=[])
        return nil if visited.include?('Finding')
        visited = visited + ['Finding']
        {
          account_id: 'account_id',
          arn: 'arn',
          confidence: 1.0,
          created_at: 'created_at',
          description: 'description',
          id: 'id',
          partition: 'partition',
          region: 'region',
          resource: Stubs::Resource.default(visited),
          schema_version: 'schema_version',
          service: Stubs::Service.default(visited),
          severity: 1.0,
          title: 'title',
          type: 'type',
          updated_at: 'updated_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::Finding.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['partition'] = stub[:partition] unless stub[:partition].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['resource'] = Stubs::Resource.stub(stub[:resource]) unless stub[:resource].nil?
        data['schemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['service'] = Stubs::Service.stub(stub[:service]) unless stub[:service].nil?
        data['severity'] = Hearth::NumberHelper.serialize(stub[:severity])
        data['title'] = stub[:title] unless stub[:title].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['updatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        data
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          action: Stubs::Action.default(visited),
          evidence: Stubs::Evidence.default(visited),
          archived: false,
          count: 1,
          detector_id: 'detector_id',
          event_first_seen: 'event_first_seen',
          event_last_seen: 'event_last_seen',
          resource_role: 'resource_role',
          service_name: 'service_name',
          user_feedback: 'user_feedback',
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data['evidence'] = Stubs::Evidence.stub(stub[:evidence]) unless stub[:evidence].nil?
        data['archived'] = stub[:archived] unless stub[:archived].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['eventFirstSeen'] = stub[:event_first_seen] unless stub[:event_first_seen].nil?
        data['eventLastSeen'] = stub[:event_last_seen] unless stub[:event_last_seen].nil?
        data['resourceRole'] = stub[:resource_role] unless stub[:resource_role].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['userFeedback'] = stub[:user_feedback] unless stub[:user_feedback].nil?
        data
      end
    end

    # Structure Stubber for Evidence
    class Evidence
      def self.default(visited=[])
        return nil if visited.include?('Evidence')
        visited = visited + ['Evidence']
        {
          threat_intelligence_details: Stubs::ThreatIntelligenceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Evidence.new
        data = {}
        data['threatIntelligenceDetails'] = Stubs::ThreatIntelligenceDetails.stub(stub[:threat_intelligence_details]) unless stub[:threat_intelligence_details].nil?
        data
      end
    end

    # List Stubber for ThreatIntelligenceDetails
    class ThreatIntelligenceDetails
      def self.default(visited=[])
        return nil if visited.include?('ThreatIntelligenceDetails')
        visited = visited + ['ThreatIntelligenceDetails']
        [
          Stubs::ThreatIntelligenceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThreatIntelligenceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThreatIntelligenceDetail
    class ThreatIntelligenceDetail
      def self.default(visited=[])
        return nil if visited.include?('ThreatIntelligenceDetail')
        visited = visited + ['ThreatIntelligenceDetail']
        {
          threat_list_name: 'threat_list_name',
          threat_names: Stubs::ThreatNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThreatIntelligenceDetail.new
        data = {}
        data['threatListName'] = stub[:threat_list_name] unless stub[:threat_list_name].nil?
        data['threatNames'] = Stubs::ThreatNames.stub(stub[:threat_names]) unless stub[:threat_names].nil?
        data
      end
    end

    # List Stubber for ThreatNames
    class ThreatNames
      def self.default(visited=[])
        return nil if visited.include?('ThreatNames')
        visited = visited + ['ThreatNames']
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

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          action_type: 'action_type',
          aws_api_call_action: Stubs::AwsApiCallAction.default(visited),
          dns_request_action: Stubs::DnsRequestAction.default(visited),
          network_connection_action: Stubs::NetworkConnectionAction.default(visited),
          port_probe_action: Stubs::PortProbeAction.default(visited),
          kubernetes_api_call_action: Stubs::KubernetesApiCallAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['actionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['awsApiCallAction'] = Stubs::AwsApiCallAction.stub(stub[:aws_api_call_action]) unless stub[:aws_api_call_action].nil?
        data['dnsRequestAction'] = Stubs::DnsRequestAction.stub(stub[:dns_request_action]) unless stub[:dns_request_action].nil?
        data['networkConnectionAction'] = Stubs::NetworkConnectionAction.stub(stub[:network_connection_action]) unless stub[:network_connection_action].nil?
        data['portProbeAction'] = Stubs::PortProbeAction.stub(stub[:port_probe_action]) unless stub[:port_probe_action].nil?
        data['kubernetesApiCallAction'] = Stubs::KubernetesApiCallAction.stub(stub[:kubernetes_api_call_action]) unless stub[:kubernetes_api_call_action].nil?
        data
      end
    end

    # Structure Stubber for KubernetesApiCallAction
    class KubernetesApiCallAction
      def self.default(visited=[])
        return nil if visited.include?('KubernetesApiCallAction')
        visited = visited + ['KubernetesApiCallAction']
        {
          request_uri: 'request_uri',
          verb: 'verb',
          source_ips: Stubs::SourceIps.default(visited),
          user_agent: 'user_agent',
          remote_ip_details: Stubs::RemoteIpDetails.default(visited),
          status_code: 1,
          parameters: 'parameters',
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesApiCallAction.new
        data = {}
        data['requestUri'] = stub[:request_uri] unless stub[:request_uri].nil?
        data['verb'] = stub[:verb] unless stub[:verb].nil?
        data['sourceIps'] = Stubs::SourceIps.stub(stub[:source_ips]) unless stub[:source_ips].nil?
        data['userAgent'] = stub[:user_agent] unless stub[:user_agent].nil?
        data['remoteIpDetails'] = Stubs::RemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data
      end
    end

    # Structure Stubber for RemoteIpDetails
    class RemoteIpDetails
      def self.default(visited=[])
        return nil if visited.include?('RemoteIpDetails')
        visited = visited + ['RemoteIpDetails']
        {
          city: Stubs::City.default(visited),
          country: Stubs::Country.default(visited),
          geo_location: Stubs::GeoLocation.default(visited),
          ip_address_v4: 'ip_address_v4',
          organization: Stubs::Organization.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoteIpDetails.new
        data = {}
        data['city'] = Stubs::City.stub(stub[:city]) unless stub[:city].nil?
        data['country'] = Stubs::Country.stub(stub[:country]) unless stub[:country].nil?
        data['geoLocation'] = Stubs::GeoLocation.stub(stub[:geo_location]) unless stub[:geo_location].nil?
        data['ipAddressV4'] = stub[:ip_address_v4] unless stub[:ip_address_v4].nil?
        data['organization'] = Stubs::Organization.stub(stub[:organization]) unless stub[:organization].nil?
        data
      end
    end

    # Structure Stubber for Organization
    class Organization
      def self.default(visited=[])
        return nil if visited.include?('Organization')
        visited = visited + ['Organization']
        {
          asn: 'asn',
          asn_org: 'asn_org',
          isp: 'isp',
          org: 'org',
        }
      end

      def self.stub(stub)
        stub ||= Types::Organization.new
        data = {}
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['asnOrg'] = stub[:asn_org] unless stub[:asn_org].nil?
        data['isp'] = stub[:isp] unless stub[:isp].nil?
        data['org'] = stub[:org] unless stub[:org].nil?
        data
      end
    end

    # Structure Stubber for GeoLocation
    class GeoLocation
      def self.default(visited=[])
        return nil if visited.include?('GeoLocation')
        visited = visited + ['GeoLocation']
        {
          lat: 1.0,
          lon: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoLocation.new
        data = {}
        data['lat'] = Hearth::NumberHelper.serialize(stub[:lat])
        data['lon'] = Hearth::NumberHelper.serialize(stub[:lon])
        data
      end
    end

    # Structure Stubber for Country
    class Country
      def self.default(visited=[])
        return nil if visited.include?('Country')
        visited = visited + ['Country']
        {
          country_code: 'country_code',
          country_name: 'country_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Country.new
        data = {}
        data['countryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['countryName'] = stub[:country_name] unless stub[:country_name].nil?
        data
      end
    end

    # Structure Stubber for City
    class City
      def self.default(visited=[])
        return nil if visited.include?('City')
        visited = visited + ['City']
        {
          city_name: 'city_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::City.new
        data = {}
        data['cityName'] = stub[:city_name] unless stub[:city_name].nil?
        data
      end
    end

    # List Stubber for SourceIps
    class SourceIps
      def self.default(visited=[])
        return nil if visited.include?('SourceIps')
        visited = visited + ['SourceIps']
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

    # Structure Stubber for PortProbeAction
    class PortProbeAction
      def self.default(visited=[])
        return nil if visited.include?('PortProbeAction')
        visited = visited + ['PortProbeAction']
        {
          blocked: false,
          port_probe_details: Stubs::PortProbeDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortProbeAction.new
        data = {}
        data['blocked'] = stub[:blocked] unless stub[:blocked].nil?
        data['portProbeDetails'] = Stubs::PortProbeDetails.stub(stub[:port_probe_details]) unless stub[:port_probe_details].nil?
        data
      end
    end

    # List Stubber for PortProbeDetails
    class PortProbeDetails
      def self.default(visited=[])
        return nil if visited.include?('PortProbeDetails')
        visited = visited + ['PortProbeDetails']
        [
          Stubs::PortProbeDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortProbeDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortProbeDetail
    class PortProbeDetail
      def self.default(visited=[])
        return nil if visited.include?('PortProbeDetail')
        visited = visited + ['PortProbeDetail']
        {
          local_port_details: Stubs::LocalPortDetails.default(visited),
          local_ip_details: Stubs::LocalIpDetails.default(visited),
          remote_ip_details: Stubs::RemoteIpDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortProbeDetail.new
        data = {}
        data['localPortDetails'] = Stubs::LocalPortDetails.stub(stub[:local_port_details]) unless stub[:local_port_details].nil?
        data['localIpDetails'] = Stubs::LocalIpDetails.stub(stub[:local_ip_details]) unless stub[:local_ip_details].nil?
        data['remoteIpDetails'] = Stubs::RemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data
      end
    end

    # Structure Stubber for LocalIpDetails
    class LocalIpDetails
      def self.default(visited=[])
        return nil if visited.include?('LocalIpDetails')
        visited = visited + ['LocalIpDetails']
        {
          ip_address_v4: 'ip_address_v4',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalIpDetails.new
        data = {}
        data['ipAddressV4'] = stub[:ip_address_v4] unless stub[:ip_address_v4].nil?
        data
      end
    end

    # Structure Stubber for LocalPortDetails
    class LocalPortDetails
      def self.default(visited=[])
        return nil if visited.include?('LocalPortDetails')
        visited = visited + ['LocalPortDetails']
        {
          port: 1,
          port_name: 'port_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalPortDetails.new
        data = {}
        data['port'] = stub[:port] unless stub[:port].nil?
        data['portName'] = stub[:port_name] unless stub[:port_name].nil?
        data
      end
    end

    # Structure Stubber for NetworkConnectionAction
    class NetworkConnectionAction
      def self.default(visited=[])
        return nil if visited.include?('NetworkConnectionAction')
        visited = visited + ['NetworkConnectionAction']
        {
          blocked: false,
          connection_direction: 'connection_direction',
          local_port_details: Stubs::LocalPortDetails.default(visited),
          protocol: 'protocol',
          local_ip_details: Stubs::LocalIpDetails.default(visited),
          remote_ip_details: Stubs::RemoteIpDetails.default(visited),
          remote_port_details: Stubs::RemotePortDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConnectionAction.new
        data = {}
        data['blocked'] = stub[:blocked] unless stub[:blocked].nil?
        data['connectionDirection'] = stub[:connection_direction] unless stub[:connection_direction].nil?
        data['localPortDetails'] = Stubs::LocalPortDetails.stub(stub[:local_port_details]) unless stub[:local_port_details].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['localIpDetails'] = Stubs::LocalIpDetails.stub(stub[:local_ip_details]) unless stub[:local_ip_details].nil?
        data['remoteIpDetails'] = Stubs::RemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data['remotePortDetails'] = Stubs::RemotePortDetails.stub(stub[:remote_port_details]) unless stub[:remote_port_details].nil?
        data
      end
    end

    # Structure Stubber for RemotePortDetails
    class RemotePortDetails
      def self.default(visited=[])
        return nil if visited.include?('RemotePortDetails')
        visited = visited + ['RemotePortDetails']
        {
          port: 1,
          port_name: 'port_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RemotePortDetails.new
        data = {}
        data['port'] = stub[:port] unless stub[:port].nil?
        data['portName'] = stub[:port_name] unless stub[:port_name].nil?
        data
      end
    end

    # Structure Stubber for DnsRequestAction
    class DnsRequestAction
      def self.default(visited=[])
        return nil if visited.include?('DnsRequestAction')
        visited = visited + ['DnsRequestAction']
        {
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsRequestAction.new
        data = {}
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Structure Stubber for AwsApiCallAction
    class AwsApiCallAction
      def self.default(visited=[])
        return nil if visited.include?('AwsApiCallAction')
        visited = visited + ['AwsApiCallAction']
        {
          api: 'api',
          caller_type: 'caller_type',
          domain_details: Stubs::DomainDetails.default(visited),
          error_code: 'error_code',
          user_agent: 'user_agent',
          remote_ip_details: Stubs::RemoteIpDetails.default(visited),
          service_name: 'service_name',
          remote_account_details: Stubs::RemoteAccountDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsApiCallAction.new
        data = {}
        data['api'] = stub[:api] unless stub[:api].nil?
        data['callerType'] = stub[:caller_type] unless stub[:caller_type].nil?
        data['domainDetails'] = Stubs::DomainDetails.stub(stub[:domain_details]) unless stub[:domain_details].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['userAgent'] = stub[:user_agent] unless stub[:user_agent].nil?
        data['remoteIpDetails'] = Stubs::RemoteIpDetails.stub(stub[:remote_ip_details]) unless stub[:remote_ip_details].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['remoteAccountDetails'] = Stubs::RemoteAccountDetails.stub(stub[:remote_account_details]) unless stub[:remote_account_details].nil?
        data
      end
    end

    # Structure Stubber for RemoteAccountDetails
    class RemoteAccountDetails
      def self.default(visited=[])
        return nil if visited.include?('RemoteAccountDetails')
        visited = visited + ['RemoteAccountDetails']
        {
          account_id: 'account_id',
          affiliated: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoteAccountDetails.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['affiliated'] = stub[:affiliated] unless stub[:affiliated].nil?
        data
      end
    end

    # Structure Stubber for DomainDetails
    class DomainDetails
      def self.default(visited=[])
        return nil if visited.include?('DomainDetails')
        visited = visited + ['DomainDetails']
        {
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDetails.new
        data = {}
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          access_key_details: Stubs::AccessKeyDetails.default(visited),
          s3_bucket_details: Stubs::S3BucketDetails.default(visited),
          instance_details: Stubs::InstanceDetails.default(visited),
          eks_cluster_details: Stubs::EksClusterDetails.default(visited),
          kubernetes_details: Stubs::KubernetesDetails.default(visited),
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['accessKeyDetails'] = Stubs::AccessKeyDetails.stub(stub[:access_key_details]) unless stub[:access_key_details].nil?
        data['s3BucketDetails'] = Stubs::S3BucketDetails.stub(stub[:s3_bucket_details]) unless stub[:s3_bucket_details].nil?
        data['instanceDetails'] = Stubs::InstanceDetails.stub(stub[:instance_details]) unless stub[:instance_details].nil?
        data['eksClusterDetails'] = Stubs::EksClusterDetails.stub(stub[:eks_cluster_details]) unless stub[:eks_cluster_details].nil?
        data['kubernetesDetails'] = Stubs::KubernetesDetails.stub(stub[:kubernetes_details]) unless stub[:kubernetes_details].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Structure Stubber for KubernetesDetails
    class KubernetesDetails
      def self.default(visited=[])
        return nil if visited.include?('KubernetesDetails')
        visited = visited + ['KubernetesDetails']
        {
          kubernetes_user_details: Stubs::KubernetesUserDetails.default(visited),
          kubernetes_workload_details: Stubs::KubernetesWorkloadDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesDetails.new
        data = {}
        data['kubernetesUserDetails'] = Stubs::KubernetesUserDetails.stub(stub[:kubernetes_user_details]) unless stub[:kubernetes_user_details].nil?
        data['kubernetesWorkloadDetails'] = Stubs::KubernetesWorkloadDetails.stub(stub[:kubernetes_workload_details]) unless stub[:kubernetes_workload_details].nil?
        data
      end
    end

    # Structure Stubber for KubernetesWorkloadDetails
    class KubernetesWorkloadDetails
      def self.default(visited=[])
        return nil if visited.include?('KubernetesWorkloadDetails')
        visited = visited + ['KubernetesWorkloadDetails']
        {
          name: 'name',
          type: 'type',
          uid: 'uid',
          namespace: 'namespace',
          host_network: false,
          containers: Stubs::Containers.default(visited),
          volumes: Stubs::Volumes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesWorkloadDetails.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['uid'] = stub[:uid] unless stub[:uid].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['hostNetwork'] = stub[:host_network] unless stub[:host_network].nil?
        data['containers'] = Stubs::Containers.stub(stub[:containers]) unless stub[:containers].nil?
        data['volumes'] = Stubs::Volumes.stub(stub[:volumes]) unless stub[:volumes].nil?
        data
      end
    end

    # List Stubber for Volumes
    class Volumes
      def self.default(visited=[])
        return nil if visited.include?('Volumes')
        visited = visited + ['Volumes']
        [
          Stubs::Volume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Volume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Volume
    class Volume
      def self.default(visited=[])
        return nil if visited.include?('Volume')
        visited = visited + ['Volume']
        {
          name: 'name',
          host_path: Stubs::HostPath.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Volume.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['hostPath'] = Stubs::HostPath.stub(stub[:host_path]) unless stub[:host_path].nil?
        data
      end
    end

    # Structure Stubber for HostPath
    class HostPath
      def self.default(visited=[])
        return nil if visited.include?('HostPath')
        visited = visited + ['HostPath']
        {
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::HostPath.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # List Stubber for Containers
    class Containers
      def self.default(visited=[])
        return nil if visited.include?('Containers')
        visited = visited + ['Containers']
        [
          Stubs::Container.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Container.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Container
    class Container
      def self.default(visited=[])
        return nil if visited.include?('Container')
        visited = visited + ['Container']
        {
          container_runtime: 'container_runtime',
          id: 'id',
          name: 'name',
          image: 'image',
          image_prefix: 'image_prefix',
          volume_mounts: Stubs::VolumeMounts.default(visited),
          security_context: Stubs::SecurityContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Container.new
        data = {}
        data['containerRuntime'] = stub[:container_runtime] unless stub[:container_runtime].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['image'] = stub[:image] unless stub[:image].nil?
        data['imagePrefix'] = stub[:image_prefix] unless stub[:image_prefix].nil?
        data['volumeMounts'] = Stubs::VolumeMounts.stub(stub[:volume_mounts]) unless stub[:volume_mounts].nil?
        data['securityContext'] = Stubs::SecurityContext.stub(stub[:security_context]) unless stub[:security_context].nil?
        data
      end
    end

    # Structure Stubber for SecurityContext
    class SecurityContext
      def self.default(visited=[])
        return nil if visited.include?('SecurityContext')
        visited = visited + ['SecurityContext']
        {
          privileged: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityContext.new
        data = {}
        data['privileged'] = stub[:privileged] unless stub[:privileged].nil?
        data
      end
    end

    # List Stubber for VolumeMounts
    class VolumeMounts
      def self.default(visited=[])
        return nil if visited.include?('VolumeMounts')
        visited = visited + ['VolumeMounts']
        [
          Stubs::VolumeMount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VolumeMount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeMount
    class VolumeMount
      def self.default(visited=[])
        return nil if visited.include?('VolumeMount')
        visited = visited + ['VolumeMount']
        {
          name: 'name',
          mount_path: 'mount_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeMount.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['mountPath'] = stub[:mount_path] unless stub[:mount_path].nil?
        data
      end
    end

    # Structure Stubber for KubernetesUserDetails
    class KubernetesUserDetails
      def self.default(visited=[])
        return nil if visited.include?('KubernetesUserDetails')
        visited = visited + ['KubernetesUserDetails']
        {
          username: 'username',
          uid: 'uid',
          groups: Stubs::Groups.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KubernetesUserDetails.new
        data = {}
        data['username'] = stub[:username] unless stub[:username].nil?
        data['uid'] = stub[:uid] unless stub[:uid].nil?
        data['groups'] = Stubs::Groups.stub(stub[:groups]) unless stub[:groups].nil?
        data
      end
    end

    # List Stubber for Groups
    class Groups
      def self.default(visited=[])
        return nil if visited.include?('Groups')
        visited = visited + ['Groups']
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

    # Structure Stubber for EksClusterDetails
    class EksClusterDetails
      def self.default(visited=[])
        return nil if visited.include?('EksClusterDetails')
        visited = visited + ['EksClusterDetails']
        {
          name: 'name',
          arn: 'arn',
          vpc_id: 'vpc_id',
          status: 'status',
          tags: Stubs::Tags.default(visited),
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EksClusterDetails.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for InstanceDetails
    class InstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('InstanceDetails')
        visited = visited + ['InstanceDetails']
        {
          availability_zone: 'availability_zone',
          iam_instance_profile: Stubs::IamInstanceProfile.default(visited),
          image_description: 'image_description',
          image_id: 'image_id',
          instance_id: 'instance_id',
          instance_state: 'instance_state',
          instance_type: 'instance_type',
          outpost_arn: 'outpost_arn',
          launch_time: 'launch_time',
          network_interfaces: Stubs::NetworkInterfaces.default(visited),
          platform: 'platform',
          product_codes: Stubs::ProductCodes.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceDetails.new
        data = {}
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['iamInstanceProfile'] = Stubs::IamInstanceProfile.stub(stub[:iam_instance_profile]) unless stub[:iam_instance_profile].nil?
        data['imageDescription'] = stub[:image_description] unless stub[:image_description].nil?
        data['imageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['instanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['instanceState'] = stub[:instance_state] unless stub[:instance_state].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['outpostArn'] = stub[:outpost_arn] unless stub[:outpost_arn].nil?
        data['launchTime'] = stub[:launch_time] unless stub[:launch_time].nil?
        data['networkInterfaces'] = Stubs::NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['productCodes'] = Stubs::ProductCodes.stub(stub[:product_codes]) unless stub[:product_codes].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ProductCodes
    class ProductCodes
      def self.default(visited=[])
        return nil if visited.include?('ProductCodes')
        visited = visited + ['ProductCodes']
        [
          Stubs::ProductCode.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProductCode.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductCode
    class ProductCode
      def self.default(visited=[])
        return nil if visited.include?('ProductCode')
        visited = visited + ['ProductCode']
        {
          code: 'code',
          product_type: 'product_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductCode.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['productType'] = stub[:product_type] unless stub[:product_type].nil?
        data
      end
    end

    # List Stubber for NetworkInterfaces
    class NetworkInterfaces
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaces')
        visited = visited + ['NetworkInterfaces']
        [
          Stubs::NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          ipv6_addresses: Stubs::Ipv6Addresses.default(visited),
          network_interface_id: 'network_interface_id',
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
          private_ip_addresses: Stubs::PrivateIpAddresses.default(visited),
          public_dns_name: 'public_dns_name',
          public_ip: 'public_ip',
          security_groups: Stubs::SecurityGroups.default(visited),
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['ipv6Addresses'] = Stubs::Ipv6Addresses.stub(stub[:ipv6_addresses]) unless stub[:ipv6_addresses].nil?
        data['networkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['privateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['privateIpAddresses'] = Stubs::PrivateIpAddresses.stub(stub[:private_ip_addresses]) unless stub[:private_ip_addresses].nil?
        data['publicDnsName'] = stub[:public_dns_name] unless stub[:public_dns_name].nil?
        data['publicIp'] = stub[:public_ip] unless stub[:public_ip].nil?
        data['securityGroups'] = Stubs::SecurityGroups.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['subnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
        [
          Stubs::SecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityGroup
    class SecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroup')
        visited = visited + ['SecurityGroup']
        {
          group_id: 'group_id',
          group_name: 'group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityGroup.new
        data = {}
        data['groupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data
      end
    end

    # List Stubber for PrivateIpAddresses
    class PrivateIpAddresses
      def self.default(visited=[])
        return nil if visited.include?('PrivateIpAddresses')
        visited = visited + ['PrivateIpAddresses']
        [
          Stubs::PrivateIpAddressDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PrivateIpAddressDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PrivateIpAddressDetails
    class PrivateIpAddressDetails
      def self.default(visited=[])
        return nil if visited.include?('PrivateIpAddressDetails')
        visited = visited + ['PrivateIpAddressDetails']
        {
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::PrivateIpAddressDetails.new
        data = {}
        data['privateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data
      end
    end

    # List Stubber for Ipv6Addresses
    class Ipv6Addresses
      def self.default(visited=[])
        return nil if visited.include?('Ipv6Addresses')
        visited = visited + ['Ipv6Addresses']
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

    # Structure Stubber for IamInstanceProfile
    class IamInstanceProfile
      def self.default(visited=[])
        return nil if visited.include?('IamInstanceProfile')
        visited = visited + ['IamInstanceProfile']
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::IamInstanceProfile.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # List Stubber for S3BucketDetails
    class S3BucketDetails
      def self.default(visited=[])
        return nil if visited.include?('S3BucketDetails')
        visited = visited + ['S3BucketDetails']
        [
          Stubs::S3BucketDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::S3BucketDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3BucketDetail
    class S3BucketDetail
      def self.default(visited=[])
        return nil if visited.include?('S3BucketDetail')
        visited = visited + ['S3BucketDetail']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          created_at: Time.now,
          owner: Stubs::Owner.default(visited),
          tags: Stubs::Tags.default(visited),
          default_server_side_encryption: Stubs::DefaultServerSideEncryption.default(visited),
          public_access: Stubs::PublicAccess.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketDetail.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['owner'] = Stubs::Owner.stub(stub[:owner]) unless stub[:owner].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['defaultServerSideEncryption'] = Stubs::DefaultServerSideEncryption.stub(stub[:default_server_side_encryption]) unless stub[:default_server_side_encryption].nil?
        data['publicAccess'] = Stubs::PublicAccess.stub(stub[:public_access]) unless stub[:public_access].nil?
        data
      end
    end

    # Structure Stubber for PublicAccess
    class PublicAccess
      def self.default(visited=[])
        return nil if visited.include?('PublicAccess')
        visited = visited + ['PublicAccess']
        {
          permission_configuration: Stubs::PermissionConfiguration.default(visited),
          effective_permission: 'effective_permission',
        }
      end

      def self.stub(stub)
        stub ||= Types::PublicAccess.new
        data = {}
        data['permissionConfiguration'] = Stubs::PermissionConfiguration.stub(stub[:permission_configuration]) unless stub[:permission_configuration].nil?
        data['effectivePermission'] = stub[:effective_permission] unless stub[:effective_permission].nil?
        data
      end
    end

    # Structure Stubber for PermissionConfiguration
    class PermissionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PermissionConfiguration')
        visited = visited + ['PermissionConfiguration']
        {
          bucket_level_permissions: Stubs::BucketLevelPermissions.default(visited),
          account_level_permissions: Stubs::AccountLevelPermissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionConfiguration.new
        data = {}
        data['bucketLevelPermissions'] = Stubs::BucketLevelPermissions.stub(stub[:bucket_level_permissions]) unless stub[:bucket_level_permissions].nil?
        data['accountLevelPermissions'] = Stubs::AccountLevelPermissions.stub(stub[:account_level_permissions]) unless stub[:account_level_permissions].nil?
        data
      end
    end

    # Structure Stubber for AccountLevelPermissions
    class AccountLevelPermissions
      def self.default(visited=[])
        return nil if visited.include?('AccountLevelPermissions')
        visited = visited + ['AccountLevelPermissions']
        {
          block_public_access: Stubs::BlockPublicAccess.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountLevelPermissions.new
        data = {}
        data['blockPublicAccess'] = Stubs::BlockPublicAccess.stub(stub[:block_public_access]) unless stub[:block_public_access].nil?
        data
      end
    end

    # Structure Stubber for BlockPublicAccess
    class BlockPublicAccess
      def self.default(visited=[])
        return nil if visited.include?('BlockPublicAccess')
        visited = visited + ['BlockPublicAccess']
        {
          ignore_public_acls: false,
          restrict_public_buckets: false,
          block_public_acls: false,
          block_public_policy: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockPublicAccess.new
        data = {}
        data['ignorePublicAcls'] = stub[:ignore_public_acls] unless stub[:ignore_public_acls].nil?
        data['restrictPublicBuckets'] = stub[:restrict_public_buckets] unless stub[:restrict_public_buckets].nil?
        data['blockPublicAcls'] = stub[:block_public_acls] unless stub[:block_public_acls].nil?
        data['blockPublicPolicy'] = stub[:block_public_policy] unless stub[:block_public_policy].nil?
        data
      end
    end

    # Structure Stubber for BucketLevelPermissions
    class BucketLevelPermissions
      def self.default(visited=[])
        return nil if visited.include?('BucketLevelPermissions')
        visited = visited + ['BucketLevelPermissions']
        {
          access_control_list: Stubs::AccessControlList.default(visited),
          bucket_policy: Stubs::BucketPolicy.default(visited),
          block_public_access: Stubs::BlockPublicAccess.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketLevelPermissions.new
        data = {}
        data['accessControlList'] = Stubs::AccessControlList.stub(stub[:access_control_list]) unless stub[:access_control_list].nil?
        data['bucketPolicy'] = Stubs::BucketPolicy.stub(stub[:bucket_policy]) unless stub[:bucket_policy].nil?
        data['blockPublicAccess'] = Stubs::BlockPublicAccess.stub(stub[:block_public_access]) unless stub[:block_public_access].nil?
        data
      end
    end

    # Structure Stubber for BucketPolicy
    class BucketPolicy
      def self.default(visited=[])
        return nil if visited.include?('BucketPolicy')
        visited = visited + ['BucketPolicy']
        {
          allows_public_read_access: false,
          allows_public_write_access: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketPolicy.new
        data = {}
        data['allowsPublicReadAccess'] = stub[:allows_public_read_access] unless stub[:allows_public_read_access].nil?
        data['allowsPublicWriteAccess'] = stub[:allows_public_write_access] unless stub[:allows_public_write_access].nil?
        data
      end
    end

    # Structure Stubber for AccessControlList
    class AccessControlList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlList')
        visited = visited + ['AccessControlList']
        {
          allows_public_read_access: false,
          allows_public_write_access: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessControlList.new
        data = {}
        data['allowsPublicReadAccess'] = stub[:allows_public_read_access] unless stub[:allows_public_read_access].nil?
        data['allowsPublicWriteAccess'] = stub[:allows_public_write_access] unless stub[:allows_public_write_access].nil?
        data
      end
    end

    # Structure Stubber for DefaultServerSideEncryption
    class DefaultServerSideEncryption
      def self.default(visited=[])
        return nil if visited.include?('DefaultServerSideEncryption')
        visited = visited + ['DefaultServerSideEncryption']
        {
          encryption_type: 'encryption_type',
          kms_master_key_arn: 'kms_master_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultServerSideEncryption.new
        data = {}
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['kmsMasterKeyArn'] = stub[:kms_master_key_arn] unless stub[:kms_master_key_arn].nil?
        data
      end
    end

    # Structure Stubber for Owner
    class Owner
      def self.default(visited=[])
        return nil if visited.include?('Owner')
        visited = visited + ['Owner']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Owner.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for AccessKeyDetails
    class AccessKeyDetails
      def self.default(visited=[])
        return nil if visited.include?('AccessKeyDetails')
        visited = visited + ['AccessKeyDetails']
        {
          access_key_id: 'access_key_id',
          principal_id: 'principal_id',
          user_name: 'user_name',
          user_type: 'user_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessKeyDetails.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['userName'] = stub[:user_name] unless stub[:user_name].nil?
        data['userType'] = stub[:user_type] unless stub[:user_type].nil?
        data
      end
    end

    # Operation Stubber for GetFindingsStatistics
    class GetFindingsStatistics
      def self.default(visited=[])
        {
          finding_statistics: Stubs::FindingStatistics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findingStatistics'] = Stubs::FindingStatistics.stub(stub[:finding_statistics]) unless stub[:finding_statistics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FindingStatistics
    class FindingStatistics
      def self.default(visited=[])
        return nil if visited.include?('FindingStatistics')
        visited = visited + ['FindingStatistics']
        {
          count_by_severity: Stubs::CountBySeverity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingStatistics.new
        data = {}
        data['countBySeverity'] = Stubs::CountBySeverity.stub(stub[:count_by_severity]) unless stub[:count_by_severity].nil?
        data
      end
    end

    # Map Stubber for CountBySeverity
    class CountBySeverity
      def self.default(visited=[])
        return nil if visited.include?('CountBySeverity')
        visited = visited + ['CountBySeverity']
        {
          test_key: 1
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

    # Operation Stubber for GetIPSet
    class GetIPSet
      def self.default(visited=[])
        {
          name: 'name',
          format: 'format',
          location: 'location',
          status: 'status',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetInvitationsCount
    class GetInvitationsCount
      def self.default(visited=[])
        {
          invitations_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['invitationsCount'] = stub[:invitations_count] unless stub[:invitations_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMasterAccount
    class GetMasterAccount
      def self.default(visited=[])
        {
          master: Stubs::Master.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['master'] = Stubs::Master.stub(stub[:master]) unless stub[:master].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Master
    class Master
      def self.default(visited=[])
        return nil if visited.include?('Master')
        visited = visited + ['Master']
        {
          account_id: 'account_id',
          invitation_id: 'invitation_id',
          relationship_status: 'relationship_status',
          invited_at: 'invited_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::Master.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['invitationId'] = stub[:invitation_id] unless stub[:invitation_id].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data['invitedAt'] = stub[:invited_at] unless stub[:invited_at].nil?
        data
      end
    end

    # Operation Stubber for GetMemberDetectors
    class GetMemberDetectors
      def self.default(visited=[])
        {
          member_data_source_configurations: Stubs::MemberDataSourceConfigurations.default(visited),
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = Stubs::MemberDataSourceConfigurations.stub(stub[:member_data_source_configurations]) unless stub[:member_data_source_configurations].nil?
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MemberDataSourceConfigurations
    class MemberDataSourceConfigurations
      def self.default(visited=[])
        return nil if visited.include?('MemberDataSourceConfigurations')
        visited = visited + ['MemberDataSourceConfigurations']
        [
          Stubs::MemberDataSourceConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MemberDataSourceConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberDataSourceConfiguration
    class MemberDataSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MemberDataSourceConfiguration')
        visited = visited + ['MemberDataSourceConfiguration']
        {
          account_id: 'account_id',
          data_sources: Stubs::DataSourceConfigurationsResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberDataSourceConfiguration.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['dataSources'] = Stubs::DataSourceConfigurationsResult.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data
      end
    end

    # Operation Stubber for GetMembers
    class GetMembers
      def self.default(visited=[])
        {
          members: Stubs::Members.default(visited),
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = Stubs::Members.stub(stub[:members]) unless stub[:members].nil?
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Members
    class Members
      def self.default(visited=[])
        return nil if visited.include?('Members')
        visited = visited + ['Members']
        [
          Stubs::Member.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Member.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          account_id: 'account_id',
          detector_id: 'detector_id',
          master_id: 'master_id',
          email: 'email',
          relationship_status: 'relationship_status',
          invited_at: 'invited_at',
          updated_at: 'updated_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['masterId'] = stub[:master_id] unless stub[:master_id].nil?
        data['email'] = stub[:email] unless stub[:email].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data['invitedAt'] = stub[:invited_at] unless stub[:invited_at].nil?
        data['updatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for GetThreatIntelSet
    class GetThreatIntelSet
      def self.default(visited=[])
        {
          name: 'name',
          format: 'format',
          location: 'location',
          status: 'status',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUsageStatistics
    class GetUsageStatistics
      def self.default(visited=[])
        {
          usage_statistics: Stubs::UsageStatistics.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['usageStatistics'] = Stubs::UsageStatistics.stub(stub[:usage_statistics]) unless stub[:usage_statistics].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UsageStatistics
    class UsageStatistics
      def self.default(visited=[])
        return nil if visited.include?('UsageStatistics')
        visited = visited + ['UsageStatistics']
        {
          sum_by_account: Stubs::UsageAccountResultList.default(visited),
          sum_by_data_source: Stubs::UsageDataSourceResultList.default(visited),
          sum_by_resource: Stubs::UsageResourceResultList.default(visited),
          top_resources: Stubs::UsageResourceResultList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageStatistics.new
        data = {}
        data['sumByAccount'] = Stubs::UsageAccountResultList.stub(stub[:sum_by_account]) unless stub[:sum_by_account].nil?
        data['sumByDataSource'] = Stubs::UsageDataSourceResultList.stub(stub[:sum_by_data_source]) unless stub[:sum_by_data_source].nil?
        data['sumByResource'] = Stubs::UsageResourceResultList.stub(stub[:sum_by_resource]) unless stub[:sum_by_resource].nil?
        data['topResources'] = Stubs::UsageResourceResultList.stub(stub[:top_resources]) unless stub[:top_resources].nil?
        data
      end
    end

    # List Stubber for UsageResourceResultList
    class UsageResourceResultList
      def self.default(visited=[])
        return nil if visited.include?('UsageResourceResultList')
        visited = visited + ['UsageResourceResultList']
        [
          Stubs::UsageResourceResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageResourceResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageResourceResult
    class UsageResourceResult
      def self.default(visited=[])
        return nil if visited.include?('UsageResourceResult')
        visited = visited + ['UsageResourceResult']
        {
          resource: 'resource',
          total: Stubs::Total.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageResourceResult.new
        data = {}
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['total'] = Stubs::Total.stub(stub[:total]) unless stub[:total].nil?
        data
      end
    end

    # Structure Stubber for Total
    class Total
      def self.default(visited=[])
        return nil if visited.include?('Total')
        visited = visited + ['Total']
        {
          amount: 'amount',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Total.new
        data = {}
        data['amount'] = stub[:amount] unless stub[:amount].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for UsageDataSourceResultList
    class UsageDataSourceResultList
      def self.default(visited=[])
        return nil if visited.include?('UsageDataSourceResultList')
        visited = visited + ['UsageDataSourceResultList']
        [
          Stubs::UsageDataSourceResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageDataSourceResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageDataSourceResult
    class UsageDataSourceResult
      def self.default(visited=[])
        return nil if visited.include?('UsageDataSourceResult')
        visited = visited + ['UsageDataSourceResult']
        {
          data_source: 'data_source',
          total: Stubs::Total.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageDataSourceResult.new
        data = {}
        data['dataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['total'] = Stubs::Total.stub(stub[:total]) unless stub[:total].nil?
        data
      end
    end

    # List Stubber for UsageAccountResultList
    class UsageAccountResultList
      def self.default(visited=[])
        return nil if visited.include?('UsageAccountResultList')
        visited = visited + ['UsageAccountResultList']
        [
          Stubs::UsageAccountResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageAccountResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageAccountResult
    class UsageAccountResult
      def self.default(visited=[])
        return nil if visited.include?('UsageAccountResult')
        visited = visited + ['UsageAccountResult']
        {
          account_id: 'account_id',
          total: Stubs::Total.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageAccountResult.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['total'] = Stubs::Total.stub(stub[:total]) unless stub[:total].nil?
        data
      end
    end

    # Operation Stubber for InviteMembers
    class InviteMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDetectors
    class ListDetectors
      def self.default(visited=[])
        {
          detector_ids: Stubs::DetectorIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['detectorIds'] = Stubs::DetectorIds.stub(stub[:detector_ids]) unless stub[:detector_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DetectorIds
    class DetectorIds
      def self.default(visited=[])
        return nil if visited.include?('DetectorIds')
        visited = visited + ['DetectorIds']
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

    # Operation Stubber for ListFilters
    class ListFilters
      def self.default(visited=[])
        {
          filter_names: Stubs::FilterNames.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['filterNames'] = Stubs::FilterNames.stub(stub[:filter_names]) unless stub[:filter_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FilterNames
    class FilterNames
      def self.default(visited=[])
        return nil if visited.include?('FilterNames')
        visited = visited + ['FilterNames']
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

    # Operation Stubber for ListFindings
    class ListFindings
      def self.default(visited=[])
        {
          finding_ids: Stubs::FindingIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findingIds'] = Stubs::FindingIds.stub(stub[:finding_ids]) unless stub[:finding_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for ListIPSets
    class ListIPSets
      def self.default(visited=[])
        {
          ip_set_ids: Stubs::IpSetIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ipSetIds'] = Stubs::IpSetIds.stub(stub[:ip_set_ids]) unless stub[:ip_set_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IpSetIds
    class IpSetIds
      def self.default(visited=[])
        return nil if visited.include?('IpSetIds')
        visited = visited + ['IpSetIds']
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

    # Operation Stubber for ListInvitations
    class ListInvitations
      def self.default(visited=[])
        {
          invitations: Stubs::Invitations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['invitations'] = Stubs::Invitations.stub(stub[:invitations]) unless stub[:invitations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Invitations
    class Invitations
      def self.default(visited=[])
        return nil if visited.include?('Invitations')
        visited = visited + ['Invitations']
        [
          Stubs::Invitation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Invitation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Invitation
    class Invitation
      def self.default(visited=[])
        return nil if visited.include?('Invitation')
        visited = visited + ['Invitation']
        {
          account_id: 'account_id',
          invitation_id: 'invitation_id',
          relationship_status: 'relationship_status',
          invited_at: 'invited_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::Invitation.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['invitationId'] = stub[:invitation_id] unless stub[:invitation_id].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data['invitedAt'] = stub[:invited_at] unless stub[:invited_at].nil?
        data
      end
    end

    # Operation Stubber for ListMembers
    class ListMembers
      def self.default(visited=[])
        {
          members: Stubs::Members.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = Stubs::Members.stub(stub[:members]) unless stub[:members].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.default(visited=[])
        {
          admin_accounts: Stubs::AdminAccounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['adminAccounts'] = Stubs::AdminAccounts.stub(stub[:admin_accounts]) unless stub[:admin_accounts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AdminAccounts
    class AdminAccounts
      def self.default(visited=[])
        return nil if visited.include?('AdminAccounts')
        visited = visited + ['AdminAccounts']
        [
          Stubs::AdminAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AdminAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdminAccount
    class AdminAccount
      def self.default(visited=[])
        return nil if visited.include?('AdminAccount')
        visited = visited + ['AdminAccount']
        {
          admin_account_id: 'admin_account_id',
          admin_status: 'admin_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AdminAccount.new
        data = {}
        data['adminAccountId'] = stub[:admin_account_id] unless stub[:admin_account_id].nil?
        data['adminStatus'] = stub[:admin_status] unless stub[:admin_status].nil?
        data
      end
    end

    # Operation Stubber for ListPublishingDestinations
    class ListPublishingDestinations
      def self.default(visited=[])
        {
          destinations: Stubs::Destinations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['destinations'] = Stubs::Destinations.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Destinations
    class Destinations
      def self.default(visited=[])
        return nil if visited.include?('Destinations')
        visited = visited + ['Destinations']
        [
          Stubs::Destination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Destination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          destination_id: 'destination_id',
          destination_type: 'destination_type',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Destination.new
        data = {}
        data['destinationId'] = stub[:destination_id] unless stub[:destination_id].nil?
        data['destinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListThreatIntelSets
    class ListThreatIntelSets
      def self.default(visited=[])
        {
          threat_intel_set_ids: Stubs::ThreatIntelSetIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['threatIntelSetIds'] = Stubs::ThreatIntelSetIds.stub(stub[:threat_intel_set_ids]) unless stub[:threat_intel_set_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThreatIntelSetIds
    class ThreatIntelSetIds
      def self.default(visited=[])
        return nil if visited.include?('ThreatIntelSetIds')
        visited = visited + ['ThreatIntelSetIds']
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

    # Operation Stubber for StartMonitoringMembers
    class StartMonitoringMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopMonitoringMembers
    class StopMonitoringMembers
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UnarchiveFindings
    class UnarchiveFindings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateDetector
    class UpdateDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFilter
    class UpdateFilter
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFindingsFeedback
    class UpdateFindingsFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIPSet
    class UpdateIPSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMemberDetectors
    class UpdateMemberDetectors
      def self.default(visited=[])
        {
          unprocessed_accounts: Stubs::UnprocessedAccounts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = Stubs::UnprocessedAccounts.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePublishingDestination
    class UpdatePublishingDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateThreatIntelSet
    class UpdateThreatIntelSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
