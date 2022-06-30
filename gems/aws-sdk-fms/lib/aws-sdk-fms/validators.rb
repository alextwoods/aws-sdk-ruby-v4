# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FMS
  module Validators

    class ActionTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTarget, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class App
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::App, context: context)
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class AppsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::App.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppsListData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppsListData, context: context)
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
        Hearth::Validator.validate!(input[:list_name], ::String, context: "#{context}[:list_name]")
        Hearth::Validator.validate!(input[:list_update_token], ::String, context: "#{context}[:list_update_token]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::AppsList.validate!(input[:apps_list], context: "#{context}[:apps_list]") unless input[:apps_list].nil?
        Validators::PreviousAppsList.validate!(input[:previous_apps_list], context: "#{context}[:previous_apps_list]") unless input[:previous_apps_list].nil?
      end
    end

    class AppsListDataSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppsListDataSummary, context: context)
        Hearth::Validator.validate!(input[:list_arn], ::String, context: "#{context}[:list_arn]")
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
        Hearth::Validator.validate!(input[:list_name], ::String, context: "#{context}[:list_name]")
        Validators::AppsList.validate!(input[:apps_list], context: "#{context}[:apps_list]") unless input[:apps_list].nil?
      end
    end

    class AppsListsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppsListDataSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account], ::String, context: "#{context}[:admin_account]")
      end
    end

    class AssociateAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAdminAccountOutput, context: context)
      end
    end

    class AssociateThirdPartyFirewallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateThirdPartyFirewallInput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall], ::String, context: "#{context}[:third_party_firewall]")
      end
    end

    class AssociateThirdPartyFirewallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateThirdPartyFirewallOutput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall_status], ::String, context: "#{context}[:third_party_firewall_status]")
      end
    end

    class AwsEc2InstanceViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2InstanceViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Validators::AwsEc2NetworkInterfaceViolations.validate!(input[:aws_ec2_network_interface_violations], context: "#{context}[:aws_ec2_network_interface_violations]") unless input[:aws_ec2_network_interface_violations].nil?
      end
    end

    class AwsEc2NetworkInterfaceViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkInterfaceViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Validators::ResourceIdList.validate!(input[:violating_security_groups], context: "#{context}[:violating_security_groups]") unless input[:violating_security_groups].nil?
      end
    end

    class AwsEc2NetworkInterfaceViolations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2NetworkInterfaceViolation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsVPCSecurityGroupViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsVPCSecurityGroupViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:violation_target_description], ::String, context: "#{context}[:violation_target_description]")
        Validators::PartialMatches.validate!(input[:partial_matches], context: "#{context}[:partial_matches]") unless input[:partial_matches].nil?
        Validators::SecurityGroupRemediationActions.validate!(input[:possible_security_group_remediation_actions], context: "#{context}[:possible_security_group_remediation_actions]") unless input[:possible_security_group_remediation_actions].nil?
      end
    end

    class ComplianceViolator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceViolator, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:violation_reason], ::String, context: "#{context}[:violation_reason]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ComplianceViolatorMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class ComplianceViolatorMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ComplianceViolators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComplianceViolator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomerPolicyScopeIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomerPolicyScopeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::CustomerPolicyScopeIdList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class DeleteAppsListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppsListInput, context: context)
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
      end
    end

    class DeleteAppsListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppsListOutput, context: context)
      end
    end

    class DeleteNotificationChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationChannelInput, context: context)
      end
    end

    class DeleteNotificationChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationChannelOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:delete_all_policy_resources], ::TrueClass, ::FalseClass, context: "#{context}[:delete_all_policy_resources]")
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DeleteProtocolsListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProtocolsListInput, context: context)
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
      end
    end

    class DeleteProtocolsListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProtocolsListOutput, context: context)
      end
    end

    class DisassociateAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAdminAccountInput, context: context)
      end
    end

    class DisassociateAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAdminAccountOutput, context: context)
      end
    end

    class DisassociateThirdPartyFirewallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateThirdPartyFirewallInput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall], ::String, context: "#{context}[:third_party_firewall]")
      end
    end

    class DisassociateThirdPartyFirewallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateThirdPartyFirewallOutput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall_status], ::String, context: "#{context}[:third_party_firewall_status]")
      end
    end

    class DnsDuplicateRuleGroupViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsDuplicateRuleGroupViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:violation_target_description], ::String, context: "#{context}[:violation_target_description]")
      end
    end

    class DnsRuleGroupLimitExceededViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsRuleGroupLimitExceededViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:violation_target_description], ::String, context: "#{context}[:violation_target_description]")
        Hearth::Validator.validate!(input[:number_of_rule_groups_already_associated], ::Integer, context: "#{context}[:number_of_rule_groups_already_associated]")
      end
    end

    class DnsRuleGroupPriorities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class DnsRuleGroupPriorityConflictViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsRuleGroupPriorityConflictViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:violation_target_description], ::String, context: "#{context}[:violation_target_description]")
        Hearth::Validator.validate!(input[:conflicting_priority], ::Integer, context: "#{context}[:conflicting_priority]")
        Hearth::Validator.validate!(input[:conflicting_policy_id], ::String, context: "#{context}[:conflicting_policy_id]")
        Validators::DnsRuleGroupPriorities.validate!(input[:unavailable_priorities], context: "#{context}[:unavailable_priorities]") unless input[:unavailable_priorities].nil?
      end
    end

    class EC2AssociateRouteTableAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2AssociateRouteTableAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ActionTarget.validate!(input[:route_table_id], context: "#{context}[:route_table_id]") unless input[:route_table_id].nil?
        Validators::ActionTarget.validate!(input[:subnet_id], context: "#{context}[:subnet_id]") unless input[:subnet_id].nil?
        Validators::ActionTarget.validate!(input[:gateway_id], context: "#{context}[:gateway_id]") unless input[:gateway_id].nil?
      end
    end

    class EC2CopyRouteTableAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2CopyRouteTableAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ActionTarget.validate!(input[:vpc_id], context: "#{context}[:vpc_id]") unless input[:vpc_id].nil?
        Validators::ActionTarget.validate!(input[:route_table_id], context: "#{context}[:route_table_id]") unless input[:route_table_id].nil?
      end
    end

    class EC2CreateRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2CreateRouteAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:destination_prefix_list_id], ::String, context: "#{context}[:destination_prefix_list_id]")
        Hearth::Validator.validate!(input[:destination_ipv6_cidr_block], ::String, context: "#{context}[:destination_ipv6_cidr_block]")
        Validators::ActionTarget.validate!(input[:vpc_endpoint_id], context: "#{context}[:vpc_endpoint_id]") unless input[:vpc_endpoint_id].nil?
        Validators::ActionTarget.validate!(input[:gateway_id], context: "#{context}[:gateway_id]") unless input[:gateway_id].nil?
        Validators::ActionTarget.validate!(input[:route_table_id], context: "#{context}[:route_table_id]") unless input[:route_table_id].nil?
      end
    end

    class EC2CreateRouteTableAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2CreateRouteTableAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ActionTarget.validate!(input[:vpc_id], context: "#{context}[:vpc_id]") unless input[:vpc_id].nil?
      end
    end

    class EC2DeleteRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2DeleteRouteAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:destination_prefix_list_id], ::String, context: "#{context}[:destination_prefix_list_id]")
        Hearth::Validator.validate!(input[:destination_ipv6_cidr_block], ::String, context: "#{context}[:destination_ipv6_cidr_block]")
        Validators::ActionTarget.validate!(input[:route_table_id], context: "#{context}[:route_table_id]") unless input[:route_table_id].nil?
      end
    end

    class EC2ReplaceRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2ReplaceRouteAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:destination_prefix_list_id], ::String, context: "#{context}[:destination_prefix_list_id]")
        Hearth::Validator.validate!(input[:destination_ipv6_cidr_block], ::String, context: "#{context}[:destination_ipv6_cidr_block]")
        Validators::ActionTarget.validate!(input[:gateway_id], context: "#{context}[:gateway_id]") unless input[:gateway_id].nil?
        Validators::ActionTarget.validate!(input[:route_table_id], context: "#{context}[:route_table_id]") unless input[:route_table_id].nil?
      end
    end

    class EC2ReplaceRouteTableAssociationAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2ReplaceRouteTableAssociationAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ActionTarget.validate!(input[:association_id], context: "#{context}[:association_id]") unless input[:association_id].nil?
        Validators::ActionTarget.validate!(input[:route_table_id], context: "#{context}[:route_table_id]") unless input[:route_table_id].nil?
      end
    end

    class EvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResult, context: context)
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Hearth::Validator.validate!(input[:violator_count], ::Integer, context: "#{context}[:violator_count]")
        Hearth::Validator.validate!(input[:evaluation_limit_exceeded], ::TrueClass, ::FalseClass, context: "#{context}[:evaluation_limit_exceeded]")
      end
    end

    class EvaluationResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExpectedRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpectedRoute, context: context)
        Hearth::Validator.validate!(input[:ip_v4_cidr], ::String, context: "#{context}[:ip_v4_cidr]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:ip_v6_cidr], ::String, context: "#{context}[:ip_v6_cidr]")
        Validators::ResourceIdList.validate!(input[:contributing_subnets], context: "#{context}[:contributing_subnets]") unless input[:contributing_subnets].nil?
        Validators::LengthBoundedStringList.validate!(input[:allowed_targets], context: "#{context}[:allowed_targets]") unless input[:allowed_targets].nil?
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
      end
    end

    class ExpectedRoutes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExpectedRoute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FMSPolicyUpdateFirewallCreationConfigAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FMSPolicyUpdateFirewallCreationConfigAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:firewall_creation_config], ::String, context: "#{context}[:firewall_creation_config]")
      end
    end

    class FirewallSubnetIsOutOfScopeViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallSubnetIsOutOfScopeViolation, context: context)
        Hearth::Validator.validate!(input[:firewall_subnet_id], ::String, context: "#{context}[:firewall_subnet_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_availability_zone], ::String, context: "#{context}[:subnet_availability_zone]")
        Hearth::Validator.validate!(input[:subnet_availability_zone_id], ::String, context: "#{context}[:subnet_availability_zone_id]")
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
      end
    end

    class FirewallSubnetMissingVPCEndpointViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallSubnetMissingVPCEndpointViolation, context: context)
        Hearth::Validator.validate!(input[:firewall_subnet_id], ::String, context: "#{context}[:firewall_subnet_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_availability_zone], ::String, context: "#{context}[:subnet_availability_zone]")
        Hearth::Validator.validate!(input[:subnet_availability_zone_id], ::String, context: "#{context}[:subnet_availability_zone_id]")
      end
    end

    class GetAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdminAccountInput, context: context)
      end
    end

    class GetAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdminAccountOutput, context: context)
        Hearth::Validator.validate!(input[:admin_account], ::String, context: "#{context}[:admin_account]")
        Hearth::Validator.validate!(input[:role_status], ::String, context: "#{context}[:role_status]")
      end
    end

    class GetAppsListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppsListInput, context: context)
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
        Hearth::Validator.validate!(input[:default_list], ::TrueClass, ::FalseClass, context: "#{context}[:default_list]")
      end
    end

    class GetAppsListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppsListOutput, context: context)
        Validators::AppsListData.validate!(input[:apps_list], context: "#{context}[:apps_list]") unless input[:apps_list].nil?
        Hearth::Validator.validate!(input[:apps_list_arn], ::String, context: "#{context}[:apps_list_arn]")
      end
    end

    class GetComplianceDetailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceDetailInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:member_account], ::String, context: "#{context}[:member_account]")
      end
    end

    class GetComplianceDetailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceDetailOutput, context: context)
        Validators::PolicyComplianceDetail.validate!(input[:policy_compliance_detail], context: "#{context}[:policy_compliance_detail]") unless input[:policy_compliance_detail].nil?
      end
    end

    class GetNotificationChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNotificationChannelInput, context: context)
      end
    end

    class GetNotificationChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNotificationChannelOutput, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_role_name], ::String, context: "#{context}[:sns_role_name]")
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class GetProtectionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProtectionStatusInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:member_account_id], ::String, context: "#{context}[:member_account_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetProtectionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProtectionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetProtocolsListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProtocolsListInput, context: context)
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
        Hearth::Validator.validate!(input[:default_list], ::TrueClass, ::FalseClass, context: "#{context}[:default_list]")
      end
    end

    class GetProtocolsListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProtocolsListOutput, context: context)
        Validators::ProtocolsListData.validate!(input[:protocols_list], context: "#{context}[:protocols_list]") unless input[:protocols_list].nil?
        Hearth::Validator.validate!(input[:protocols_list_arn], ::String, context: "#{context}[:protocols_list_arn]")
      end
    end

    class GetThirdPartyFirewallAssociationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThirdPartyFirewallAssociationStatusInput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall], ::String, context: "#{context}[:third_party_firewall]")
      end
    end

    class GetThirdPartyFirewallAssociationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThirdPartyFirewallAssociationStatusOutput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall_status], ::String, context: "#{context}[:third_party_firewall_status]")
        Hearth::Validator.validate!(input[:marketplace_onboarding_status], ::String, context: "#{context}[:marketplace_onboarding_status]")
      end
    end

    class GetViolationDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetViolationDetailsInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:member_account], ::String, context: "#{context}[:member_account]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class GetViolationDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetViolationDetailsOutput, context: context)
        Validators::ViolationDetail.validate!(input[:violation_detail], context: "#{context}[:violation_detail]") unless input[:violation_detail].nil?
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IssueInfoMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LengthBoundedStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAppsListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsListsInput, context: context)
        Hearth::Validator.validate!(input[:default_lists], ::TrueClass, ::FalseClass, context: "#{context}[:default_lists]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppsListsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsListsOutput, context: context)
        Validators::AppsListsData.validate!(input[:apps_lists], context: "#{context}[:apps_lists]") unless input[:apps_lists].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComplianceStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComplianceStatusInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListComplianceStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComplianceStatusOutput, context: context)
        Validators::PolicyComplianceStatusList.validate!(input[:policy_compliance_status_list], context: "#{context}[:policy_compliance_status_list]") unless input[:policy_compliance_status_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMemberAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMemberAccountsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMemberAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMemberAccountsOutput, context: context)
        Validators::MemberAccounts.validate!(input[:member_accounts], context: "#{context}[:member_accounts]") unless input[:member_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesOutput, context: context)
        Validators::PolicySummaryList.validate!(input[:policy_list], context: "#{context}[:policy_list]") unless input[:policy_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProtocolsListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtocolsListsInput, context: context)
        Hearth::Validator.validate!(input[:default_lists], ::TrueClass, ::FalseClass, context: "#{context}[:default_lists]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProtocolsListsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtocolsListsOutput, context: context)
        Validators::ProtocolsListsData.validate!(input[:protocols_lists], context: "#{context}[:protocols_lists]") unless input[:protocols_lists].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class ListThirdPartyFirewallFirewallPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThirdPartyFirewallFirewallPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:third_party_firewall], ::String, context: "#{context}[:third_party_firewall]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThirdPartyFirewallFirewallPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThirdPartyFirewallFirewallPoliciesOutput, context: context)
        Validators::ThirdPartyFirewallFirewallPolicies.validate!(input[:third_party_firewall_firewall_policies], context: "#{context}[:third_party_firewall_firewall_policies]") unless input[:third_party_firewall_firewall_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MemberAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkFirewallActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkFirewallBlackHoleRouteDetectedViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallBlackHoleRouteDetectedViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::Routes.validate!(input[:violating_routes], context: "#{context}[:violating_routes]") unless input[:violating_routes].nil?
      end
    end

    class NetworkFirewallInternetTrafficNotInspectedViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallInternetTrafficNotInspectedViolation, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:subnet_availability_zone], ::String, context: "#{context}[:subnet_availability_zone]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Validators::Routes.validate!(input[:violating_routes], context: "#{context}[:violating_routes]") unless input[:violating_routes].nil?
        Hearth::Validator.validate!(input[:is_route_table_used_in_different_az], ::TrueClass, ::FalseClass, context: "#{context}[:is_route_table_used_in_different_az]")
        Hearth::Validator.validate!(input[:current_firewall_subnet_route_table], ::String, context: "#{context}[:current_firewall_subnet_route_table]")
        Hearth::Validator.validate!(input[:expected_firewall_endpoint], ::String, context: "#{context}[:expected_firewall_endpoint]")
        Hearth::Validator.validate!(input[:firewall_subnet_id], ::String, context: "#{context}[:firewall_subnet_id]")
        Validators::ExpectedRoutes.validate!(input[:expected_firewall_subnet_routes], context: "#{context}[:expected_firewall_subnet_routes]") unless input[:expected_firewall_subnet_routes].nil?
        Validators::Routes.validate!(input[:actual_firewall_subnet_routes], context: "#{context}[:actual_firewall_subnet_routes]") unless input[:actual_firewall_subnet_routes].nil?
        Hearth::Validator.validate!(input[:internet_gateway_id], ::String, context: "#{context}[:internet_gateway_id]")
        Hearth::Validator.validate!(input[:current_internet_gateway_route_table], ::String, context: "#{context}[:current_internet_gateway_route_table]")
        Validators::ExpectedRoutes.validate!(input[:expected_internet_gateway_routes], context: "#{context}[:expected_internet_gateway_routes]") unless input[:expected_internet_gateway_routes].nil?
        Validators::Routes.validate!(input[:actual_internet_gateway_routes], context: "#{context}[:actual_internet_gateway_routes]") unless input[:actual_internet_gateway_routes].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class NetworkFirewallInvalidRouteConfigurationViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallInvalidRouteConfigurationViolation, context: context)
        Validators::ResourceIdList.validate!(input[:affected_subnets], context: "#{context}[:affected_subnets]") unless input[:affected_subnets].nil?
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:is_route_table_used_in_different_az], ::TrueClass, ::FalseClass, context: "#{context}[:is_route_table_used_in_different_az]")
        Validators::Route.validate!(input[:violating_route], context: "#{context}[:violating_route]") unless input[:violating_route].nil?
        Hearth::Validator.validate!(input[:current_firewall_subnet_route_table], ::String, context: "#{context}[:current_firewall_subnet_route_table]")
        Hearth::Validator.validate!(input[:expected_firewall_endpoint], ::String, context: "#{context}[:expected_firewall_endpoint]")
        Hearth::Validator.validate!(input[:actual_firewall_endpoint], ::String, context: "#{context}[:actual_firewall_endpoint]")
        Hearth::Validator.validate!(input[:expected_firewall_subnet_id], ::String, context: "#{context}[:expected_firewall_subnet_id]")
        Hearth::Validator.validate!(input[:actual_firewall_subnet_id], ::String, context: "#{context}[:actual_firewall_subnet_id]")
        Validators::ExpectedRoutes.validate!(input[:expected_firewall_subnet_routes], context: "#{context}[:expected_firewall_subnet_routes]") unless input[:expected_firewall_subnet_routes].nil?
        Validators::Routes.validate!(input[:actual_firewall_subnet_routes], context: "#{context}[:actual_firewall_subnet_routes]") unless input[:actual_firewall_subnet_routes].nil?
        Hearth::Validator.validate!(input[:internet_gateway_id], ::String, context: "#{context}[:internet_gateway_id]")
        Hearth::Validator.validate!(input[:current_internet_gateway_route_table], ::String, context: "#{context}[:current_internet_gateway_route_table]")
        Validators::ExpectedRoutes.validate!(input[:expected_internet_gateway_routes], context: "#{context}[:expected_internet_gateway_routes]") unless input[:expected_internet_gateway_routes].nil?
        Validators::Routes.validate!(input[:actual_internet_gateway_routes], context: "#{context}[:actual_internet_gateway_routes]") unless input[:actual_internet_gateway_routes].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class NetworkFirewallMissingExpectedRTViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallMissingExpectedRTViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:current_route_table], ::String, context: "#{context}[:current_route_table]")
        Hearth::Validator.validate!(input[:expected_route_table], ::String, context: "#{context}[:expected_route_table]")
      end
    end

    class NetworkFirewallMissingExpectedRoutesViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallMissingExpectedRoutesViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Validators::ExpectedRoutes.validate!(input[:expected_routes], context: "#{context}[:expected_routes]") unless input[:expected_routes].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class NetworkFirewallMissingFirewallViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallMissingFirewallViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:target_violation_reason], ::String, context: "#{context}[:target_violation_reason]")
      end
    end

    class NetworkFirewallMissingSubnetViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallMissingSubnetViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:target_violation_reason], ::String, context: "#{context}[:target_violation_reason]")
      end
    end

    class NetworkFirewallPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallPolicy, context: context)
        Hearth::Validator.validate!(input[:firewall_deployment_model], ::String, context: "#{context}[:firewall_deployment_model]")
      end
    end

    class NetworkFirewallPolicyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallPolicyDescription, context: context)
        Validators::StatelessRuleGroupList.validate!(input[:stateless_rule_groups], context: "#{context}[:stateless_rule_groups]") unless input[:stateless_rule_groups].nil?
        Validators::NetworkFirewallActionList.validate!(input[:stateless_default_actions], context: "#{context}[:stateless_default_actions]") unless input[:stateless_default_actions].nil?
        Validators::NetworkFirewallActionList.validate!(input[:stateless_fragment_default_actions], context: "#{context}[:stateless_fragment_default_actions]") unless input[:stateless_fragment_default_actions].nil?
        Validators::NetworkFirewallActionList.validate!(input[:stateless_custom_actions], context: "#{context}[:stateless_custom_actions]") unless input[:stateless_custom_actions].nil?
        Validators::StatefulRuleGroupList.validate!(input[:stateful_rule_groups], context: "#{context}[:stateful_rule_groups]") unless input[:stateful_rule_groups].nil?
      end
    end

    class NetworkFirewallPolicyModifiedViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallPolicyModifiedViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Validators::NetworkFirewallPolicyDescription.validate!(input[:current_policy_description], context: "#{context}[:current_policy_description]") unless input[:current_policy_description].nil?
        Validators::NetworkFirewallPolicyDescription.validate!(input[:expected_policy_description], context: "#{context}[:expected_policy_description]") unless input[:expected_policy_description].nil?
      end
    end

    class NetworkFirewallUnexpectedFirewallRoutesViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallUnexpectedFirewallRoutesViolation, context: context)
        Hearth::Validator.validate!(input[:firewall_subnet_id], ::String, context: "#{context}[:firewall_subnet_id]")
        Validators::Routes.validate!(input[:violating_routes], context: "#{context}[:violating_routes]") unless input[:violating_routes].nil?
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:firewall_endpoint], ::String, context: "#{context}[:firewall_endpoint]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class NetworkFirewallUnexpectedGatewayRoutesViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFirewallUnexpectedGatewayRoutesViolation, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Validators::Routes.validate!(input[:violating_routes], context: "#{context}[:violating_routes]") unless input[:violating_routes].nil?
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class OrderedRemediationActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RemediationActionWithOrder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartialMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartialMatch, context: context)
        Hearth::Validator.validate!(input[:reference], ::String, context: "#{context}[:reference]")
        Validators::TargetViolationReasons.validate!(input[:target_violation_reasons], context: "#{context}[:target_violation_reasons]") unless input[:target_violation_reasons].nil?
      end
    end

    class PartialMatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PartialMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Policy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Policy, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_update_token], ::String, context: "#{context}[:policy_update_token]")
        Validators::SecurityServicePolicyData.validate!(input[:security_service_policy_data], context: "#{context}[:security_service_policy_data]") unless input[:security_service_policy_data].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ResourceTypeList.validate!(input[:resource_type_list], context: "#{context}[:resource_type_list]") unless input[:resource_type_list].nil?
        Validators::ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Hearth::Validator.validate!(input[:exclude_resource_tags], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_resource_tags]")
        Hearth::Validator.validate!(input[:remediation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remediation_enabled]")
        Hearth::Validator.validate!(input[:delete_unused_fm_managed_resources], ::TrueClass, ::FalseClass, context: "#{context}[:delete_unused_fm_managed_resources]")
        Validators::CustomerPolicyScopeMap.validate!(input[:include_map], context: "#{context}[:include_map]") unless input[:include_map].nil?
        Validators::CustomerPolicyScopeMap.validate!(input[:exclude_map], context: "#{context}[:exclude_map]") unless input[:exclude_map].nil?
      end
    end

    class PolicyComplianceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyComplianceDetail, context: context)
        Hearth::Validator.validate!(input[:policy_owner], ::String, context: "#{context}[:policy_owner]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:member_account], ::String, context: "#{context}[:member_account]")
        Validators::ComplianceViolators.validate!(input[:violators], context: "#{context}[:violators]") unless input[:violators].nil?
        Hearth::Validator.validate!(input[:evaluation_limit_exceeded], ::TrueClass, ::FalseClass, context: "#{context}[:evaluation_limit_exceeded]")
        Hearth::Validator.validate!(input[:expired_at], ::Time, context: "#{context}[:expired_at]")
        Validators::IssueInfoMap.validate!(input[:issue_info_map], context: "#{context}[:issue_info_map]") unless input[:issue_info_map].nil?
      end
    end

    class PolicyComplianceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyComplianceStatus, context: context)
        Hearth::Validator.validate!(input[:policy_owner], ::String, context: "#{context}[:policy_owner]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:member_account], ::String, context: "#{context}[:member_account]")
        Validators::EvaluationResults.validate!(input[:evaluation_results], context: "#{context}[:evaluation_results]") unless input[:evaluation_results].nil?
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Validators::IssueInfoMap.validate!(input[:issue_info_map], context: "#{context}[:issue_info_map]") unless input[:issue_info_map].nil?
      end
    end

    class PolicyComplianceStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyComplianceStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyOption, context: context)
        Validators::NetworkFirewallPolicy.validate!(input[:network_firewall_policy], context: "#{context}[:network_firewall_policy]") unless input[:network_firewall_policy].nil?
        Validators::ThirdPartyFirewallPolicy.validate!(input[:third_party_firewall_policy], context: "#{context}[:third_party_firewall_policy]") unless input[:third_party_firewall_policy].nil?
      end
    end

    class PolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicySummary, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:security_service_type], ::String, context: "#{context}[:security_service_type]")
        Hearth::Validator.validate!(input[:remediation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remediation_enabled]")
        Hearth::Validator.validate!(input[:delete_unused_fm_managed_resources], ::TrueClass, ::FalseClass, context: "#{context}[:delete_unused_fm_managed_resources]")
      end
    end

    class PolicySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PossibleRemediationAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PossibleRemediationAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::OrderedRemediationActions.validate!(input[:ordered_remediation_actions], context: "#{context}[:ordered_remediation_actions]") unless input[:ordered_remediation_actions].nil?
        Hearth::Validator.validate!(input[:is_default_action], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_action]")
      end
    end

    class PossibleRemediationActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PossibleRemediationAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PossibleRemediationActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PossibleRemediationActions, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PossibleRemediationActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class PreviousAppsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AppsList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PreviousProtocolsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ProtocolsList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ProtocolsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProtocolsListData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtocolsListData, context: context)
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
        Hearth::Validator.validate!(input[:list_name], ::String, context: "#{context}[:list_name]")
        Hearth::Validator.validate!(input[:list_update_token], ::String, context: "#{context}[:list_update_token]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::ProtocolsList.validate!(input[:protocols_list], context: "#{context}[:protocols_list]") unless input[:protocols_list].nil?
        Validators::PreviousProtocolsList.validate!(input[:previous_protocols_list], context: "#{context}[:previous_protocols_list]") unless input[:previous_protocols_list].nil?
      end
    end

    class ProtocolsListDataSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtocolsListDataSummary, context: context)
        Hearth::Validator.validate!(input[:list_arn], ::String, context: "#{context}[:list_arn]")
        Hearth::Validator.validate!(input[:list_id], ::String, context: "#{context}[:list_id]")
        Hearth::Validator.validate!(input[:list_name], ::String, context: "#{context}[:list_name]")
        Validators::ProtocolsList.validate!(input[:protocols_list], context: "#{context}[:protocols_list]") unless input[:protocols_list].nil?
      end
    end

    class ProtocolsListsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProtocolsListDataSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAppsListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppsListInput, context: context)
        Validators::AppsListData.validate!(input[:apps_list], context: "#{context}[:apps_list]") unless input[:apps_list].nil?
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class PutAppsListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppsListOutput, context: context)
        Validators::AppsListData.validate!(input[:apps_list], context: "#{context}[:apps_list]") unless input[:apps_list].nil?
        Hearth::Validator.validate!(input[:apps_list_arn], ::String, context: "#{context}[:apps_list_arn]")
      end
    end

    class PutNotificationChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutNotificationChannelInput, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_role_name], ::String, context: "#{context}[:sns_role_name]")
      end
    end

    class PutNotificationChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutNotificationChannelOutput, context: context)
      end
    end

    class PutPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPolicyInput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class PutPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class PutProtocolsListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProtocolsListInput, context: context)
        Validators::ProtocolsListData.validate!(input[:protocols_list], context: "#{context}[:protocols_list]") unless input[:protocols_list].nil?
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class PutProtocolsListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProtocolsListOutput, context: context)
        Validators::ProtocolsListData.validate!(input[:protocols_list], context: "#{context}[:protocols_list]") unless input[:protocols_list].nil?
        Hearth::Validator.validate!(input[:protocols_list_arn], ::String, context: "#{context}[:protocols_list_arn]")
      end
    end

    class RemediationAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationAction, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EC2CreateRouteAction.validate!(input[:ec2_create_route_action], context: "#{context}[:ec2_create_route_action]") unless input[:ec2_create_route_action].nil?
        Validators::EC2ReplaceRouteAction.validate!(input[:ec2_replace_route_action], context: "#{context}[:ec2_replace_route_action]") unless input[:ec2_replace_route_action].nil?
        Validators::EC2DeleteRouteAction.validate!(input[:ec2_delete_route_action], context: "#{context}[:ec2_delete_route_action]") unless input[:ec2_delete_route_action].nil?
        Validators::EC2CopyRouteTableAction.validate!(input[:ec2_copy_route_table_action], context: "#{context}[:ec2_copy_route_table_action]") unless input[:ec2_copy_route_table_action].nil?
        Validators::EC2ReplaceRouteTableAssociationAction.validate!(input[:ec2_replace_route_table_association_action], context: "#{context}[:ec2_replace_route_table_association_action]") unless input[:ec2_replace_route_table_association_action].nil?
        Validators::EC2AssociateRouteTableAction.validate!(input[:ec2_associate_route_table_action], context: "#{context}[:ec2_associate_route_table_action]") unless input[:ec2_associate_route_table_action].nil?
        Validators::EC2CreateRouteTableAction.validate!(input[:ec2_create_route_table_action], context: "#{context}[:ec2_create_route_table_action]") unless input[:ec2_create_route_table_action].nil?
        Validators::FMSPolicyUpdateFirewallCreationConfigAction.validate!(input[:fms_policy_update_firewall_creation_config_action], context: "#{context}[:fms_policy_update_firewall_creation_config_action]") unless input[:fms_policy_update_firewall_creation_config_action].nil?
      end
    end

    class RemediationActionWithOrder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationActionWithOrder, context: context)
        Validators::RemediationAction.validate!(input[:remediation_action], context: "#{context}[:remediation_action]") unless input[:remediation_action].nil?
        Hearth::Validator.validate!(input[:order], ::Integer, context: "#{context}[:order]")
      end
    end

    class ResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceViolation, context: context)
        Validators::AwsVPCSecurityGroupViolation.validate!(input[:aws_vpc_security_group_violation], context: "#{context}[:aws_vpc_security_group_violation]") unless input[:aws_vpc_security_group_violation].nil?
        Validators::AwsEc2NetworkInterfaceViolation.validate!(input[:aws_ec2_network_interface_violation], context: "#{context}[:aws_ec2_network_interface_violation]") unless input[:aws_ec2_network_interface_violation].nil?
        Validators::AwsEc2InstanceViolation.validate!(input[:aws_ec2_instance_violation], context: "#{context}[:aws_ec2_instance_violation]") unless input[:aws_ec2_instance_violation].nil?
        Validators::NetworkFirewallMissingFirewallViolation.validate!(input[:network_firewall_missing_firewall_violation], context: "#{context}[:network_firewall_missing_firewall_violation]") unless input[:network_firewall_missing_firewall_violation].nil?
        Validators::NetworkFirewallMissingSubnetViolation.validate!(input[:network_firewall_missing_subnet_violation], context: "#{context}[:network_firewall_missing_subnet_violation]") unless input[:network_firewall_missing_subnet_violation].nil?
        Validators::NetworkFirewallMissingExpectedRTViolation.validate!(input[:network_firewall_missing_expected_rt_violation], context: "#{context}[:network_firewall_missing_expected_rt_violation]") unless input[:network_firewall_missing_expected_rt_violation].nil?
        Validators::NetworkFirewallPolicyModifiedViolation.validate!(input[:network_firewall_policy_modified_violation], context: "#{context}[:network_firewall_policy_modified_violation]") unless input[:network_firewall_policy_modified_violation].nil?
        Validators::NetworkFirewallInternetTrafficNotInspectedViolation.validate!(input[:network_firewall_internet_traffic_not_inspected_violation], context: "#{context}[:network_firewall_internet_traffic_not_inspected_violation]") unless input[:network_firewall_internet_traffic_not_inspected_violation].nil?
        Validators::NetworkFirewallInvalidRouteConfigurationViolation.validate!(input[:network_firewall_invalid_route_configuration_violation], context: "#{context}[:network_firewall_invalid_route_configuration_violation]") unless input[:network_firewall_invalid_route_configuration_violation].nil?
        Validators::NetworkFirewallBlackHoleRouteDetectedViolation.validate!(input[:network_firewall_black_hole_route_detected_violation], context: "#{context}[:network_firewall_black_hole_route_detected_violation]") unless input[:network_firewall_black_hole_route_detected_violation].nil?
        Validators::NetworkFirewallUnexpectedFirewallRoutesViolation.validate!(input[:network_firewall_unexpected_firewall_routes_violation], context: "#{context}[:network_firewall_unexpected_firewall_routes_violation]") unless input[:network_firewall_unexpected_firewall_routes_violation].nil?
        Validators::NetworkFirewallUnexpectedGatewayRoutesViolation.validate!(input[:network_firewall_unexpected_gateway_routes_violation], context: "#{context}[:network_firewall_unexpected_gateway_routes_violation]") unless input[:network_firewall_unexpected_gateway_routes_violation].nil?
        Validators::NetworkFirewallMissingExpectedRoutesViolation.validate!(input[:network_firewall_missing_expected_routes_violation], context: "#{context}[:network_firewall_missing_expected_routes_violation]") unless input[:network_firewall_missing_expected_routes_violation].nil?
        Validators::DnsRuleGroupPriorityConflictViolation.validate!(input[:dns_rule_group_priority_conflict_violation], context: "#{context}[:dns_rule_group_priority_conflict_violation]") unless input[:dns_rule_group_priority_conflict_violation].nil?
        Validators::DnsDuplicateRuleGroupViolation.validate!(input[:dns_duplicate_rule_group_violation], context: "#{context}[:dns_duplicate_rule_group_violation]") unless input[:dns_duplicate_rule_group_violation].nil?
        Validators::DnsRuleGroupLimitExceededViolation.validate!(input[:dns_rule_group_limit_exceeded_violation], context: "#{context}[:dns_rule_group_limit_exceeded_violation]") unless input[:dns_rule_group_limit_exceeded_violation].nil?
        Validators::PossibleRemediationActions.validate!(input[:possible_remediation_actions], context: "#{context}[:possible_remediation_actions]") unless input[:possible_remediation_actions].nil?
        Validators::FirewallSubnetIsOutOfScopeViolation.validate!(input[:firewall_subnet_is_out_of_scope_violation], context: "#{context}[:firewall_subnet_is_out_of_scope_violation]") unless input[:firewall_subnet_is_out_of_scope_violation].nil?
        Validators::RouteHasOutOfScopeEndpointViolation.validate!(input[:route_has_out_of_scope_endpoint_violation], context: "#{context}[:route_has_out_of_scope_endpoint_violation]") unless input[:route_has_out_of_scope_endpoint_violation].nil?
        Validators::ThirdPartyFirewallMissingFirewallViolation.validate!(input[:third_party_firewall_missing_firewall_violation], context: "#{context}[:third_party_firewall_missing_firewall_violation]") unless input[:third_party_firewall_missing_firewall_violation].nil?
        Validators::ThirdPartyFirewallMissingSubnetViolation.validate!(input[:third_party_firewall_missing_subnet_violation], context: "#{context}[:third_party_firewall_missing_subnet_violation]") unless input[:third_party_firewall_missing_subnet_violation].nil?
        Validators::ThirdPartyFirewallMissingExpectedRouteTableViolation.validate!(input[:third_party_firewall_missing_expected_route_table_violation], context: "#{context}[:third_party_firewall_missing_expected_route_table_violation]") unless input[:third_party_firewall_missing_expected_route_table_violation].nil?
        Validators::FirewallSubnetMissingVPCEndpointViolation.validate!(input[:firewall_subnet_missing_vpc_endpoint_violation], context: "#{context}[:firewall_subnet_missing_vpc_endpoint_violation]") unless input[:firewall_subnet_missing_vpc_endpoint_violation].nil?
      end
    end

    class ResourceViolations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceViolation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Route
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Route, context: context)
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class RouteHasOutOfScopeEndpointViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteHasOutOfScopeEndpointViolation, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:route_table_id], ::String, context: "#{context}[:route_table_id]")
        Validators::Routes.validate!(input[:violating_routes], context: "#{context}[:violating_routes]") unless input[:violating_routes].nil?
        Hearth::Validator.validate!(input[:subnet_availability_zone], ::String, context: "#{context}[:subnet_availability_zone]")
        Hearth::Validator.validate!(input[:subnet_availability_zone_id], ::String, context: "#{context}[:subnet_availability_zone_id]")
        Hearth::Validator.validate!(input[:current_firewall_subnet_route_table], ::String, context: "#{context}[:current_firewall_subnet_route_table]")
        Hearth::Validator.validate!(input[:firewall_subnet_id], ::String, context: "#{context}[:firewall_subnet_id]")
        Validators::Routes.validate!(input[:firewall_subnet_routes], context: "#{context}[:firewall_subnet_routes]") unless input[:firewall_subnet_routes].nil?
        Hearth::Validator.validate!(input[:internet_gateway_id], ::String, context: "#{context}[:internet_gateway_id]")
        Hearth::Validator.validate!(input[:current_internet_gateway_route_table], ::String, context: "#{context}[:current_internet_gateway_route_table]")
        Validators::Routes.validate!(input[:internet_gateway_routes], context: "#{context}[:internet_gateway_routes]") unless input[:internet_gateway_routes].nil?
      end
    end

    class Routes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Route.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupRemediationAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupRemediationAction, context: context)
        Hearth::Validator.validate!(input[:remediation_action_type], ::String, context: "#{context}[:remediation_action_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SecurityGroupRuleDescription.validate!(input[:remediation_result], context: "#{context}[:remediation_result]") unless input[:remediation_result].nil?
        Hearth::Validator.validate!(input[:is_default_action], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_action]")
      end
    end

    class SecurityGroupRemediationActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityGroupRemediationAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupRuleDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupRuleDescription, context: context)
        Hearth::Validator.validate!(input[:ipv4_range], ::String, context: "#{context}[:ipv4_range]")
        Hearth::Validator.validate!(input[:ipv6_range], ::String, context: "#{context}[:ipv6_range]")
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
      end
    end

    class SecurityServicePolicyData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityServicePolicyData, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:managed_service_data], ::String, context: "#{context}[:managed_service_data]")
        Validators::PolicyOption.validate!(input[:policy_option], context: "#{context}[:policy_option]") unless input[:policy_option].nil?
      end
    end

    class StatefulRuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatefulRuleGroup, context: context)
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class StatefulRuleGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatefulRuleGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatelessRuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessRuleGroup, context: context)
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class StatelessRuleGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatelessRuleGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetViolationReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThirdPartyFirewallFirewallPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThirdPartyFirewallFirewallPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThirdPartyFirewallFirewallPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyFirewallFirewallPolicy, context: context)
        Hearth::Validator.validate!(input[:firewall_policy_id], ::String, context: "#{context}[:firewall_policy_id]")
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
      end
    end

    class ThirdPartyFirewallMissingExpectedRouteTableViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyFirewallMissingExpectedRouteTableViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:current_route_table], ::String, context: "#{context}[:current_route_table]")
        Hearth::Validator.validate!(input[:expected_route_table], ::String, context: "#{context}[:expected_route_table]")
      end
    end

    class ThirdPartyFirewallMissingFirewallViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyFirewallMissingFirewallViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:target_violation_reason], ::String, context: "#{context}[:target_violation_reason]")
      end
    end

    class ThirdPartyFirewallMissingSubnetViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyFirewallMissingSubnetViolation, context: context)
        Hearth::Validator.validate!(input[:violation_target], ::String, context: "#{context}[:violation_target]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:target_violation_reason], ::String, context: "#{context}[:target_violation_reason]")
      end
    end

    class ThirdPartyFirewallPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartyFirewallPolicy, context: context)
        Hearth::Validator.validate!(input[:firewall_deployment_model], ::String, context: "#{context}[:firewall_deployment_model]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ViolationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViolationDetail, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:member_account], ::String, context: "#{context}[:member_account]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ResourceViolations.validate!(input[:resource_violations], context: "#{context}[:resource_violations]") unless input[:resource_violations].nil?
        Validators::TagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Hearth::Validator.validate!(input[:resource_description], ::String, context: "#{context}[:resource_description]")
      end
    end

  end
end
