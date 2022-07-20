# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::FMS
  module Builders

    # Operation Builder for AssociateAdminAccount
    class AssociateAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.AssociateAdminAccount'
        data = {}
        data['AdminAccount'] = input[:admin_account] unless input[:admin_account].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateThirdPartyFirewall
    class AssociateThirdPartyFirewall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.AssociateThirdPartyFirewall'
        data = {}
        data['ThirdPartyFirewall'] = input[:third_party_firewall] unless input[:third_party_firewall].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppsList
    class DeleteAppsList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.DeleteAppsList'
        data = {}
        data['ListId'] = input[:list_id] unless input[:list_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNotificationChannel
    class DeleteNotificationChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.DeleteNotificationChannel'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.DeletePolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['DeleteAllPolicyResources'] = input[:delete_all_policy_resources] unless input[:delete_all_policy_resources].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProtocolsList
    class DeleteProtocolsList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.DeleteProtocolsList'
        data = {}
        data['ListId'] = input[:list_id] unless input[:list_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateAdminAccount
    class DisassociateAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.DisassociateAdminAccount'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateThirdPartyFirewall
    class DisassociateThirdPartyFirewall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.DisassociateThirdPartyFirewall'
        data = {}
        data['ThirdPartyFirewall'] = input[:third_party_firewall] unless input[:third_party_firewall].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAdminAccount
    class GetAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetAdminAccount'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAppsList
    class GetAppsList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetAppsList'
        data = {}
        data['ListId'] = input[:list_id] unless input[:list_id].nil?
        data['DefaultList'] = input[:default_list] unless input[:default_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComplianceDetail
    class GetComplianceDetail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetComplianceDetail'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['MemberAccount'] = input[:member_account] unless input[:member_account].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetNotificationChannel
    class GetNotificationChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetNotificationChannel'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetPolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetProtectionStatus
    class GetProtectionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetProtectionStatus'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['MemberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetProtocolsList
    class GetProtocolsList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetProtocolsList'
        data = {}
        data['ListId'] = input[:list_id] unless input[:list_id].nil?
        data['DefaultList'] = input[:default_list] unless input[:default_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetThirdPartyFirewallAssociationStatus
    class GetThirdPartyFirewallAssociationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetThirdPartyFirewallAssociationStatus'
        data = {}
        data['ThirdPartyFirewall'] = input[:third_party_firewall] unless input[:third_party_firewall].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetViolationDetails
    class GetViolationDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.GetViolationDetails'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['MemberAccount'] = input[:member_account] unless input[:member_account].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppsLists
    class ListAppsLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListAppsLists'
        data = {}
        data['DefaultLists'] = input[:default_lists] unless input[:default_lists].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComplianceStatus
    class ListComplianceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListComplianceStatus'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMemberAccounts
    class ListMemberAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListMemberAccounts'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPolicies
    class ListPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListPolicies'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProtocolsLists
    class ListProtocolsLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListProtocolsLists'
        data = {}
        data['DefaultLists'] = input[:default_lists] unless input[:default_lists].nil?
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
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListThirdPartyFirewallFirewallPolicies
    class ListThirdPartyFirewallFirewallPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.ListThirdPartyFirewallFirewallPolicies'
        data = {}
        data['ThirdPartyFirewall'] = input[:third_party_firewall] unless input[:third_party_firewall].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAppsList
    class PutAppsList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.PutAppsList'
        data = {}
        data['AppsList'] = AppsListData.build(input[:apps_list]) unless input[:apps_list].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
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

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AppsListData
    class AppsListData
      def self.build(input)
        data = {}
        data['ListId'] = input[:list_id] unless input[:list_id].nil?
        data['ListName'] = input[:list_name] unless input[:list_name].nil?
        data['ListUpdateToken'] = input[:list_update_token] unless input[:list_update_token].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:create_time]).to_i unless input[:create_time].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_update_time]).to_i unless input[:last_update_time].nil?
        data['AppsList'] = AppsList.build(input[:apps_list]) unless input[:apps_list].nil?
        data['PreviousAppsList'] = PreviousAppsList.build(input[:previous_apps_list]) unless input[:previous_apps_list].nil?
        data
      end
    end

    # Map Builder for PreviousAppsList
    class PreviousAppsList
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = AppsList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for AppsList
    class AppsList
      def self.build(input)
        data = []
        input.each do |element|
          data << App.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for App
    class App
      def self.build(input)
        data = {}
        data['AppName'] = input[:app_name] unless input[:app_name].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Operation Builder for PutNotificationChannel
    class PutNotificationChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.PutNotificationChannel'
        data = {}
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SnsRoleName'] = input[:sns_role_name] unless input[:sns_role_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutPolicy
    class PutPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.PutPolicy'
        data = {}
        data['Policy'] = Policy.build(input[:policy]) unless input[:policy].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Policy
    class Policy
      def self.build(input)
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['PolicyUpdateToken'] = input[:policy_update_token] unless input[:policy_update_token].nil?
        data['SecurityServicePolicyData'] = SecurityServicePolicyData.build(input[:security_service_policy_data]) unless input[:security_service_policy_data].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceTypeList'] = ResourceTypeList.build(input[:resource_type_list]) unless input[:resource_type_list].nil?
        data['ResourceTags'] = ResourceTags.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['ExcludeResourceTags'] = input[:exclude_resource_tags] unless input[:exclude_resource_tags].nil?
        data['RemediationEnabled'] = input[:remediation_enabled] unless input[:remediation_enabled].nil?
        data['DeleteUnusedFMManagedResources'] = input[:delete_unused_fm_managed_resources] unless input[:delete_unused_fm_managed_resources].nil?
        data['IncludeMap'] = CustomerPolicyScopeMap.build(input[:include_map]) unless input[:include_map].nil?
        data['ExcludeMap'] = CustomerPolicyScopeMap.build(input[:exclude_map]) unless input[:exclude_map].nil?
        data
      end
    end

    # Map Builder for CustomerPolicyScopeMap
    class CustomerPolicyScopeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = CustomerPolicyScopeIdList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for CustomerPolicyScopeIdList
    class CustomerPolicyScopeIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceTags
    class ResourceTags
      def self.build(input)
        data = []
        input.each do |element|
          data << ResourceTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceTag
    class ResourceTag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
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

    # Structure Builder for SecurityServicePolicyData
    class SecurityServicePolicyData
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['ManagedServiceData'] = input[:managed_service_data] unless input[:managed_service_data].nil?
        data['PolicyOption'] = PolicyOption.build(input[:policy_option]) unless input[:policy_option].nil?
        data
      end
    end

    # Structure Builder for PolicyOption
    class PolicyOption
      def self.build(input)
        data = {}
        data['NetworkFirewallPolicy'] = NetworkFirewallPolicy.build(input[:network_firewall_policy]) unless input[:network_firewall_policy].nil?
        data['ThirdPartyFirewallPolicy'] = ThirdPartyFirewallPolicy.build(input[:third_party_firewall_policy]) unless input[:third_party_firewall_policy].nil?
        data
      end
    end

    # Structure Builder for ThirdPartyFirewallPolicy
    class ThirdPartyFirewallPolicy
      def self.build(input)
        data = {}
        data['FirewallDeploymentModel'] = input[:firewall_deployment_model] unless input[:firewall_deployment_model].nil?
        data
      end
    end

    # Structure Builder for NetworkFirewallPolicy
    class NetworkFirewallPolicy
      def self.build(input)
        data = {}
        data['FirewallDeploymentModel'] = input[:firewall_deployment_model] unless input[:firewall_deployment_model].nil?
        data
      end
    end

    # Operation Builder for PutProtocolsList
    class PutProtocolsList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.PutProtocolsList'
        data = {}
        data['ProtocolsList'] = ProtocolsListData.build(input[:protocols_list]) unless input[:protocols_list].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProtocolsListData
    class ProtocolsListData
      def self.build(input)
        data = {}
        data['ListId'] = input[:list_id] unless input[:list_id].nil?
        data['ListName'] = input[:list_name] unless input[:list_name].nil?
        data['ListUpdateToken'] = input[:list_update_token] unless input[:list_update_token].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:create_time]).to_i unless input[:create_time].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_update_time]).to_i unless input[:last_update_time].nil?
        data['ProtocolsList'] = ProtocolsList.build(input[:protocols_list]) unless input[:protocols_list].nil?
        data['PreviousProtocolsList'] = PreviousProtocolsList.build(input[:previous_protocols_list]) unless input[:previous_protocols_list].nil?
        data
      end
    end

    # Map Builder for PreviousProtocolsList
    class PreviousProtocolsList
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ProtocolsList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ProtocolsList
    class ProtocolsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSFMS_20180101.UntagResource'
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
