# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::FMS
  module Parsers

    # Operation Parser for AssociateAdminAccount
    class AssociateAdminAccount
      def self.parse(http_resp)
        data = Types::AssociateAdminAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateThirdPartyFirewall
    class AssociateThirdPartyFirewall
      def self.parse(http_resp)
        data = Types::AssociateThirdPartyFirewallOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.third_party_firewall_status = map['ThirdPartyFirewallStatus']
        data
      end
    end

    # Operation Parser for DeleteAppsList
    class DeleteAppsList
      def self.parse(http_resp)
        data = Types::DeleteAppsListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteNotificationChannel
    class DeleteNotificationChannel
      def self.parse(http_resp)
        data = Types::DeleteNotificationChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProtocolsList
    class DeleteProtocolsList
      def self.parse(http_resp)
        data = Types::DeleteProtocolsListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateAdminAccount
    class DisassociateAdminAccount
      def self.parse(http_resp)
        data = Types::DisassociateAdminAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateThirdPartyFirewall
    class DisassociateThirdPartyFirewall
      def self.parse(http_resp)
        data = Types::DisassociateThirdPartyFirewallOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.third_party_firewall_status = map['ThirdPartyFirewallStatus']
        data
      end
    end

    # Operation Parser for GetAdminAccount
    class GetAdminAccount
      def self.parse(http_resp)
        data = Types::GetAdminAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.admin_account = map['AdminAccount']
        data.role_status = map['RoleStatus']
        data
      end
    end

    # Operation Parser for GetAppsList
    class GetAppsList
      def self.parse(http_resp)
        data = Types::GetAppsListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.apps_list = (Parsers::AppsListData.parse(map['AppsList']) unless map['AppsList'].nil?)
        data.apps_list_arn = map['AppsListArn']
        data
      end
    end

    class AppsListData
      def self.parse(map)
        data = Types::AppsListData.new
        data.list_id = map['ListId']
        data.list_name = map['ListName']
        data.list_update_token = map['ListUpdateToken']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        data.apps_list = (Parsers::AppsList.parse(map['AppsList']) unless map['AppsList'].nil?)
        data.previous_apps_list = (Parsers::PreviousAppsList.parse(map['PreviousAppsList']) unless map['PreviousAppsList'].nil?)
        return data
      end
    end

    class PreviousAppsList
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AppsList.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppsList
      def self.parse(list)
        list.map do |value|
          Parsers::App.parse(value) unless value.nil?
        end
      end
    end

    class App
      def self.parse(map)
        data = Types::App.new
        data.app_name = map['AppName']
        data.protocol = map['Protocol']
        data.port = map['Port']
        return data
      end
    end

    # Operation Parser for GetComplianceDetail
    class GetComplianceDetail
      def self.parse(http_resp)
        data = Types::GetComplianceDetailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_compliance_detail = (Parsers::PolicyComplianceDetail.parse(map['PolicyComplianceDetail']) unless map['PolicyComplianceDetail'].nil?)
        data
      end
    end

    class PolicyComplianceDetail
      def self.parse(map)
        data = Types::PolicyComplianceDetail.new
        data.policy_owner = map['PolicyOwner']
        data.policy_id = map['PolicyId']
        data.member_account = map['MemberAccount']
        data.violators = (Parsers::ComplianceViolators.parse(map['Violators']) unless map['Violators'].nil?)
        data.evaluation_limit_exceeded = map['EvaluationLimitExceeded']
        data.expired_at = Time.at(map['ExpiredAt'].to_i) if map['ExpiredAt']
        data.issue_info_map = (Parsers::IssueInfoMap.parse(map['IssueInfoMap']) unless map['IssueInfoMap'].nil?)
        return data
      end
    end

    class IssueInfoMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComplianceViolators
      def self.parse(list)
        list.map do |value|
          Parsers::ComplianceViolator.parse(value) unless value.nil?
        end
      end
    end

    class ComplianceViolator
      def self.parse(map)
        data = Types::ComplianceViolator.new
        data.resource_id = map['ResourceId']
        data.violation_reason = map['ViolationReason']
        data.resource_type = map['ResourceType']
        data.metadata = (Parsers::ComplianceViolatorMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        return data
      end
    end

    class ComplianceViolatorMetadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetNotificationChannel
    class GetNotificationChannel
      def self.parse(http_resp)
        data = Types::GetNotificationChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sns_topic_arn = map['SnsTopicArn']
        data.sns_role_name = map['SnsRoleName']
        data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = (Parsers::Policy.parse(map['Policy']) unless map['Policy'].nil?)
        data.policy_arn = map['PolicyArn']
        data
      end
    end

    class Policy
      def self.parse(map)
        data = Types::Policy.new
        data.policy_id = map['PolicyId']
        data.policy_name = map['PolicyName']
        data.policy_update_token = map['PolicyUpdateToken']
        data.security_service_policy_data = (Parsers::SecurityServicePolicyData.parse(map['SecurityServicePolicyData']) unless map['SecurityServicePolicyData'].nil?)
        data.resource_type = map['ResourceType']
        data.resource_type_list = (Parsers::ResourceTypeList.parse(map['ResourceTypeList']) unless map['ResourceTypeList'].nil?)
        data.resource_tags = (Parsers::ResourceTags.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data.exclude_resource_tags = map['ExcludeResourceTags']
        data.remediation_enabled = map['RemediationEnabled']
        data.delete_unused_fm_managed_resources = map['DeleteUnusedFMManagedResources']
        data.include_map = (Parsers::CustomerPolicyScopeMap.parse(map['IncludeMap']) unless map['IncludeMap'].nil?)
        data.exclude_map = (Parsers::CustomerPolicyScopeMap.parse(map['ExcludeMap']) unless map['ExcludeMap'].nil?)
        return data
      end
    end

    class CustomerPolicyScopeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::CustomerPolicyScopeIdList.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomerPolicyScopeIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceTags
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceTag.parse(value) unless value.nil?
        end
      end
    end

    class ResourceTag
      def self.parse(map)
        data = Types::ResourceTag.new
        data.key = map['Key']
        data.value = map['Value']
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

    class SecurityServicePolicyData
      def self.parse(map)
        data = Types::SecurityServicePolicyData.new
        data.type = map['Type']
        data.managed_service_data = map['ManagedServiceData']
        data.policy_option = (Parsers::PolicyOption.parse(map['PolicyOption']) unless map['PolicyOption'].nil?)
        return data
      end
    end

    class PolicyOption
      def self.parse(map)
        data = Types::PolicyOption.new
        data.network_firewall_policy = (Parsers::NetworkFirewallPolicy.parse(map['NetworkFirewallPolicy']) unless map['NetworkFirewallPolicy'].nil?)
        data.third_party_firewall_policy = (Parsers::ThirdPartyFirewallPolicy.parse(map['ThirdPartyFirewallPolicy']) unless map['ThirdPartyFirewallPolicy'].nil?)
        return data
      end
    end

    class ThirdPartyFirewallPolicy
      def self.parse(map)
        data = Types::ThirdPartyFirewallPolicy.new
        data.firewall_deployment_model = map['FirewallDeploymentModel']
        return data
      end
    end

    class NetworkFirewallPolicy
      def self.parse(map)
        data = Types::NetworkFirewallPolicy.new
        data.firewall_deployment_model = map['FirewallDeploymentModel']
        return data
      end
    end

    # Error Parser for InvalidTypeException
    class InvalidTypeException
      def self.parse(http_resp)
        data = Types::InvalidTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetProtectionStatus
    class GetProtectionStatus
      def self.parse(http_resp)
        data = Types::GetProtectionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.admin_account_id = map['AdminAccountId']
        data.service_type = map['ServiceType']
        data.data = map['Data']
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetProtocolsList
    class GetProtocolsList
      def self.parse(http_resp)
        data = Types::GetProtocolsListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protocols_list = (Parsers::ProtocolsListData.parse(map['ProtocolsList']) unless map['ProtocolsList'].nil?)
        data.protocols_list_arn = map['ProtocolsListArn']
        data
      end
    end

    class ProtocolsListData
      def self.parse(map)
        data = Types::ProtocolsListData.new
        data.list_id = map['ListId']
        data.list_name = map['ListName']
        data.list_update_token = map['ListUpdateToken']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        data.protocols_list = (Parsers::ProtocolsList.parse(map['ProtocolsList']) unless map['ProtocolsList'].nil?)
        data.previous_protocols_list = (Parsers::PreviousProtocolsList.parse(map['PreviousProtocolsList']) unless map['PreviousProtocolsList'].nil?)
        return data
      end
    end

    class PreviousProtocolsList
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ProtocolsList.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProtocolsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetThirdPartyFirewallAssociationStatus
    class GetThirdPartyFirewallAssociationStatus
      def self.parse(http_resp)
        data = Types::GetThirdPartyFirewallAssociationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.third_party_firewall_status = map['ThirdPartyFirewallStatus']
        data.marketplace_onboarding_status = map['MarketplaceOnboardingStatus']
        data
      end
    end

    # Operation Parser for GetViolationDetails
    class GetViolationDetails
      def self.parse(http_resp)
        data = Types::GetViolationDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.violation_detail = (Parsers::ViolationDetail.parse(map['ViolationDetail']) unless map['ViolationDetail'].nil?)
        data
      end
    end

    class ViolationDetail
      def self.parse(map)
        data = Types::ViolationDetail.new
        data.policy_id = map['PolicyId']
        data.member_account = map['MemberAccount']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.resource_violations = (Parsers::ResourceViolations.parse(map['ResourceViolations']) unless map['ResourceViolations'].nil?)
        data.resource_tags = (Parsers::TagList.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data.resource_description = map['ResourceDescription']
        return data
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

    class ResourceViolations
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceViolation.parse(value) unless value.nil?
        end
      end
    end

    class ResourceViolation
      def self.parse(map)
        data = Types::ResourceViolation.new
        data.aws_vpc_security_group_violation = (Parsers::AwsVPCSecurityGroupViolation.parse(map['AwsVPCSecurityGroupViolation']) unless map['AwsVPCSecurityGroupViolation'].nil?)
        data.aws_ec2_network_interface_violation = (Parsers::AwsEc2NetworkInterfaceViolation.parse(map['AwsEc2NetworkInterfaceViolation']) unless map['AwsEc2NetworkInterfaceViolation'].nil?)
        data.aws_ec2_instance_violation = (Parsers::AwsEc2InstanceViolation.parse(map['AwsEc2InstanceViolation']) unless map['AwsEc2InstanceViolation'].nil?)
        data.network_firewall_missing_firewall_violation = (Parsers::NetworkFirewallMissingFirewallViolation.parse(map['NetworkFirewallMissingFirewallViolation']) unless map['NetworkFirewallMissingFirewallViolation'].nil?)
        data.network_firewall_missing_subnet_violation = (Parsers::NetworkFirewallMissingSubnetViolation.parse(map['NetworkFirewallMissingSubnetViolation']) unless map['NetworkFirewallMissingSubnetViolation'].nil?)
        data.network_firewall_missing_expected_rt_violation = (Parsers::NetworkFirewallMissingExpectedRTViolation.parse(map['NetworkFirewallMissingExpectedRTViolation']) unless map['NetworkFirewallMissingExpectedRTViolation'].nil?)
        data.network_firewall_policy_modified_violation = (Parsers::NetworkFirewallPolicyModifiedViolation.parse(map['NetworkFirewallPolicyModifiedViolation']) unless map['NetworkFirewallPolicyModifiedViolation'].nil?)
        data.network_firewall_internet_traffic_not_inspected_violation = (Parsers::NetworkFirewallInternetTrafficNotInspectedViolation.parse(map['NetworkFirewallInternetTrafficNotInspectedViolation']) unless map['NetworkFirewallInternetTrafficNotInspectedViolation'].nil?)
        data.network_firewall_invalid_route_configuration_violation = (Parsers::NetworkFirewallInvalidRouteConfigurationViolation.parse(map['NetworkFirewallInvalidRouteConfigurationViolation']) unless map['NetworkFirewallInvalidRouteConfigurationViolation'].nil?)
        data.network_firewall_black_hole_route_detected_violation = (Parsers::NetworkFirewallBlackHoleRouteDetectedViolation.parse(map['NetworkFirewallBlackHoleRouteDetectedViolation']) unless map['NetworkFirewallBlackHoleRouteDetectedViolation'].nil?)
        data.network_firewall_unexpected_firewall_routes_violation = (Parsers::NetworkFirewallUnexpectedFirewallRoutesViolation.parse(map['NetworkFirewallUnexpectedFirewallRoutesViolation']) unless map['NetworkFirewallUnexpectedFirewallRoutesViolation'].nil?)
        data.network_firewall_unexpected_gateway_routes_violation = (Parsers::NetworkFirewallUnexpectedGatewayRoutesViolation.parse(map['NetworkFirewallUnexpectedGatewayRoutesViolation']) unless map['NetworkFirewallUnexpectedGatewayRoutesViolation'].nil?)
        data.network_firewall_missing_expected_routes_violation = (Parsers::NetworkFirewallMissingExpectedRoutesViolation.parse(map['NetworkFirewallMissingExpectedRoutesViolation']) unless map['NetworkFirewallMissingExpectedRoutesViolation'].nil?)
        data.dns_rule_group_priority_conflict_violation = (Parsers::DnsRuleGroupPriorityConflictViolation.parse(map['DnsRuleGroupPriorityConflictViolation']) unless map['DnsRuleGroupPriorityConflictViolation'].nil?)
        data.dns_duplicate_rule_group_violation = (Parsers::DnsDuplicateRuleGroupViolation.parse(map['DnsDuplicateRuleGroupViolation']) unless map['DnsDuplicateRuleGroupViolation'].nil?)
        data.dns_rule_group_limit_exceeded_violation = (Parsers::DnsRuleGroupLimitExceededViolation.parse(map['DnsRuleGroupLimitExceededViolation']) unless map['DnsRuleGroupLimitExceededViolation'].nil?)
        data.possible_remediation_actions = (Parsers::PossibleRemediationActions.parse(map['PossibleRemediationActions']) unless map['PossibleRemediationActions'].nil?)
        data.firewall_subnet_is_out_of_scope_violation = (Parsers::FirewallSubnetIsOutOfScopeViolation.parse(map['FirewallSubnetIsOutOfScopeViolation']) unless map['FirewallSubnetIsOutOfScopeViolation'].nil?)
        data.route_has_out_of_scope_endpoint_violation = (Parsers::RouteHasOutOfScopeEndpointViolation.parse(map['RouteHasOutOfScopeEndpointViolation']) unless map['RouteHasOutOfScopeEndpointViolation'].nil?)
        data.third_party_firewall_missing_firewall_violation = (Parsers::ThirdPartyFirewallMissingFirewallViolation.parse(map['ThirdPartyFirewallMissingFirewallViolation']) unless map['ThirdPartyFirewallMissingFirewallViolation'].nil?)
        data.third_party_firewall_missing_subnet_violation = (Parsers::ThirdPartyFirewallMissingSubnetViolation.parse(map['ThirdPartyFirewallMissingSubnetViolation']) unless map['ThirdPartyFirewallMissingSubnetViolation'].nil?)
        data.third_party_firewall_missing_expected_route_table_violation = (Parsers::ThirdPartyFirewallMissingExpectedRouteTableViolation.parse(map['ThirdPartyFirewallMissingExpectedRouteTableViolation']) unless map['ThirdPartyFirewallMissingExpectedRouteTableViolation'].nil?)
        data.firewall_subnet_missing_vpc_endpoint_violation = (Parsers::FirewallSubnetMissingVPCEndpointViolation.parse(map['FirewallSubnetMissingVPCEndpointViolation']) unless map['FirewallSubnetMissingVPCEndpointViolation'].nil?)
        return data
      end
    end

    class FirewallSubnetMissingVPCEndpointViolation
      def self.parse(map)
        data = Types::FirewallSubnetMissingVPCEndpointViolation.new
        data.firewall_subnet_id = map['FirewallSubnetId']
        data.vpc_id = map['VpcId']
        data.subnet_availability_zone = map['SubnetAvailabilityZone']
        data.subnet_availability_zone_id = map['SubnetAvailabilityZoneId']
        return data
      end
    end

    class ThirdPartyFirewallMissingExpectedRouteTableViolation
      def self.parse(map)
        data = Types::ThirdPartyFirewallMissingExpectedRouteTableViolation.new
        data.violation_target = map['ViolationTarget']
        data.vpc = map['VPC']
        data.availability_zone = map['AvailabilityZone']
        data.current_route_table = map['CurrentRouteTable']
        data.expected_route_table = map['ExpectedRouteTable']
        return data
      end
    end

    class ThirdPartyFirewallMissingSubnetViolation
      def self.parse(map)
        data = Types::ThirdPartyFirewallMissingSubnetViolation.new
        data.violation_target = map['ViolationTarget']
        data.vpc = map['VPC']
        data.availability_zone = map['AvailabilityZone']
        data.target_violation_reason = map['TargetViolationReason']
        return data
      end
    end

    class ThirdPartyFirewallMissingFirewallViolation
      def self.parse(map)
        data = Types::ThirdPartyFirewallMissingFirewallViolation.new
        data.violation_target = map['ViolationTarget']
        data.vpc = map['VPC']
        data.availability_zone = map['AvailabilityZone']
        data.target_violation_reason = map['TargetViolationReason']
        return data
      end
    end

    class RouteHasOutOfScopeEndpointViolation
      def self.parse(map)
        data = Types::RouteHasOutOfScopeEndpointViolation.new
        data.subnet_id = map['SubnetId']
        data.vpc_id = map['VpcId']
        data.route_table_id = map['RouteTableId']
        data.violating_routes = (Parsers::Routes.parse(map['ViolatingRoutes']) unless map['ViolatingRoutes'].nil?)
        data.subnet_availability_zone = map['SubnetAvailabilityZone']
        data.subnet_availability_zone_id = map['SubnetAvailabilityZoneId']
        data.current_firewall_subnet_route_table = map['CurrentFirewallSubnetRouteTable']
        data.firewall_subnet_id = map['FirewallSubnetId']
        data.firewall_subnet_routes = (Parsers::Routes.parse(map['FirewallSubnetRoutes']) unless map['FirewallSubnetRoutes'].nil?)
        data.internet_gateway_id = map['InternetGatewayId']
        data.current_internet_gateway_route_table = map['CurrentInternetGatewayRouteTable']
        data.internet_gateway_routes = (Parsers::Routes.parse(map['InternetGatewayRoutes']) unless map['InternetGatewayRoutes'].nil?)
        return data
      end
    end

    class Routes
      def self.parse(list)
        list.map do |value|
          Parsers::Route.parse(value) unless value.nil?
        end
      end
    end

    class Route
      def self.parse(map)
        data = Types::Route.new
        data.destination_type = map['DestinationType']
        data.target_type = map['TargetType']
        data.destination = map['Destination']
        data.target = map['Target']
        return data
      end
    end

    class FirewallSubnetIsOutOfScopeViolation
      def self.parse(map)
        data = Types::FirewallSubnetIsOutOfScopeViolation.new
        data.firewall_subnet_id = map['FirewallSubnetId']
        data.vpc_id = map['VpcId']
        data.subnet_availability_zone = map['SubnetAvailabilityZone']
        data.subnet_availability_zone_id = map['SubnetAvailabilityZoneId']
        data.vpc_endpoint_id = map['VpcEndpointId']
        return data
      end
    end

    class PossibleRemediationActions
      def self.parse(map)
        data = Types::PossibleRemediationActions.new
        data.description = map['Description']
        data.actions = (Parsers::PossibleRemediationActionList.parse(map['Actions']) unless map['Actions'].nil?)
        return data
      end
    end

    class PossibleRemediationActionList
      def self.parse(list)
        list.map do |value|
          Parsers::PossibleRemediationAction.parse(value) unless value.nil?
        end
      end
    end

    class PossibleRemediationAction
      def self.parse(map)
        data = Types::PossibleRemediationAction.new
        data.description = map['Description']
        data.ordered_remediation_actions = (Parsers::OrderedRemediationActions.parse(map['OrderedRemediationActions']) unless map['OrderedRemediationActions'].nil?)
        data.is_default_action = map['IsDefaultAction']
        return data
      end
    end

    class OrderedRemediationActions
      def self.parse(list)
        list.map do |value|
          Parsers::RemediationActionWithOrder.parse(value) unless value.nil?
        end
      end
    end

    class RemediationActionWithOrder
      def self.parse(map)
        data = Types::RemediationActionWithOrder.new
        data.remediation_action = (Parsers::RemediationAction.parse(map['RemediationAction']) unless map['RemediationAction'].nil?)
        data.order = map['Order']
        return data
      end
    end

    class RemediationAction
      def self.parse(map)
        data = Types::RemediationAction.new
        data.description = map['Description']
        data.ec2_create_route_action = (Parsers::EC2CreateRouteAction.parse(map['EC2CreateRouteAction']) unless map['EC2CreateRouteAction'].nil?)
        data.ec2_replace_route_action = (Parsers::EC2ReplaceRouteAction.parse(map['EC2ReplaceRouteAction']) unless map['EC2ReplaceRouteAction'].nil?)
        data.ec2_delete_route_action = (Parsers::EC2DeleteRouteAction.parse(map['EC2DeleteRouteAction']) unless map['EC2DeleteRouteAction'].nil?)
        data.ec2_copy_route_table_action = (Parsers::EC2CopyRouteTableAction.parse(map['EC2CopyRouteTableAction']) unless map['EC2CopyRouteTableAction'].nil?)
        data.ec2_replace_route_table_association_action = (Parsers::EC2ReplaceRouteTableAssociationAction.parse(map['EC2ReplaceRouteTableAssociationAction']) unless map['EC2ReplaceRouteTableAssociationAction'].nil?)
        data.ec2_associate_route_table_action = (Parsers::EC2AssociateRouteTableAction.parse(map['EC2AssociateRouteTableAction']) unless map['EC2AssociateRouteTableAction'].nil?)
        data.ec2_create_route_table_action = (Parsers::EC2CreateRouteTableAction.parse(map['EC2CreateRouteTableAction']) unless map['EC2CreateRouteTableAction'].nil?)
        data.fms_policy_update_firewall_creation_config_action = (Parsers::FMSPolicyUpdateFirewallCreationConfigAction.parse(map['FMSPolicyUpdateFirewallCreationConfigAction']) unless map['FMSPolicyUpdateFirewallCreationConfigAction'].nil?)
        return data
      end
    end

    class FMSPolicyUpdateFirewallCreationConfigAction
      def self.parse(map)
        data = Types::FMSPolicyUpdateFirewallCreationConfigAction.new
        data.description = map['Description']
        data.firewall_creation_config = map['FirewallCreationConfig']
        return data
      end
    end

    class EC2CreateRouteTableAction
      def self.parse(map)
        data = Types::EC2CreateRouteTableAction.new
        data.description = map['Description']
        data.vpc_id = (Parsers::ActionTarget.parse(map['VpcId']) unless map['VpcId'].nil?)
        return data
      end
    end

    class ActionTarget
      def self.parse(map)
        data = Types::ActionTarget.new
        data.resource_id = map['ResourceId']
        data.description = map['Description']
        return data
      end
    end

    class EC2AssociateRouteTableAction
      def self.parse(map)
        data = Types::EC2AssociateRouteTableAction.new
        data.description = map['Description']
        data.route_table_id = (Parsers::ActionTarget.parse(map['RouteTableId']) unless map['RouteTableId'].nil?)
        data.subnet_id = (Parsers::ActionTarget.parse(map['SubnetId']) unless map['SubnetId'].nil?)
        data.gateway_id = (Parsers::ActionTarget.parse(map['GatewayId']) unless map['GatewayId'].nil?)
        return data
      end
    end

    class EC2ReplaceRouteTableAssociationAction
      def self.parse(map)
        data = Types::EC2ReplaceRouteTableAssociationAction.new
        data.description = map['Description']
        data.association_id = (Parsers::ActionTarget.parse(map['AssociationId']) unless map['AssociationId'].nil?)
        data.route_table_id = (Parsers::ActionTarget.parse(map['RouteTableId']) unless map['RouteTableId'].nil?)
        return data
      end
    end

    class EC2CopyRouteTableAction
      def self.parse(map)
        data = Types::EC2CopyRouteTableAction.new
        data.description = map['Description']
        data.vpc_id = (Parsers::ActionTarget.parse(map['VpcId']) unless map['VpcId'].nil?)
        data.route_table_id = (Parsers::ActionTarget.parse(map['RouteTableId']) unless map['RouteTableId'].nil?)
        return data
      end
    end

    class EC2DeleteRouteAction
      def self.parse(map)
        data = Types::EC2DeleteRouteAction.new
        data.description = map['Description']
        data.destination_cidr_block = map['DestinationCidrBlock']
        data.destination_prefix_list_id = map['DestinationPrefixListId']
        data.destination_ipv6_cidr_block = map['DestinationIpv6CidrBlock']
        data.route_table_id = (Parsers::ActionTarget.parse(map['RouteTableId']) unless map['RouteTableId'].nil?)
        return data
      end
    end

    class EC2ReplaceRouteAction
      def self.parse(map)
        data = Types::EC2ReplaceRouteAction.new
        data.description = map['Description']
        data.destination_cidr_block = map['DestinationCidrBlock']
        data.destination_prefix_list_id = map['DestinationPrefixListId']
        data.destination_ipv6_cidr_block = map['DestinationIpv6CidrBlock']
        data.gateway_id = (Parsers::ActionTarget.parse(map['GatewayId']) unless map['GatewayId'].nil?)
        data.route_table_id = (Parsers::ActionTarget.parse(map['RouteTableId']) unless map['RouteTableId'].nil?)
        return data
      end
    end

    class EC2CreateRouteAction
      def self.parse(map)
        data = Types::EC2CreateRouteAction.new
        data.description = map['Description']
        data.destination_cidr_block = map['DestinationCidrBlock']
        data.destination_prefix_list_id = map['DestinationPrefixListId']
        data.destination_ipv6_cidr_block = map['DestinationIpv6CidrBlock']
        data.vpc_endpoint_id = (Parsers::ActionTarget.parse(map['VpcEndpointId']) unless map['VpcEndpointId'].nil?)
        data.gateway_id = (Parsers::ActionTarget.parse(map['GatewayId']) unless map['GatewayId'].nil?)
        data.route_table_id = (Parsers::ActionTarget.parse(map['RouteTableId']) unless map['RouteTableId'].nil?)
        return data
      end
    end

    class DnsRuleGroupLimitExceededViolation
      def self.parse(map)
        data = Types::DnsRuleGroupLimitExceededViolation.new
        data.violation_target = map['ViolationTarget']
        data.violation_target_description = map['ViolationTargetDescription']
        data.number_of_rule_groups_already_associated = map['NumberOfRuleGroupsAlreadyAssociated']
        return data
      end
    end

    class DnsDuplicateRuleGroupViolation
      def self.parse(map)
        data = Types::DnsDuplicateRuleGroupViolation.new
        data.violation_target = map['ViolationTarget']
        data.violation_target_description = map['ViolationTargetDescription']
        return data
      end
    end

    class DnsRuleGroupPriorityConflictViolation
      def self.parse(map)
        data = Types::DnsRuleGroupPriorityConflictViolation.new
        data.violation_target = map['ViolationTarget']
        data.violation_target_description = map['ViolationTargetDescription']
        data.conflicting_priority = map['ConflictingPriority']
        data.conflicting_policy_id = map['ConflictingPolicyId']
        data.unavailable_priorities = (Parsers::DnsRuleGroupPriorities.parse(map['UnavailablePriorities']) unless map['UnavailablePriorities'].nil?)
        return data
      end
    end

    class DnsRuleGroupPriorities
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NetworkFirewallMissingExpectedRoutesViolation
      def self.parse(map)
        data = Types::NetworkFirewallMissingExpectedRoutesViolation.new
        data.violation_target = map['ViolationTarget']
        data.expected_routes = (Parsers::ExpectedRoutes.parse(map['ExpectedRoutes']) unless map['ExpectedRoutes'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class ExpectedRoutes
      def self.parse(list)
        list.map do |value|
          Parsers::ExpectedRoute.parse(value) unless value.nil?
        end
      end
    end

    class ExpectedRoute
      def self.parse(map)
        data = Types::ExpectedRoute.new
        data.ip_v4_cidr = map['IpV4Cidr']
        data.prefix_list_id = map['PrefixListId']
        data.ip_v6_cidr = map['IpV6Cidr']
        data.contributing_subnets = (Parsers::ResourceIdList.parse(map['ContributingSubnets']) unless map['ContributingSubnets'].nil?)
        data.allowed_targets = (Parsers::LengthBoundedStringList.parse(map['AllowedTargets']) unless map['AllowedTargets'].nil?)
        data.route_table_id = map['RouteTableId']
        return data
      end
    end

    class LengthBoundedStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NetworkFirewallUnexpectedGatewayRoutesViolation
      def self.parse(map)
        data = Types::NetworkFirewallUnexpectedGatewayRoutesViolation.new
        data.gateway_id = map['GatewayId']
        data.violating_routes = (Parsers::Routes.parse(map['ViolatingRoutes']) unless map['ViolatingRoutes'].nil?)
        data.route_table_id = map['RouteTableId']
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class NetworkFirewallUnexpectedFirewallRoutesViolation
      def self.parse(map)
        data = Types::NetworkFirewallUnexpectedFirewallRoutesViolation.new
        data.firewall_subnet_id = map['FirewallSubnetId']
        data.violating_routes = (Parsers::Routes.parse(map['ViolatingRoutes']) unless map['ViolatingRoutes'].nil?)
        data.route_table_id = map['RouteTableId']
        data.firewall_endpoint = map['FirewallEndpoint']
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class NetworkFirewallBlackHoleRouteDetectedViolation
      def self.parse(map)
        data = Types::NetworkFirewallBlackHoleRouteDetectedViolation.new
        data.violation_target = map['ViolationTarget']
        data.route_table_id = map['RouteTableId']
        data.vpc_id = map['VpcId']
        data.violating_routes = (Parsers::Routes.parse(map['ViolatingRoutes']) unless map['ViolatingRoutes'].nil?)
        return data
      end
    end

    class NetworkFirewallInvalidRouteConfigurationViolation
      def self.parse(map)
        data = Types::NetworkFirewallInvalidRouteConfigurationViolation.new
        data.affected_subnets = (Parsers::ResourceIdList.parse(map['AffectedSubnets']) unless map['AffectedSubnets'].nil?)
        data.route_table_id = map['RouteTableId']
        data.is_route_table_used_in_different_az = map['IsRouteTableUsedInDifferentAZ']
        data.violating_route = (Parsers::Route.parse(map['ViolatingRoute']) unless map['ViolatingRoute'].nil?)
        data.current_firewall_subnet_route_table = map['CurrentFirewallSubnetRouteTable']
        data.expected_firewall_endpoint = map['ExpectedFirewallEndpoint']
        data.actual_firewall_endpoint = map['ActualFirewallEndpoint']
        data.expected_firewall_subnet_id = map['ExpectedFirewallSubnetId']
        data.actual_firewall_subnet_id = map['ActualFirewallSubnetId']
        data.expected_firewall_subnet_routes = (Parsers::ExpectedRoutes.parse(map['ExpectedFirewallSubnetRoutes']) unless map['ExpectedFirewallSubnetRoutes'].nil?)
        data.actual_firewall_subnet_routes = (Parsers::Routes.parse(map['ActualFirewallSubnetRoutes']) unless map['ActualFirewallSubnetRoutes'].nil?)
        data.internet_gateway_id = map['InternetGatewayId']
        data.current_internet_gateway_route_table = map['CurrentInternetGatewayRouteTable']
        data.expected_internet_gateway_routes = (Parsers::ExpectedRoutes.parse(map['ExpectedInternetGatewayRoutes']) unless map['ExpectedInternetGatewayRoutes'].nil?)
        data.actual_internet_gateway_routes = (Parsers::Routes.parse(map['ActualInternetGatewayRoutes']) unless map['ActualInternetGatewayRoutes'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class NetworkFirewallInternetTrafficNotInspectedViolation
      def self.parse(map)
        data = Types::NetworkFirewallInternetTrafficNotInspectedViolation.new
        data.subnet_id = map['SubnetId']
        data.subnet_availability_zone = map['SubnetAvailabilityZone']
        data.route_table_id = map['RouteTableId']
        data.violating_routes = (Parsers::Routes.parse(map['ViolatingRoutes']) unless map['ViolatingRoutes'].nil?)
        data.is_route_table_used_in_different_az = map['IsRouteTableUsedInDifferentAZ']
        data.current_firewall_subnet_route_table = map['CurrentFirewallSubnetRouteTable']
        data.expected_firewall_endpoint = map['ExpectedFirewallEndpoint']
        data.firewall_subnet_id = map['FirewallSubnetId']
        data.expected_firewall_subnet_routes = (Parsers::ExpectedRoutes.parse(map['ExpectedFirewallSubnetRoutes']) unless map['ExpectedFirewallSubnetRoutes'].nil?)
        data.actual_firewall_subnet_routes = (Parsers::Routes.parse(map['ActualFirewallSubnetRoutes']) unless map['ActualFirewallSubnetRoutes'].nil?)
        data.internet_gateway_id = map['InternetGatewayId']
        data.current_internet_gateway_route_table = map['CurrentInternetGatewayRouteTable']
        data.expected_internet_gateway_routes = (Parsers::ExpectedRoutes.parse(map['ExpectedInternetGatewayRoutes']) unless map['ExpectedInternetGatewayRoutes'].nil?)
        data.actual_internet_gateway_routes = (Parsers::Routes.parse(map['ActualInternetGatewayRoutes']) unless map['ActualInternetGatewayRoutes'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class NetworkFirewallPolicyModifiedViolation
      def self.parse(map)
        data = Types::NetworkFirewallPolicyModifiedViolation.new
        data.violation_target = map['ViolationTarget']
        data.current_policy_description = (Parsers::NetworkFirewallPolicyDescription.parse(map['CurrentPolicyDescription']) unless map['CurrentPolicyDescription'].nil?)
        data.expected_policy_description = (Parsers::NetworkFirewallPolicyDescription.parse(map['ExpectedPolicyDescription']) unless map['ExpectedPolicyDescription'].nil?)
        return data
      end
    end

    class NetworkFirewallPolicyDescription
      def self.parse(map)
        data = Types::NetworkFirewallPolicyDescription.new
        data.stateless_rule_groups = (Parsers::StatelessRuleGroupList.parse(map['StatelessRuleGroups']) unless map['StatelessRuleGroups'].nil?)
        data.stateless_default_actions = (Parsers::NetworkFirewallActionList.parse(map['StatelessDefaultActions']) unless map['StatelessDefaultActions'].nil?)
        data.stateless_fragment_default_actions = (Parsers::NetworkFirewallActionList.parse(map['StatelessFragmentDefaultActions']) unless map['StatelessFragmentDefaultActions'].nil?)
        data.stateless_custom_actions = (Parsers::NetworkFirewallActionList.parse(map['StatelessCustomActions']) unless map['StatelessCustomActions'].nil?)
        data.stateful_rule_groups = (Parsers::StatefulRuleGroupList.parse(map['StatefulRuleGroups']) unless map['StatefulRuleGroups'].nil?)
        return data
      end
    end

    class StatefulRuleGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::StatefulRuleGroup.parse(value) unless value.nil?
        end
      end
    end

    class StatefulRuleGroup
      def self.parse(map)
        data = Types::StatefulRuleGroup.new
        data.rule_group_name = map['RuleGroupName']
        data.resource_id = map['ResourceId']
        return data
      end
    end

    class NetworkFirewallActionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StatelessRuleGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::StatelessRuleGroup.parse(value) unless value.nil?
        end
      end
    end

    class StatelessRuleGroup
      def self.parse(map)
        data = Types::StatelessRuleGroup.new
        data.rule_group_name = map['RuleGroupName']
        data.resource_id = map['ResourceId']
        data.priority = map['Priority']
        return data
      end
    end

    class NetworkFirewallMissingExpectedRTViolation
      def self.parse(map)
        data = Types::NetworkFirewallMissingExpectedRTViolation.new
        data.violation_target = map['ViolationTarget']
        data.vpc = map['VPC']
        data.availability_zone = map['AvailabilityZone']
        data.current_route_table = map['CurrentRouteTable']
        data.expected_route_table = map['ExpectedRouteTable']
        return data
      end
    end

    class NetworkFirewallMissingSubnetViolation
      def self.parse(map)
        data = Types::NetworkFirewallMissingSubnetViolation.new
        data.violation_target = map['ViolationTarget']
        data.vpc = map['VPC']
        data.availability_zone = map['AvailabilityZone']
        data.target_violation_reason = map['TargetViolationReason']
        return data
      end
    end

    class NetworkFirewallMissingFirewallViolation
      def self.parse(map)
        data = Types::NetworkFirewallMissingFirewallViolation.new
        data.violation_target = map['ViolationTarget']
        data.vpc = map['VPC']
        data.availability_zone = map['AvailabilityZone']
        data.target_violation_reason = map['TargetViolationReason']
        return data
      end
    end

    class AwsEc2InstanceViolation
      def self.parse(map)
        data = Types::AwsEc2InstanceViolation.new
        data.violation_target = map['ViolationTarget']
        data.aws_ec2_network_interface_violations = (Parsers::AwsEc2NetworkInterfaceViolations.parse(map['AwsEc2NetworkInterfaceViolations']) unless map['AwsEc2NetworkInterfaceViolations'].nil?)
        return data
      end
    end

    class AwsEc2NetworkInterfaceViolations
      def self.parse(list)
        list.map do |value|
          Parsers::AwsEc2NetworkInterfaceViolation.parse(value) unless value.nil?
        end
      end
    end

    class AwsEc2NetworkInterfaceViolation
      def self.parse(map)
        data = Types::AwsEc2NetworkInterfaceViolation.new
        data.violation_target = map['ViolationTarget']
        data.violating_security_groups = (Parsers::ResourceIdList.parse(map['ViolatingSecurityGroups']) unless map['ViolatingSecurityGroups'].nil?)
        return data
      end
    end

    class AwsVPCSecurityGroupViolation
      def self.parse(map)
        data = Types::AwsVPCSecurityGroupViolation.new
        data.violation_target = map['ViolationTarget']
        data.violation_target_description = map['ViolationTargetDescription']
        data.partial_matches = (Parsers::PartialMatches.parse(map['PartialMatches']) unless map['PartialMatches'].nil?)
        data.possible_security_group_remediation_actions = (Parsers::SecurityGroupRemediationActions.parse(map['PossibleSecurityGroupRemediationActions']) unless map['PossibleSecurityGroupRemediationActions'].nil?)
        return data
      end
    end

    class SecurityGroupRemediationActions
      def self.parse(list)
        list.map do |value|
          Parsers::SecurityGroupRemediationAction.parse(value) unless value.nil?
        end
      end
    end

    class SecurityGroupRemediationAction
      def self.parse(map)
        data = Types::SecurityGroupRemediationAction.new
        data.remediation_action_type = map['RemediationActionType']
        data.description = map['Description']
        data.remediation_result = (Parsers::SecurityGroupRuleDescription.parse(map['RemediationResult']) unless map['RemediationResult'].nil?)
        data.is_default_action = map['IsDefaultAction']
        return data
      end
    end

    class SecurityGroupRuleDescription
      def self.parse(map)
        data = Types::SecurityGroupRuleDescription.new
        data.ipv4_range = map['IPV4Range']
        data.ipv6_range = map['IPV6Range']
        data.prefix_list_id = map['PrefixListId']
        data.protocol = map['Protocol']
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        return data
      end
    end

    class PartialMatches
      def self.parse(list)
        list.map do |value|
          Parsers::PartialMatch.parse(value) unless value.nil?
        end
      end
    end

    class PartialMatch
      def self.parse(map)
        data = Types::PartialMatch.new
        data.reference = map['Reference']
        data.target_violation_reasons = (Parsers::TargetViolationReasons.parse(map['TargetViolationReasons']) unless map['TargetViolationReasons'].nil?)
        return data
      end
    end

    class TargetViolationReasons
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListAppsLists
    class ListAppsLists
      def self.parse(http_resp)
        data = Types::ListAppsListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.apps_lists = (Parsers::AppsListsData.parse(map['AppsLists']) unless map['AppsLists'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppsListsData
      def self.parse(list)
        list.map do |value|
          Parsers::AppsListDataSummary.parse(value) unless value.nil?
        end
      end
    end

    class AppsListDataSummary
      def self.parse(map)
        data = Types::AppsListDataSummary.new
        data.list_arn = map['ListArn']
        data.list_id = map['ListId']
        data.list_name = map['ListName']
        data.apps_list = (Parsers::AppsList.parse(map['AppsList']) unless map['AppsList'].nil?)
        return data
      end
    end

    # Operation Parser for ListComplianceStatus
    class ListComplianceStatus
      def self.parse(http_resp)
        data = Types::ListComplianceStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_compliance_status_list = (Parsers::PolicyComplianceStatusList.parse(map['PolicyComplianceStatusList']) unless map['PolicyComplianceStatusList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PolicyComplianceStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::PolicyComplianceStatus.parse(value) unless value.nil?
        end
      end
    end

    class PolicyComplianceStatus
      def self.parse(map)
        data = Types::PolicyComplianceStatus.new
        data.policy_owner = map['PolicyOwner']
        data.policy_id = map['PolicyId']
        data.policy_name = map['PolicyName']
        data.member_account = map['MemberAccount']
        data.evaluation_results = (Parsers::EvaluationResults.parse(map['EvaluationResults']) unless map['EvaluationResults'].nil?)
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.issue_info_map = (Parsers::IssueInfoMap.parse(map['IssueInfoMap']) unless map['IssueInfoMap'].nil?)
        return data
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
        data.compliance_status = map['ComplianceStatus']
        data.violator_count = map['ViolatorCount']
        data.evaluation_limit_exceeded = map['EvaluationLimitExceeded']
        return data
      end
    end

    # Operation Parser for ListMemberAccounts
    class ListMemberAccounts
      def self.parse(http_resp)
        data = Types::ListMemberAccountsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.member_accounts = (Parsers::MemberAccounts.parse(map['MemberAccounts']) unless map['MemberAccounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MemberAccounts
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListPolicies
    class ListPolicies
      def self.parse(http_resp)
        data = Types::ListPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_list = (Parsers::PolicySummaryList.parse(map['PolicyList']) unless map['PolicyList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PolicySummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::PolicySummary.parse(value) unless value.nil?
        end
      end
    end

    class PolicySummary
      def self.parse(map)
        data = Types::PolicySummary.new
        data.policy_arn = map['PolicyArn']
        data.policy_id = map['PolicyId']
        data.policy_name = map['PolicyName']
        data.resource_type = map['ResourceType']
        data.security_service_type = map['SecurityServiceType']
        data.remediation_enabled = map['RemediationEnabled']
        data.delete_unused_fm_managed_resources = map['DeleteUnusedFMManagedResources']
        return data
      end
    end

    # Operation Parser for ListProtocolsLists
    class ListProtocolsLists
      def self.parse(http_resp)
        data = Types::ListProtocolsListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protocols_lists = (Parsers::ProtocolsListsData.parse(map['ProtocolsLists']) unless map['ProtocolsLists'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProtocolsListsData
      def self.parse(list)
        list.map do |value|
          Parsers::ProtocolsListDataSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProtocolsListDataSummary
      def self.parse(map)
        data = Types::ProtocolsListDataSummary.new
        data.list_arn = map['ListArn']
        data.list_id = map['ListId']
        data.list_name = map['ListName']
        data.protocols_list = (Parsers::ProtocolsList.parse(map['ProtocolsList']) unless map['ProtocolsList'].nil?)
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
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    # Operation Parser for ListThirdPartyFirewallFirewallPolicies
    class ListThirdPartyFirewallFirewallPolicies
      def self.parse(http_resp)
        data = Types::ListThirdPartyFirewallFirewallPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.third_party_firewall_firewall_policies = (Parsers::ThirdPartyFirewallFirewallPolicies.parse(map['ThirdPartyFirewallFirewallPolicies']) unless map['ThirdPartyFirewallFirewallPolicies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ThirdPartyFirewallFirewallPolicies
      def self.parse(list)
        list.map do |value|
          Parsers::ThirdPartyFirewallFirewallPolicy.parse(value) unless value.nil?
        end
      end
    end

    class ThirdPartyFirewallFirewallPolicy
      def self.parse(map)
        data = Types::ThirdPartyFirewallFirewallPolicy.new
        data.firewall_policy_id = map['FirewallPolicyId']
        data.firewall_policy_name = map['FirewallPolicyName']
        return data
      end
    end

    # Operation Parser for PutAppsList
    class PutAppsList
      def self.parse(http_resp)
        data = Types::PutAppsListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.apps_list = (Parsers::AppsListData.parse(map['AppsList']) unless map['AppsList'].nil?)
        data.apps_list_arn = map['AppsListArn']
        data
      end
    end

    # Operation Parser for PutNotificationChannel
    class PutNotificationChannel
      def self.parse(http_resp)
        data = Types::PutNotificationChannelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutPolicy
    class PutPolicy
      def self.parse(http_resp)
        data = Types::PutPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = (Parsers::Policy.parse(map['Policy']) unless map['Policy'].nil?)
        data.policy_arn = map['PolicyArn']
        data
      end
    end

    # Operation Parser for PutProtocolsList
    class PutProtocolsList
      def self.parse(http_resp)
        data = Types::PutProtocolsListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protocols_list = (Parsers::ProtocolsListData.parse(map['ProtocolsList']) unless map['ProtocolsList'].nil?)
        data.protocols_list_arn = map['ProtocolsListArn']
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
