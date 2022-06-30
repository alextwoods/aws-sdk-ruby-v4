# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::FMS
  module Params

    module ActionTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTarget, context: context)
        type = Types::ActionTarget.new
        type.resource_id = params[:resource_id]
        type.description = params[:description]
        type
      end
    end

    module App
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::App, context: context)
        type = Types::App.new
        type.app_name = params[:app_name]
        type.protocol = params[:protocol]
        type.port = params[:port]
        type
      end
    end

    module AppsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << App.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppsListData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppsListData, context: context)
        type = Types::AppsListData.new
        type.list_id = params[:list_id]
        type.list_name = params[:list_name]
        type.list_update_token = params[:list_update_token]
        type.create_time = params[:create_time]
        type.last_update_time = params[:last_update_time]
        type.apps_list = AppsList.build(params[:apps_list], context: "#{context}[:apps_list]") unless params[:apps_list].nil?
        type.previous_apps_list = PreviousAppsList.build(params[:previous_apps_list], context: "#{context}[:previous_apps_list]") unless params[:previous_apps_list].nil?
        type
      end
    end

    module AppsListDataSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppsListDataSummary, context: context)
        type = Types::AppsListDataSummary.new
        type.list_arn = params[:list_arn]
        type.list_id = params[:list_id]
        type.list_name = params[:list_name]
        type.apps_list = AppsList.build(params[:apps_list], context: "#{context}[:apps_list]") unless params[:apps_list].nil?
        type
      end
    end

    module AppsListsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppsListDataSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAdminAccountInput, context: context)
        type = Types::AssociateAdminAccountInput.new
        type.admin_account = params[:admin_account]
        type
      end
    end

    module AssociateAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAdminAccountOutput, context: context)
        type = Types::AssociateAdminAccountOutput.new
        type
      end
    end

    module AssociateThirdPartyFirewallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateThirdPartyFirewallInput, context: context)
        type = Types::AssociateThirdPartyFirewallInput.new
        type.third_party_firewall = params[:third_party_firewall]
        type
      end
    end

    module AssociateThirdPartyFirewallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateThirdPartyFirewallOutput, context: context)
        type = Types::AssociateThirdPartyFirewallOutput.new
        type.third_party_firewall_status = params[:third_party_firewall_status]
        type
      end
    end

    module AwsEc2InstanceViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2InstanceViolation, context: context)
        type = Types::AwsEc2InstanceViolation.new
        type.violation_target = params[:violation_target]
        type.aws_ec2_network_interface_violations = AwsEc2NetworkInterfaceViolations.build(params[:aws_ec2_network_interface_violations], context: "#{context}[:aws_ec2_network_interface_violations]") unless params[:aws_ec2_network_interface_violations].nil?
        type
      end
    end

    module AwsEc2NetworkInterfaceViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkInterfaceViolation, context: context)
        type = Types::AwsEc2NetworkInterfaceViolation.new
        type.violation_target = params[:violation_target]
        type.violating_security_groups = ResourceIdList.build(params[:violating_security_groups], context: "#{context}[:violating_security_groups]") unless params[:violating_security_groups].nil?
        type
      end
    end

    module AwsEc2NetworkInterfaceViolations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2NetworkInterfaceViolation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsVPCSecurityGroupViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsVPCSecurityGroupViolation, context: context)
        type = Types::AwsVPCSecurityGroupViolation.new
        type.violation_target = params[:violation_target]
        type.violation_target_description = params[:violation_target_description]
        type.partial_matches = PartialMatches.build(params[:partial_matches], context: "#{context}[:partial_matches]") unless params[:partial_matches].nil?
        type.possible_security_group_remediation_actions = SecurityGroupRemediationActions.build(params[:possible_security_group_remediation_actions], context: "#{context}[:possible_security_group_remediation_actions]") unless params[:possible_security_group_remediation_actions].nil?
        type
      end
    end

    module ComplianceViolator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceViolator, context: context)
        type = Types::ComplianceViolator.new
        type.resource_id = params[:resource_id]
        type.violation_reason = params[:violation_reason]
        type.resource_type = params[:resource_type]
        type.metadata = ComplianceViolatorMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module ComplianceViolatorMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ComplianceViolators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceViolator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomerPolicyScopeIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomerPolicyScopeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CustomerPolicyScopeIdList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module DeleteAppsListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppsListInput, context: context)
        type = Types::DeleteAppsListInput.new
        type.list_id = params[:list_id]
        type
      end
    end

    module DeleteAppsListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppsListOutput, context: context)
        type = Types::DeleteAppsListOutput.new
        type
      end
    end

    module DeleteNotificationChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationChannelInput, context: context)
        type = Types::DeleteNotificationChannelInput.new
        type
      end
    end

    module DeleteNotificationChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationChannelOutput, context: context)
        type = Types::DeleteNotificationChannelOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type.policy_id = params[:policy_id]
        type.delete_all_policy_resources = params[:delete_all_policy_resources]
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DeleteProtocolsListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProtocolsListInput, context: context)
        type = Types::DeleteProtocolsListInput.new
        type.list_id = params[:list_id]
        type
      end
    end

    module DeleteProtocolsListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProtocolsListOutput, context: context)
        type = Types::DeleteProtocolsListOutput.new
        type
      end
    end

    module DisassociateAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAdminAccountInput, context: context)
        type = Types::DisassociateAdminAccountInput.new
        type
      end
    end

    module DisassociateAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAdminAccountOutput, context: context)
        type = Types::DisassociateAdminAccountOutput.new
        type
      end
    end

    module DisassociateThirdPartyFirewallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateThirdPartyFirewallInput, context: context)
        type = Types::DisassociateThirdPartyFirewallInput.new
        type.third_party_firewall = params[:third_party_firewall]
        type
      end
    end

    module DisassociateThirdPartyFirewallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateThirdPartyFirewallOutput, context: context)
        type = Types::DisassociateThirdPartyFirewallOutput.new
        type.third_party_firewall_status = params[:third_party_firewall_status]
        type
      end
    end

    module DnsDuplicateRuleGroupViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsDuplicateRuleGroupViolation, context: context)
        type = Types::DnsDuplicateRuleGroupViolation.new
        type.violation_target = params[:violation_target]
        type.violation_target_description = params[:violation_target_description]
        type
      end
    end

    module DnsRuleGroupLimitExceededViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsRuleGroupLimitExceededViolation, context: context)
        type = Types::DnsRuleGroupLimitExceededViolation.new
        type.violation_target = params[:violation_target]
        type.violation_target_description = params[:violation_target_description]
        type.number_of_rule_groups_already_associated = params[:number_of_rule_groups_already_associated]
        type
      end
    end

    module DnsRuleGroupPriorities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DnsRuleGroupPriorityConflictViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsRuleGroupPriorityConflictViolation, context: context)
        type = Types::DnsRuleGroupPriorityConflictViolation.new
        type.violation_target = params[:violation_target]
        type.violation_target_description = params[:violation_target_description]
        type.conflicting_priority = params[:conflicting_priority]
        type.conflicting_policy_id = params[:conflicting_policy_id]
        type.unavailable_priorities = DnsRuleGroupPriorities.build(params[:unavailable_priorities], context: "#{context}[:unavailable_priorities]") unless params[:unavailable_priorities].nil?
        type
      end
    end

    module EC2AssociateRouteTableAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2AssociateRouteTableAction, context: context)
        type = Types::EC2AssociateRouteTableAction.new
        type.description = params[:description]
        type.route_table_id = ActionTarget.build(params[:route_table_id], context: "#{context}[:route_table_id]") unless params[:route_table_id].nil?
        type.subnet_id = ActionTarget.build(params[:subnet_id], context: "#{context}[:subnet_id]") unless params[:subnet_id].nil?
        type.gateway_id = ActionTarget.build(params[:gateway_id], context: "#{context}[:gateway_id]") unless params[:gateway_id].nil?
        type
      end
    end

    module EC2CopyRouteTableAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2CopyRouteTableAction, context: context)
        type = Types::EC2CopyRouteTableAction.new
        type.description = params[:description]
        type.vpc_id = ActionTarget.build(params[:vpc_id], context: "#{context}[:vpc_id]") unless params[:vpc_id].nil?
        type.route_table_id = ActionTarget.build(params[:route_table_id], context: "#{context}[:route_table_id]") unless params[:route_table_id].nil?
        type
      end
    end

    module EC2CreateRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2CreateRouteAction, context: context)
        type = Types::EC2CreateRouteAction.new
        type.description = params[:description]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destination_prefix_list_id = params[:destination_prefix_list_id]
        type.destination_ipv6_cidr_block = params[:destination_ipv6_cidr_block]
        type.vpc_endpoint_id = ActionTarget.build(params[:vpc_endpoint_id], context: "#{context}[:vpc_endpoint_id]") unless params[:vpc_endpoint_id].nil?
        type.gateway_id = ActionTarget.build(params[:gateway_id], context: "#{context}[:gateway_id]") unless params[:gateway_id].nil?
        type.route_table_id = ActionTarget.build(params[:route_table_id], context: "#{context}[:route_table_id]") unless params[:route_table_id].nil?
        type
      end
    end

    module EC2CreateRouteTableAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2CreateRouteTableAction, context: context)
        type = Types::EC2CreateRouteTableAction.new
        type.description = params[:description]
        type.vpc_id = ActionTarget.build(params[:vpc_id], context: "#{context}[:vpc_id]") unless params[:vpc_id].nil?
        type
      end
    end

    module EC2DeleteRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2DeleteRouteAction, context: context)
        type = Types::EC2DeleteRouteAction.new
        type.description = params[:description]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destination_prefix_list_id = params[:destination_prefix_list_id]
        type.destination_ipv6_cidr_block = params[:destination_ipv6_cidr_block]
        type.route_table_id = ActionTarget.build(params[:route_table_id], context: "#{context}[:route_table_id]") unless params[:route_table_id].nil?
        type
      end
    end

    module EC2ReplaceRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2ReplaceRouteAction, context: context)
        type = Types::EC2ReplaceRouteAction.new
        type.description = params[:description]
        type.destination_cidr_block = params[:destination_cidr_block]
        type.destination_prefix_list_id = params[:destination_prefix_list_id]
        type.destination_ipv6_cidr_block = params[:destination_ipv6_cidr_block]
        type.gateway_id = ActionTarget.build(params[:gateway_id], context: "#{context}[:gateway_id]") unless params[:gateway_id].nil?
        type.route_table_id = ActionTarget.build(params[:route_table_id], context: "#{context}[:route_table_id]") unless params[:route_table_id].nil?
        type
      end
    end

    module EC2ReplaceRouteTableAssociationAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2ReplaceRouteTableAssociationAction, context: context)
        type = Types::EC2ReplaceRouteTableAssociationAction.new
        type.description = params[:description]
        type.association_id = ActionTarget.build(params[:association_id], context: "#{context}[:association_id]") unless params[:association_id].nil?
        type.route_table_id = ActionTarget.build(params[:route_table_id], context: "#{context}[:route_table_id]") unless params[:route_table_id].nil?
        type
      end
    end

    module EvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResult, context: context)
        type = Types::EvaluationResult.new
        type.compliance_status = params[:compliance_status]
        type.violator_count = params[:violator_count]
        type.evaluation_limit_exceeded = params[:evaluation_limit_exceeded]
        type
      end
    end

    module EvaluationResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExpectedRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpectedRoute, context: context)
        type = Types::ExpectedRoute.new
        type.ip_v4_cidr = params[:ip_v4_cidr]
        type.prefix_list_id = params[:prefix_list_id]
        type.ip_v6_cidr = params[:ip_v6_cidr]
        type.contributing_subnets = ResourceIdList.build(params[:contributing_subnets], context: "#{context}[:contributing_subnets]") unless params[:contributing_subnets].nil?
        type.allowed_targets = LengthBoundedStringList.build(params[:allowed_targets], context: "#{context}[:allowed_targets]") unless params[:allowed_targets].nil?
        type.route_table_id = params[:route_table_id]
        type
      end
    end

    module ExpectedRoutes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExpectedRoute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FMSPolicyUpdateFirewallCreationConfigAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FMSPolicyUpdateFirewallCreationConfigAction, context: context)
        type = Types::FMSPolicyUpdateFirewallCreationConfigAction.new
        type.description = params[:description]
        type.firewall_creation_config = params[:firewall_creation_config]
        type
      end
    end

    module FirewallSubnetIsOutOfScopeViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallSubnetIsOutOfScopeViolation, context: context)
        type = Types::FirewallSubnetIsOutOfScopeViolation.new
        type.firewall_subnet_id = params[:firewall_subnet_id]
        type.vpc_id = params[:vpc_id]
        type.subnet_availability_zone = params[:subnet_availability_zone]
        type.subnet_availability_zone_id = params[:subnet_availability_zone_id]
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type
      end
    end

    module FirewallSubnetMissingVPCEndpointViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallSubnetMissingVPCEndpointViolation, context: context)
        type = Types::FirewallSubnetMissingVPCEndpointViolation.new
        type.firewall_subnet_id = params[:firewall_subnet_id]
        type.vpc_id = params[:vpc_id]
        type.subnet_availability_zone = params[:subnet_availability_zone]
        type.subnet_availability_zone_id = params[:subnet_availability_zone_id]
        type
      end
    end

    module GetAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdminAccountInput, context: context)
        type = Types::GetAdminAccountInput.new
        type
      end
    end

    module GetAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdminAccountOutput, context: context)
        type = Types::GetAdminAccountOutput.new
        type.admin_account = params[:admin_account]
        type.role_status = params[:role_status]
        type
      end
    end

    module GetAppsListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppsListInput, context: context)
        type = Types::GetAppsListInput.new
        type.list_id = params[:list_id]
        type.default_list = params[:default_list]
        type
      end
    end

    module GetAppsListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppsListOutput, context: context)
        type = Types::GetAppsListOutput.new
        type.apps_list = AppsListData.build(params[:apps_list], context: "#{context}[:apps_list]") unless params[:apps_list].nil?
        type.apps_list_arn = params[:apps_list_arn]
        type
      end
    end

    module GetComplianceDetailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceDetailInput, context: context)
        type = Types::GetComplianceDetailInput.new
        type.policy_id = params[:policy_id]
        type.member_account = params[:member_account]
        type
      end
    end

    module GetComplianceDetailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceDetailOutput, context: context)
        type = Types::GetComplianceDetailOutput.new
        type.policy_compliance_detail = PolicyComplianceDetail.build(params[:policy_compliance_detail], context: "#{context}[:policy_compliance_detail]") unless params[:policy_compliance_detail].nil?
        type
      end
    end

    module GetNotificationChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNotificationChannelInput, context: context)
        type = Types::GetNotificationChannelInput.new
        type
      end
    end

    module GetNotificationChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNotificationChannelOutput, context: context)
        type = Types::GetNotificationChannelOutput.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_role_name = params[:sns_role_name]
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module GetProtectionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProtectionStatusInput, context: context)
        type = Types::GetProtectionStatusInput.new
        type.policy_id = params[:policy_id]
        type.member_account_id = params[:member_account_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetProtectionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProtectionStatusOutput, context: context)
        type = Types::GetProtectionStatusOutput.new
        type.admin_account_id = params[:admin_account_id]
        type.service_type = params[:service_type]
        type.data = params[:data]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetProtocolsListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProtocolsListInput, context: context)
        type = Types::GetProtocolsListInput.new
        type.list_id = params[:list_id]
        type.default_list = params[:default_list]
        type
      end
    end

    module GetProtocolsListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProtocolsListOutput, context: context)
        type = Types::GetProtocolsListOutput.new
        type.protocols_list = ProtocolsListData.build(params[:protocols_list], context: "#{context}[:protocols_list]") unless params[:protocols_list].nil?
        type.protocols_list_arn = params[:protocols_list_arn]
        type
      end
    end

    module GetThirdPartyFirewallAssociationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThirdPartyFirewallAssociationStatusInput, context: context)
        type = Types::GetThirdPartyFirewallAssociationStatusInput.new
        type.third_party_firewall = params[:third_party_firewall]
        type
      end
    end

    module GetThirdPartyFirewallAssociationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThirdPartyFirewallAssociationStatusOutput, context: context)
        type = Types::GetThirdPartyFirewallAssociationStatusOutput.new
        type.third_party_firewall_status = params[:third_party_firewall_status]
        type.marketplace_onboarding_status = params[:marketplace_onboarding_status]
        type
      end
    end

    module GetViolationDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetViolationDetailsInput, context: context)
        type = Types::GetViolationDetailsInput.new
        type.policy_id = params[:policy_id]
        type.member_account = params[:member_account]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module GetViolationDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetViolationDetailsOutput, context: context)
        type = Types::GetViolationDetailsOutput.new
        type.violation_detail = ViolationDetail.build(params[:violation_detail], context: "#{context}[:violation_detail]") unless params[:violation_detail].nil?
        type
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTypeException, context: context)
        type = Types::InvalidTypeException.new
        type.message = params[:message]
        type
      end
    end

    module IssueInfoMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LengthBoundedStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAppsListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsListsInput, context: context)
        type = Types::ListAppsListsInput.new
        type.default_lists = params[:default_lists]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppsListsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsListsOutput, context: context)
        type = Types::ListAppsListsOutput.new
        type.apps_lists = AppsListsData.build(params[:apps_lists], context: "#{context}[:apps_lists]") unless params[:apps_lists].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComplianceStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComplianceStatusInput, context: context)
        type = Types::ListComplianceStatusInput.new
        type.policy_id = params[:policy_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListComplianceStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComplianceStatusOutput, context: context)
        type = Types::ListComplianceStatusOutput.new
        type.policy_compliance_status_list = PolicyComplianceStatusList.build(params[:policy_compliance_status_list], context: "#{context}[:policy_compliance_status_list]") unless params[:policy_compliance_status_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMemberAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMemberAccountsInput, context: context)
        type = Types::ListMemberAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMemberAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMemberAccountsOutput, context: context)
        type = Types::ListMemberAccountsOutput.new
        type.member_accounts = MemberAccounts.build(params[:member_accounts], context: "#{context}[:member_accounts]") unless params[:member_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesInput, context: context)
        type = Types::ListPoliciesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesOutput, context: context)
        type = Types::ListPoliciesOutput.new
        type.policy_list = PolicySummaryList.build(params[:policy_list], context: "#{context}[:policy_list]") unless params[:policy_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProtocolsListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtocolsListsInput, context: context)
        type = Types::ListProtocolsListsInput.new
        type.default_lists = params[:default_lists]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProtocolsListsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtocolsListsOutput, context: context)
        type = Types::ListProtocolsListsOutput.new
        type.protocols_lists = ProtocolsListsData.build(params[:protocols_lists], context: "#{context}[:protocols_lists]") unless params[:protocols_lists].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module ListThirdPartyFirewallFirewallPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThirdPartyFirewallFirewallPoliciesInput, context: context)
        type = Types::ListThirdPartyFirewallFirewallPoliciesInput.new
        type.third_party_firewall = params[:third_party_firewall]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThirdPartyFirewallFirewallPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThirdPartyFirewallFirewallPoliciesOutput, context: context)
        type = Types::ListThirdPartyFirewallFirewallPoliciesOutput.new
        type.third_party_firewall_firewall_policies = ThirdPartyFirewallFirewallPolicies.build(params[:third_party_firewall_firewall_policies], context: "#{context}[:third_party_firewall_firewall_policies]") unless params[:third_party_firewall_firewall_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MemberAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NetworkFirewallActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NetworkFirewallBlackHoleRouteDetectedViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallBlackHoleRouteDetectedViolation, context: context)
        type = Types::NetworkFirewallBlackHoleRouteDetectedViolation.new
        type.violation_target = params[:violation_target]
        type.route_table_id = params[:route_table_id]
        type.vpc_id = params[:vpc_id]
        type.violating_routes = Routes.build(params[:violating_routes], context: "#{context}[:violating_routes]") unless params[:violating_routes].nil?
        type
      end
    end

    module NetworkFirewallInternetTrafficNotInspectedViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallInternetTrafficNotInspectedViolation, context: context)
        type = Types::NetworkFirewallInternetTrafficNotInspectedViolation.new
        type.subnet_id = params[:subnet_id]
        type.subnet_availability_zone = params[:subnet_availability_zone]
        type.route_table_id = params[:route_table_id]
        type.violating_routes = Routes.build(params[:violating_routes], context: "#{context}[:violating_routes]") unless params[:violating_routes].nil?
        type.is_route_table_used_in_different_az = params[:is_route_table_used_in_different_az]
        type.current_firewall_subnet_route_table = params[:current_firewall_subnet_route_table]
        type.expected_firewall_endpoint = params[:expected_firewall_endpoint]
        type.firewall_subnet_id = params[:firewall_subnet_id]
        type.expected_firewall_subnet_routes = ExpectedRoutes.build(params[:expected_firewall_subnet_routes], context: "#{context}[:expected_firewall_subnet_routes]") unless params[:expected_firewall_subnet_routes].nil?
        type.actual_firewall_subnet_routes = Routes.build(params[:actual_firewall_subnet_routes], context: "#{context}[:actual_firewall_subnet_routes]") unless params[:actual_firewall_subnet_routes].nil?
        type.internet_gateway_id = params[:internet_gateway_id]
        type.current_internet_gateway_route_table = params[:current_internet_gateway_route_table]
        type.expected_internet_gateway_routes = ExpectedRoutes.build(params[:expected_internet_gateway_routes], context: "#{context}[:expected_internet_gateway_routes]") unless params[:expected_internet_gateway_routes].nil?
        type.actual_internet_gateway_routes = Routes.build(params[:actual_internet_gateway_routes], context: "#{context}[:actual_internet_gateway_routes]") unless params[:actual_internet_gateway_routes].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module NetworkFirewallInvalidRouteConfigurationViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallInvalidRouteConfigurationViolation, context: context)
        type = Types::NetworkFirewallInvalidRouteConfigurationViolation.new
        type.affected_subnets = ResourceIdList.build(params[:affected_subnets], context: "#{context}[:affected_subnets]") unless params[:affected_subnets].nil?
        type.route_table_id = params[:route_table_id]
        type.is_route_table_used_in_different_az = params[:is_route_table_used_in_different_az]
        type.violating_route = Route.build(params[:violating_route], context: "#{context}[:violating_route]") unless params[:violating_route].nil?
        type.current_firewall_subnet_route_table = params[:current_firewall_subnet_route_table]
        type.expected_firewall_endpoint = params[:expected_firewall_endpoint]
        type.actual_firewall_endpoint = params[:actual_firewall_endpoint]
        type.expected_firewall_subnet_id = params[:expected_firewall_subnet_id]
        type.actual_firewall_subnet_id = params[:actual_firewall_subnet_id]
        type.expected_firewall_subnet_routes = ExpectedRoutes.build(params[:expected_firewall_subnet_routes], context: "#{context}[:expected_firewall_subnet_routes]") unless params[:expected_firewall_subnet_routes].nil?
        type.actual_firewall_subnet_routes = Routes.build(params[:actual_firewall_subnet_routes], context: "#{context}[:actual_firewall_subnet_routes]") unless params[:actual_firewall_subnet_routes].nil?
        type.internet_gateway_id = params[:internet_gateway_id]
        type.current_internet_gateway_route_table = params[:current_internet_gateway_route_table]
        type.expected_internet_gateway_routes = ExpectedRoutes.build(params[:expected_internet_gateway_routes], context: "#{context}[:expected_internet_gateway_routes]") unless params[:expected_internet_gateway_routes].nil?
        type.actual_internet_gateway_routes = Routes.build(params[:actual_internet_gateway_routes], context: "#{context}[:actual_internet_gateway_routes]") unless params[:actual_internet_gateway_routes].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module NetworkFirewallMissingExpectedRTViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallMissingExpectedRTViolation, context: context)
        type = Types::NetworkFirewallMissingExpectedRTViolation.new
        type.violation_target = params[:violation_target]
        type.vpc = params[:vpc]
        type.availability_zone = params[:availability_zone]
        type.current_route_table = params[:current_route_table]
        type.expected_route_table = params[:expected_route_table]
        type
      end
    end

    module NetworkFirewallMissingExpectedRoutesViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallMissingExpectedRoutesViolation, context: context)
        type = Types::NetworkFirewallMissingExpectedRoutesViolation.new
        type.violation_target = params[:violation_target]
        type.expected_routes = ExpectedRoutes.build(params[:expected_routes], context: "#{context}[:expected_routes]") unless params[:expected_routes].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module NetworkFirewallMissingFirewallViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallMissingFirewallViolation, context: context)
        type = Types::NetworkFirewallMissingFirewallViolation.new
        type.violation_target = params[:violation_target]
        type.vpc = params[:vpc]
        type.availability_zone = params[:availability_zone]
        type.target_violation_reason = params[:target_violation_reason]
        type
      end
    end

    module NetworkFirewallMissingSubnetViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallMissingSubnetViolation, context: context)
        type = Types::NetworkFirewallMissingSubnetViolation.new
        type.violation_target = params[:violation_target]
        type.vpc = params[:vpc]
        type.availability_zone = params[:availability_zone]
        type.target_violation_reason = params[:target_violation_reason]
        type
      end
    end

    module NetworkFirewallPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallPolicy, context: context)
        type = Types::NetworkFirewallPolicy.new
        type.firewall_deployment_model = params[:firewall_deployment_model]
        type
      end
    end

    module NetworkFirewallPolicyDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallPolicyDescription, context: context)
        type = Types::NetworkFirewallPolicyDescription.new
        type.stateless_rule_groups = StatelessRuleGroupList.build(params[:stateless_rule_groups], context: "#{context}[:stateless_rule_groups]") unless params[:stateless_rule_groups].nil?
        type.stateless_default_actions = NetworkFirewallActionList.build(params[:stateless_default_actions], context: "#{context}[:stateless_default_actions]") unless params[:stateless_default_actions].nil?
        type.stateless_fragment_default_actions = NetworkFirewallActionList.build(params[:stateless_fragment_default_actions], context: "#{context}[:stateless_fragment_default_actions]") unless params[:stateless_fragment_default_actions].nil?
        type.stateless_custom_actions = NetworkFirewallActionList.build(params[:stateless_custom_actions], context: "#{context}[:stateless_custom_actions]") unless params[:stateless_custom_actions].nil?
        type.stateful_rule_groups = StatefulRuleGroupList.build(params[:stateful_rule_groups], context: "#{context}[:stateful_rule_groups]") unless params[:stateful_rule_groups].nil?
        type
      end
    end

    module NetworkFirewallPolicyModifiedViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallPolicyModifiedViolation, context: context)
        type = Types::NetworkFirewallPolicyModifiedViolation.new
        type.violation_target = params[:violation_target]
        type.current_policy_description = NetworkFirewallPolicyDescription.build(params[:current_policy_description], context: "#{context}[:current_policy_description]") unless params[:current_policy_description].nil?
        type.expected_policy_description = NetworkFirewallPolicyDescription.build(params[:expected_policy_description], context: "#{context}[:expected_policy_description]") unless params[:expected_policy_description].nil?
        type
      end
    end

    module NetworkFirewallUnexpectedFirewallRoutesViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallUnexpectedFirewallRoutesViolation, context: context)
        type = Types::NetworkFirewallUnexpectedFirewallRoutesViolation.new
        type.firewall_subnet_id = params[:firewall_subnet_id]
        type.violating_routes = Routes.build(params[:violating_routes], context: "#{context}[:violating_routes]") unless params[:violating_routes].nil?
        type.route_table_id = params[:route_table_id]
        type.firewall_endpoint = params[:firewall_endpoint]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module NetworkFirewallUnexpectedGatewayRoutesViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFirewallUnexpectedGatewayRoutesViolation, context: context)
        type = Types::NetworkFirewallUnexpectedGatewayRoutesViolation.new
        type.gateway_id = params[:gateway_id]
        type.violating_routes = Routes.build(params[:violating_routes], context: "#{context}[:violating_routes]") unless params[:violating_routes].nil?
        type.route_table_id = params[:route_table_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module OrderedRemediationActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemediationActionWithOrder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartialMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartialMatch, context: context)
        type = Types::PartialMatch.new
        type.reference = params[:reference]
        type.target_violation_reasons = TargetViolationReasons.build(params[:target_violation_reasons], context: "#{context}[:target_violation_reasons]") unless params[:target_violation_reasons].nil?
        type
      end
    end

    module PartialMatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartialMatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Policy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Policy, context: context)
        type = Types::Policy.new
        type.policy_id = params[:policy_id]
        type.policy_name = params[:policy_name]
        type.policy_update_token = params[:policy_update_token]
        type.security_service_policy_data = SecurityServicePolicyData.build(params[:security_service_policy_data], context: "#{context}[:security_service_policy_data]") unless params[:security_service_policy_data].nil?
        type.resource_type = params[:resource_type]
        type.resource_type_list = ResourceTypeList.build(params[:resource_type_list], context: "#{context}[:resource_type_list]") unless params[:resource_type_list].nil?
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.exclude_resource_tags = params[:exclude_resource_tags]
        type.remediation_enabled = params[:remediation_enabled]
        type.delete_unused_fm_managed_resources = params[:delete_unused_fm_managed_resources]
        type.include_map = CustomerPolicyScopeMap.build(params[:include_map], context: "#{context}[:include_map]") unless params[:include_map].nil?
        type.exclude_map = CustomerPolicyScopeMap.build(params[:exclude_map], context: "#{context}[:exclude_map]") unless params[:exclude_map].nil?
        type
      end
    end

    module PolicyComplianceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyComplianceDetail, context: context)
        type = Types::PolicyComplianceDetail.new
        type.policy_owner = params[:policy_owner]
        type.policy_id = params[:policy_id]
        type.member_account = params[:member_account]
        type.violators = ComplianceViolators.build(params[:violators], context: "#{context}[:violators]") unless params[:violators].nil?
        type.evaluation_limit_exceeded = params[:evaluation_limit_exceeded]
        type.expired_at = params[:expired_at]
        type.issue_info_map = IssueInfoMap.build(params[:issue_info_map], context: "#{context}[:issue_info_map]") unless params[:issue_info_map].nil?
        type
      end
    end

    module PolicyComplianceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyComplianceStatus, context: context)
        type = Types::PolicyComplianceStatus.new
        type.policy_owner = params[:policy_owner]
        type.policy_id = params[:policy_id]
        type.policy_name = params[:policy_name]
        type.member_account = params[:member_account]
        type.evaluation_results = EvaluationResults.build(params[:evaluation_results], context: "#{context}[:evaluation_results]") unless params[:evaluation_results].nil?
        type.last_updated = params[:last_updated]
        type.issue_info_map = IssueInfoMap.build(params[:issue_info_map], context: "#{context}[:issue_info_map]") unless params[:issue_info_map].nil?
        type
      end
    end

    module PolicyComplianceStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyComplianceStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyOption, context: context)
        type = Types::PolicyOption.new
        type.network_firewall_policy = NetworkFirewallPolicy.build(params[:network_firewall_policy], context: "#{context}[:network_firewall_policy]") unless params[:network_firewall_policy].nil?
        type.third_party_firewall_policy = ThirdPartyFirewallPolicy.build(params[:third_party_firewall_policy], context: "#{context}[:third_party_firewall_policy]") unless params[:third_party_firewall_policy].nil?
        type
      end
    end

    module PolicySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicySummary, context: context)
        type = Types::PolicySummary.new
        type.policy_arn = params[:policy_arn]
        type.policy_id = params[:policy_id]
        type.policy_name = params[:policy_name]
        type.resource_type = params[:resource_type]
        type.security_service_type = params[:security_service_type]
        type.remediation_enabled = params[:remediation_enabled]
        type.delete_unused_fm_managed_resources = params[:delete_unused_fm_managed_resources]
        type
      end
    end

    module PolicySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PossibleRemediationAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PossibleRemediationAction, context: context)
        type = Types::PossibleRemediationAction.new
        type.description = params[:description]
        type.ordered_remediation_actions = OrderedRemediationActions.build(params[:ordered_remediation_actions], context: "#{context}[:ordered_remediation_actions]") unless params[:ordered_remediation_actions].nil?
        type.is_default_action = params[:is_default_action]
        type
      end
    end

    module PossibleRemediationActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PossibleRemediationAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PossibleRemediationActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PossibleRemediationActions, context: context)
        type = Types::PossibleRemediationActions.new
        type.description = params[:description]
        type.actions = PossibleRemediationActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module PreviousAppsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AppsList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PreviousProtocolsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ProtocolsList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ProtocolsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProtocolsListData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtocolsListData, context: context)
        type = Types::ProtocolsListData.new
        type.list_id = params[:list_id]
        type.list_name = params[:list_name]
        type.list_update_token = params[:list_update_token]
        type.create_time = params[:create_time]
        type.last_update_time = params[:last_update_time]
        type.protocols_list = ProtocolsList.build(params[:protocols_list], context: "#{context}[:protocols_list]") unless params[:protocols_list].nil?
        type.previous_protocols_list = PreviousProtocolsList.build(params[:previous_protocols_list], context: "#{context}[:previous_protocols_list]") unless params[:previous_protocols_list].nil?
        type
      end
    end

    module ProtocolsListDataSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtocolsListDataSummary, context: context)
        type = Types::ProtocolsListDataSummary.new
        type.list_arn = params[:list_arn]
        type.list_id = params[:list_id]
        type.list_name = params[:list_name]
        type.protocols_list = ProtocolsList.build(params[:protocols_list], context: "#{context}[:protocols_list]") unless params[:protocols_list].nil?
        type
      end
    end

    module ProtocolsListsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProtocolsListDataSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAppsListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppsListInput, context: context)
        type = Types::PutAppsListInput.new
        type.apps_list = AppsListData.build(params[:apps_list], context: "#{context}[:apps_list]") unless params[:apps_list].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module PutAppsListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppsListOutput, context: context)
        type = Types::PutAppsListOutput.new
        type.apps_list = AppsListData.build(params[:apps_list], context: "#{context}[:apps_list]") unless params[:apps_list].nil?
        type.apps_list_arn = params[:apps_list_arn]
        type
      end
    end

    module PutNotificationChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutNotificationChannelInput, context: context)
        type = Types::PutNotificationChannelInput.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_role_name = params[:sns_role_name]
        type
      end
    end

    module PutNotificationChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutNotificationChannelOutput, context: context)
        type = Types::PutNotificationChannelOutput.new
        type
      end
    end

    module PutPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPolicyInput, context: context)
        type = Types::PutPolicyInput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module PutPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPolicyOutput, context: context)
        type = Types::PutPolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module PutProtocolsListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProtocolsListInput, context: context)
        type = Types::PutProtocolsListInput.new
        type.protocols_list = ProtocolsListData.build(params[:protocols_list], context: "#{context}[:protocols_list]") unless params[:protocols_list].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module PutProtocolsListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProtocolsListOutput, context: context)
        type = Types::PutProtocolsListOutput.new
        type.protocols_list = ProtocolsListData.build(params[:protocols_list], context: "#{context}[:protocols_list]") unless params[:protocols_list].nil?
        type.protocols_list_arn = params[:protocols_list_arn]
        type
      end
    end

    module RemediationAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationAction, context: context)
        type = Types::RemediationAction.new
        type.description = params[:description]
        type.ec2_create_route_action = EC2CreateRouteAction.build(params[:ec2_create_route_action], context: "#{context}[:ec2_create_route_action]") unless params[:ec2_create_route_action].nil?
        type.ec2_replace_route_action = EC2ReplaceRouteAction.build(params[:ec2_replace_route_action], context: "#{context}[:ec2_replace_route_action]") unless params[:ec2_replace_route_action].nil?
        type.ec2_delete_route_action = EC2DeleteRouteAction.build(params[:ec2_delete_route_action], context: "#{context}[:ec2_delete_route_action]") unless params[:ec2_delete_route_action].nil?
        type.ec2_copy_route_table_action = EC2CopyRouteTableAction.build(params[:ec2_copy_route_table_action], context: "#{context}[:ec2_copy_route_table_action]") unless params[:ec2_copy_route_table_action].nil?
        type.ec2_replace_route_table_association_action = EC2ReplaceRouteTableAssociationAction.build(params[:ec2_replace_route_table_association_action], context: "#{context}[:ec2_replace_route_table_association_action]") unless params[:ec2_replace_route_table_association_action].nil?
        type.ec2_associate_route_table_action = EC2AssociateRouteTableAction.build(params[:ec2_associate_route_table_action], context: "#{context}[:ec2_associate_route_table_action]") unless params[:ec2_associate_route_table_action].nil?
        type.ec2_create_route_table_action = EC2CreateRouteTableAction.build(params[:ec2_create_route_table_action], context: "#{context}[:ec2_create_route_table_action]") unless params[:ec2_create_route_table_action].nil?
        type.fms_policy_update_firewall_creation_config_action = FMSPolicyUpdateFirewallCreationConfigAction.build(params[:fms_policy_update_firewall_creation_config_action], context: "#{context}[:fms_policy_update_firewall_creation_config_action]") unless params[:fms_policy_update_firewall_creation_config_action].nil?
        type
      end
    end

    module RemediationActionWithOrder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationActionWithOrder, context: context)
        type = Types::RemediationActionWithOrder.new
        type.remediation_action = RemediationAction.build(params[:remediation_action], context: "#{context}[:remediation_action]") unless params[:remediation_action].nil?
        type.order = params[:order]
        type
      end
    end

    module ResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTag, context: context)
        type = Types::ResourceTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ResourceTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceViolation, context: context)
        type = Types::ResourceViolation.new
        type.aws_vpc_security_group_violation = AwsVPCSecurityGroupViolation.build(params[:aws_vpc_security_group_violation], context: "#{context}[:aws_vpc_security_group_violation]") unless params[:aws_vpc_security_group_violation].nil?
        type.aws_ec2_network_interface_violation = AwsEc2NetworkInterfaceViolation.build(params[:aws_ec2_network_interface_violation], context: "#{context}[:aws_ec2_network_interface_violation]") unless params[:aws_ec2_network_interface_violation].nil?
        type.aws_ec2_instance_violation = AwsEc2InstanceViolation.build(params[:aws_ec2_instance_violation], context: "#{context}[:aws_ec2_instance_violation]") unless params[:aws_ec2_instance_violation].nil?
        type.network_firewall_missing_firewall_violation = NetworkFirewallMissingFirewallViolation.build(params[:network_firewall_missing_firewall_violation], context: "#{context}[:network_firewall_missing_firewall_violation]") unless params[:network_firewall_missing_firewall_violation].nil?
        type.network_firewall_missing_subnet_violation = NetworkFirewallMissingSubnetViolation.build(params[:network_firewall_missing_subnet_violation], context: "#{context}[:network_firewall_missing_subnet_violation]") unless params[:network_firewall_missing_subnet_violation].nil?
        type.network_firewall_missing_expected_rt_violation = NetworkFirewallMissingExpectedRTViolation.build(params[:network_firewall_missing_expected_rt_violation], context: "#{context}[:network_firewall_missing_expected_rt_violation]") unless params[:network_firewall_missing_expected_rt_violation].nil?
        type.network_firewall_policy_modified_violation = NetworkFirewallPolicyModifiedViolation.build(params[:network_firewall_policy_modified_violation], context: "#{context}[:network_firewall_policy_modified_violation]") unless params[:network_firewall_policy_modified_violation].nil?
        type.network_firewall_internet_traffic_not_inspected_violation = NetworkFirewallInternetTrafficNotInspectedViolation.build(params[:network_firewall_internet_traffic_not_inspected_violation], context: "#{context}[:network_firewall_internet_traffic_not_inspected_violation]") unless params[:network_firewall_internet_traffic_not_inspected_violation].nil?
        type.network_firewall_invalid_route_configuration_violation = NetworkFirewallInvalidRouteConfigurationViolation.build(params[:network_firewall_invalid_route_configuration_violation], context: "#{context}[:network_firewall_invalid_route_configuration_violation]") unless params[:network_firewall_invalid_route_configuration_violation].nil?
        type.network_firewall_black_hole_route_detected_violation = NetworkFirewallBlackHoleRouteDetectedViolation.build(params[:network_firewall_black_hole_route_detected_violation], context: "#{context}[:network_firewall_black_hole_route_detected_violation]") unless params[:network_firewall_black_hole_route_detected_violation].nil?
        type.network_firewall_unexpected_firewall_routes_violation = NetworkFirewallUnexpectedFirewallRoutesViolation.build(params[:network_firewall_unexpected_firewall_routes_violation], context: "#{context}[:network_firewall_unexpected_firewall_routes_violation]") unless params[:network_firewall_unexpected_firewall_routes_violation].nil?
        type.network_firewall_unexpected_gateway_routes_violation = NetworkFirewallUnexpectedGatewayRoutesViolation.build(params[:network_firewall_unexpected_gateway_routes_violation], context: "#{context}[:network_firewall_unexpected_gateway_routes_violation]") unless params[:network_firewall_unexpected_gateway_routes_violation].nil?
        type.network_firewall_missing_expected_routes_violation = NetworkFirewallMissingExpectedRoutesViolation.build(params[:network_firewall_missing_expected_routes_violation], context: "#{context}[:network_firewall_missing_expected_routes_violation]") unless params[:network_firewall_missing_expected_routes_violation].nil?
        type.dns_rule_group_priority_conflict_violation = DnsRuleGroupPriorityConflictViolation.build(params[:dns_rule_group_priority_conflict_violation], context: "#{context}[:dns_rule_group_priority_conflict_violation]") unless params[:dns_rule_group_priority_conflict_violation].nil?
        type.dns_duplicate_rule_group_violation = DnsDuplicateRuleGroupViolation.build(params[:dns_duplicate_rule_group_violation], context: "#{context}[:dns_duplicate_rule_group_violation]") unless params[:dns_duplicate_rule_group_violation].nil?
        type.dns_rule_group_limit_exceeded_violation = DnsRuleGroupLimitExceededViolation.build(params[:dns_rule_group_limit_exceeded_violation], context: "#{context}[:dns_rule_group_limit_exceeded_violation]") unless params[:dns_rule_group_limit_exceeded_violation].nil?
        type.possible_remediation_actions = PossibleRemediationActions.build(params[:possible_remediation_actions], context: "#{context}[:possible_remediation_actions]") unless params[:possible_remediation_actions].nil?
        type.firewall_subnet_is_out_of_scope_violation = FirewallSubnetIsOutOfScopeViolation.build(params[:firewall_subnet_is_out_of_scope_violation], context: "#{context}[:firewall_subnet_is_out_of_scope_violation]") unless params[:firewall_subnet_is_out_of_scope_violation].nil?
        type.route_has_out_of_scope_endpoint_violation = RouteHasOutOfScopeEndpointViolation.build(params[:route_has_out_of_scope_endpoint_violation], context: "#{context}[:route_has_out_of_scope_endpoint_violation]") unless params[:route_has_out_of_scope_endpoint_violation].nil?
        type.third_party_firewall_missing_firewall_violation = ThirdPartyFirewallMissingFirewallViolation.build(params[:third_party_firewall_missing_firewall_violation], context: "#{context}[:third_party_firewall_missing_firewall_violation]") unless params[:third_party_firewall_missing_firewall_violation].nil?
        type.third_party_firewall_missing_subnet_violation = ThirdPartyFirewallMissingSubnetViolation.build(params[:third_party_firewall_missing_subnet_violation], context: "#{context}[:third_party_firewall_missing_subnet_violation]") unless params[:third_party_firewall_missing_subnet_violation].nil?
        type.third_party_firewall_missing_expected_route_table_violation = ThirdPartyFirewallMissingExpectedRouteTableViolation.build(params[:third_party_firewall_missing_expected_route_table_violation], context: "#{context}[:third_party_firewall_missing_expected_route_table_violation]") unless params[:third_party_firewall_missing_expected_route_table_violation].nil?
        type.firewall_subnet_missing_vpc_endpoint_violation = FirewallSubnetMissingVPCEndpointViolation.build(params[:firewall_subnet_missing_vpc_endpoint_violation], context: "#{context}[:firewall_subnet_missing_vpc_endpoint_violation]") unless params[:firewall_subnet_missing_vpc_endpoint_violation].nil?
        type
      end
    end

    module ResourceViolations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceViolation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Route
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Route, context: context)
        type = Types::Route.new
        type.destination_type = params[:destination_type]
        type.target_type = params[:target_type]
        type.destination = params[:destination]
        type.target = params[:target]
        type
      end
    end

    module RouteHasOutOfScopeEndpointViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteHasOutOfScopeEndpointViolation, context: context)
        type = Types::RouteHasOutOfScopeEndpointViolation.new
        type.subnet_id = params[:subnet_id]
        type.vpc_id = params[:vpc_id]
        type.route_table_id = params[:route_table_id]
        type.violating_routes = Routes.build(params[:violating_routes], context: "#{context}[:violating_routes]") unless params[:violating_routes].nil?
        type.subnet_availability_zone = params[:subnet_availability_zone]
        type.subnet_availability_zone_id = params[:subnet_availability_zone_id]
        type.current_firewall_subnet_route_table = params[:current_firewall_subnet_route_table]
        type.firewall_subnet_id = params[:firewall_subnet_id]
        type.firewall_subnet_routes = Routes.build(params[:firewall_subnet_routes], context: "#{context}[:firewall_subnet_routes]") unless params[:firewall_subnet_routes].nil?
        type.internet_gateway_id = params[:internet_gateway_id]
        type.current_internet_gateway_route_table = params[:current_internet_gateway_route_table]
        type.internet_gateway_routes = Routes.build(params[:internet_gateway_routes], context: "#{context}[:internet_gateway_routes]") unless params[:internet_gateway_routes].nil?
        type
      end
    end

    module Routes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Route.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupRemediationAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupRemediationAction, context: context)
        type = Types::SecurityGroupRemediationAction.new
        type.remediation_action_type = params[:remediation_action_type]
        type.description = params[:description]
        type.remediation_result = SecurityGroupRuleDescription.build(params[:remediation_result], context: "#{context}[:remediation_result]") unless params[:remediation_result].nil?
        type.is_default_action = params[:is_default_action]
        type
      end
    end

    module SecurityGroupRemediationActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroupRemediationAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupRuleDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupRuleDescription, context: context)
        type = Types::SecurityGroupRuleDescription.new
        type.ipv4_range = params[:ipv4_range]
        type.ipv6_range = params[:ipv6_range]
        type.prefix_list_id = params[:prefix_list_id]
        type.protocol = params[:protocol]
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type
      end
    end

    module SecurityServicePolicyData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityServicePolicyData, context: context)
        type = Types::SecurityServicePolicyData.new
        type.type = params[:type]
        type.managed_service_data = params[:managed_service_data]
        type.policy_option = PolicyOption.build(params[:policy_option], context: "#{context}[:policy_option]") unless params[:policy_option].nil?
        type
      end
    end

    module StatefulRuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatefulRuleGroup, context: context)
        type = Types::StatefulRuleGroup.new
        type.rule_group_name = params[:rule_group_name]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module StatefulRuleGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatefulRuleGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatelessRuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessRuleGroup, context: context)
        type = Types::StatelessRuleGroup.new
        type.rule_group_name = params[:rule_group_name]
        type.resource_id = params[:resource_id]
        type.priority = params[:priority]
        type
      end
    end

    module StatelessRuleGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatelessRuleGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TargetViolationReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThirdPartyFirewallFirewallPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThirdPartyFirewallFirewallPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThirdPartyFirewallFirewallPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyFirewallFirewallPolicy, context: context)
        type = Types::ThirdPartyFirewallFirewallPolicy.new
        type.firewall_policy_id = params[:firewall_policy_id]
        type.firewall_policy_name = params[:firewall_policy_name]
        type
      end
    end

    module ThirdPartyFirewallMissingExpectedRouteTableViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyFirewallMissingExpectedRouteTableViolation, context: context)
        type = Types::ThirdPartyFirewallMissingExpectedRouteTableViolation.new
        type.violation_target = params[:violation_target]
        type.vpc = params[:vpc]
        type.availability_zone = params[:availability_zone]
        type.current_route_table = params[:current_route_table]
        type.expected_route_table = params[:expected_route_table]
        type
      end
    end

    module ThirdPartyFirewallMissingFirewallViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyFirewallMissingFirewallViolation, context: context)
        type = Types::ThirdPartyFirewallMissingFirewallViolation.new
        type.violation_target = params[:violation_target]
        type.vpc = params[:vpc]
        type.availability_zone = params[:availability_zone]
        type.target_violation_reason = params[:target_violation_reason]
        type
      end
    end

    module ThirdPartyFirewallMissingSubnetViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyFirewallMissingSubnetViolation, context: context)
        type = Types::ThirdPartyFirewallMissingSubnetViolation.new
        type.violation_target = params[:violation_target]
        type.vpc = params[:vpc]
        type.availability_zone = params[:availability_zone]
        type.target_violation_reason = params[:target_violation_reason]
        type
      end
    end

    module ThirdPartyFirewallPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartyFirewallPolicy, context: context)
        type = Types::ThirdPartyFirewallPolicy.new
        type.firewall_deployment_model = params[:firewall_deployment_model]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module ViolationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViolationDetail, context: context)
        type = Types::ViolationDetail.new
        type.policy_id = params[:policy_id]
        type.member_account = params[:member_account]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.resource_violations = ResourceViolations.build(params[:resource_violations], context: "#{context}[:resource_violations]") unless params[:resource_violations].nil?
        type.resource_tags = TagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.resource_description = params[:resource_description]
        type
      end
    end

  end
end
