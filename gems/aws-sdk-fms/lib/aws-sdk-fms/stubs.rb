# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::FMS
  module Stubs

    # Operation Stubber for AssociateAdminAccount
    class AssociateAdminAccount
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

    # Operation Stubber for AssociateThirdPartyFirewall
    class AssociateThirdPartyFirewall
      def self.default(visited=[])
        {
          third_party_firewall_status: 'third_party_firewall_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ThirdPartyFirewallStatus'] = stub[:third_party_firewall_status] unless stub[:third_party_firewall_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAppsList
    class DeleteAppsList
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

    # Operation Stubber for DeleteNotificationChannel
    class DeleteNotificationChannel
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

    # Operation Stubber for DeletePolicy
    class DeletePolicy
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

    # Operation Stubber for DeleteProtocolsList
    class DeleteProtocolsList
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

    # Operation Stubber for DisassociateAdminAccount
    class DisassociateAdminAccount
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

    # Operation Stubber for DisassociateThirdPartyFirewall
    class DisassociateThirdPartyFirewall
      def self.default(visited=[])
        {
          third_party_firewall_status: 'third_party_firewall_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ThirdPartyFirewallStatus'] = stub[:third_party_firewall_status] unless stub[:third_party_firewall_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAdminAccount
    class GetAdminAccount
      def self.default(visited=[])
        {
          admin_account: 'admin_account',
          role_status: 'role_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AdminAccount'] = stub[:admin_account] unless stub[:admin_account].nil?
        data['RoleStatus'] = stub[:role_status] unless stub[:role_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAppsList
    class GetAppsList
      def self.default(visited=[])
        {
          apps_list: AppsListData.default(visited),
          apps_list_arn: 'apps_list_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppsList'] = AppsListData.stub(stub[:apps_list]) unless stub[:apps_list].nil?
        data['AppsListArn'] = stub[:apps_list_arn] unless stub[:apps_list_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AppsListData
    class AppsListData
      def self.default(visited=[])
        return nil if visited.include?('AppsListData')
        visited = visited + ['AppsListData']
        {
          list_id: 'list_id',
          list_name: 'list_name',
          list_update_token: 'list_update_token',
          create_time: Time.now,
          last_update_time: Time.now,
          apps_list: AppsList.default(visited),
          previous_apps_list: PreviousAppsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppsListData.new
        data = {}
        data['ListId'] = stub[:list_id] unless stub[:list_id].nil?
        data['ListName'] = stub[:list_name] unless stub[:list_name].nil?
        data['ListUpdateToken'] = stub[:list_update_token] unless stub[:list_update_token].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['AppsList'] = AppsList.stub(stub[:apps_list]) unless stub[:apps_list].nil?
        data['PreviousAppsList'] = PreviousAppsList.stub(stub[:previous_apps_list]) unless stub[:previous_apps_list].nil?
        data
      end
    end

    # Map Stubber for PreviousAppsList
    class PreviousAppsList
      def self.default(visited=[])
        return nil if visited.include?('PreviousAppsList')
        visited = visited + ['PreviousAppsList']
        {
          test_key: AppsList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AppsList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for AppsList
    class AppsList
      def self.default(visited=[])
        return nil if visited.include?('AppsList')
        visited = visited + ['AppsList']
        [
          App.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << App.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for App
    class App
      def self.default(visited=[])
        return nil if visited.include?('App')
        visited = visited + ['App']
        {
          app_name: 'app_name',
          protocol: 'protocol',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::App.new
        data = {}
        data['AppName'] = stub[:app_name] unless stub[:app_name].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Operation Stubber for GetComplianceDetail
    class GetComplianceDetail
      def self.default(visited=[])
        {
          policy_compliance_detail: PolicyComplianceDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyComplianceDetail'] = PolicyComplianceDetail.stub(stub[:policy_compliance_detail]) unless stub[:policy_compliance_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PolicyComplianceDetail
    class PolicyComplianceDetail
      def self.default(visited=[])
        return nil if visited.include?('PolicyComplianceDetail')
        visited = visited + ['PolicyComplianceDetail']
        {
          policy_owner: 'policy_owner',
          policy_id: 'policy_id',
          member_account: 'member_account',
          violators: ComplianceViolators.default(visited),
          evaluation_limit_exceeded: false,
          expired_at: Time.now,
          issue_info_map: IssueInfoMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyComplianceDetail.new
        data = {}
        data['PolicyOwner'] = stub[:policy_owner] unless stub[:policy_owner].nil?
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['MemberAccount'] = stub[:member_account] unless stub[:member_account].nil?
        data['Violators'] = ComplianceViolators.stub(stub[:violators]) unless stub[:violators].nil?
        data['EvaluationLimitExceeded'] = stub[:evaluation_limit_exceeded] unless stub[:evaluation_limit_exceeded].nil?
        data['ExpiredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expired_at]).to_i unless stub[:expired_at].nil?
        data['IssueInfoMap'] = IssueInfoMap.stub(stub[:issue_info_map]) unless stub[:issue_info_map].nil?
        data
      end
    end

    # Map Stubber for IssueInfoMap
    class IssueInfoMap
      def self.default(visited=[])
        return nil if visited.include?('IssueInfoMap')
        visited = visited + ['IssueInfoMap']
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

    # List Stubber for ComplianceViolators
    class ComplianceViolators
      def self.default(visited=[])
        return nil if visited.include?('ComplianceViolators')
        visited = visited + ['ComplianceViolators']
        [
          ComplianceViolator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComplianceViolator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceViolator
    class ComplianceViolator
      def self.default(visited=[])
        return nil if visited.include?('ComplianceViolator')
        visited = visited + ['ComplianceViolator']
        {
          resource_id: 'resource_id',
          violation_reason: 'violation_reason',
          resource_type: 'resource_type',
          metadata: ComplianceViolatorMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceViolator.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ViolationReason'] = stub[:violation_reason] unless stub[:violation_reason].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Metadata'] = ComplianceViolatorMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # Map Stubber for ComplianceViolatorMetadata
    class ComplianceViolatorMetadata
      def self.default(visited=[])
        return nil if visited.include?('ComplianceViolatorMetadata')
        visited = visited + ['ComplianceViolatorMetadata']
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

    # Operation Stubber for GetNotificationChannel
    class GetNotificationChannel
      def self.default(visited=[])
        {
          sns_topic_arn: 'sns_topic_arn',
          sns_role_name: 'sns_role_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['SnsRoleName'] = stub[:sns_role_name] unless stub[:sns_role_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = Policy.stub(stub[:policy]) unless stub[:policy].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Policy
    class Policy
      def self.default(visited=[])
        return nil if visited.include?('Policy')
        visited = visited + ['Policy']
        {
          policy_id: 'policy_id',
          policy_name: 'policy_name',
          policy_update_token: 'policy_update_token',
          security_service_policy_data: SecurityServicePolicyData.default(visited),
          resource_type: 'resource_type',
          resource_type_list: ResourceTypeList.default(visited),
          resource_tags: ResourceTags.default(visited),
          exclude_resource_tags: false,
          remediation_enabled: false,
          delete_unused_fm_managed_resources: false,
          include_map: CustomerPolicyScopeMap.default(visited),
          exclude_map: CustomerPolicyScopeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Policy.new
        data = {}
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['PolicyUpdateToken'] = stub[:policy_update_token] unless stub[:policy_update_token].nil?
        data['SecurityServicePolicyData'] = SecurityServicePolicyData.stub(stub[:security_service_policy_data]) unless stub[:security_service_policy_data].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceTypeList'] = ResourceTypeList.stub(stub[:resource_type_list]) unless stub[:resource_type_list].nil?
        data['ResourceTags'] = ResourceTags.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['ExcludeResourceTags'] = stub[:exclude_resource_tags] unless stub[:exclude_resource_tags].nil?
        data['RemediationEnabled'] = stub[:remediation_enabled] unless stub[:remediation_enabled].nil?
        data['DeleteUnusedFMManagedResources'] = stub[:delete_unused_fm_managed_resources] unless stub[:delete_unused_fm_managed_resources].nil?
        data['IncludeMap'] = CustomerPolicyScopeMap.stub(stub[:include_map]) unless stub[:include_map].nil?
        data['ExcludeMap'] = CustomerPolicyScopeMap.stub(stub[:exclude_map]) unless stub[:exclude_map].nil?
        data
      end
    end

    # Map Stubber for CustomerPolicyScopeMap
    class CustomerPolicyScopeMap
      def self.default(visited=[])
        return nil if visited.include?('CustomerPolicyScopeMap')
        visited = visited + ['CustomerPolicyScopeMap']
        {
          test_key: CustomerPolicyScopeIdList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = CustomerPolicyScopeIdList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for CustomerPolicyScopeIdList
    class CustomerPolicyScopeIdList
      def self.default(visited=[])
        return nil if visited.include?('CustomerPolicyScopeIdList')
        visited = visited + ['CustomerPolicyScopeIdList']
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

    # List Stubber for ResourceTags
    class ResourceTags
      def self.default(visited=[])
        return nil if visited.include?('ResourceTags')
        visited = visited + ['ResourceTags']
        [
          ResourceTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTag
    class ResourceTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceTag')
        visited = visited + ['ResourceTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
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

    # Structure Stubber for SecurityServicePolicyData
    class SecurityServicePolicyData
      def self.default(visited=[])
        return nil if visited.include?('SecurityServicePolicyData')
        visited = visited + ['SecurityServicePolicyData']
        {
          type: 'type',
          managed_service_data: 'managed_service_data',
          policy_option: PolicyOption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityServicePolicyData.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ManagedServiceData'] = stub[:managed_service_data] unless stub[:managed_service_data].nil?
        data['PolicyOption'] = PolicyOption.stub(stub[:policy_option]) unless stub[:policy_option].nil?
        data
      end
    end

    # Structure Stubber for PolicyOption
    class PolicyOption
      def self.default(visited=[])
        return nil if visited.include?('PolicyOption')
        visited = visited + ['PolicyOption']
        {
          network_firewall_policy: NetworkFirewallPolicy.default(visited),
          third_party_firewall_policy: ThirdPartyFirewallPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyOption.new
        data = {}
        data['NetworkFirewallPolicy'] = NetworkFirewallPolicy.stub(stub[:network_firewall_policy]) unless stub[:network_firewall_policy].nil?
        data['ThirdPartyFirewallPolicy'] = ThirdPartyFirewallPolicy.stub(stub[:third_party_firewall_policy]) unless stub[:third_party_firewall_policy].nil?
        data
      end
    end

    # Structure Stubber for ThirdPartyFirewallPolicy
    class ThirdPartyFirewallPolicy
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyFirewallPolicy')
        visited = visited + ['ThirdPartyFirewallPolicy']
        {
          firewall_deployment_model: 'firewall_deployment_model',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyFirewallPolicy.new
        data = {}
        data['FirewallDeploymentModel'] = stub[:firewall_deployment_model] unless stub[:firewall_deployment_model].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallPolicy
    class NetworkFirewallPolicy
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallPolicy')
        visited = visited + ['NetworkFirewallPolicy']
        {
          firewall_deployment_model: 'firewall_deployment_model',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallPolicy.new
        data = {}
        data['FirewallDeploymentModel'] = stub[:firewall_deployment_model] unless stub[:firewall_deployment_model].nil?
        data
      end
    end

    # Operation Stubber for GetProtectionStatus
    class GetProtectionStatus
      def self.default(visited=[])
        {
          admin_account_id: 'admin_account_id',
          service_type: 'service_type',
          data: 'data',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AdminAccountId'] = stub[:admin_account_id] unless stub[:admin_account_id].nil?
        data['ServiceType'] = stub[:service_type] unless stub[:service_type].nil?
        data['Data'] = stub[:data] unless stub[:data].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetProtocolsList
    class GetProtocolsList
      def self.default(visited=[])
        {
          protocols_list: ProtocolsListData.default(visited),
          protocols_list_arn: 'protocols_list_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtocolsList'] = ProtocolsListData.stub(stub[:protocols_list]) unless stub[:protocols_list].nil?
        data['ProtocolsListArn'] = stub[:protocols_list_arn] unless stub[:protocols_list_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ProtocolsListData
    class ProtocolsListData
      def self.default(visited=[])
        return nil if visited.include?('ProtocolsListData')
        visited = visited + ['ProtocolsListData']
        {
          list_id: 'list_id',
          list_name: 'list_name',
          list_update_token: 'list_update_token',
          create_time: Time.now,
          last_update_time: Time.now,
          protocols_list: ProtocolsList.default(visited),
          previous_protocols_list: PreviousProtocolsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtocolsListData.new
        data = {}
        data['ListId'] = stub[:list_id] unless stub[:list_id].nil?
        data['ListName'] = stub[:list_name] unless stub[:list_name].nil?
        data['ListUpdateToken'] = stub[:list_update_token] unless stub[:list_update_token].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['ProtocolsList'] = ProtocolsList.stub(stub[:protocols_list]) unless stub[:protocols_list].nil?
        data['PreviousProtocolsList'] = PreviousProtocolsList.stub(stub[:previous_protocols_list]) unless stub[:previous_protocols_list].nil?
        data
      end
    end

    # Map Stubber for PreviousProtocolsList
    class PreviousProtocolsList
      def self.default(visited=[])
        return nil if visited.include?('PreviousProtocolsList')
        visited = visited + ['PreviousProtocolsList']
        {
          test_key: ProtocolsList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ProtocolsList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ProtocolsList
    class ProtocolsList
      def self.default(visited=[])
        return nil if visited.include?('ProtocolsList')
        visited = visited + ['ProtocolsList']
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

    # Operation Stubber for GetThirdPartyFirewallAssociationStatus
    class GetThirdPartyFirewallAssociationStatus
      def self.default(visited=[])
        {
          third_party_firewall_status: 'third_party_firewall_status',
          marketplace_onboarding_status: 'marketplace_onboarding_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ThirdPartyFirewallStatus'] = stub[:third_party_firewall_status] unless stub[:third_party_firewall_status].nil?
        data['MarketplaceOnboardingStatus'] = stub[:marketplace_onboarding_status] unless stub[:marketplace_onboarding_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetViolationDetails
    class GetViolationDetails
      def self.default(visited=[])
        {
          violation_detail: ViolationDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ViolationDetail'] = ViolationDetail.stub(stub[:violation_detail]) unless stub[:violation_detail].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ViolationDetail
    class ViolationDetail
      def self.default(visited=[])
        return nil if visited.include?('ViolationDetail')
        visited = visited + ['ViolationDetail']
        {
          policy_id: 'policy_id',
          member_account: 'member_account',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          resource_violations: ResourceViolations.default(visited),
          resource_tags: TagList.default(visited),
          resource_description: 'resource_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ViolationDetail.new
        data = {}
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['MemberAccount'] = stub[:member_account] unless stub[:member_account].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceViolations'] = ResourceViolations.stub(stub[:resource_violations]) unless stub[:resource_violations].nil?
        data['ResourceTags'] = TagList.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['ResourceDescription'] = stub[:resource_description] unless stub[:resource_description].nil?
        data
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

    # List Stubber for ResourceViolations
    class ResourceViolations
      def self.default(visited=[])
        return nil if visited.include?('ResourceViolations')
        visited = visited + ['ResourceViolations']
        [
          ResourceViolation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceViolation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceViolation
    class ResourceViolation
      def self.default(visited=[])
        return nil if visited.include?('ResourceViolation')
        visited = visited + ['ResourceViolation']
        {
          aws_vpc_security_group_violation: AwsVPCSecurityGroupViolation.default(visited),
          aws_ec2_network_interface_violation: AwsEc2NetworkInterfaceViolation.default(visited),
          aws_ec2_instance_violation: AwsEc2InstanceViolation.default(visited),
          network_firewall_missing_firewall_violation: NetworkFirewallMissingFirewallViolation.default(visited),
          network_firewall_missing_subnet_violation: NetworkFirewallMissingSubnetViolation.default(visited),
          network_firewall_missing_expected_rt_violation: NetworkFirewallMissingExpectedRTViolation.default(visited),
          network_firewall_policy_modified_violation: NetworkFirewallPolicyModifiedViolation.default(visited),
          network_firewall_internet_traffic_not_inspected_violation: NetworkFirewallInternetTrafficNotInspectedViolation.default(visited),
          network_firewall_invalid_route_configuration_violation: NetworkFirewallInvalidRouteConfigurationViolation.default(visited),
          network_firewall_black_hole_route_detected_violation: NetworkFirewallBlackHoleRouteDetectedViolation.default(visited),
          network_firewall_unexpected_firewall_routes_violation: NetworkFirewallUnexpectedFirewallRoutesViolation.default(visited),
          network_firewall_unexpected_gateway_routes_violation: NetworkFirewallUnexpectedGatewayRoutesViolation.default(visited),
          network_firewall_missing_expected_routes_violation: NetworkFirewallMissingExpectedRoutesViolation.default(visited),
          dns_rule_group_priority_conflict_violation: DnsRuleGroupPriorityConflictViolation.default(visited),
          dns_duplicate_rule_group_violation: DnsDuplicateRuleGroupViolation.default(visited),
          dns_rule_group_limit_exceeded_violation: DnsRuleGroupLimitExceededViolation.default(visited),
          possible_remediation_actions: PossibleRemediationActions.default(visited),
          firewall_subnet_is_out_of_scope_violation: FirewallSubnetIsOutOfScopeViolation.default(visited),
          route_has_out_of_scope_endpoint_violation: RouteHasOutOfScopeEndpointViolation.default(visited),
          third_party_firewall_missing_firewall_violation: ThirdPartyFirewallMissingFirewallViolation.default(visited),
          third_party_firewall_missing_subnet_violation: ThirdPartyFirewallMissingSubnetViolation.default(visited),
          third_party_firewall_missing_expected_route_table_violation: ThirdPartyFirewallMissingExpectedRouteTableViolation.default(visited),
          firewall_subnet_missing_vpc_endpoint_violation: FirewallSubnetMissingVPCEndpointViolation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceViolation.new
        data = {}
        data['AwsVPCSecurityGroupViolation'] = AwsVPCSecurityGroupViolation.stub(stub[:aws_vpc_security_group_violation]) unless stub[:aws_vpc_security_group_violation].nil?
        data['AwsEc2NetworkInterfaceViolation'] = AwsEc2NetworkInterfaceViolation.stub(stub[:aws_ec2_network_interface_violation]) unless stub[:aws_ec2_network_interface_violation].nil?
        data['AwsEc2InstanceViolation'] = AwsEc2InstanceViolation.stub(stub[:aws_ec2_instance_violation]) unless stub[:aws_ec2_instance_violation].nil?
        data['NetworkFirewallMissingFirewallViolation'] = NetworkFirewallMissingFirewallViolation.stub(stub[:network_firewall_missing_firewall_violation]) unless stub[:network_firewall_missing_firewall_violation].nil?
        data['NetworkFirewallMissingSubnetViolation'] = NetworkFirewallMissingSubnetViolation.stub(stub[:network_firewall_missing_subnet_violation]) unless stub[:network_firewall_missing_subnet_violation].nil?
        data['NetworkFirewallMissingExpectedRTViolation'] = NetworkFirewallMissingExpectedRTViolation.stub(stub[:network_firewall_missing_expected_rt_violation]) unless stub[:network_firewall_missing_expected_rt_violation].nil?
        data['NetworkFirewallPolicyModifiedViolation'] = NetworkFirewallPolicyModifiedViolation.stub(stub[:network_firewall_policy_modified_violation]) unless stub[:network_firewall_policy_modified_violation].nil?
        data['NetworkFirewallInternetTrafficNotInspectedViolation'] = NetworkFirewallInternetTrafficNotInspectedViolation.stub(stub[:network_firewall_internet_traffic_not_inspected_violation]) unless stub[:network_firewall_internet_traffic_not_inspected_violation].nil?
        data['NetworkFirewallInvalidRouteConfigurationViolation'] = NetworkFirewallInvalidRouteConfigurationViolation.stub(stub[:network_firewall_invalid_route_configuration_violation]) unless stub[:network_firewall_invalid_route_configuration_violation].nil?
        data['NetworkFirewallBlackHoleRouteDetectedViolation'] = NetworkFirewallBlackHoleRouteDetectedViolation.stub(stub[:network_firewall_black_hole_route_detected_violation]) unless stub[:network_firewall_black_hole_route_detected_violation].nil?
        data['NetworkFirewallUnexpectedFirewallRoutesViolation'] = NetworkFirewallUnexpectedFirewallRoutesViolation.stub(stub[:network_firewall_unexpected_firewall_routes_violation]) unless stub[:network_firewall_unexpected_firewall_routes_violation].nil?
        data['NetworkFirewallUnexpectedGatewayRoutesViolation'] = NetworkFirewallUnexpectedGatewayRoutesViolation.stub(stub[:network_firewall_unexpected_gateway_routes_violation]) unless stub[:network_firewall_unexpected_gateway_routes_violation].nil?
        data['NetworkFirewallMissingExpectedRoutesViolation'] = NetworkFirewallMissingExpectedRoutesViolation.stub(stub[:network_firewall_missing_expected_routes_violation]) unless stub[:network_firewall_missing_expected_routes_violation].nil?
        data['DnsRuleGroupPriorityConflictViolation'] = DnsRuleGroupPriorityConflictViolation.stub(stub[:dns_rule_group_priority_conflict_violation]) unless stub[:dns_rule_group_priority_conflict_violation].nil?
        data['DnsDuplicateRuleGroupViolation'] = DnsDuplicateRuleGroupViolation.stub(stub[:dns_duplicate_rule_group_violation]) unless stub[:dns_duplicate_rule_group_violation].nil?
        data['DnsRuleGroupLimitExceededViolation'] = DnsRuleGroupLimitExceededViolation.stub(stub[:dns_rule_group_limit_exceeded_violation]) unless stub[:dns_rule_group_limit_exceeded_violation].nil?
        data['PossibleRemediationActions'] = PossibleRemediationActions.stub(stub[:possible_remediation_actions]) unless stub[:possible_remediation_actions].nil?
        data['FirewallSubnetIsOutOfScopeViolation'] = FirewallSubnetIsOutOfScopeViolation.stub(stub[:firewall_subnet_is_out_of_scope_violation]) unless stub[:firewall_subnet_is_out_of_scope_violation].nil?
        data['RouteHasOutOfScopeEndpointViolation'] = RouteHasOutOfScopeEndpointViolation.stub(stub[:route_has_out_of_scope_endpoint_violation]) unless stub[:route_has_out_of_scope_endpoint_violation].nil?
        data['ThirdPartyFirewallMissingFirewallViolation'] = ThirdPartyFirewallMissingFirewallViolation.stub(stub[:third_party_firewall_missing_firewall_violation]) unless stub[:third_party_firewall_missing_firewall_violation].nil?
        data['ThirdPartyFirewallMissingSubnetViolation'] = ThirdPartyFirewallMissingSubnetViolation.stub(stub[:third_party_firewall_missing_subnet_violation]) unless stub[:third_party_firewall_missing_subnet_violation].nil?
        data['ThirdPartyFirewallMissingExpectedRouteTableViolation'] = ThirdPartyFirewallMissingExpectedRouteTableViolation.stub(stub[:third_party_firewall_missing_expected_route_table_violation]) unless stub[:third_party_firewall_missing_expected_route_table_violation].nil?
        data['FirewallSubnetMissingVPCEndpointViolation'] = FirewallSubnetMissingVPCEndpointViolation.stub(stub[:firewall_subnet_missing_vpc_endpoint_violation]) unless stub[:firewall_subnet_missing_vpc_endpoint_violation].nil?
        data
      end
    end

    # Structure Stubber for FirewallSubnetMissingVPCEndpointViolation
    class FirewallSubnetMissingVPCEndpointViolation
      def self.default(visited=[])
        return nil if visited.include?('FirewallSubnetMissingVPCEndpointViolation')
        visited = visited + ['FirewallSubnetMissingVPCEndpointViolation']
        {
          firewall_subnet_id: 'firewall_subnet_id',
          vpc_id: 'vpc_id',
          subnet_availability_zone: 'subnet_availability_zone',
          subnet_availability_zone_id: 'subnet_availability_zone_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallSubnetMissingVPCEndpointViolation.new
        data = {}
        data['FirewallSubnetId'] = stub[:firewall_subnet_id] unless stub[:firewall_subnet_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetAvailabilityZone'] = stub[:subnet_availability_zone] unless stub[:subnet_availability_zone].nil?
        data['SubnetAvailabilityZoneId'] = stub[:subnet_availability_zone_id] unless stub[:subnet_availability_zone_id].nil?
        data
      end
    end

    # Structure Stubber for ThirdPartyFirewallMissingExpectedRouteTableViolation
    class ThirdPartyFirewallMissingExpectedRouteTableViolation
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyFirewallMissingExpectedRouteTableViolation')
        visited = visited + ['ThirdPartyFirewallMissingExpectedRouteTableViolation']
        {
          violation_target: 'violation_target',
          vpc: 'vpc',
          availability_zone: 'availability_zone',
          current_route_table: 'current_route_table',
          expected_route_table: 'expected_route_table',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyFirewallMissingExpectedRouteTableViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['VPC'] = stub[:vpc] unless stub[:vpc].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['CurrentRouteTable'] = stub[:current_route_table] unless stub[:current_route_table].nil?
        data['ExpectedRouteTable'] = stub[:expected_route_table] unless stub[:expected_route_table].nil?
        data
      end
    end

    # Structure Stubber for ThirdPartyFirewallMissingSubnetViolation
    class ThirdPartyFirewallMissingSubnetViolation
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyFirewallMissingSubnetViolation')
        visited = visited + ['ThirdPartyFirewallMissingSubnetViolation']
        {
          violation_target: 'violation_target',
          vpc: 'vpc',
          availability_zone: 'availability_zone',
          target_violation_reason: 'target_violation_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyFirewallMissingSubnetViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['VPC'] = stub[:vpc] unless stub[:vpc].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['TargetViolationReason'] = stub[:target_violation_reason] unless stub[:target_violation_reason].nil?
        data
      end
    end

    # Structure Stubber for ThirdPartyFirewallMissingFirewallViolation
    class ThirdPartyFirewallMissingFirewallViolation
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyFirewallMissingFirewallViolation')
        visited = visited + ['ThirdPartyFirewallMissingFirewallViolation']
        {
          violation_target: 'violation_target',
          vpc: 'vpc',
          availability_zone: 'availability_zone',
          target_violation_reason: 'target_violation_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyFirewallMissingFirewallViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['VPC'] = stub[:vpc] unless stub[:vpc].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['TargetViolationReason'] = stub[:target_violation_reason] unless stub[:target_violation_reason].nil?
        data
      end
    end

    # Structure Stubber for RouteHasOutOfScopeEndpointViolation
    class RouteHasOutOfScopeEndpointViolation
      def self.default(visited=[])
        return nil if visited.include?('RouteHasOutOfScopeEndpointViolation')
        visited = visited + ['RouteHasOutOfScopeEndpointViolation']
        {
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          route_table_id: 'route_table_id',
          violating_routes: Routes.default(visited),
          subnet_availability_zone: 'subnet_availability_zone',
          subnet_availability_zone_id: 'subnet_availability_zone_id',
          current_firewall_subnet_route_table: 'current_firewall_subnet_route_table',
          firewall_subnet_id: 'firewall_subnet_id',
          firewall_subnet_routes: Routes.default(visited),
          internet_gateway_id: 'internet_gateway_id',
          current_internet_gateway_route_table: 'current_internet_gateway_route_table',
          internet_gateway_routes: Routes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteHasOutOfScopeEndpointViolation.new
        data = {}
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data['ViolatingRoutes'] = Routes.stub(stub[:violating_routes]) unless stub[:violating_routes].nil?
        data['SubnetAvailabilityZone'] = stub[:subnet_availability_zone] unless stub[:subnet_availability_zone].nil?
        data['SubnetAvailabilityZoneId'] = stub[:subnet_availability_zone_id] unless stub[:subnet_availability_zone_id].nil?
        data['CurrentFirewallSubnetRouteTable'] = stub[:current_firewall_subnet_route_table] unless stub[:current_firewall_subnet_route_table].nil?
        data['FirewallSubnetId'] = stub[:firewall_subnet_id] unless stub[:firewall_subnet_id].nil?
        data['FirewallSubnetRoutes'] = Routes.stub(stub[:firewall_subnet_routes]) unless stub[:firewall_subnet_routes].nil?
        data['InternetGatewayId'] = stub[:internet_gateway_id] unless stub[:internet_gateway_id].nil?
        data['CurrentInternetGatewayRouteTable'] = stub[:current_internet_gateway_route_table] unless stub[:current_internet_gateway_route_table].nil?
        data['InternetGatewayRoutes'] = Routes.stub(stub[:internet_gateway_routes]) unless stub[:internet_gateway_routes].nil?
        data
      end
    end

    # List Stubber for Routes
    class Routes
      def self.default(visited=[])
        return nil if visited.include?('Routes')
        visited = visited + ['Routes']
        [
          Route.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Route.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Route
    class Route
      def self.default(visited=[])
        return nil if visited.include?('Route')
        visited = visited + ['Route']
        {
          destination_type: 'destination_type',
          target_type: 'target_type',
          destination: 'destination',
          target: 'target',
        }
      end

      def self.stub(stub)
        stub ||= Types::Route.new
        data = {}
        data['DestinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data
      end
    end

    # Structure Stubber for FirewallSubnetIsOutOfScopeViolation
    class FirewallSubnetIsOutOfScopeViolation
      def self.default(visited=[])
        return nil if visited.include?('FirewallSubnetIsOutOfScopeViolation')
        visited = visited + ['FirewallSubnetIsOutOfScopeViolation']
        {
          firewall_subnet_id: 'firewall_subnet_id',
          vpc_id: 'vpc_id',
          subnet_availability_zone: 'subnet_availability_zone',
          subnet_availability_zone_id: 'subnet_availability_zone_id',
          vpc_endpoint_id: 'vpc_endpoint_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallSubnetIsOutOfScopeViolation.new
        data = {}
        data['FirewallSubnetId'] = stub[:firewall_subnet_id] unless stub[:firewall_subnet_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetAvailabilityZone'] = stub[:subnet_availability_zone] unless stub[:subnet_availability_zone].nil?
        data['SubnetAvailabilityZoneId'] = stub[:subnet_availability_zone_id] unless stub[:subnet_availability_zone_id].nil?
        data['VpcEndpointId'] = stub[:vpc_endpoint_id] unless stub[:vpc_endpoint_id].nil?
        data
      end
    end

    # Structure Stubber for PossibleRemediationActions
    class PossibleRemediationActions
      def self.default(visited=[])
        return nil if visited.include?('PossibleRemediationActions')
        visited = visited + ['PossibleRemediationActions']
        {
          description: 'description',
          actions: PossibleRemediationActionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PossibleRemediationActions.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Actions'] = PossibleRemediationActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # List Stubber for PossibleRemediationActionList
    class PossibleRemediationActionList
      def self.default(visited=[])
        return nil if visited.include?('PossibleRemediationActionList')
        visited = visited + ['PossibleRemediationActionList']
        [
          PossibleRemediationAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PossibleRemediationAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PossibleRemediationAction
    class PossibleRemediationAction
      def self.default(visited=[])
        return nil if visited.include?('PossibleRemediationAction')
        visited = visited + ['PossibleRemediationAction']
        {
          description: 'description',
          ordered_remediation_actions: OrderedRemediationActions.default(visited),
          is_default_action: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PossibleRemediationAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['OrderedRemediationActions'] = OrderedRemediationActions.stub(stub[:ordered_remediation_actions]) unless stub[:ordered_remediation_actions].nil?
        data['IsDefaultAction'] = stub[:is_default_action] unless stub[:is_default_action].nil?
        data
      end
    end

    # List Stubber for OrderedRemediationActions
    class OrderedRemediationActions
      def self.default(visited=[])
        return nil if visited.include?('OrderedRemediationActions')
        visited = visited + ['OrderedRemediationActions']
        [
          RemediationActionWithOrder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemediationActionWithOrder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemediationActionWithOrder
    class RemediationActionWithOrder
      def self.default(visited=[])
        return nil if visited.include?('RemediationActionWithOrder')
        visited = visited + ['RemediationActionWithOrder']
        {
          remediation_action: RemediationAction.default(visited),
          order: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationActionWithOrder.new
        data = {}
        data['RemediationAction'] = RemediationAction.stub(stub[:remediation_action]) unless stub[:remediation_action].nil?
        data['Order'] = stub[:order] unless stub[:order].nil?
        data
      end
    end

    # Structure Stubber for RemediationAction
    class RemediationAction
      def self.default(visited=[])
        return nil if visited.include?('RemediationAction')
        visited = visited + ['RemediationAction']
        {
          description: 'description',
          ec2_create_route_action: EC2CreateRouteAction.default(visited),
          ec2_replace_route_action: EC2ReplaceRouteAction.default(visited),
          ec2_delete_route_action: EC2DeleteRouteAction.default(visited),
          ec2_copy_route_table_action: EC2CopyRouteTableAction.default(visited),
          ec2_replace_route_table_association_action: EC2ReplaceRouteTableAssociationAction.default(visited),
          ec2_associate_route_table_action: EC2AssociateRouteTableAction.default(visited),
          ec2_create_route_table_action: EC2CreateRouteTableAction.default(visited),
          fms_policy_update_firewall_creation_config_action: FMSPolicyUpdateFirewallCreationConfigAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RemediationAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EC2CreateRouteAction'] = EC2CreateRouteAction.stub(stub[:ec2_create_route_action]) unless stub[:ec2_create_route_action].nil?
        data['EC2ReplaceRouteAction'] = EC2ReplaceRouteAction.stub(stub[:ec2_replace_route_action]) unless stub[:ec2_replace_route_action].nil?
        data['EC2DeleteRouteAction'] = EC2DeleteRouteAction.stub(stub[:ec2_delete_route_action]) unless stub[:ec2_delete_route_action].nil?
        data['EC2CopyRouteTableAction'] = EC2CopyRouteTableAction.stub(stub[:ec2_copy_route_table_action]) unless stub[:ec2_copy_route_table_action].nil?
        data['EC2ReplaceRouteTableAssociationAction'] = EC2ReplaceRouteTableAssociationAction.stub(stub[:ec2_replace_route_table_association_action]) unless stub[:ec2_replace_route_table_association_action].nil?
        data['EC2AssociateRouteTableAction'] = EC2AssociateRouteTableAction.stub(stub[:ec2_associate_route_table_action]) unless stub[:ec2_associate_route_table_action].nil?
        data['EC2CreateRouteTableAction'] = EC2CreateRouteTableAction.stub(stub[:ec2_create_route_table_action]) unless stub[:ec2_create_route_table_action].nil?
        data['FMSPolicyUpdateFirewallCreationConfigAction'] = FMSPolicyUpdateFirewallCreationConfigAction.stub(stub[:fms_policy_update_firewall_creation_config_action]) unless stub[:fms_policy_update_firewall_creation_config_action].nil?
        data
      end
    end

    # Structure Stubber for FMSPolicyUpdateFirewallCreationConfigAction
    class FMSPolicyUpdateFirewallCreationConfigAction
      def self.default(visited=[])
        return nil if visited.include?('FMSPolicyUpdateFirewallCreationConfigAction')
        visited = visited + ['FMSPolicyUpdateFirewallCreationConfigAction']
        {
          description: 'description',
          firewall_creation_config: 'firewall_creation_config',
        }
      end

      def self.stub(stub)
        stub ||= Types::FMSPolicyUpdateFirewallCreationConfigAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['FirewallCreationConfig'] = stub[:firewall_creation_config] unless stub[:firewall_creation_config].nil?
        data
      end
    end

    # Structure Stubber for EC2CreateRouteTableAction
    class EC2CreateRouteTableAction
      def self.default(visited=[])
        return nil if visited.include?('EC2CreateRouteTableAction')
        visited = visited + ['EC2CreateRouteTableAction']
        {
          description: 'description',
          vpc_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2CreateRouteTableAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['VpcId'] = ActionTarget.stub(stub[:vpc_id]) unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for ActionTarget
    class ActionTarget
      def self.default(visited=[])
        return nil if visited.include?('ActionTarget')
        visited = visited + ['ActionTarget']
        {
          resource_id: 'resource_id',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTarget.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for EC2AssociateRouteTableAction
    class EC2AssociateRouteTableAction
      def self.default(visited=[])
        return nil if visited.include?('EC2AssociateRouteTableAction')
        visited = visited + ['EC2AssociateRouteTableAction']
        {
          description: 'description',
          route_table_id: ActionTarget.default(visited),
          subnet_id: ActionTarget.default(visited),
          gateway_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2AssociateRouteTableAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RouteTableId'] = ActionTarget.stub(stub[:route_table_id]) unless stub[:route_table_id].nil?
        data['SubnetId'] = ActionTarget.stub(stub[:subnet_id]) unless stub[:subnet_id].nil?
        data['GatewayId'] = ActionTarget.stub(stub[:gateway_id]) unless stub[:gateway_id].nil?
        data
      end
    end

    # Structure Stubber for EC2ReplaceRouteTableAssociationAction
    class EC2ReplaceRouteTableAssociationAction
      def self.default(visited=[])
        return nil if visited.include?('EC2ReplaceRouteTableAssociationAction')
        visited = visited + ['EC2ReplaceRouteTableAssociationAction']
        {
          description: 'description',
          association_id: ActionTarget.default(visited),
          route_table_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2ReplaceRouteTableAssociationAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['AssociationId'] = ActionTarget.stub(stub[:association_id]) unless stub[:association_id].nil?
        data['RouteTableId'] = ActionTarget.stub(stub[:route_table_id]) unless stub[:route_table_id].nil?
        data
      end
    end

    # Structure Stubber for EC2CopyRouteTableAction
    class EC2CopyRouteTableAction
      def self.default(visited=[])
        return nil if visited.include?('EC2CopyRouteTableAction')
        visited = visited + ['EC2CopyRouteTableAction']
        {
          description: 'description',
          vpc_id: ActionTarget.default(visited),
          route_table_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2CopyRouteTableAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['VpcId'] = ActionTarget.stub(stub[:vpc_id]) unless stub[:vpc_id].nil?
        data['RouteTableId'] = ActionTarget.stub(stub[:route_table_id]) unless stub[:route_table_id].nil?
        data
      end
    end

    # Structure Stubber for EC2DeleteRouteAction
    class EC2DeleteRouteAction
      def self.default(visited=[])
        return nil if visited.include?('EC2DeleteRouteAction')
        visited = visited + ['EC2DeleteRouteAction']
        {
          description: 'description',
          destination_cidr_block: 'destination_cidr_block',
          destination_prefix_list_id: 'destination_prefix_list_id',
          destination_ipv6_cidr_block: 'destination_ipv6_cidr_block',
          route_table_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2DeleteRouteAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DestinationCidrBlock'] = stub[:destination_cidr_block] unless stub[:destination_cidr_block].nil?
        data['DestinationPrefixListId'] = stub[:destination_prefix_list_id] unless stub[:destination_prefix_list_id].nil?
        data['DestinationIpv6CidrBlock'] = stub[:destination_ipv6_cidr_block] unless stub[:destination_ipv6_cidr_block].nil?
        data['RouteTableId'] = ActionTarget.stub(stub[:route_table_id]) unless stub[:route_table_id].nil?
        data
      end
    end

    # Structure Stubber for EC2ReplaceRouteAction
    class EC2ReplaceRouteAction
      def self.default(visited=[])
        return nil if visited.include?('EC2ReplaceRouteAction')
        visited = visited + ['EC2ReplaceRouteAction']
        {
          description: 'description',
          destination_cidr_block: 'destination_cidr_block',
          destination_prefix_list_id: 'destination_prefix_list_id',
          destination_ipv6_cidr_block: 'destination_ipv6_cidr_block',
          gateway_id: ActionTarget.default(visited),
          route_table_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2ReplaceRouteAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DestinationCidrBlock'] = stub[:destination_cidr_block] unless stub[:destination_cidr_block].nil?
        data['DestinationPrefixListId'] = stub[:destination_prefix_list_id] unless stub[:destination_prefix_list_id].nil?
        data['DestinationIpv6CidrBlock'] = stub[:destination_ipv6_cidr_block] unless stub[:destination_ipv6_cidr_block].nil?
        data['GatewayId'] = ActionTarget.stub(stub[:gateway_id]) unless stub[:gateway_id].nil?
        data['RouteTableId'] = ActionTarget.stub(stub[:route_table_id]) unless stub[:route_table_id].nil?
        data
      end
    end

    # Structure Stubber for EC2CreateRouteAction
    class EC2CreateRouteAction
      def self.default(visited=[])
        return nil if visited.include?('EC2CreateRouteAction')
        visited = visited + ['EC2CreateRouteAction']
        {
          description: 'description',
          destination_cidr_block: 'destination_cidr_block',
          destination_prefix_list_id: 'destination_prefix_list_id',
          destination_ipv6_cidr_block: 'destination_ipv6_cidr_block',
          vpc_endpoint_id: ActionTarget.default(visited),
          gateway_id: ActionTarget.default(visited),
          route_table_id: ActionTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2CreateRouteAction.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DestinationCidrBlock'] = stub[:destination_cidr_block] unless stub[:destination_cidr_block].nil?
        data['DestinationPrefixListId'] = stub[:destination_prefix_list_id] unless stub[:destination_prefix_list_id].nil?
        data['DestinationIpv6CidrBlock'] = stub[:destination_ipv6_cidr_block] unless stub[:destination_ipv6_cidr_block].nil?
        data['VpcEndpointId'] = ActionTarget.stub(stub[:vpc_endpoint_id]) unless stub[:vpc_endpoint_id].nil?
        data['GatewayId'] = ActionTarget.stub(stub[:gateway_id]) unless stub[:gateway_id].nil?
        data['RouteTableId'] = ActionTarget.stub(stub[:route_table_id]) unless stub[:route_table_id].nil?
        data
      end
    end

    # Structure Stubber for DnsRuleGroupLimitExceededViolation
    class DnsRuleGroupLimitExceededViolation
      def self.default(visited=[])
        return nil if visited.include?('DnsRuleGroupLimitExceededViolation')
        visited = visited + ['DnsRuleGroupLimitExceededViolation']
        {
          violation_target: 'violation_target',
          violation_target_description: 'violation_target_description',
          number_of_rule_groups_already_associated: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsRuleGroupLimitExceededViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['ViolationTargetDescription'] = stub[:violation_target_description] unless stub[:violation_target_description].nil?
        data['NumberOfRuleGroupsAlreadyAssociated'] = stub[:number_of_rule_groups_already_associated] unless stub[:number_of_rule_groups_already_associated].nil?
        data
      end
    end

    # Structure Stubber for DnsDuplicateRuleGroupViolation
    class DnsDuplicateRuleGroupViolation
      def self.default(visited=[])
        return nil if visited.include?('DnsDuplicateRuleGroupViolation')
        visited = visited + ['DnsDuplicateRuleGroupViolation']
        {
          violation_target: 'violation_target',
          violation_target_description: 'violation_target_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsDuplicateRuleGroupViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['ViolationTargetDescription'] = stub[:violation_target_description] unless stub[:violation_target_description].nil?
        data
      end
    end

    # Structure Stubber for DnsRuleGroupPriorityConflictViolation
    class DnsRuleGroupPriorityConflictViolation
      def self.default(visited=[])
        return nil if visited.include?('DnsRuleGroupPriorityConflictViolation')
        visited = visited + ['DnsRuleGroupPriorityConflictViolation']
        {
          violation_target: 'violation_target',
          violation_target_description: 'violation_target_description',
          conflicting_priority: 1,
          conflicting_policy_id: 'conflicting_policy_id',
          unavailable_priorities: DnsRuleGroupPriorities.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsRuleGroupPriorityConflictViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['ViolationTargetDescription'] = stub[:violation_target_description] unless stub[:violation_target_description].nil?
        data['ConflictingPriority'] = stub[:conflicting_priority] unless stub[:conflicting_priority].nil?
        data['ConflictingPolicyId'] = stub[:conflicting_policy_id] unless stub[:conflicting_policy_id].nil?
        data['UnavailablePriorities'] = DnsRuleGroupPriorities.stub(stub[:unavailable_priorities]) unless stub[:unavailable_priorities].nil?
        data
      end
    end

    # List Stubber for DnsRuleGroupPriorities
    class DnsRuleGroupPriorities
      def self.default(visited=[])
        return nil if visited.include?('DnsRuleGroupPriorities')
        visited = visited + ['DnsRuleGroupPriorities']
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

    # Structure Stubber for NetworkFirewallMissingExpectedRoutesViolation
    class NetworkFirewallMissingExpectedRoutesViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallMissingExpectedRoutesViolation')
        visited = visited + ['NetworkFirewallMissingExpectedRoutesViolation']
        {
          violation_target: 'violation_target',
          expected_routes: ExpectedRoutes.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallMissingExpectedRoutesViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['ExpectedRoutes'] = ExpectedRoutes.stub(stub[:expected_routes]) unless stub[:expected_routes].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for ExpectedRoutes
    class ExpectedRoutes
      def self.default(visited=[])
        return nil if visited.include?('ExpectedRoutes')
        visited = visited + ['ExpectedRoutes']
        [
          ExpectedRoute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExpectedRoute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExpectedRoute
    class ExpectedRoute
      def self.default(visited=[])
        return nil if visited.include?('ExpectedRoute')
        visited = visited + ['ExpectedRoute']
        {
          ip_v4_cidr: 'ip_v4_cidr',
          prefix_list_id: 'prefix_list_id',
          ip_v6_cidr: 'ip_v6_cidr',
          contributing_subnets: ResourceIdList.default(visited),
          allowed_targets: LengthBoundedStringList.default(visited),
          route_table_id: 'route_table_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpectedRoute.new
        data = {}
        data['IpV4Cidr'] = stub[:ip_v4_cidr] unless stub[:ip_v4_cidr].nil?
        data['PrefixListId'] = stub[:prefix_list_id] unless stub[:prefix_list_id].nil?
        data['IpV6Cidr'] = stub[:ip_v6_cidr] unless stub[:ip_v6_cidr].nil?
        data['ContributingSubnets'] = ResourceIdList.stub(stub[:contributing_subnets]) unless stub[:contributing_subnets].nil?
        data['AllowedTargets'] = LengthBoundedStringList.stub(stub[:allowed_targets]) unless stub[:allowed_targets].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data
      end
    end

    # List Stubber for LengthBoundedStringList
    class LengthBoundedStringList
      def self.default(visited=[])
        return nil if visited.include?('LengthBoundedStringList')
        visited = visited + ['LengthBoundedStringList']
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

    # List Stubber for ResourceIdList
    class ResourceIdList
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdList')
        visited = visited + ['ResourceIdList']
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

    # Structure Stubber for NetworkFirewallUnexpectedGatewayRoutesViolation
    class NetworkFirewallUnexpectedGatewayRoutesViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallUnexpectedGatewayRoutesViolation')
        visited = visited + ['NetworkFirewallUnexpectedGatewayRoutesViolation']
        {
          gateway_id: 'gateway_id',
          violating_routes: Routes.default(visited),
          route_table_id: 'route_table_id',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallUnexpectedGatewayRoutesViolation.new
        data = {}
        data['GatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['ViolatingRoutes'] = Routes.stub(stub[:violating_routes]) unless stub[:violating_routes].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallUnexpectedFirewallRoutesViolation
    class NetworkFirewallUnexpectedFirewallRoutesViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallUnexpectedFirewallRoutesViolation')
        visited = visited + ['NetworkFirewallUnexpectedFirewallRoutesViolation']
        {
          firewall_subnet_id: 'firewall_subnet_id',
          violating_routes: Routes.default(visited),
          route_table_id: 'route_table_id',
          firewall_endpoint: 'firewall_endpoint',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallUnexpectedFirewallRoutesViolation.new
        data = {}
        data['FirewallSubnetId'] = stub[:firewall_subnet_id] unless stub[:firewall_subnet_id].nil?
        data['ViolatingRoutes'] = Routes.stub(stub[:violating_routes]) unless stub[:violating_routes].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data['FirewallEndpoint'] = stub[:firewall_endpoint] unless stub[:firewall_endpoint].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallBlackHoleRouteDetectedViolation
    class NetworkFirewallBlackHoleRouteDetectedViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallBlackHoleRouteDetectedViolation')
        visited = visited + ['NetworkFirewallBlackHoleRouteDetectedViolation']
        {
          violation_target: 'violation_target',
          route_table_id: 'route_table_id',
          vpc_id: 'vpc_id',
          violating_routes: Routes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallBlackHoleRouteDetectedViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ViolatingRoutes'] = Routes.stub(stub[:violating_routes]) unless stub[:violating_routes].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallInvalidRouteConfigurationViolation
    class NetworkFirewallInvalidRouteConfigurationViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallInvalidRouteConfigurationViolation')
        visited = visited + ['NetworkFirewallInvalidRouteConfigurationViolation']
        {
          affected_subnets: ResourceIdList.default(visited),
          route_table_id: 'route_table_id',
          is_route_table_used_in_different_az: false,
          violating_route: Route.default(visited),
          current_firewall_subnet_route_table: 'current_firewall_subnet_route_table',
          expected_firewall_endpoint: 'expected_firewall_endpoint',
          actual_firewall_endpoint: 'actual_firewall_endpoint',
          expected_firewall_subnet_id: 'expected_firewall_subnet_id',
          actual_firewall_subnet_id: 'actual_firewall_subnet_id',
          expected_firewall_subnet_routes: ExpectedRoutes.default(visited),
          actual_firewall_subnet_routes: Routes.default(visited),
          internet_gateway_id: 'internet_gateway_id',
          current_internet_gateway_route_table: 'current_internet_gateway_route_table',
          expected_internet_gateway_routes: ExpectedRoutes.default(visited),
          actual_internet_gateway_routes: Routes.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallInvalidRouteConfigurationViolation.new
        data = {}
        data['AffectedSubnets'] = ResourceIdList.stub(stub[:affected_subnets]) unless stub[:affected_subnets].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data['IsRouteTableUsedInDifferentAZ'] = stub[:is_route_table_used_in_different_az] unless stub[:is_route_table_used_in_different_az].nil?
        data['ViolatingRoute'] = Route.stub(stub[:violating_route]) unless stub[:violating_route].nil?
        data['CurrentFirewallSubnetRouteTable'] = stub[:current_firewall_subnet_route_table] unless stub[:current_firewall_subnet_route_table].nil?
        data['ExpectedFirewallEndpoint'] = stub[:expected_firewall_endpoint] unless stub[:expected_firewall_endpoint].nil?
        data['ActualFirewallEndpoint'] = stub[:actual_firewall_endpoint] unless stub[:actual_firewall_endpoint].nil?
        data['ExpectedFirewallSubnetId'] = stub[:expected_firewall_subnet_id] unless stub[:expected_firewall_subnet_id].nil?
        data['ActualFirewallSubnetId'] = stub[:actual_firewall_subnet_id] unless stub[:actual_firewall_subnet_id].nil?
        data['ExpectedFirewallSubnetRoutes'] = ExpectedRoutes.stub(stub[:expected_firewall_subnet_routes]) unless stub[:expected_firewall_subnet_routes].nil?
        data['ActualFirewallSubnetRoutes'] = Routes.stub(stub[:actual_firewall_subnet_routes]) unless stub[:actual_firewall_subnet_routes].nil?
        data['InternetGatewayId'] = stub[:internet_gateway_id] unless stub[:internet_gateway_id].nil?
        data['CurrentInternetGatewayRouteTable'] = stub[:current_internet_gateway_route_table] unless stub[:current_internet_gateway_route_table].nil?
        data['ExpectedInternetGatewayRoutes'] = ExpectedRoutes.stub(stub[:expected_internet_gateway_routes]) unless stub[:expected_internet_gateway_routes].nil?
        data['ActualInternetGatewayRoutes'] = Routes.stub(stub[:actual_internet_gateway_routes]) unless stub[:actual_internet_gateway_routes].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallInternetTrafficNotInspectedViolation
    class NetworkFirewallInternetTrafficNotInspectedViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallInternetTrafficNotInspectedViolation')
        visited = visited + ['NetworkFirewallInternetTrafficNotInspectedViolation']
        {
          subnet_id: 'subnet_id',
          subnet_availability_zone: 'subnet_availability_zone',
          route_table_id: 'route_table_id',
          violating_routes: Routes.default(visited),
          is_route_table_used_in_different_az: false,
          current_firewall_subnet_route_table: 'current_firewall_subnet_route_table',
          expected_firewall_endpoint: 'expected_firewall_endpoint',
          firewall_subnet_id: 'firewall_subnet_id',
          expected_firewall_subnet_routes: ExpectedRoutes.default(visited),
          actual_firewall_subnet_routes: Routes.default(visited),
          internet_gateway_id: 'internet_gateway_id',
          current_internet_gateway_route_table: 'current_internet_gateway_route_table',
          expected_internet_gateway_routes: ExpectedRoutes.default(visited),
          actual_internet_gateway_routes: Routes.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallInternetTrafficNotInspectedViolation.new
        data = {}
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['SubnetAvailabilityZone'] = stub[:subnet_availability_zone] unless stub[:subnet_availability_zone].nil?
        data['RouteTableId'] = stub[:route_table_id] unless stub[:route_table_id].nil?
        data['ViolatingRoutes'] = Routes.stub(stub[:violating_routes]) unless stub[:violating_routes].nil?
        data['IsRouteTableUsedInDifferentAZ'] = stub[:is_route_table_used_in_different_az] unless stub[:is_route_table_used_in_different_az].nil?
        data['CurrentFirewallSubnetRouteTable'] = stub[:current_firewall_subnet_route_table] unless stub[:current_firewall_subnet_route_table].nil?
        data['ExpectedFirewallEndpoint'] = stub[:expected_firewall_endpoint] unless stub[:expected_firewall_endpoint].nil?
        data['FirewallSubnetId'] = stub[:firewall_subnet_id] unless stub[:firewall_subnet_id].nil?
        data['ExpectedFirewallSubnetRoutes'] = ExpectedRoutes.stub(stub[:expected_firewall_subnet_routes]) unless stub[:expected_firewall_subnet_routes].nil?
        data['ActualFirewallSubnetRoutes'] = Routes.stub(stub[:actual_firewall_subnet_routes]) unless stub[:actual_firewall_subnet_routes].nil?
        data['InternetGatewayId'] = stub[:internet_gateway_id] unless stub[:internet_gateway_id].nil?
        data['CurrentInternetGatewayRouteTable'] = stub[:current_internet_gateway_route_table] unless stub[:current_internet_gateway_route_table].nil?
        data['ExpectedInternetGatewayRoutes'] = ExpectedRoutes.stub(stub[:expected_internet_gateway_routes]) unless stub[:expected_internet_gateway_routes].nil?
        data['ActualInternetGatewayRoutes'] = Routes.stub(stub[:actual_internet_gateway_routes]) unless stub[:actual_internet_gateway_routes].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallPolicyModifiedViolation
    class NetworkFirewallPolicyModifiedViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallPolicyModifiedViolation')
        visited = visited + ['NetworkFirewallPolicyModifiedViolation']
        {
          violation_target: 'violation_target',
          current_policy_description: NetworkFirewallPolicyDescription.default(visited),
          expected_policy_description: NetworkFirewallPolicyDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallPolicyModifiedViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['CurrentPolicyDescription'] = NetworkFirewallPolicyDescription.stub(stub[:current_policy_description]) unless stub[:current_policy_description].nil?
        data['ExpectedPolicyDescription'] = NetworkFirewallPolicyDescription.stub(stub[:expected_policy_description]) unless stub[:expected_policy_description].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallPolicyDescription
    class NetworkFirewallPolicyDescription
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallPolicyDescription')
        visited = visited + ['NetworkFirewallPolicyDescription']
        {
          stateless_rule_groups: StatelessRuleGroupList.default(visited),
          stateless_default_actions: NetworkFirewallActionList.default(visited),
          stateless_fragment_default_actions: NetworkFirewallActionList.default(visited),
          stateless_custom_actions: NetworkFirewallActionList.default(visited),
          stateful_rule_groups: StatefulRuleGroupList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallPolicyDescription.new
        data = {}
        data['StatelessRuleGroups'] = StatelessRuleGroupList.stub(stub[:stateless_rule_groups]) unless stub[:stateless_rule_groups].nil?
        data['StatelessDefaultActions'] = NetworkFirewallActionList.stub(stub[:stateless_default_actions]) unless stub[:stateless_default_actions].nil?
        data['StatelessFragmentDefaultActions'] = NetworkFirewallActionList.stub(stub[:stateless_fragment_default_actions]) unless stub[:stateless_fragment_default_actions].nil?
        data['StatelessCustomActions'] = NetworkFirewallActionList.stub(stub[:stateless_custom_actions]) unless stub[:stateless_custom_actions].nil?
        data['StatefulRuleGroups'] = StatefulRuleGroupList.stub(stub[:stateful_rule_groups]) unless stub[:stateful_rule_groups].nil?
        data
      end
    end

    # List Stubber for StatefulRuleGroupList
    class StatefulRuleGroupList
      def self.default(visited=[])
        return nil if visited.include?('StatefulRuleGroupList')
        visited = visited + ['StatefulRuleGroupList']
        [
          StatefulRuleGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StatefulRuleGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatefulRuleGroup
    class StatefulRuleGroup
      def self.default(visited=[])
        return nil if visited.include?('StatefulRuleGroup')
        visited = visited + ['StatefulRuleGroup']
        {
          rule_group_name: 'rule_group_name',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::StatefulRuleGroup.new
        data = {}
        data['RuleGroupName'] = stub[:rule_group_name] unless stub[:rule_group_name].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data
      end
    end

    # List Stubber for NetworkFirewallActionList
    class NetworkFirewallActionList
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallActionList')
        visited = visited + ['NetworkFirewallActionList']
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

    # List Stubber for StatelessRuleGroupList
    class StatelessRuleGroupList
      def self.default(visited=[])
        return nil if visited.include?('StatelessRuleGroupList')
        visited = visited + ['StatelessRuleGroupList']
        [
          StatelessRuleGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StatelessRuleGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatelessRuleGroup
    class StatelessRuleGroup
      def self.default(visited=[])
        return nil if visited.include?('StatelessRuleGroup')
        visited = visited + ['StatelessRuleGroup']
        {
          rule_group_name: 'rule_group_name',
          resource_id: 'resource_id',
          priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StatelessRuleGroup.new
        data = {}
        data['RuleGroupName'] = stub[:rule_group_name] unless stub[:rule_group_name].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallMissingExpectedRTViolation
    class NetworkFirewallMissingExpectedRTViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallMissingExpectedRTViolation')
        visited = visited + ['NetworkFirewallMissingExpectedRTViolation']
        {
          violation_target: 'violation_target',
          vpc: 'vpc',
          availability_zone: 'availability_zone',
          current_route_table: 'current_route_table',
          expected_route_table: 'expected_route_table',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallMissingExpectedRTViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['VPC'] = stub[:vpc] unless stub[:vpc].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['CurrentRouteTable'] = stub[:current_route_table] unless stub[:current_route_table].nil?
        data['ExpectedRouteTable'] = stub[:expected_route_table] unless stub[:expected_route_table].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallMissingSubnetViolation
    class NetworkFirewallMissingSubnetViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallMissingSubnetViolation')
        visited = visited + ['NetworkFirewallMissingSubnetViolation']
        {
          violation_target: 'violation_target',
          vpc: 'vpc',
          availability_zone: 'availability_zone',
          target_violation_reason: 'target_violation_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallMissingSubnetViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['VPC'] = stub[:vpc] unless stub[:vpc].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['TargetViolationReason'] = stub[:target_violation_reason] unless stub[:target_violation_reason].nil?
        data
      end
    end

    # Structure Stubber for NetworkFirewallMissingFirewallViolation
    class NetworkFirewallMissingFirewallViolation
      def self.default(visited=[])
        return nil if visited.include?('NetworkFirewallMissingFirewallViolation')
        visited = visited + ['NetworkFirewallMissingFirewallViolation']
        {
          violation_target: 'violation_target',
          vpc: 'vpc',
          availability_zone: 'availability_zone',
          target_violation_reason: 'target_violation_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFirewallMissingFirewallViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['VPC'] = stub[:vpc] unless stub[:vpc].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['TargetViolationReason'] = stub[:target_violation_reason] unless stub[:target_violation_reason].nil?
        data
      end
    end

    # Structure Stubber for AwsEc2InstanceViolation
    class AwsEc2InstanceViolation
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2InstanceViolation')
        visited = visited + ['AwsEc2InstanceViolation']
        {
          violation_target: 'violation_target',
          aws_ec2_network_interface_violations: AwsEc2NetworkInterfaceViolations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2InstanceViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['AwsEc2NetworkInterfaceViolations'] = AwsEc2NetworkInterfaceViolations.stub(stub[:aws_ec2_network_interface_violations]) unless stub[:aws_ec2_network_interface_violations].nil?
        data
      end
    end

    # List Stubber for AwsEc2NetworkInterfaceViolations
    class AwsEc2NetworkInterfaceViolations
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceViolations')
        visited = visited + ['AwsEc2NetworkInterfaceViolations']
        [
          AwsEc2NetworkInterfaceViolation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsEc2NetworkInterfaceViolation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsEc2NetworkInterfaceViolation
    class AwsEc2NetworkInterfaceViolation
      def self.default(visited=[])
        return nil if visited.include?('AwsEc2NetworkInterfaceViolation')
        visited = visited + ['AwsEc2NetworkInterfaceViolation']
        {
          violation_target: 'violation_target',
          violating_security_groups: ResourceIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsEc2NetworkInterfaceViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['ViolatingSecurityGroups'] = ResourceIdList.stub(stub[:violating_security_groups]) unless stub[:violating_security_groups].nil?
        data
      end
    end

    # Structure Stubber for AwsVPCSecurityGroupViolation
    class AwsVPCSecurityGroupViolation
      def self.default(visited=[])
        return nil if visited.include?('AwsVPCSecurityGroupViolation')
        visited = visited + ['AwsVPCSecurityGroupViolation']
        {
          violation_target: 'violation_target',
          violation_target_description: 'violation_target_description',
          partial_matches: PartialMatches.default(visited),
          possible_security_group_remediation_actions: SecurityGroupRemediationActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsVPCSecurityGroupViolation.new
        data = {}
        data['ViolationTarget'] = stub[:violation_target] unless stub[:violation_target].nil?
        data['ViolationTargetDescription'] = stub[:violation_target_description] unless stub[:violation_target_description].nil?
        data['PartialMatches'] = PartialMatches.stub(stub[:partial_matches]) unless stub[:partial_matches].nil?
        data['PossibleSecurityGroupRemediationActions'] = SecurityGroupRemediationActions.stub(stub[:possible_security_group_remediation_actions]) unless stub[:possible_security_group_remediation_actions].nil?
        data
      end
    end

    # List Stubber for SecurityGroupRemediationActions
    class SecurityGroupRemediationActions
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupRemediationActions')
        visited = visited + ['SecurityGroupRemediationActions']
        [
          SecurityGroupRemediationAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityGroupRemediationAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityGroupRemediationAction
    class SecurityGroupRemediationAction
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupRemediationAction')
        visited = visited + ['SecurityGroupRemediationAction']
        {
          remediation_action_type: 'remediation_action_type',
          description: 'description',
          remediation_result: SecurityGroupRuleDescription.default(visited),
          is_default_action: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityGroupRemediationAction.new
        data = {}
        data['RemediationActionType'] = stub[:remediation_action_type] unless stub[:remediation_action_type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RemediationResult'] = SecurityGroupRuleDescription.stub(stub[:remediation_result]) unless stub[:remediation_result].nil?
        data['IsDefaultAction'] = stub[:is_default_action] unless stub[:is_default_action].nil?
        data
      end
    end

    # Structure Stubber for SecurityGroupRuleDescription
    class SecurityGroupRuleDescription
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupRuleDescription')
        visited = visited + ['SecurityGroupRuleDescription']
        {
          ipv4_range: 'ipv4_range',
          ipv6_range: 'ipv6_range',
          prefix_list_id: 'prefix_list_id',
          protocol: 'protocol',
          from_port: 1,
          to_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityGroupRuleDescription.new
        data = {}
        data['IPV4Range'] = stub[:ipv4_range] unless stub[:ipv4_range].nil?
        data['IPV6Range'] = stub[:ipv6_range] unless stub[:ipv6_range].nil?
        data['PrefixListId'] = stub[:prefix_list_id] unless stub[:prefix_list_id].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data
      end
    end

    # List Stubber for PartialMatches
    class PartialMatches
      def self.default(visited=[])
        return nil if visited.include?('PartialMatches')
        visited = visited + ['PartialMatches']
        [
          PartialMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PartialMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartialMatch
    class PartialMatch
      def self.default(visited=[])
        return nil if visited.include?('PartialMatch')
        visited = visited + ['PartialMatch']
        {
          reference: 'reference',
          target_violation_reasons: TargetViolationReasons.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PartialMatch.new
        data = {}
        data['Reference'] = stub[:reference] unless stub[:reference].nil?
        data['TargetViolationReasons'] = TargetViolationReasons.stub(stub[:target_violation_reasons]) unless stub[:target_violation_reasons].nil?
        data
      end
    end

    # List Stubber for TargetViolationReasons
    class TargetViolationReasons
      def self.default(visited=[])
        return nil if visited.include?('TargetViolationReasons')
        visited = visited + ['TargetViolationReasons']
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

    # Operation Stubber for ListAppsLists
    class ListAppsLists
      def self.default(visited=[])
        {
          apps_lists: AppsListsData.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppsLists'] = AppsListsData.stub(stub[:apps_lists]) unless stub[:apps_lists].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AppsListsData
    class AppsListsData
      def self.default(visited=[])
        return nil if visited.include?('AppsListsData')
        visited = visited + ['AppsListsData']
        [
          AppsListDataSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AppsListDataSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppsListDataSummary
    class AppsListDataSummary
      def self.default(visited=[])
        return nil if visited.include?('AppsListDataSummary')
        visited = visited + ['AppsListDataSummary']
        {
          list_arn: 'list_arn',
          list_id: 'list_id',
          list_name: 'list_name',
          apps_list: AppsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppsListDataSummary.new
        data = {}
        data['ListArn'] = stub[:list_arn] unless stub[:list_arn].nil?
        data['ListId'] = stub[:list_id] unless stub[:list_id].nil?
        data['ListName'] = stub[:list_name] unless stub[:list_name].nil?
        data['AppsList'] = AppsList.stub(stub[:apps_list]) unless stub[:apps_list].nil?
        data
      end
    end

    # Operation Stubber for ListComplianceStatus
    class ListComplianceStatus
      def self.default(visited=[])
        {
          policy_compliance_status_list: PolicyComplianceStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyComplianceStatusList'] = PolicyComplianceStatusList.stub(stub[:policy_compliance_status_list]) unless stub[:policy_compliance_status_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyComplianceStatusList
    class PolicyComplianceStatusList
      def self.default(visited=[])
        return nil if visited.include?('PolicyComplianceStatusList')
        visited = visited + ['PolicyComplianceStatusList']
        [
          PolicyComplianceStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicyComplianceStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyComplianceStatus
    class PolicyComplianceStatus
      def self.default(visited=[])
        return nil if visited.include?('PolicyComplianceStatus')
        visited = visited + ['PolicyComplianceStatus']
        {
          policy_owner: 'policy_owner',
          policy_id: 'policy_id',
          policy_name: 'policy_name',
          member_account: 'member_account',
          evaluation_results: EvaluationResults.default(visited),
          last_updated: Time.now,
          issue_info_map: IssueInfoMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyComplianceStatus.new
        data = {}
        data['PolicyOwner'] = stub[:policy_owner] unless stub[:policy_owner].nil?
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['MemberAccount'] = stub[:member_account] unless stub[:member_account].nil?
        data['EvaluationResults'] = EvaluationResults.stub(stub[:evaluation_results]) unless stub[:evaluation_results].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['IssueInfoMap'] = IssueInfoMap.stub(stub[:issue_info_map]) unless stub[:issue_info_map].nil?
        data
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
          compliance_status: 'compliance_status',
          violator_count: 1,
          evaluation_limit_exceeded: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResult.new
        data = {}
        data['ComplianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data['ViolatorCount'] = stub[:violator_count] unless stub[:violator_count].nil?
        data['EvaluationLimitExceeded'] = stub[:evaluation_limit_exceeded] unless stub[:evaluation_limit_exceeded].nil?
        data
      end
    end

    # Operation Stubber for ListMemberAccounts
    class ListMemberAccounts
      def self.default(visited=[])
        {
          member_accounts: MemberAccounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MemberAccounts'] = MemberAccounts.stub(stub[:member_accounts]) unless stub[:member_accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MemberAccounts
    class MemberAccounts
      def self.default(visited=[])
        return nil if visited.include?('MemberAccounts')
        visited = visited + ['MemberAccounts']
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

    # Operation Stubber for ListPolicies
    class ListPolicies
      def self.default(visited=[])
        {
          policy_list: PolicySummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyList'] = PolicySummaryList.stub(stub[:policy_list]) unless stub[:policy_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PolicySummaryList
    class PolicySummaryList
      def self.default(visited=[])
        return nil if visited.include?('PolicySummaryList')
        visited = visited + ['PolicySummaryList']
        [
          PolicySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicySummary
    class PolicySummary
      def self.default(visited=[])
        return nil if visited.include?('PolicySummary')
        visited = visited + ['PolicySummary']
        {
          policy_arn: 'policy_arn',
          policy_id: 'policy_id',
          policy_name: 'policy_name',
          resource_type: 'resource_type',
          security_service_type: 'security_service_type',
          remediation_enabled: false,
          delete_unused_fm_managed_resources: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicySummary.new
        data = {}
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['SecurityServiceType'] = stub[:security_service_type] unless stub[:security_service_type].nil?
        data['RemediationEnabled'] = stub[:remediation_enabled] unless stub[:remediation_enabled].nil?
        data['DeleteUnusedFMManagedResources'] = stub[:delete_unused_fm_managed_resources] unless stub[:delete_unused_fm_managed_resources].nil?
        data
      end
    end

    # Operation Stubber for ListProtocolsLists
    class ListProtocolsLists
      def self.default(visited=[])
        {
          protocols_lists: ProtocolsListsData.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtocolsLists'] = ProtocolsListsData.stub(stub[:protocols_lists]) unless stub[:protocols_lists].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProtocolsListsData
    class ProtocolsListsData
      def self.default(visited=[])
        return nil if visited.include?('ProtocolsListsData')
        visited = visited + ['ProtocolsListsData']
        [
          ProtocolsListDataSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProtocolsListDataSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProtocolsListDataSummary
    class ProtocolsListDataSummary
      def self.default(visited=[])
        return nil if visited.include?('ProtocolsListDataSummary')
        visited = visited + ['ProtocolsListDataSummary']
        {
          list_arn: 'list_arn',
          list_id: 'list_id',
          list_name: 'list_name',
          protocols_list: ProtocolsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtocolsListDataSummary.new
        data = {}
        data['ListArn'] = stub[:list_arn] unless stub[:list_arn].nil?
        data['ListId'] = stub[:list_id] unless stub[:list_id].nil?
        data['ListName'] = stub[:list_name] unless stub[:list_name].nil?
        data['ProtocolsList'] = ProtocolsList.stub(stub[:protocols_list]) unless stub[:protocols_list].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListThirdPartyFirewallFirewallPolicies
    class ListThirdPartyFirewallFirewallPolicies
      def self.default(visited=[])
        {
          third_party_firewall_firewall_policies: ThirdPartyFirewallFirewallPolicies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ThirdPartyFirewallFirewallPolicies'] = ThirdPartyFirewallFirewallPolicies.stub(stub[:third_party_firewall_firewall_policies]) unless stub[:third_party_firewall_firewall_policies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ThirdPartyFirewallFirewallPolicies
    class ThirdPartyFirewallFirewallPolicies
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyFirewallFirewallPolicies')
        visited = visited + ['ThirdPartyFirewallFirewallPolicies']
        [
          ThirdPartyFirewallFirewallPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThirdPartyFirewallFirewallPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThirdPartyFirewallFirewallPolicy
    class ThirdPartyFirewallFirewallPolicy
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyFirewallFirewallPolicy')
        visited = visited + ['ThirdPartyFirewallFirewallPolicy']
        {
          firewall_policy_id: 'firewall_policy_id',
          firewall_policy_name: 'firewall_policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyFirewallFirewallPolicy.new
        data = {}
        data['FirewallPolicyId'] = stub[:firewall_policy_id] unless stub[:firewall_policy_id].nil?
        data['FirewallPolicyName'] = stub[:firewall_policy_name] unless stub[:firewall_policy_name].nil?
        data
      end
    end

    # Operation Stubber for PutAppsList
    class PutAppsList
      def self.default(visited=[])
        {
          apps_list: AppsListData.default(visited),
          apps_list_arn: 'apps_list_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppsList'] = AppsListData.stub(stub[:apps_list]) unless stub[:apps_list].nil?
        data['AppsListArn'] = stub[:apps_list_arn] unless stub[:apps_list_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutNotificationChannel
    class PutNotificationChannel
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

    # Operation Stubber for PutPolicy
    class PutPolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = Policy.stub(stub[:policy]) unless stub[:policy].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutProtocolsList
    class PutProtocolsList
      def self.default(visited=[])
        {
          protocols_list: ProtocolsListData.default(visited),
          protocols_list_arn: 'protocols_list_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtocolsList'] = ProtocolsListData.stub(stub[:protocols_list]) unless stub[:protocols_list].nil?
        data['ProtocolsListArn'] = stub[:protocols_list_arn] unless stub[:protocols_list_arn].nil?
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
