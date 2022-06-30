# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FMS
  module Types

    # Includes enum constants for AccountRoleStatus
    #
    module AccountRoleStatus
      # No documentation available.
      #
      Ready = "READY"

      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      PendingDeletion = "PENDING_DELETION"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Deleted = "DELETED"
    end

    # <p>Describes a remediation action target.</p>
    #
    # @!attribute resource_id
    #   <p>The ID of the remediation target.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the remediation action target.</p>
    #
    #   @return [String]
    #
    ActionTarget = ::Struct.new(
      :resource_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An individual Firewall Manager application.</p>
    #
    # @!attribute app_name
    #   <p>The application's name.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The IP protocol name or number. The name can be one of <code>tcp</code>, <code>udp</code>, or <code>icmp</code>. For information on possible numbers, see <a href="https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml">Protocol Numbers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The application's port number, for example <code>80</code>.</p>
    #
    #   @return [Integer]
    #
    App = ::Struct.new(
      :app_name,
      :protocol,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Firewall Manager applications list.</p>
    #
    # @!attribute list_id
    #   <p>The ID of the Firewall Manager applications list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_name
    #   <p>The name of the Firewall Manager applications list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_update_token
    #   <p>A unique identifier for each update to the list. When you update
    #           the list, the update token must match the token of the current version of the application list.
    #           You can retrieve the update token by getting the list. </p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time that the Firewall Manager applications list was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The time that the Firewall Manager applications list was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute apps_list
    #   <p>An array of applications in the Firewall Manager applications list.</p>
    #
    #   @return [Array<App>]
    #
    # @!attribute previous_apps_list
    #   <p>A map of previous version numbers to their corresponding <code>App</code> object arrays.</p>
    #
    #   @return [Hash<String, Array<App>>]
    #
    AppsListData = ::Struct.new(
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :apps_list,
      :previous_apps_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the Firewall Manager applications list.</p>
    #
    # @!attribute list_arn
    #   <p>The Amazon Resource Name (ARN) of the applications list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_id
    #   <p>The ID of the applications list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_name
    #   <p>The name of the applications list.</p>
    #
    #   @return [String]
    #
    # @!attribute apps_list
    #   <p>An array of <code>App</code> objects in the Firewall Manager applications list.</p>
    #
    #   @return [Array<App>]
    #
    AppsListDataSummary = ::Struct.new(
      :list_arn,
      :list_id,
      :list_name,
      :apps_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account
    #   <p>The Amazon Web Services account ID to associate with Firewall Manager as the Firewall Manager
    #         administrator account. This must be an Organizations member account.
    #           For more information about Organizations, see
    #           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.  </p>
    #
    #   @return [String]
    #
    AssociateAdminAccountInput = ::Struct.new(
      :admin_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    #   Enum, one of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #
    #   @return [String]
    #
    AssociateThirdPartyFirewallInput = ::Struct.new(
      :third_party_firewall,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall_status
    #   <p>The current status for setting a Firewall Manager policy administrator's account as an administrator of the third-party firewall tenant.</p>
    #           <ul>
    #               <li>
    #                 <p>
    #                     <code>ONBOARDING</code> - The Firewall Manager policy administrator is being designated as a tenant administrator.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>ONBOARD_COMPLETE</code> - The Firewall Manager policy administrator is designated as a tenant administrator.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>OFFBOARDING</code> - The Firewall Manager policy administrator is being removed as a tenant administrator.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>OFFBOARD_COMPLETE</code> - The Firewall Manager policy administrator has been removed as a tenant administrator.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>NOT_EXIST</code> - The Firewall Manager policy administrator doesn't exist as a tenant administrator.</p>
    #              </li>
    #            </ul>
    #
    #   Enum, one of: ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #
    #   @return [String]
    #
    AssociateThirdPartyFirewallOutput = ::Struct.new(
      :third_party_firewall_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for an EC2 instance resource.</p>
    #
    # @!attribute violation_target
    #   <p>The resource ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_ec2_network_interface_violations
    #   <p>Violation detail for network interfaces associated with the EC2 instance.</p>
    #
    #   @return [Array<AwsEc2NetworkInterfaceViolation>]
    #
    AwsEc2InstanceViolation = ::Struct.new(
      :violation_target,
      :aws_ec2_network_interface_violations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for network interfaces associated with an EC2 instance.</p>
    #
    # @!attribute violation_target
    #   <p>The resource ID of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute violating_security_groups
    #   <p>List of security groups that violate the rules specified in the primary security group of the Firewall Manager policy.</p>
    #
    #   @return [Array<String>]
    #
    AwsEc2NetworkInterfaceViolation = ::Struct.new(
      :violation_target,
      :violating_security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for the rule violation in a security group when compared to the primary security group of the Firewall Manager policy.</p>
    #
    # @!attribute violation_target
    #   <p>The security group rule that is being evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute violation_target_description
    #   <p>A description of the security group that violates the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute partial_matches
    #   <p>List of rules specified in the security group of the Firewall Manager policy that partially match the <code>ViolationTarget</code> rule.</p>
    #
    #   @return [Array<PartialMatch>]
    #
    # @!attribute possible_security_group_remediation_actions
    #   <p>Remediation options for the rule specified in the <code>ViolationTarget</code>.</p>
    #
    #   @return [Array<SecurityGroupRemediationAction>]
    #
    AwsVPCSecurityGroupViolation = ::Struct.new(
      :violation_target,
      :violation_target_description,
      :partial_matches,
      :possible_security_group_remediation_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the resource that is not protected by the policy.</p>
    #
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #
    #   @return [String]
    #
    # @!attribute violation_reason
    #   <p>The reason that the resource is not protected by the policy.</p>
    #
    #   Enum, one of: ["WEB_ACL_MISSING_RULE_GROUP", "RESOURCE_MISSING_WEB_ACL", "RESOURCE_INCORRECT_WEB_ACL", "RESOURCE_MISSING_SHIELD_PROTECTION", "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION", "RESOURCE_MISSING_SECURITY_GROUP", "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP", "SECURITY_GROUP_UNUSED", "SECURITY_GROUP_REDUNDANT", "FMS_CREATED_SECURITY_GROUP_EDITED", "MISSING_FIREWALL", "MISSING_FIREWALL_SUBNET_IN_AZ", "MISSING_EXPECTED_ROUTE_TABLE", "NETWORK_FIREWALL_POLICY_MODIFIED", "FIREWALL_SUBNET_IS_OUT_OF_SCOPE", "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE", "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE", "UNEXPECTED_FIREWALL_ROUTES", "UNEXPECTED_TARGET_GATEWAY_ROUTES", "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY", "INVALID_ROUTE_CONFIGURATION", "MISSING_TARGET_GATEWAY", "INTERNET_TRAFFIC_NOT_INSPECTED", "BLACK_HOLE_ROUTE_DETECTED", "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET", "RESOURCE_MISSING_DNS_FIREWALL", "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT", "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type. This is in the format shown in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>. For example:
    #           <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>,
    #           <code>AWS::CloudFront::Distribution</code>, or
    #           <code>AWS::NetworkFirewall::FirewallPolicy</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>Metadata about the resource that doesn't comply with the policy scope.</p>
    #
    #   @return [Hash<String, String>]
    #
    ComplianceViolator = ::Struct.new(
      :resource_id,
      :violation_reason,
      :resource_type,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomerPolicyScopeIdType
    #
    module CustomerPolicyScopeIdType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORG_UNIT = "ORG_UNIT"
    end

    # @!attribute list_id
    #   <p>The ID of the applications list that you want to delete. You can retrieve this ID from
    #         <code>PutAppsList</code>, <code>ListAppsLists</code>, and <code>GetAppsList</code>.</p>
    #
    #   @return [String]
    #
    DeleteAppsListInput = ::Struct.new(
      :list_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppsListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNotificationChannelInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNotificationChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the policy that you want to delete. You can retrieve this ID from
    #           <code>PutPolicy</code> and <code>ListPolicies</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_all_policy_resources
    #   <p>If <code>True</code>, the request performs cleanup according to the policy type. </p>
    #            <p>For WAF and Shield Advanced policies, the cleanup does the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Deletes rule groups created by Firewall Manager</p>
    #               </li>
    #               <li>
    #                  <p>Removes web ACLs from in-scope resources</p>
    #               </li>
    #               <li>
    #                  <p>Deletes web ACLs that contain no rules or rule groups</p>
    #               </li>
    #            </ul>
    #            <p>For security group policies, the cleanup does the following for each security group in
    #         the policy:</p>
    #            <ul>
    #               <li>
    #                  <p>Disassociates the security group from in-scope resources </p>
    #               </li>
    #               <li>
    #                  <p>Deletes the security group if it was created through Firewall Manager and if it's
    #             no longer associated with any resources through another policy</p>
    #               </li>
    #            </ul>
    #            <p>After the cleanup, in-scope resources are no longer protected by web ACLs in this policy.
    #         Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you
    #         create and accounts that you associate with the policy. When creating the policy, if you
    #         specify that only resources in specific accounts or with specific tags are in scope of the
    #         policy, those accounts and resources are handled by the policy. All others are out of scope.
    #         If you don't specify tags or accounts, all resources are in scope. </p>
    #
    #   @return [Boolean]
    #
    DeletePolicyInput = ::Struct.new(
      :policy_id,
      :delete_all_policy_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delete_all_policy_resources ||= false
      end

    end

    DeletePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute list_id
    #   <p>The ID of the protocols list that you want to delete. You can retrieve this ID from
    #         <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>
    #
    #   @return [String]
    #
    DeleteProtocolsListInput = ::Struct.new(
      :list_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProtocolsListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DependentServiceName
    #
    module DependentServiceName
      # No documentation available.
      #
      AWSConfig = "AWSCONFIG"

      # No documentation available.
      #
      AWSWAF = "AWSWAF"

      # No documentation available.
      #
      AWSShieldAdvanced = "AWSSHIELD_ADVANCED"

      # No documentation available.
      #
      AWSVirtualPrivateCloud = "AWSVPC"
    end

    # Includes enum constants for DestinationType
    #
    module DestinationType
      # No documentation available.
      #
      IPV4 = "IPV4"

      # No documentation available.
      #
      IPV6 = "IPV6"

      # No documentation available.
      #
      PrefixList = "PREFIX_LIST"
    end

    DisassociateAdminAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    #   Enum, one of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #
    #   @return [String]
    #
    DisassociateThirdPartyFirewallInput = ::Struct.new(
      :third_party_firewall,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall_status
    #   <p>The current status for the disassociation of a Firewall Manager administrators account with a third-party firewall.</p>
    #
    #   Enum, one of: ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #
    #   @return [String]
    #
    DisassociateThirdPartyFirewallOutput = ::Struct.new(
      :third_party_firewall_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A DNS Firewall rule group that Firewall Manager
    #        tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>
    #
    # @!attribute violation_target
    #   <p>Information about the VPC ID. </p>
    #
    #   @return [String]
    #
    # @!attribute violation_target_description
    #   <p>A description of the violation that specifies the rule group and VPC.</p>
    #
    #   @return [String]
    #
    DnsDuplicateRuleGroupViolation = ::Struct.new(
      :violation_target,
      :violation_target_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The VPC that Firewall Manager was applying a DNS Fireall policy to reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed due to the limit. </p>
    #
    # @!attribute violation_target
    #   <p>Information about the VPC ID. </p>
    #
    #   @return [String]
    #
    # @!attribute violation_target_description
    #   <p>A description of the violation that specifies the rule group and VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_rule_groups_already_associated
    #   <p>The number of rule groups currently associated with the VPC.  </p>
    #
    #   @return [Integer]
    #
    DnsRuleGroupLimitExceededViolation = ::Struct.new(
      :violation_target,
      :violation_target_description,
      :number_of_rule_groups_already_associated,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_rule_groups_already_associated ||= 0
      end

    end

    # <p>A rule group that Firewall Manager
    #        tried to associate with a VPC has the same priority as a rule group that's already associated. </p>
    #
    # @!attribute violation_target
    #   <p>Information about the VPC ID. </p>
    #
    #   @return [String]
    #
    # @!attribute violation_target_description
    #   <p>A description of the violation that specifies the VPC and the rule group that's already associated with it.</p>
    #
    #   @return [String]
    #
    # @!attribute conflicting_priority
    #   <p>The priority setting of the two conflicting rule groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute conflicting_policy_id
    #   <p>The ID of the Firewall Manager DNS Firewall policy that was already applied to the VPC.
    #          This policy contains the rule group that's already associated with the VPC. </p>
    #
    #   @return [String]
    #
    # @!attribute unavailable_priorities
    #   <p>The priorities of rule groups that are already associated with the VPC. To retry your operation,
    #          choose priority settings that aren't in this list for the rule groups in your new DNS Firewall policy. </p>
    #
    #   @return [Array<Integer>]
    #
    DnsRuleGroupPriorityConflictViolation = ::Struct.new(
      :violation_target,
      :violation_target_description,
      :conflicting_priority,
      :conflicting_policy_id,
      :unavailable_priorities,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.conflicting_priority ||= 0
      end

    end

    # <p>The action of associating an EC2 resource, such as a subnet or internet gateway, with a route table.</p>
    #
    # @!attribute description
    #   <p>A description of the EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [String]
    #
    # @!attribute route_table_id
    #   <p>The ID of the EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet for the EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute gateway_id
    #   <p>The ID of the gateway to be used with the EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [ActionTarget]
    #
    EC2AssociateRouteTableAction = ::Struct.new(
      :description,
      :route_table_id,
      :subnet_id,
      :gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An action that copies the EC2 route table for use in remediation.</p>
    #
    # @!attribute description
    #   <p>A description of the copied EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the copied EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute route_table_id
    #   <p>The ID of the copied EC2 route table that is associated with the remediation action.</p>
    #
    #   @return [ActionTarget]
    #
    EC2CopyRouteTableAction = ::Struct.new(
      :description,
      :vpc_id,
      :route_table_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the CreateRoute action in Amazon EC2.</p>
    #
    # @!attribute description
    #   <p>A description of CreateRoute action in Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_cidr_block
    #   <p>Information about the IPv4 CIDR address block used for the destination match.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_prefix_list_id
    #   <p>Information about the ID of a prefix list used for the destination match.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_ipv6_cidr_block
    #   <p>Information about the IPv6 CIDR block destination.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_endpoint_id
    #   <p>Information about the ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute gateway_id
    #   <p>Information about the ID of an internet gateway or virtual private gateway attached to your VPC.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute route_table_id
    #   <p>Information about the ID of the route table for the route.</p>
    #
    #   @return [ActionTarget]
    #
    EC2CreateRouteAction = ::Struct.new(
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv6_cidr_block,
      :vpc_endpoint_id,
      :gateway_id,
      :route_table_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the CreateRouteTable action in Amazon EC2.</p>
    #
    # @!attribute description
    #   <p>A description of the CreateRouteTable action.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Information about the ID of a VPC.</p>
    #
    #   @return [ActionTarget]
    #
    EC2CreateRouteTableAction = ::Struct.new(
      :description,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the DeleteRoute action in Amazon EC2.</p>
    #
    # @!attribute description
    #   <p>A description of the DeleteRoute action.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_cidr_block
    #   <p>Information about the IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_prefix_list_id
    #   <p>Information about the ID of the prefix list for the route.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_ipv6_cidr_block
    #   <p>Information about the IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.</p>
    #
    #   @return [String]
    #
    # @!attribute route_table_id
    #   <p>Information about the ID of the route table.</p>
    #
    #   @return [ActionTarget]
    #
    EC2DeleteRouteAction = ::Struct.new(
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv6_cidr_block,
      :route_table_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the ReplaceRoute action in Amazon EC2.</p>
    #
    # @!attribute description
    #   <p>A description of the ReplaceRoute action in Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_cidr_block
    #   <p>Information about the IPv4 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_prefix_list_id
    #   <p>Information about the ID of the prefix list for the route.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_ipv6_cidr_block
    #   <p>Information about the IPv6 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_id
    #   <p>Information about the ID of an internet gateway or virtual private gateway.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute route_table_id
    #   <p>Information about the ID of the route table.</p>
    #
    #   @return [ActionTarget]
    #
    EC2ReplaceRouteAction = ::Struct.new(
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv6_cidr_block,
      :gateway_id,
      :route_table_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the ReplaceRouteTableAssociation action in Amazon EC2.</p>
    #
    # @!attribute description
    #   <p>A description of the ReplaceRouteTableAssociation action in Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>Information about the association ID.</p>
    #
    #   @return [ActionTarget]
    #
    # @!attribute route_table_id
    #   <p>Information about the ID of the new route table to associate with the subnet.</p>
    #
    #   @return [ActionTarget]
    #
    EC2ReplaceRouteTableAssociationAction = ::Struct.new(
      :description,
      :association_id,
      :route_table_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the compliance status for the account. An account is considered noncompliant if
    #       it includes resources that are not protected by the specified policy or that don't comply with
    #       the policy.</p>
    #
    # @!attribute compliance_status
    #   <p>Describes an Amazon Web Services account's compliance with the Firewall Manager policy.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT"]
    #
    #   @return [String]
    #
    # @!attribute violator_count
    #   <p>The number of resources that are noncompliant with the specified policy. For WAF and
    #         Shield Advanced policies, a resource is considered noncompliant if it is not associated with
    #         the policy. For security group policies, a resource is considered noncompliant if it doesn't
    #         comply with the rules of the policy and remediation is disabled or not possible.</p>
    #
    #   @return [Integer]
    #
    # @!attribute evaluation_limit_exceeded
    #   <p>Indicates that over 100 resources are noncompliant with the Firewall Manager
    #         policy.</p>
    #
    #   @return [Boolean]
    #
    EvaluationResult = ::Struct.new(
      :compliance_status,
      :violator_count,
      :evaluation_limit_exceeded,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.violator_count ||= 0
        self.evaluation_limit_exceeded ||= false
      end

    end

    # <p>Information about the expected route in the route table.</p>
    #
    # @!attribute ip_v4_cidr
    #   <p>Information about the IPv4 CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix_list_id
    #   <p>Information about the ID of the prefix list for the route.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_v6_cidr
    #   <p>Information about the IPv6 CIDR block.</p>
    #
    #   @return [String]
    #
    # @!attribute contributing_subnets
    #   <p>Information about the contributing subnets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_targets
    #   <p>Information about the allowed targets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute route_table_id
    #   <p>Information about the route table ID.</p>
    #
    #   @return [String]
    #
    ExpectedRoute = ::Struct.new(
      :ip_v4_cidr,
      :prefix_list_id,
      :ip_v6_cidr,
      :contributing_subnets,
      :allowed_targets,
      :route_table_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the actions that you can take to remediate scope violations
    #          caused by your policy's <code>FirewallCreationConfig</code>.
    #             <code>FirewallCreationConfig</code> is an optional configuration that you can use to
    #          choose which Availability Zones Firewall Manager creates Network Firewall endpoints in.</p>
    #
    # @!attribute description
    #   <p>Describes the remedial action.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_creation_config
    #   <p>A <code>FirewallCreationConfig</code> that you can copy into your current policy's
    #               <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_SecurityServicePolicyData.html">SecurityServiceData</a> in order to remedy scope violations.</p>
    #
    #   @return [String]
    #
    FMSPolicyUpdateFirewallCreationConfigAction = ::Struct.new(
      :description,
      :firewall_creation_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirewallDeploymentModel
    #
    module FirewallDeploymentModel
      # No documentation available.
      #
      CENTRALIZED = "CENTRALIZED"

      # No documentation available.
      #
      DISTRIBUTED = "DISTRIBUTED"
    end

    # <p>Contains details about the firewall subnet that violates the policy scope.</p>
    #
    # @!attribute firewall_subnet_id
    #   <p>The ID of the firewall subnet that violates the policy scope.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the firewall subnet that violates the policy scope.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone of the firewall subnet that violates the policy scope.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone_id
    #   <p>The Availability Zone ID of the firewall subnet that violates the policy scope.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_endpoint_id
    #   <p>The VPC endpoint ID of the firewall subnet that violates the policy scope.</p>
    #
    #   @return [String]
    #
    FirewallSubnetIsOutOfScopeViolation = ::Struct.new(
      :firewall_subnet_id,
      :vpc_id,
      :subnet_availability_zone,
      :subnet_availability_zone_id,
      :vpc_endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The violation details for a firewall subnet's VPC endpoint that's deleted or missing.</p>
    #
    # @!attribute firewall_subnet_id
    #   <p>The ID of the firewall that this VPC endpoint is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The resource ID of the VPC associated with the deleted VPC subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>The name of the Availability Zone of the deleted VPC subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone_id
    #   <p>The ID of the Availability Zone of the deleted VPC subnet.</p>
    #
    #   @return [String]
    #
    FirewallSubnetMissingVPCEndpointViolation = ::Struct.new(
      :firewall_subnet_id,
      :vpc_id,
      :subnet_availability_zone,
      :subnet_availability_zone_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetAdminAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account
    #   <p>The Amazon Web Services account that is set as the Firewall Manager administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute role_status
    #   <p>The status of the Amazon Web Services account that you set as the Firewall Manager
    #         administrator.</p>
    #
    #   Enum, one of: ["READY", "CREATING", "PENDING_DELETION", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    GetAdminAccountOutput = ::Struct.new(
      :admin_account,
      :role_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute list_id
    #   <p>The ID of the Firewall Manager applications list that you want the details for.</p>
    #
    #   @return [String]
    #
    # @!attribute default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    #
    #   @return [Boolean]
    #
    GetAppsListInput = ::Struct.new(
      :list_id,
      :default_list,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_list ||= false
      end

    end

    # @!attribute apps_list
    #   <p>Information about the specified Firewall Manager applications list.</p>
    #
    #   @return [AppsListData]
    #
    # @!attribute apps_list_arn
    #   <p>The Amazon Resource Name (ARN) of the applications list.</p>
    #
    #   @return [String]
    #
    GetAppsListOutput = ::Struct.new(
      :apps_list,
      :apps_list_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is
    #         returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account
    #   <p>The Amazon Web Services account that owns the resources that you want to get the details for.</p>
    #
    #   @return [String]
    #
    GetComplianceDetailInput = ::Struct.new(
      :policy_id,
      :member_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_compliance_detail
    #   <p>Information about the resources and the policy that you specified in the
    #           <code>GetComplianceDetail</code> request.</p>
    #
    #   @return [PolicyComplianceDetail]
    #
    GetComplianceDetailOutput = ::Struct.new(
      :policy_compliance_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetNotificationChannelInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sns_topic_arn
    #   <p>The SNS topic that records Firewall Manager activity. </p>
    #
    #   @return [String]
    #
    # @!attribute sns_role_name
    #   <p>The IAM role that is used by Firewall Manager to record activity to SNS.</p>
    #
    #   @return [String]
    #
    GetNotificationChannelOutput = ::Struct.new(
      :sns_topic_arn,
      :sns_role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    #
    #   @return [String]
    #
    GetPolicyInput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>Information about the specified Firewall Manager policy.</p>
    #
    #   @return [Policy]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the specified policy.</p>
    #
    #   @return [String]
    #
    GetPolicyOutput = ::Struct.new(
      :policy,
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the policy for which you want to get the attack information.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account_id
    #   <p>The Amazon Web Services account that is in scope of the policy that you want to get the details
    #            for.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #             request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #            request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more objects than the number that you specify
    #            for <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the response, which you can use to retrieve another group of
    #            objects. For the second and subsequent <code>GetProtectionStatus</code> requests, specify the value of <code>NextToken</code>
    #            from the previous response to get information about another batch of objects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the number of objects that you want Firewall Manager to return for this request. If you have more
    #           objects than the number that you specify for <code>MaxResults</code>, the response includes a
    #            <code>NextToken</code> value that you can use to get another batch of objects.</p>
    #
    #   @return [Integer]
    #
    GetProtectionStatusInput = ::Struct.new(
      :policy_id,
      :member_account_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p>The ID of the Firewall Manager administrator account for this policy.</p>
    #
    #   @return [String]
    #
    # @!attribute service_type
    #   <p>The service type that is protected by the policy. Currently, this is always
    #               <code>SHIELD_ADVANCED</code>.</p>
    #
    #   Enum, one of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>Details about the attack, including the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Attack type</p>
    #               </li>
    #               <li>
    #                  <p>Account ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN of the resource attacked</p>
    #               </li>
    #               <li>
    #                  <p>Start time of the attack</p>
    #               </li>
    #               <li>
    #                  <p>End time of the attack (ongoing attacks will not have an end time)</p>
    #               </li>
    #            </ul>
    #            <p>The details are in JSON format. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If you have more objects than the number that you specified for <code>MaxResults</code> in the request,
    #            the response includes a <code>NextToken</code> value. To list more objects, submit another
    #            <code>GetProtectionStatus</code> request, and specify the <code>NextToken</code> value from the response in the
    #            <code>NextToken</code> value in the next request.</p>
    #            <p>Amazon Web Services SDKs provide auto-pagination that identify <code>NextToken</code> in a response and
    #            make subsequent request calls automatically on your behalf. However, this feature is not
    #            supported by <code>GetProtectionStatus</code>. You must submit subsequent requests with
    #               <code>NextToken</code> using your own processes. </p>
    #
    #   @return [String]
    #
    GetProtectionStatusOutput = ::Struct.new(
      :admin_account_id,
      :service_type,
      :data,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute list_id
    #   <p>The ID of the Firewall Manager protocols list that you want the details for.</p>
    #
    #   @return [String]
    #
    # @!attribute default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    #
    #   @return [Boolean]
    #
    GetProtocolsListInput = ::Struct.new(
      :list_id,
      :default_list,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_list ||= false
      end

    end

    # @!attribute protocols_list
    #   <p>Information about the specified Firewall Manager protocols list.</p>
    #
    #   @return [ProtocolsListData]
    #
    # @!attribute protocols_list_arn
    #   <p>The Amazon Resource Name (ARN) of the specified protocols list.</p>
    #
    #   @return [String]
    #
    GetProtocolsListOutput = ::Struct.new(
      :protocols_list,
      :protocols_list_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    #   Enum, one of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #
    #   @return [String]
    #
    GetThirdPartyFirewallAssociationStatusInput = ::Struct.new(
      :third_party_firewall,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall_status
    #   <p>The current status for setting a Firewall Manager policy administrators account as an administrator of the third-party firewall tenant.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING</code> - The Firewall Manager policy administrator is being designated as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONBOARD_COMPLETE</code> - The Firewall Manager policy administrator is designated as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING</code> - The Firewall Manager policy administrator is being removed as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARD_COMPLETE</code> - The Firewall Manager policy administrator has been removed as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_EXIST</code> - The Firewall Manager policy administrator doesn't exist as a tenant administrator.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #
    #   @return [String]
    #
    # @!attribute marketplace_onboarding_status
    #   <p>The status for subscribing to the third-party firewall vendor in the AWS Marketplace.</p>
    #           <ul>
    #               <li>
    #                 <p>
    #                     <code>NO_SUBSCRIPTION</code> - The Firewall Manager policy administrator isn't subscribed to the third-party firewall service in the AWS Marketplace.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>NOT_COMPLETE</code> - The Firewall Manager policy administrator is in the process of subscribing to the third-party firewall service in the Amazon Web Services Marketplace, but doesn't yet have an active subscription.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>COMPLETE</code> - The Firewall Manager policy administrator has an active subscription to the third-party firewall service in the Amazon Web Services Marketplace.</p>
    #              </li>
    #            </ul>
    #
    #   Enum, one of: ["NO_SUBSCRIPTION", "NOT_COMPLETE", "COMPLETE"]
    #
    #   @return [String]
    #
    GetThirdPartyFirewallAssociationStatusOutput = ::Struct.new(
      :third_party_firewall_status,
      :marketplace_onboarding_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for. This currently only supports security group content audit policies.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account
    #   <p>The Amazon Web Services account ID that you want the details for.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that has violations.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type. This is in the format shown in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #         Supported resource types are:
    #         <code>AWS::EC2::Instance</code>,
    #         <code>AWS::EC2::NetworkInterface</code>,
    #         <code>AWS::EC2::SecurityGroup</code>,
    #         <code>AWS::NetworkFirewall::FirewallPolicy</code>, and
    #         <code>AWS::EC2::Subnet</code>.
    #      </p>
    #
    #   @return [String]
    #
    GetViolationDetailsInput = ::Struct.new(
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute violation_detail
    #   <p>Violation detail for a resource.</p>
    #
    #   @return [ViolationDetail]
    #
    GetViolationDetailsOutput = ::Struct.new(
      :violation_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because of a system problem, even though the request was valid. Retry
    #       your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters of the request were invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because there was nothing to do or the operation wasn't possible. For example, you might have
    #         submitted an <code>AssociateAdminAccount</code> request for an account ID that
    #             was already set as the Firewall Manager administrator. Or you might have tried to access a Region
    #   that's disabled by default, and that you need to enable for the Firewall Manager
    #   administrator account and for Organizations before you can access it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of the <code>Type</code> parameter is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation exceeds a resource limit, for example, the maximum number of
    #         <code>policy</code> objects that you can create for an Amazon Web Services account. For more information,
    #       see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html">Firewall
    #         Manager Limits</a> in the <i>WAF Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    #
    #   @return [Integer]
    #
    ListAppsListsInput = ::Struct.new(
      :default_lists,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_lists ||= false
      end

    end

    # @!attribute apps_lists
    #   <p>An array of <code>AppsListDataSummary</code> objects.</p>
    #
    #   @return [Array<AppsListDataSummary>]
    #
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>
    #
    #   @return [String]
    #
    ListAppsListsOutput = ::Struct.new(
      :apps_lists,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicyComplianceStatus</code> objects.
    #         For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicyComplianceStatus</code> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want
    #         Firewall Manager to return for this request. If you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListComplianceStatusInput = ::Struct.new(
      :policy_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_compliance_status_list
    #   <p>An array of <code>PolicyComplianceStatus</code> objects.</p>
    #
    #   @return [Array<PolicyComplianceStatus>]
    #
    # @!attribute next_token
    #   <p>If you have more <code>PolicyComplianceStatus</code> objects than the number that you
    #         specified for <code>MaxResults</code> in the request, the response includes a
    #           <code>NextToken</code> value. To list more <code>PolicyComplianceStatus</code> objects,
    #         submit another <code>ListComplianceStatus</code> request, and specify the
    #           <code>NextToken</code> value from the response in the <code>NextToken</code> value in the
    #         next request.</p>
    #
    #   @return [String]
    #
    ListComplianceStatusOutput = ::Struct.new(
      :policy_compliance_status_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the
    #         number that you specify for <code>MaxResults</code>, Firewall Manager returns a
    #           <code>NextToken</code> value in the response that allows you to list another group of IDs.
    #         For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the
    #         value of <code>NextToken</code> from the previous response to get information about another
    #         batch of member account IDs.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the number of member account IDs that you want Firewall Manager to return
    #         for this request. If you have more IDs than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of member account IDs.</p>
    #
    #   @return [Integer]
    #
    ListMemberAccountsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_accounts
    #   <p>An array of account IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If you have more member account IDs than the number that you specified for
    #           <code>MaxResults</code> in the request, the response includes a <code>NextToken</code>
    #         value. To list more IDs, submit another <code>ListMemberAccounts</code> request, and specify
    #         the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the
    #         next request.</p>
    #
    #   @return [String]
    #
    ListMemberAccountsOutput = ::Struct.new(
      :member_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicySummary</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicySummary</code> objects. For the
    #         second and subsequent <code>ListPolicies</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicySummary</code> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the number of <code>PolicySummary</code> objects that you want Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than
    #         the number that you specify for <code>MaxResults</code>, the response includes a
    #           <code>NextToken</code> value that you can use to get another batch of
    #           <code>PolicySummary</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListPoliciesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_list
    #   <p>An array of <code>PolicySummary</code> objects.</p>
    #
    #   @return [Array<PolicySummary>]
    #
    # @!attribute next_token
    #   <p>If you have more <code>PolicySummary</code> objects than the number that you specified for
    #           <code>MaxResults</code> in the request, the response includes a <code>NextToken</code>
    #         value. To list more <code>PolicySummary</code> objects, submit another
    #           <code>ListPolicies</code> request, and specify the <code>NextToken</code> value from the
    #         response in the <code>NextToken</code> value in the next request.</p>
    #
    #   @return [String]
    #
    ListPoliciesOutput = ::Struct.new(
      :policy_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    #
    #   @return [Integer]
    #
    ListProtocolsListsInput = ::Struct.new(
      :default_lists,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_lists ||= false
      end

    end

    # @!attribute protocols_lists
    #   <p>An array of <code>ProtocolsListDataSummary</code> objects.</p>
    #
    #   @return [Array<ProtocolsListDataSummary>]
    #
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>
    #
    #   @return [String]
    #
    ListProtocolsListsOutput = ::Struct.new(
      :protocols_lists,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>The tags associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    #   Enum, one of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response included a <code>NextToken</code> element, the specified third-party firewall vendor is associated with more
    #   third-party firewall policies. To get more third-party firewall policies, submit another <code>ListThirdPartyFirewallFirewallPoliciesRequest</code> request.</p>
    #            <p>
    #     For the value of <code>NextToken</code>, specify the value of <code>NextToken</code> from the previous response.
    #     If the previous response didn't include a <code>NextToken</code> element, there are no more third-party firewall policies to
    #     get.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of third-party firewall policies that you want Firewall Manager to return. If
    #   the specified third-party firewall vendor is associated with more than <code>MaxResults</code> firewall policies, the response includes a
    #   <code>NextToken</code> element. <code>NextToken</code> contains an encrypted token that identifies the first third-party firewall policies
    #   that Firewall Manager will return if you submit another request.</p>
    #
    #   @return [Integer]
    #
    ListThirdPartyFirewallFirewallPoliciesInput = ::Struct.new(
      :third_party_firewall,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute third_party_firewall_firewall_policies
    #   <p>A list that contains one <code>ThirdPartyFirewallFirewallPolicies</code> element for each third-party firewall policies that the specified
    #   third-party firewall vendor is associated with. Each <code>ThirdPartyFirewallFirewallPolicies</code> element contains the firewall policy name and ID.</p>
    #
    #   @return [Array<ThirdPartyFirewallFirewallPolicy>]
    #
    # @!attribute next_token
    #   <p>The value that you will use for <code>NextToken</code> in the next <code>ListThirdPartyFirewallFirewallPolicies</code> request.</p>
    #
    #   @return [String]
    #
    ListThirdPartyFirewallFirewallPoliciesOutput = ::Struct.new(
      :third_party_firewall_firewall_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MarketplaceSubscriptionOnboardingStatus
    #
    module MarketplaceSubscriptionOnboardingStatus
      # No documentation available.
      #
      NO_SUBSCRIPTION = "NO_SUBSCRIPTION"

      # No documentation available.
      #
      NOT_COMPLETE = "NOT_COMPLETE"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"
    end

    # <p>Violation detail for an internet gateway route with an inactive state in the customer subnet route table or Network Firewall subnet route table.</p>
    #
    # @!attribute violation_target
    #   <p>The subnet that has an inactive state.</p>
    #
    #   @return [String]
    #
    # @!attribute route_table_id
    #   <p>Information about the route table ID.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #
    #   @return [String]
    #
    # @!attribute violating_routes
    #   <p>Information about the route or routes that are in violation.</p>
    #
    #   @return [Array<Route>]
    #
    NetworkFirewallBlackHoleRouteDetectedViolation = ::Struct.new(
      :violation_target,
      :route_table_id,
      :vpc_id,
      :violating_routes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for the subnet for which internet traffic that hasn't been inspected.</p>
    #
    # @!attribute subnet_id
    #   <p>The subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>The subnet Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute route_table_id
    #   <p>Information about the route table ID.</p>
    #
    #   @return [String]
    #
    # @!attribute violating_routes
    #   <p>The route or routes that are in violation.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute is_route_table_used_in_different_az
    #   <p>Information about whether the route table is used in another Availability Zone.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute current_firewall_subnet_route_table
    #   <p>Information about the subnet route table for the current firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_firewall_endpoint
    #   <p>The expected endpoint for the current firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_subnet_id
    #   <p>The firewall subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_firewall_subnet_routes
    #   <p>The firewall subnet routes that are expected.</p>
    #
    #   @return [Array<ExpectedRoute>]
    #
    # @!attribute actual_firewall_subnet_routes
    #   <p>The actual firewall subnet routes.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute internet_gateway_id
    #   <p>The internet gateway ID.</p>
    #
    #   @return [String]
    #
    # @!attribute current_internet_gateway_route_table
    #   <p>The current route table for the internet gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_internet_gateway_routes
    #   <p>The internet gateway routes that are expected.</p>
    #
    #   @return [Array<ExpectedRoute>]
    #
    # @!attribute actual_internet_gateway_routes
    #   <p>The actual internet gateway routes.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #
    #   @return [String]
    #
    NetworkFirewallInternetTrafficNotInspectedViolation = ::Struct.new(
      :subnet_id,
      :subnet_availability_zone,
      :route_table_id,
      :violating_routes,
      :is_route_table_used_in_different_az,
      :current_firewall_subnet_route_table,
      :expected_firewall_endpoint,
      :firewall_subnet_id,
      :expected_firewall_subnet_routes,
      :actual_firewall_subnet_routes,
      :internet_gateway_id,
      :current_internet_gateway_route_table,
      :expected_internet_gateway_routes,
      :actual_internet_gateway_routes,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_route_table_used_in_different_az ||= false
      end

    end

    # <p>Violation detail for the improperly configured subnet route. It's possible there is a missing route table route,
    #       or a configuration that causes traffic to cross an Availability Zone boundary.</p>
    #
    # @!attribute affected_subnets
    #   <p>The subnets that are affected.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute route_table_id
    #   <p>The route table ID.</p>
    #
    #   @return [String]
    #
    # @!attribute is_route_table_used_in_different_az
    #   <p>Information about whether the route table is used in another Availability Zone.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute violating_route
    #   <p>The route that's in violation.</p>
    #
    #   @return [Route]
    #
    # @!attribute current_firewall_subnet_route_table
    #   <p>The subnet route table for the current firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_firewall_endpoint
    #   <p>The firewall endpoint that's expected.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_firewall_endpoint
    #   <p>The actual firewall endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_firewall_subnet_id
    #   <p>The expected subnet ID for the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_firewall_subnet_id
    #   <p>The actual subnet ID for the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_firewall_subnet_routes
    #   <p>The firewall subnet routes that are expected.</p>
    #
    #   @return [Array<ExpectedRoute>]
    #
    # @!attribute actual_firewall_subnet_routes
    #   <p>The actual firewall subnet routes that are expected.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute internet_gateway_id
    #   <p>The internet gateway ID.</p>
    #
    #   @return [String]
    #
    # @!attribute current_internet_gateway_route_table
    #   <p>The route table for the current internet gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_internet_gateway_routes
    #   <p>The expected routes for the internet gateway.</p>
    #
    #   @return [Array<ExpectedRoute>]
    #
    # @!attribute actual_internet_gateway_routes
    #   <p>The actual internet gateway routes.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #
    #   @return [String]
    #
    NetworkFirewallInvalidRouteConfigurationViolation = ::Struct.new(
      :affected_subnets,
      :route_table_id,
      :is_route_table_used_in_different_az,
      :violating_route,
      :current_firewall_subnet_route_table,
      :expected_firewall_endpoint,
      :actual_firewall_endpoint,
      :expected_firewall_subnet_id,
      :actual_firewall_subnet_id,
      :expected_firewall_subnet_routes,
      :actual_firewall_subnet_routes,
      :internet_gateway_id,
      :current_internet_gateway_route_table,
      :expected_internet_gateway_routes,
      :actual_internet_gateway_routes,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_route_table_used_in_different_az ||= false
      end

    end

    # <p>Violation detail for Network Firewall for a subnet that's not associated to the expected
    #        Firewall Manager managed route table.</p>
    #
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a violating subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of a violating subnet. </p>
    #
    #   @return [String]
    #
    # @!attribute current_route_table
    #   <p>The resource ID of the current route table that's associated with the subnet, if one is available.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_route_table
    #   <p>The resource ID of the route table that should be associated with the subnet.</p>
    #
    #   @return [String]
    #
    NetworkFirewallMissingExpectedRTViolation = ::Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :current_route_table,
      :expected_route_table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for an expected route missing in Network Firewall.</p>
    #
    # @!attribute violation_target
    #   <p>The target of the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_routes
    #   <p>The expected routes.</p>
    #
    #   @return [Array<ExpectedRoute>]
    #
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #
    #   @return [String]
    #
    NetworkFirewallMissingExpectedRoutesViolation = ::Struct.new(
      :violation_target,
      :expected_routes,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for Network Firewall for a subnet that doesn't have a
    #        Firewall Manager managed firewall in its VPC. </p>
    #
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a violating subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of a violating subnet. </p>
    #
    #   @return [String]
    #
    # @!attribute target_violation_reason
    #   <p>The reason the resource has this violation, if one is available. </p>
    #
    #   @return [String]
    #
    NetworkFirewallMissingFirewallViolation = ::Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for Network Firewall for an Availability Zone that's
    #        missing the expected Firewall Manager managed subnet.</p>
    #
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a violating subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of a violating subnet. </p>
    #
    #   @return [String]
    #
    # @!attribute target_violation_reason
    #   <p>The reason the resource has this violation, if one is available. </p>
    #
    #   @return [String]
    #
    NetworkFirewallMissingSubnetViolation = ::Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configures the firewall policy deployment model of Network Firewall. For information about
    #          Network Firewall deployment models, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/architectures.html">Network Firewall example
    #             architectures with routing</a> in the <i>Network Firewall Developer
    #          Guide</i>.</p>
    #
    # @!attribute firewall_deployment_model
    #   <p>Defines the deployment model to use for the firewall policy. To use a distributed model,
    #            set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to <code>NULL</code>.</p>
    #
    #   Enum, one of: ["CENTRALIZED", "DISTRIBUTED"]
    #
    #   @return [String]
    #
    NetworkFirewallPolicy = ::Struct.new(
      :firewall_deployment_model,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The definition of the Network Firewall firewall policy.</p>
    #
    # @!attribute stateless_rule_groups
    #   <p>The stateless rule groups that are used in the Network Firewall firewall policy. </p>
    #
    #   @return [Array<StatelessRuleGroup>]
    #
    # @!attribute stateless_default_actions
    #   <p>The actions to take on packets that don't match any of the stateless rule groups. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateless_fragment_default_actions
    #   <p>The actions to take on packet fragments that don't match any of the stateless rule groups. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateless_custom_actions
    #   <p>Names of custom actions that are available for use in the stateless default actions settings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateful_rule_groups
    #   <p>The stateful rule groups that are used in the Network Firewall firewall policy. </p>
    #
    #   @return [Array<StatefulRuleGroup>]
    #
    NetworkFirewallPolicyDescription = ::Struct.new(
      :stateless_rule_groups,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_custom_actions,
      :stateful_rule_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for Network Firewall for a firewall policy that has a different
    #        <a>NetworkFirewallPolicyDescription</a> than is required by the Firewall Manager policy. </p>
    #
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_policy_description
    #   <p>The policy that's currently in use in the individual account. </p>
    #
    #   @return [NetworkFirewallPolicyDescription]
    #
    # @!attribute expected_policy_description
    #   <p>The policy that should be in use in the individual account in order to be compliant. </p>
    #
    #   @return [NetworkFirewallPolicyDescription]
    #
    NetworkFirewallPolicyModifiedViolation = ::Struct.new(
      :violation_target,
      :current_policy_description,
      :expected_policy_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for an unexpected route that's present in a route table.</p>
    #
    # @!attribute firewall_subnet_id
    #   <p>The subnet ID for the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute violating_routes
    #   <p>The routes that are in violation.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute route_table_id
    #   <p>The ID of the route table.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_endpoint
    #   <p>The endpoint of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #
    #   @return [String]
    #
    NetworkFirewallUnexpectedFirewallRoutesViolation = ::Struct.new(
      :firewall_subnet_id,
      :violating_routes,
      :route_table_id,
      :firewall_endpoint,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail for an unexpected gateway route that’s present in a route table.</p>
    #
    # @!attribute gateway_id
    #   <p>Information about the gateway ID.</p>
    #
    #   @return [String]
    #
    # @!attribute violating_routes
    #   <p>The routes that are in violation.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute route_table_id
    #   <p>Information about the  route table.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #
    #   @return [String]
    #
    NetworkFirewallUnexpectedGatewayRoutesViolation = ::Struct.new(
      :gateway_id,
      :violating_routes,
      :route_table_id,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The reference rule that partially matches the <code>ViolationTarget</code> rule and violation reason.</p>
    #
    # @!attribute reference
    #   <p>The reference rule from the primary security group of the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute target_violation_reasons
    #   <p>The violation reason.</p>
    #
    #   @return [Array<String>]
    #
    PartialMatch = ::Struct.new(
      :reference,
      :target_violation_reasons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Firewall Manager policy.</p>
    #
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_update_token
    #   <p>A unique identifier for each update to the policy. When issuing a <code>PutPolicy</code>
    #         request, the <code>PolicyUpdateToken</code> in the request must match the
    #           <code>PolicyUpdateToken</code> of the current policy version. To get the
    #           <code>PolicyUpdateToken</code> of the current policy version, use a <code>GetPolicy</code>
    #         request.</p>
    #
    #   @return [String]
    #
    # @!attribute security_service_policy_data
    #   <p>Details about the security service that is being used to protect the resources.</p>
    #
    #   @return [SecurityServicePolicyData]
    #
    # @!attribute resource_type
    #   <p>The type of resource protected by or in scope of the policy. This is in the format shown
    #           in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #                       To apply this policy to multiple resource types, specify a resource type of <code>ResourceTypeList</code> and then specify the resource types in a <code>ResourceTypeList</code>.</p>
    #                   <p>For WAF and Shield Advanced, resource types include
    #                   <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>, <code>AWS::ElasticLoadBalancing::LoadBalancer</code>, <code>AWS::EC2::EIP</code>, and
    #           <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values
    #         are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a
    #         security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>,
    #           <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security
    #               group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. For an Network Firewall policy or DNS Firewall policy,
    #                   the value is <code>AWS::EC2::VPC</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type_list
    #   <p>An array of <code>ResourceType</code> objects. Use this only to specify multiple resource types. To specify a single resource type, use <code>ResourceType</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_tags
    #   <p>An array of <code>ResourceTag</code> objects.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    # @!attribute exclude_resource_tags
    #   <p>If set to <code>True</code>, resources with the tags that are specified in the
    #           <code>ResourceTag</code> array are not in scope of the policy. If set to <code>False</code>,
    #         and the <code>ResourceTag</code> array is not null, only resources with the specified tags are
    #         in scope of the policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute remediation_enabled
    #   <p>Indicates if the policy should be automatically applied to new resources.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delete_unused_fm_managed_resources
    #   <p>Indicates whether Firewall Manager should automatically remove protections from resources that leave the policy scope and clean up resources
    #          that Firewall Manager is managing for accounts when those accounts leave policy scope. For example, Firewall Manager will disassociate a Firewall Manager managed web ACL
    #          from a protected customer resource when the customer resource leaves policy scope. </p>
    #            <p>By default, Firewall Manager doesn't remove protections or delete Firewall Manager managed resources. </p>
    #            <p>This option is not available for Shield Advanced or WAF Classic policies.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_map
    #   <p>Specifies the Amazon Web Services account IDs and Organizations organizational units (OUs) to include in the policy.
    #             Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
    #                 <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, Firewall Manager
    #             applies the policy to all accounts specified by the <code>IncludeMap</code>, and
    #             does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
    #               applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
    #            <p>You can specify account IDs, OUs, or a combination: </p>
    #            <ul>
    #               <li>
    #                  <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
    #     <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute exclude_map
    #   <p>Specifies the Amazon Web Services account IDs and Organizations organizational units (OUs) to exclude from the policy.
    #             Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
    #                 <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, Firewall Manager
    #             applies the policy to all accounts specified by the <code>IncludeMap</code>, and
    #             does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
    #               applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
    #            <p>You can specify account IDs, OUs, or a combination: </p>
    #            <ul>
    #               <li>
    #                  <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
    #     <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, Array<String>>]
    #
    Policy = ::Struct.new(
      :policy_id,
      :policy_name,
      :policy_update_token,
      :security_service_policy_data,
      :resource_type,
      :resource_type_list,
      :resource_tags,
      :exclude_resource_tags,
      :remediation_enabled,
      :delete_unused_fm_managed_resources,
      :include_map,
      :exclude_map,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.exclude_resource_tags ||= false
        self.remediation_enabled ||= false
        self.delete_unused_fm_managed_resources ||= false
      end

    end

    # <p>Describes
    #       the noncompliant resources in a member account for a specific Firewall Manager policy. A maximum of 100 entries are displayed. If more than 100 resources are
    #       noncompliant, <code>EvaluationLimitExceeded</code> is set to <code>True</code>.</p>
    #
    # @!attribute policy_owner
    #   <p>The Amazon Web Services account that created the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute violators
    #   <p>An array of resources that aren't protected by the WAF or Shield Advanced policy or
    #         that aren't in compliance with the security group policy.</p>
    #
    #   @return [Array<ComplianceViolator>]
    #
    # @!attribute evaluation_limit_exceeded
    #   <p>Indicates if over 100 resources are noncompliant with the Firewall Manager
    #         policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expired_at
    #   <p>A timestamp that indicates when the returned information should be considered out of
    #         date.</p>
    #
    #   @return [Time]
    #
    # @!attribute issue_info_map
    #   <p>Details about problems with dependent services, such as WAF or Config,
    #         and the error message received that indicates the problem with the service.</p>
    #
    #   @return [Hash<String, String>]
    #
    PolicyComplianceDetail = ::Struct.new(
      :policy_owner,
      :policy_id,
      :member_account,
      :violators,
      :evaluation_limit_exceeded,
      :expired_at,
      :issue_info_map,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.evaluation_limit_exceeded ||= false
      end

    end

    # <p>Indicates whether the account is compliant with the specified policy. An account is
    #       considered noncompliant if it includes resources that are not protected by the policy, for
    #       WAF and Shield Advanced policies, or that are noncompliant with the policy, for security group
    #       policies.</p>
    #
    # @!attribute policy_owner
    #   <p>The Amazon Web Services account that created the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the Firewall Manager policy.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account
    #   <p>The member account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_results
    #   <p>An array of <code>EvaluationResult</code> objects.</p>
    #
    #   @return [Array<EvaluationResult>]
    #
    # @!attribute last_updated
    #   <p>Timestamp of the last update to the <code>EvaluationResult</code> objects.</p>
    #
    #   @return [Time]
    #
    # @!attribute issue_info_map
    #   <p>Details about problems with dependent services, such as WAF or Config,
    #         and the error message received that indicates the problem with the service.</p>
    #
    #   @return [Hash<String, String>]
    #
    PolicyComplianceStatus = ::Struct.new(
      :policy_owner,
      :policy_id,
      :policy_name,
      :member_account,
      :evaluation_results,
      :last_updated,
      :issue_info_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PolicyComplianceStatusType
    #
    module PolicyComplianceStatusType
      # No documentation available.
      #
      Compliant = "COMPLIANT"

      # No documentation available.
      #
      NonCompliant = "NON_COMPLIANT"
    end

    # <p>Contains the Network Firewall firewall policy options to configure a centralized deployment
    #          model.</p>
    #
    # @!attribute network_firewall_policy
    #   <p>Defines the deployment model to use for the firewall policy.</p>
    #
    #   @return [NetworkFirewallPolicy]
    #
    # @!attribute third_party_firewall_policy
    #   <p>Defines the policy options for a third-party firewall policy.</p>
    #
    #   @return [ThirdPartyFirewallPolicy]
    #
    PolicyOption = ::Struct.new(
      :network_firewall_policy,
      :third_party_firewall_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the Firewall Manager policy. </p>
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the specified policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_id
    #   <p>The ID of the specified policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the specified policy.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource protected by or in scope of the policy. This is in the format shown
    #           in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #               For WAF and Shield Advanced, examples include
    #           <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> and
    #           <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values
    #         are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a
    #         security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>,
    #           <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security
    #         group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. For an Network Firewall policy or DNS Firewall policy,
    #             the value is <code>AWS::EC2::VPC</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_service_type
    #   <p>The service that the policy is using to protect the resources. This specifies the type of
    #         policy that is created, either an WAF policy, a Shield Advanced policy, or a security
    #         group policy.</p>
    #
    #   Enum, one of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #
    #   @return [String]
    #
    # @!attribute remediation_enabled
    #   <p>Indicates if the policy should be automatically applied to new resources.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delete_unused_fm_managed_resources
    #   <p>Indicates whether Firewall Manager should automatically remove protections from resources that leave the policy scope and clean up resources
    #          that Firewall Manager is managing for accounts when those accounts leave policy scope. For example, Firewall Manager will disassociate a Firewall Manager managed web ACL
    #          from a protected customer resource when the customer resource leaves policy scope. </p>
    #            <p>By default, Firewall Manager doesn't remove protections or delete Firewall Manager managed resources. </p>
    #            <p>This option is not available for Shield Advanced or WAF Classic policies.</p>
    #
    #   @return [Boolean]
    #
    PolicySummary = ::Struct.new(
      :policy_arn,
      :policy_id,
      :policy_name,
      :resource_type,
      :security_service_type,
      :remediation_enabled,
      :delete_unused_fm_managed_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.remediation_enabled ||= false
        self.delete_unused_fm_managed_resources ||= false
      end

    end

    # <p>A list of remediation actions.</p>
    #
    # @!attribute description
    #   <p>A description of the list of remediation actions.</p>
    #
    #   @return [String]
    #
    # @!attribute ordered_remediation_actions
    #   <p>The ordered list of remediation actions.</p>
    #
    #   @return [Array<RemediationActionWithOrder>]
    #
    # @!attribute is_default_action
    #   <p>Information about whether an action is taken by default.</p>
    #
    #   @return [Boolean]
    #
    PossibleRemediationAction = ::Struct.new(
      :description,
      :ordered_remediation_actions,
      :is_default_action,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_default_action ||= false
      end

    end

    # <p>A list of possible remediation action lists. Each individual possible remediation action is a list of individual remediation actions.</p>
    #
    # @!attribute description
    #   <p>A description of the possible remediation actions list.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>Information about the actions.</p>
    #
    #   @return [Array<PossibleRemediationAction>]
    #
    PossibleRemediationActions = ::Struct.new(
      :description,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Firewall Manager protocols list.</p>
    #
    # @!attribute list_id
    #   <p>The ID of the Firewall Manager protocols list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_name
    #   <p>The name of the Firewall Manager protocols list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_update_token
    #   <p>A unique identifier for each update to the list. When you update
    #           the list, the update token must match the token of the current version of the application list.
    #           You can retrieve the update token by getting the list. </p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time that the Firewall Manager protocols list was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The time that the Firewall Manager protocols list was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute protocols_list
    #   <p>An array of protocols in the Firewall Manager protocols list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute previous_protocols_list
    #   <p>A map of previous version numbers to their corresponding protocol arrays.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    ProtocolsListData = ::Struct.new(
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :protocols_list,
      :previous_protocols_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the Firewall Manager protocols list.</p>
    #
    # @!attribute list_arn
    #   <p>The Amazon Resource Name (ARN) of the specified protocols list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_id
    #   <p>The ID of the specified protocols list.</p>
    #
    #   @return [String]
    #
    # @!attribute list_name
    #   <p>The name of the specified protocols list.</p>
    #
    #   @return [String]
    #
    # @!attribute protocols_list
    #   <p>An array of protocols in the Firewall Manager protocols list.</p>
    #
    #   @return [Array<String>]
    #
    ProtocolsListDataSummary = ::Struct.new(
      :list_arn,
      :list_id,
      :list_name,
      :protocols_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apps_list
    #   <p>The details of the Firewall Manager applications list to be created.</p>
    #
    #   @return [AppsListData]
    #
    # @!attribute tag_list
    #   <p>The tags associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    PutAppsListInput = ::Struct.new(
      :apps_list,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apps_list
    #   <p>The details of the Firewall Manager applications list.</p>
    #
    #   @return [AppsListData]
    #
    # @!attribute apps_list_arn
    #   <p>The Amazon Resource Name (ARN) of the applications list.</p>
    #
    #   @return [String]
    #
    PutAppsListOutput = ::Struct.new(
      :apps_list,
      :apps_list_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from
    #         Firewall Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_role_name
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record
    #         Firewall Manager activity. </p>
    #
    #   @return [String]
    #
    PutNotificationChannelInput = ::Struct.new(
      :sns_topic_arn,
      :sns_role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutNotificationChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The details of the Firewall Manager policy to be created.</p>
    #
    #   @return [Policy]
    #
    # @!attribute tag_list
    #   <p>The tags to add to the Amazon Web Services resource.</p>
    #
    #   @return [Array<Tag>]
    #
    PutPolicyInput = ::Struct.new(
      :policy,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The details of the Firewall Manager policy.</p>
    #
    #   @return [Policy]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #
    #   @return [String]
    #
    PutPolicyOutput = ::Struct.new(
      :policy,
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protocols_list
    #   <p>The details of the Firewall Manager protocols list to be created.</p>
    #
    #   @return [ProtocolsListData]
    #
    # @!attribute tag_list
    #   <p>The tags associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    PutProtocolsListInput = ::Struct.new(
      :protocols_list,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protocols_list
    #   <p>The details of the Firewall Manager protocols list.</p>
    #
    #   @return [ProtocolsListData]
    #
    # @!attribute protocols_list_arn
    #   <p>The Amazon Resource Name (ARN) of the protocols list.</p>
    #
    #   @return [String]
    #
    PutProtocolsListOutput = ::Struct.new(
      :protocols_list,
      :protocols_list_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an individual action you can take to remediate a violation.</p>
    #
    # @!attribute description
    #   <p>A description of a remediation action.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_create_route_action
    #   <p>Information about the CreateRoute action in the Amazon EC2 API.</p>
    #
    #   @return [EC2CreateRouteAction]
    #
    # @!attribute ec2_replace_route_action
    #   <p>Information about the ReplaceRoute action in the Amazon EC2 API.</p>
    #
    #   @return [EC2ReplaceRouteAction]
    #
    # @!attribute ec2_delete_route_action
    #   <p>Information about the DeleteRoute action in the Amazon EC2 API.</p>
    #
    #   @return [EC2DeleteRouteAction]
    #
    # @!attribute ec2_copy_route_table_action
    #   <p>Information about the CopyRouteTable action in the Amazon EC2 API.</p>
    #
    #   @return [EC2CopyRouteTableAction]
    #
    # @!attribute ec2_replace_route_table_association_action
    #   <p>Information about the ReplaceRouteTableAssociation action in the Amazon EC2 API.</p>
    #
    #   @return [EC2ReplaceRouteTableAssociationAction]
    #
    # @!attribute ec2_associate_route_table_action
    #   <p>Information about the AssociateRouteTable action in the Amazon EC2 API.</p>
    #
    #   @return [EC2AssociateRouteTableAction]
    #
    # @!attribute ec2_create_route_table_action
    #   <p>Information about the CreateRouteTable action in the Amazon EC2 API.</p>
    #
    #   @return [EC2CreateRouteTableAction]
    #
    # @!attribute fms_policy_update_firewall_creation_config_action
    #   <p>The remedial action to take when updating a firewall configuration.</p>
    #
    #   @return [FMSPolicyUpdateFirewallCreationConfigAction]
    #
    RemediationAction = ::Struct.new(
      :description,
      :ec2_create_route_action,
      :ec2_replace_route_action,
      :ec2_delete_route_action,
      :ec2_copy_route_table_action,
      :ec2_replace_route_table_association_action,
      :ec2_associate_route_table_action,
      :ec2_create_route_table_action,
      :fms_policy_update_firewall_creation_config_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RemediationActionType
    #
    module RemediationActionType
      # No documentation available.
      #
      Remove = "REMOVE"

      # No documentation available.
      #
      Modify = "MODIFY"
    end

    # <p>An ordered list of actions you can take to remediate a violation.</p>
    #
    # @!attribute remediation_action
    #   <p>Information about an action you can take to remediate a violation.</p>
    #
    #   @return [RemediationAction]
    #
    # @!attribute order
    #   <p>The order of the remediation actions in the list.</p>
    #
    #   @return [Integer]
    #
    RemediationActionWithOrder = ::Struct.new(
      :remediation_action,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.order ||= 0
      end

    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource tags that Firewall Manager uses to determine if a particular resource
    #       should be included or excluded from the Firewall Manager policy. Tags enable you to
    #       categorize your Amazon Web Services resources in different ways, for example, by purpose, owner, or
    #       environment. Each tag consists of a key and an optional value. Firewall Manager combines the
    #       tags with "AND" so that, if you add more than one tag to a policy scope, a resource must have
    #         all the specified tags to be included or excluded. For more information, see
    #     <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html">Working with Tag Editor</a>.</p>
    #
    # @!attribute key
    #   <p>The resource tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The resource tag value.</p>
    #
    #   @return [String]
    #
    ResourceTag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violation detail based on resource type.</p>
    #
    # @!attribute aws_vpc_security_group_violation
    #   <p>Violation detail for security groups.</p>
    #
    #   @return [AwsVPCSecurityGroupViolation]
    #
    # @!attribute aws_ec2_network_interface_violation
    #   <p>Violation detail for a network interface.</p>
    #
    #   @return [AwsEc2NetworkInterfaceViolation]
    #
    # @!attribute aws_ec2_instance_violation
    #   <p>Violation detail for an EC2 instance.</p>
    #
    #   @return [AwsEc2InstanceViolation]
    #
    # @!attribute network_firewall_missing_firewall_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that a subnet has no Firewall Manager
    #           managed firewall in its VPC. </p>
    #
    #   @return [NetworkFirewallMissingFirewallViolation]
    #
    # @!attribute network_firewall_missing_subnet_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that an Availability Zone is
    #          missing the expected Firewall Manager managed subnet.</p>
    #
    #   @return [NetworkFirewallMissingSubnetViolation]
    #
    # @!attribute network_firewall_missing_expected_rt_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that a subnet
    #         is not associated with the expected Firewall Manager managed route table. </p>
    #
    #   @return [NetworkFirewallMissingExpectedRTViolation]
    #
    # @!attribute network_firewall_policy_modified_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that a firewall policy
    #          in an individual account has been modified in a way that makes it noncompliant.
    #          For example, the individual account owner might have deleted a rule group,
    #          changed the priority of a stateless rule group, or changed a policy default action.</p>
    #
    #   @return [NetworkFirewallPolicyModifiedViolation]
    #
    # @!attribute network_firewall_internet_traffic_not_inspected_violation
    #   <p>Violation detail for the subnet for which internet traffic hasn't been inspected.</p>
    #
    #   @return [NetworkFirewallInternetTrafficNotInspectedViolation]
    #
    # @!attribute network_firewall_invalid_route_configuration_violation
    #   <p>The route configuration is invalid.</p>
    #
    #   @return [NetworkFirewallInvalidRouteConfigurationViolation]
    #
    # @!attribute network_firewall_black_hole_route_detected_violation
    #   <p>Violation detail for an internet gateway route with an inactive state in the customer subnet route table or Network Firewall subnet route table.</p>
    #
    #   @return [NetworkFirewallBlackHoleRouteDetectedViolation]
    #
    # @!attribute network_firewall_unexpected_firewall_routes_violation
    #   <p>There's an unexpected firewall route.</p>
    #
    #   @return [NetworkFirewallUnexpectedFirewallRoutesViolation]
    #
    # @!attribute network_firewall_unexpected_gateway_routes_violation
    #   <p>There's an unexpected gateway route.</p>
    #
    #   @return [NetworkFirewallUnexpectedGatewayRoutesViolation]
    #
    # @!attribute network_firewall_missing_expected_routes_violation
    #   <p>Expected routes are missing from Network Firewall.</p>
    #
    #   @return [NetworkFirewallMissingExpectedRoutesViolation]
    #
    # @!attribute dns_rule_group_priority_conflict_violation
    #   <p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
    #          tried to associate with a VPC has the same priority as a rule group that's already associated. </p>
    #
    #   @return [DnsRuleGroupPriorityConflictViolation]
    #
    # @!attribute dns_duplicate_rule_group_violation
    #   <p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
    #          tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>
    #
    #   @return [DnsDuplicateRuleGroupViolation]
    #
    # @!attribute dns_rule_group_limit_exceeded_violation
    #   <p>Violation detail for a DNS Firewall policy that indicates that the VPC reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed. </p>
    #
    #   @return [DnsRuleGroupLimitExceededViolation]
    #
    # @!attribute possible_remediation_actions
    #   <p>A list of possible remediation action lists. Each individual possible remediation action is a list of individual remediation actions.</p>
    #
    #   @return [PossibleRemediationActions]
    #
    # @!attribute firewall_subnet_is_out_of_scope_violation
    #   <p>Contains details about the firewall subnet that violates the policy scope.</p>
    #
    #   @return [FirewallSubnetIsOutOfScopeViolation]
    #
    # @!attribute route_has_out_of_scope_endpoint_violation
    #   <p>Contains details about the route endpoint that violates the policy scope.</p>
    #
    #   @return [RouteHasOutOfScopeEndpointViolation]
    #
    # @!attribute third_party_firewall_missing_firewall_violation
    #   <p>The violation details for a third-party firewall that's been deleted.</p>
    #
    #   @return [ThirdPartyFirewallMissingFirewallViolation]
    #
    # @!attribute third_party_firewall_missing_subnet_violation
    #   <p>The violation details for a third-party firewall's subnet that's been deleted.</p>
    #
    #   @return [ThirdPartyFirewallMissingSubnetViolation]
    #
    # @!attribute third_party_firewall_missing_expected_route_table_violation
    #   <p>The violation details for a third-party firewall that has the Firewall Manager managed route table that was associated with the third-party firewall has been deleted.</p>
    #
    #   @return [ThirdPartyFirewallMissingExpectedRouteTableViolation]
    #
    # @!attribute firewall_subnet_missing_vpc_endpoint_violation
    #   <p>The violation details for a third-party firewall's VPC endpoint subnet that was deleted.</p>
    #
    #   @return [FirewallSubnetMissingVPCEndpointViolation]
    #
    ResourceViolation = ::Struct.new(
      :aws_vpc_security_group_violation,
      :aws_ec2_network_interface_violation,
      :aws_ec2_instance_violation,
      :network_firewall_missing_firewall_violation,
      :network_firewall_missing_subnet_violation,
      :network_firewall_missing_expected_rt_violation,
      :network_firewall_policy_modified_violation,
      :network_firewall_internet_traffic_not_inspected_violation,
      :network_firewall_invalid_route_configuration_violation,
      :network_firewall_black_hole_route_detected_violation,
      :network_firewall_unexpected_firewall_routes_violation,
      :network_firewall_unexpected_gateway_routes_violation,
      :network_firewall_missing_expected_routes_violation,
      :dns_rule_group_priority_conflict_violation,
      :dns_duplicate_rule_group_violation,
      :dns_rule_group_limit_exceeded_violation,
      :possible_remediation_actions,
      :firewall_subnet_is_out_of_scope_violation,
      :route_has_out_of_scope_endpoint_violation,
      :third_party_firewall_missing_firewall_violation,
      :third_party_firewall_missing_subnet_violation,
      :third_party_firewall_missing_expected_route_table_violation,
      :firewall_subnet_missing_vpc_endpoint_violation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a route in a route table.</p>
    #
    # @!attribute destination_type
    #   <p>The type of destination for the route.</p>
    #
    #   Enum, one of: ["IPV4", "IPV6", "PREFIX_LIST"]
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The type of target for the route.</p>
    #
    #   Enum, one of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The route's target.</p>
    #
    #   @return [String]
    #
    Route = ::Struct.new(
      :destination_type,
      :target_type,
      :destination,
      :target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the route endpoint that violates the policy scope.</p>
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet associated with the route that violates the policy scope.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the route that violates the policy scope.</p>
    #
    #   @return [String]
    #
    # @!attribute route_table_id
    #   <p>The ID of the route table.</p>
    #
    #   @return [String]
    #
    # @!attribute violating_routes
    #   <p>The list of routes that violate the route table.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute subnet_availability_zone
    #   <p>The subnet's Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone_id
    #   <p>The ID of the subnet's Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute current_firewall_subnet_route_table
    #   <p>The route table associated with the current firewall subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_subnet_id
    #   <p>The ID of the firewall subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_subnet_routes
    #   <p>The list of firewall subnet routes.</p>
    #
    #   @return [Array<Route>]
    #
    # @!attribute internet_gateway_id
    #   <p>The ID of the Internet Gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute current_internet_gateway_route_table
    #   <p>The current route table associated with the Internet Gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute internet_gateway_routes
    #   <p>The routes in the route table associated with the Internet Gateway.</p>
    #
    #   @return [Array<Route>]
    #
    RouteHasOutOfScopeEndpointViolation = ::Struct.new(
      :subnet_id,
      :vpc_id,
      :route_table_id,
      :violating_routes,
      :subnet_availability_zone,
      :subnet_availability_zone_id,
      :current_firewall_subnet_route_table,
      :firewall_subnet_id,
      :firewall_subnet_routes,
      :internet_gateway_id,
      :current_internet_gateway_route_table,
      :internet_gateway_routes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Remediation option for the rule specified in the <code>ViolationTarget</code>.</p>
    #
    # @!attribute remediation_action_type
    #   <p>The remediation action that will be performed.</p>
    #
    #   Enum, one of: ["REMOVE", "MODIFY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Brief description of the action that will be performed.</p>
    #
    #   @return [String]
    #
    # @!attribute remediation_result
    #   <p>The final state of the rule specified in the <code>ViolationTarget</code> after it is remediated.</p>
    #
    #   @return [SecurityGroupRuleDescription]
    #
    # @!attribute is_default_action
    #   <p>Indicates if the current action is the default action.</p>
    #
    #   @return [Boolean]
    #
    SecurityGroupRemediationAction = ::Struct.new(
      :remediation_action_type,
      :description,
      :remediation_result,
      :is_default_action,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_default_action ||= false
      end

    end

    # <p>Describes a set of permissions for a security group rule.</p>
    #
    # @!attribute ipv4_range
    #   <p>The IPv4 ranges for the security group rule.</p>
    #
    #   @return [String]
    #
    # @!attribute ipv6_range
    #   <p>The IPv6 ranges for the security group rule.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix_list_id
    #   <p>The ID of the prefix list for the security group rule.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number.</p>
    #
    #   @return [String]
    #
    # @!attribute from_port
    #   <p>The start of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. A value of <code>-1</code> indicates all ICMP/ICMPv6 types.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The end of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of <code>-1</code> indicates all ICMP/ICMPv6 codes.</p>
    #
    #   @return [Integer]
    #
    SecurityGroupRuleDescription = ::Struct.new(
      :ipv4_range,
      :ipv6_range,
      :prefix_list_id,
      :protocol,
      :from_port,
      :to_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the security service that is being used to protect the resources.</p>
    #
    # @!attribute type
    #   <p>The service that the policy is using to protect the resources. This specifies the type of
    #         policy that is created, either an WAF policy, a Shield Advanced policy, or a security
    #         group policy. For security group policies, Firewall Manager supports one security group for
    #         each common policy and for each content audit policy. This is an adjustable limit that you can
    #         increase by contacting Amazon Web Services Support.</p>
    #
    #   Enum, one of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #
    #   @return [String]
    #
    # @!attribute managed_service_data
    #   <p>Details about the service that are specific to the service type, in JSON format. </p>
    #            <ul>
    #               <li>
    #                  <p>Example: <code>DNS_FIREWALL</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"DNS_FIREWALL\",\"preProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-1\",\"priority\":10}],\"postProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-2\",\"priority\":9911}]}"</code>
    #                  </p>
    #                  <note>
    #                     <p>Valid values for <code>preProcessRuleGroups</code> are between 1 and 99. Valid
    #                   values for <code>postProcessRuleGroups</code> are between 9901 and 10000.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>Example: <code>DNS_FIREWALL</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"DNS_FIREWALL\",\"preProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-1\",\"priority\":10}],\"postProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-2\",\"priority\":9911}]}"</code>
    #                  </p>
    #                  <note>
    #                     <p>Valid values for <code>preProcessRuleGroups</code> are between 1 and 99. Valid
    #                    values for <code>postProcessRuleGroups</code> are between 9901 and 10000.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 automatic Availability Zone configuration. With automatic Availbility Zone
    #                 configuration, Firewall Manager chooses which Availability Zones to create the endpoints in. </p>
    #                  <p>
    #                     <code>"{ \"type\": \"NETWORK_FIREWALL\",
    #                    \"networkFirewallStatelessRuleGroupReferences\": [ { \"resourceARN\":
    #                    \"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",
    #                    \"priority\": 1 } ], \"networkFirewallStatelessDefaultActions\": [
    #                    \"aws:forward_to_sfe\", \"customActionName\" ],
    #                    \"networkFirewallStatelessFragmentDefaultActions\": [ \"aws:forward_to_sfe\",
    #                    \"customActionName\" ], \"networkFirewallStatelessCustomActions\": [ {
    #                    \"actionName\": \"customActionName\", \"actionDefinition\": {
    #                    \"publishMetricAction\": { \"dimensions\": [ { \"value\": \"metricdimensionvalue\"
    #                    } ] } } } ], \"networkFirewallStatefulRuleGroupReferences\": [ { \"resourceARN\":
    #                    \"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\" } ],
    #                    \"networkFirewallOrchestrationConfig\": { \"singleFirewallEndpointPerVPC\": false,
    #                    \"allowedIPV4CidrList\": [ \"10.0.0.0/28\", \"192.168.0.0/28\" ],
    #                    \"routeManagementAction\": \"OFF\" }, \"networkFirewallLoggingConfiguration\": {
    #                    \"logDestinationConfigs\": [ { \"logDestinationType\": \"S3\", \"logType\":
    #                    \"ALERT\", \"logDestination\": { \"bucketName\": \"s3-bucket-name\" } }, {
    #                    \"logDestinationType\": \"S3\", \"logType\": \"FLOW\", \"logDestination\": {
    #                    \"bucketName\": \"s3-bucket-name\" } } ], \"overrideExistingConfig\": true }
    #                    }"</code>
    #                  </p>
    #                  <p> To use the distributed deployment model, you must set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to
    #                    <code>NULL</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 automatic Availability Zone configuration, and route management. </p>
    #                  <p>
    #                     <code>"{ \"type\": \"NETWORK_FIREWALL\",
    #                    \"networkFirewallStatelessRuleGroupReferences\": [ { \"resourceARN\":
    #                    \"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",
    #                    \"priority\": 1 } ], \"networkFirewallStatelessDefaultActions\": [
    #                    \"aws:forward_to_sfe\", \"customActionName\" ],
    #                    \"networkFirewallStatelessFragmentDefaultActions\": [ \"aws:forward_to_sfe\",
    #                    \"customActionName\" ], \"networkFirewallStatelessCustomActions\": [ {
    #                    \"actionName\": \"customActionName\", \"actionDefinition\": {
    #                    \"publishMetricAction\": { \"dimensions\": [ { \"value\": \"metricdimensionvalue\"
    #                    } ] } } } ], \"networkFirewallStatefulRuleGroupReferences\": [ { \"resourceARN\":
    #                    \"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\" } ],
    #                    \"networkFirewallOrchestrationConfig\": { \"singleFirewallEndpointPerVPC\": false,
    #                    \"allowedIPV4CidrList\": [ \"10.0.0.0/28\", \"192.168.0.0/28\" ],
    #                    \"routeManagementAction\": \"MONITOR\", \"routeManagementTargetTypes\": [
    #                    \"InternetGateway\" ] }, \"networkFirewallLoggingConfiguration\": {
    #                    \"logDestinationConfigs\": [ { \"logDestinationType\": \"S3\", \"logType\":
    #                    \"ALERT\", \"logDestination\": { \"bucketName\": \"s3-bucket-name\" } }, {
    #                    \"logDestinationType\": \"S3\", \"logType\": \"FLOW\", \"logDestination\": {
    #                    \"bucketName\": \"s3-bucket-name\" } } ], \"overrideExistingConfig\": true }
    #                    }"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 custom Availability Zone configuration. With custom Availability Zone configuration,
    #                 you define which specific Availability Zones to create endpoints in by configuring
    #                    <code>firewallCreationConfig</code>. </p>
    #                  <p>
    #                     <code>"{
    #                    \"type\":\"NETWORK_FIREWALL\",\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],
    #                    \"networkFirewallStatelessDefaultActions\":[ \"aws:forward_to_sfe\",
    #                    \"customActionName\" ], \"networkFirewallStatelessFragmentDefaultActions\":[
    #                    \"aws:forward_to_sfe\", \"fragmentcustomactionname\" ],
    #                    \"networkFirewallStatelessCustomActions\":[ { \"actionName\":\"customActionName\",
    #                    \"actionDefinition\":{ \"publishMetricAction\":{ \"dimensions\":[ {
    #                    \"value\":\"metricdimensionvalue\" } ] } } }, {
    #                    \"actionName\":\"fragmentcustomactionname\", \"actionDefinition\":{
    #                    \"publishMetricAction\":{ \"dimensions\":[ {
    #                    \"value\":\"fragmentmetricdimensionvalue\" } ] } } } ],
    #                    \"networkFirewallStatefulRuleGroupReferences\":[ {
    #                    \"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"
    #                    } ], \"networkFirewallOrchestrationConfig\":{ \"firewallCreationConfig\":{
    #                    \"endpointLocation\":{ \"availabilityZoneConfigList\":[ {
    #                    \"availabilityZoneId\":null, \"availabilityZoneName\":\"us-east-1a\",
    #                    \"allowedIPV4CidrList\":[ \"10.0.0.0/28\" ] }, { ¯\"availabilityZoneId\":null,
    #                    \"availabilityZoneName\":\"us-east-1b\", \"allowedIPV4CidrList\":[ \"10.0.0.0/28\"
    #                    ] } ] } }, \"singleFirewallEndpointPerVPC\":false, \"allowedIPV4CidrList\":null,
    #                    \"routeManagementAction\":\"OFF\", \"networkFirewallLoggingConfiguration\":{
    #                    \"logDestinationConfigs\":[ { \"logDestinationType\":\"S3\",
    #                    \"logType\":\"ALERT\", \"logDestination\":{ \"bucketName\":\"s3-bucket-name\" } },
    #                    { \"logDestinationType\":\"S3\", \"logType\":\"FLOW\", \"logDestination\":{
    #                    \"bucketName\":\"s3-bucket-name\" } } ], \"overrideExistingConfig\":boolean }
    #                    }"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 custom Availability Zone configuration, and route management. </p>
    #                  <p>
    #                     <code>"{
    #                    \"type\":\"NETWORK_FIREWALL\",\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],
    #                    \"networkFirewallStatelessDefaultActions\":[ \"aws:forward_to_sfe\",
    #                    \"customActionName\" ], \"networkFirewallStatelessFragmentDefaultActions\":[
    #                    \"aws:forward_to_sfe\", \"fragmentcustomactionname\" ],
    #                    \"networkFirewallStatelessCustomActions\":[ { \"actionName\":\"customActionName\",
    #                    \"actionDefinition\":{ \"publishMetricAction\":{ \"dimensions\":[ {
    #                    \"value\":\"metricdimensionvalue\" } ] } } }, {
    #                    \"actionName\":\"fragmentcustomactionname\", \"actionDefinition\":{
    #                    \"publishMetricAction\":{ \"dimensions\":[ {
    #                    \"value\":\"fragmentmetricdimensionvalue\" } ] } } } ],
    #                    \"networkFirewallStatefulRuleGroupReferences\":[ {
    #                    \"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"
    #                    } ], \"networkFirewallOrchestrationConfig\":{ \"firewallCreationConfig\":{
    #                    \"endpointLocation\":{ \"availabilityZoneConfigList\":[ {
    #                    \"availabilityZoneId\":null, \"availabilityZoneName\":\"us-east-1a\",
    #                    \"allowedIPV4CidrList\":[ \"10.0.0.0/28\" ] }, { ¯\"availabilityZoneId\":null,
    #                    \"availabilityZoneName\":\"us-east-1b\", \"allowedIPV4CidrList\":[ \"10.0.0.0/28\"
    #                    ] } ] } }, \"singleFirewallEndpointPerVPC\":false, \"allowedIPV4CidrList\":null,
    #                    \"routeManagementAction\":\"MONITOR\", \"routeManagementTargetTypes\":[
    #                    \"InternetGateway\" ], \"routeManagementConfig\":{
    #                    \"allowCrossAZTrafficIfNoEndpoint\":true } },
    #                    \"networkFirewallLoggingConfiguration\":{ \"logDestinationConfigs\":[ {
    #                    \"logDestinationType\":\"S3\", \"logType\":\"ALERT\", \"logDestination\":{
    #                    \"bucketName\":\"s3-bucket-name\" } }, { \"logDestinationType\":\"S3\",
    #                    \"logType\":\"FLOW\", \"logDestination\":{ \"bucketName\":\"s3-bucket-name\" } }
    #                    ], \"overrideExistingConfig\":boolean } }"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>PARTNER_FIREWALL</code> for Firewall Manager</p>
    #                  <p>
    #                     <code>"{\"type\":\"THIRD_PARTY_FIREWALL\",\"thirdPartyrFirewall\":\"PALO_ALTO_NETWORKS_CLOUD_NGFW\",\"thirdPartyFirewallConfig\":{\"thirdPartyFirewallPolicyList\":[\"global-123456789012-1\"],\"networkFirewallLoggingConfiguration\":null},\"firewallDeploymentModel\":{\"distributedFirewallDeploymentModel\":{\"distributedFirewallOrchestrationConfig\":{\"firewallCreationConfig\":{\"endpointLocation\":{\"availabilityZoneConfigList\":[{\"availabilityZoneId\":null,\"availabilityZoneName\":\"us-east-1a\",\"allowedIPV4CidrList\":[\"10.0.1.0/28\"]}]}},\"allowedIPV4CidrList\":null},\"distributedRouteManagementConfig\":null},\"centralizedFirewallDeploymentModel\":null}}""</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specification for <code>SHIELD_ADVANCED</code> for Amazon CloudFront distributions </p>
    #                  <p>
    #                     <code>"{\"type\":\"SHIELD_ADVANCED\",\"automaticResponseConfiguration\":
    #                    {\"automaticResponseStatus\":\"ENABLED|IGNORED|DISABLED\",
    #                    \"automaticResponseAction\":\"BLOCK|COUNT\"},
    #                    \"overrideCustomerWebaclClassic\":true|false}"</code>
    #                  </p>
    #                  <p>For example:
    #                    <code>"{\"type\":\"SHIELD_ADVANCED\",\"automaticResponseConfiguration\":
    #                    {\"automaticResponseStatus\":\"ENABLED\",
    #                    \"automaticResponseAction\":\"COUNT\"}}"</code>
    #                  </p>
    #                  <p>The default value for <code>automaticResponseStatus</code> is
    #                    <code>IGNORED</code>. The value for <code>automaticResponseAction</code> is only
    #                 required when <code>automaticResponseStatus</code> is set to <code>ENABLED</code>.
    #                 The default value for <code>overrideCustomerWebaclClassic</code> is
    #                    <code>false</code>.</p>
    #                  <p>For other resource types that you can protect with a Shield Advanced policy, this
    #                    <code>ManagedServiceData</code> configuration is an empty string.</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAFV2</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"WAFV2\",\"preProcessRuleGroups\":[{\"ruleGroupArn\":null,\"overrideAction\":{\"type\":\"NONE\"},\"managedRuleGroupIdentifier\":{\"version\":null,\"vendorName\":\"AWS\",\"managedRuleGroupName\":\"AWSManagedRulesAmazonIpReputationList\"},\"ruleGroupType\":\"ManagedRuleGroup\",\"excludeRules\":[{\"name\":\"NoUserAgent_HEADER\"}]}],\"postProcessRuleGroups\":[],\"defaultAction\":{\"type\":\"ALLOW\"},\"overrideCustomerWebACLAssociation\":false,\"loggingConfiguration\":{\"logDestinationConfigs\":[\"arn:aws:firehose:us-west-2:12345678912:deliverystream/aws-waf-logs-fms-admin-destination\"],\"redactedFields\":[{\"redactedFieldType\":\"SingleHeader\",\"redactedFieldValue\":\"Cookies\"},{\"redactedFieldType\":\"Method\"}]}}"</code>
    #                  </p>
    #                  <p>In the <code>loggingConfiguration</code>, you can specify one
    #                    <code>logDestinationConfigs</code>, you can optionally provide up to 20
    #                    <code>redactedFields</code>, and the <code>RedactedFieldType</code> must be one of
    #                    <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>, or
    #                    <code>METHOD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAF Classic</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\": \"WAF\", \"ruleGroups\":
    #                    [{\"id\":\"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" : {\"type\":
    #                    \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}}"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAFV2</code> -  Firewall Manager support for WAF managed rule group versioning
    #             </p>
    #                  <p>
    #                     <code>"{\"type\":\"WAFV2\",\"preProcessRuleGroups\":[{\"ruleGroupArn\":null,\"overrideAction\":{\"type\":\"NONE\"},\"managedRuleGroupIdentifier\":{\"versionEnabled\":true,\"version\":\"Version_2.0\",\"vendorName\":\"AWS\",\"managedRuleGroupName\":\"AWSManagedRulesCommonRuleSet\"},\"ruleGroupType\":\"ManagedRuleGroup\",\"excludeRules\":[{\"name\":\"NoUserAgent_HEADER\"}]}],\"postProcessRuleGroups\":[],\"defaultAction\":{\"type\":\"ALLOW\"},\"overrideCustomerWebACLAssociation\":false,\"loggingConfiguration\":{\"logDestinationConfigs\":[\"arn:aws:firehose:us-west-2:12345678912:deliverystream/aws-waf-logs-fms-admin-destination\"],\"redactedFields\":[{\"redactedFieldType\":\"SingleHeader\",\"redactedFieldValue\":\"Cookies\"},{\"redactedFieldType\":\"Method\"}]}}"</code>
    #                  </p>
    #                  <p>
    #               To use a specific version of a WAF managed rule group in your Firewall Manager policy, you must set <code>versionEnabled</code> to <code>true</code>, and set <code>version</code> to the version you'd like to use. If you don't set <code>versionEnabled</code> to <code>true</code>, or if you omit <code>versionEnabled</code>, then Firewall Manager uses the default version of the WAF managed rule group.
    #             </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_COMMON</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_COMMON\",\"revertManualSecurityGroupChanges\":false,\"exclusiveResourceSecurityGroupManagement\":false,
    #                    \"applyToAllEC2InstanceENIs\":false,\"securityGroups\":[{\"id\":\"
    #                    sg-000e55995d61a06bd\"}]}"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: Shared VPCs. Apply the preceding policy to resources in shared VPCs as
    #                 well as to those in VPCs that the account owns </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_COMMON\",\"revertManualSecurityGroupChanges\":false,\"exclusiveResourceSecurityGroupManagement\":false,
    #                    \"applyToAllEC2InstanceENIs\":false,\"includeSharedVPC\":true,\"securityGroups\":[{\"id\":\"
    #                    sg-000e55995d61a06bd\"}]}"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_CONTENT_AUDIT</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_CONTENT_AUDIT\",\"securityGroups\":[{\"id\":\"sg-000e55995d61a06bd\"}],\"securityGroupAction\":{\"type\":\"ALLOW\"}}"</code>
    #                  </p>
    #                  <p>The security group action for content audit can be <code>ALLOW</code> or
    #                    <code>DENY</code>. For <code>ALLOW</code>, all in-scope security group rules must
    #                 be within the allowed range of the policy's security group rules. For
    #                    <code>DENY</code>, all in-scope security group rules must not contain a value or a
    #                 range that matches a rule value or range in the policy security group.</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_USAGE_AUDIT</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_USAGE_AUDIT\",\"deleteUnusedSecurityGroups\":true,\"coalesceRedundantSecurityGroups\":true}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute policy_option
    #   <p>Contains the Network Firewall firewall policy options to configure a centralized deployment
    #            model.</p>
    #
    #   @return [PolicyOption]
    #
    SecurityServicePolicyData = ::Struct.new(
      :type,
      :managed_service_data,
      :policy_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SecurityServiceType
    #
    module SecurityServiceType
      # No documentation available.
      #
      WAF = "WAF"

      # No documentation available.
      #
      WAFV2 = "WAFV2"

      # No documentation available.
      #
      SHIELD_ADVANCED = "SHIELD_ADVANCED"

      # No documentation available.
      #
      SECURITY_GROUPS_COMMON = "SECURITY_GROUPS_COMMON"

      # No documentation available.
      #
      SECURITY_GROUPS_CONTENT_AUDIT = "SECURITY_GROUPS_CONTENT_AUDIT"

      # No documentation available.
      #
      SECURITY_GROUPS_USAGE_AUDIT = "SECURITY_GROUPS_USAGE_AUDIT"

      # No documentation available.
      #
      NETWORK_FIREWALL = "NETWORK_FIREWALL"

      # No documentation available.
      #
      DNS_FIREWALL = "DNS_FIREWALL"

      # No documentation available.
      #
      THIRD_PARTY_FIREWALL = "THIRD_PARTY_FIREWALL"
    end

    # <p>Network Firewall stateful rule group, used in a <a>NetworkFirewallPolicyDescription</a>. </p>
    #
    # @!attribute rule_group_name
    #   <p>The name of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID of the rule group.</p>
    #
    #   @return [String]
    #
    StatefulRuleGroup = ::Struct.new(
      :rule_group_name,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Network Firewall stateless rule group, used in a <a>NetworkFirewallPolicyDescription</a>. </p>
    #
    # @!attribute rule_group_name
    #   <p>The name of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority of the rule group. Network Firewall evaluates the stateless rule groups in a firewall policy starting from the lowest priority setting. </p>
    #
    #   @return [Integer]
    #
    StatelessRuleGroup = ::Struct.new(
      :rule_group_name,
      :resource_id,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.priority ||= 0
      end

    end

    # <p>A collection of key:value pairs associated with an Amazon Web Services resource. The key:value pair can be anything you define. Typically, the tag key represents a category (such as "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50 tags to each Amazon Web Services resource.  </p>
    #
    # @!attribute key
    #   <p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.  </p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_list
    #   <p>The tags to add to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetType
    #
    module TargetType
      # No documentation available.
      #
      Gateway = "GATEWAY"

      # No documentation available.
      #
      CarrierGateway = "CARRIER_GATEWAY"

      # No documentation available.
      #
      Instance = "INSTANCE"

      # No documentation available.
      #
      LocalGateway = "LOCAL_GATEWAY"

      # No documentation available.
      #
      NatGateway = "NAT_GATEWAY"

      # No documentation available.
      #
      NetworkInterface = "NETWORK_INTERFACE"

      # No documentation available.
      #
      VPCEndpoint = "VPC_ENDPOINT"

      # No documentation available.
      #
      VPCPeeringConnection = "VPC_PEERING_CONNECTION"

      # No documentation available.
      #
      EgressOnlyInternetGateway = "EGRESS_ONLY_INTERNET_GATEWAY"

      # No documentation available.
      #
      TransitGateway = "TRANSIT_GATEWAY"
    end

    # Includes enum constants for ThirdPartyFirewall
    #
    module ThirdPartyFirewall
      # No documentation available.
      #
      PALO_ALTO_NETWORKS_CLOUD_NGFW = "PALO_ALTO_NETWORKS_CLOUD_NGFW"
    end

    # Includes enum constants for ThirdPartyFirewallAssociationStatus
    #
    module ThirdPartyFirewallAssociationStatus
      # No documentation available.
      #
      ONBOARDING = "ONBOARDING"

      # No documentation available.
      #
      ONBOARD_COMPLETE = "ONBOARD_COMPLETE"

      # No documentation available.
      #
      OFFBOARDING = "OFFBOARDING"

      # No documentation available.
      #
      OFFBOARD_COMPLETE = "OFFBOARD_COMPLETE"

      # No documentation available.
      #
      NOT_EXIST = "NOT_EXIST"
    end

    # <p>Configures the firewall policy deployment model for a third-party firewall. The deployment model can either be distributed or centralized.</p>
    #
    # @!attribute firewall_policy_id
    #   <p>The ID of the specified firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_name
    #   <p>The name of the specified firewall policy.</p>
    #
    #   @return [String]
    #
    ThirdPartyFirewallFirewallPolicy = ::Struct.new(
      :firewall_policy_id,
      :firewall_policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The violation details for a third-party firewall that's not associated with an Firewall Manager managed route table.</p>
    #
    # @!attribute violation_target
    #   <p>The ID of the third-party firewall or VPC resource that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a fireawll subnet that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of the firewall subnet that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute current_route_table
    #   <p>The resource ID of the current route table that's associated with the subnet, if one is available.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_route_table
    #   <p>The resource ID of the route table that should be associated with the subnet.</p>
    #
    #   @return [String]
    #
    ThirdPartyFirewallMissingExpectedRouteTableViolation = ::Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :current_route_table,
      :expected_route_table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The violation details about a third-party firewall's subnet that doesn't have a Firewall Manager managed firewall in its VPC.</p>
    #
    # @!attribute violation_target
    #   <p>The ID of the third-party firewall that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a third-party firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of the third-party firewall that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute target_violation_reason
    #   <p>The reason the resource is causing this violation, if a reason is available.</p>
    #
    #   @return [String]
    #
    ThirdPartyFirewallMissingFirewallViolation = ::Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The violation details for a third-party firewall for an Availability Zone that's missing the Firewall Manager managed subnet.</p>
    #
    # @!attribute violation_target
    #   <p>The ID of the third-party firewall or VPC resource that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a subnet that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone of a subnet that's causing the violation.</p>
    #
    #   @return [String]
    #
    # @!attribute target_violation_reason
    #   <p>The reason the resource is causing the violation, if a reason is available.</p>
    #
    #   @return [String]
    #
    ThirdPartyFirewallMissingSubnetViolation = ::Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configures the policy for the third-party firewall.</p>
    #
    # @!attribute firewall_deployment_model
    #   <p>Defines the deployment model to use for the third-party firewall.</p>
    #
    #   Enum, one of: ["CENTRALIZED", "DISTRIBUTED"]
    #
    #   @return [String]
    #
    ThirdPartyFirewallPolicy = ::Struct.new(
      :firewall_deployment_model,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the resource. </p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.</p>
    #
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that the violation details were requested for.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account
    #   <p>The Amazon Web Services account that the violation details were requested for.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID that the violation details were requested for.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type that the violation details were requested for.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_violations
    #   <p>List of violations for the requested resource.</p>
    #
    #   @return [Array<ResourceViolation>]
    #
    # @!attribute resource_tags
    #   <p>The <code>ResourceTag</code> objects associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute resource_description
    #   <p>Brief description for the requested resource.</p>
    #
    #   @return [String]
    #
    ViolationDetail = ::Struct.new(
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type,
      :resource_violations,
      :resource_tags,
      :resource_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ViolationReason
    #
    module ViolationReason
      # No documentation available.
      #
      WebAclMissingRuleGroup = "WEB_ACL_MISSING_RULE_GROUP"

      # No documentation available.
      #
      ResourceMissingWebAcl = "RESOURCE_MISSING_WEB_ACL"

      # No documentation available.
      #
      ResourceIncorrectWebAcl = "RESOURCE_INCORRECT_WEB_ACL"

      # No documentation available.
      #
      ResourceMissingShieldProtection = "RESOURCE_MISSING_SHIELD_PROTECTION"

      # No documentation available.
      #
      ResourceMissingWebaclOrShieldProtection = "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"

      # No documentation available.
      #
      ResourceMissingSecurityGroup = "RESOURCE_MISSING_SECURITY_GROUP"

      # No documentation available.
      #
      ResourceViolatesAuditSecurityGroup = "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"

      # No documentation available.
      #
      SecurityGroupUnused = "SECURITY_GROUP_UNUSED"

      # No documentation available.
      #
      SecurityGroupRedundant = "SECURITY_GROUP_REDUNDANT"

      # No documentation available.
      #
      FMSCreatedSecurityGroupEdited = "FMS_CREATED_SECURITY_GROUP_EDITED"

      # No documentation available.
      #
      MissingFirewall = "MISSING_FIREWALL"

      # No documentation available.
      #
      MissingFirewallSubnetInAZ = "MISSING_FIREWALL_SUBNET_IN_AZ"

      # No documentation available.
      #
      MissingExpectedRouteTable = "MISSING_EXPECTED_ROUTE_TABLE"

      # No documentation available.
      #
      NetworkFirewallPolicyModified = "NETWORK_FIREWALL_POLICY_MODIFIED"

      # No documentation available.
      #
      FirewallSubnetIsOutOfScope = "FIREWALL_SUBNET_IS_OUT_OF_SCOPE"

      # No documentation available.
      #
      InternetGatewayMissingExpectedRoute = "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE"

      # No documentation available.
      #
      FirewallSubnetMissingExpectedRoute = "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE"

      # No documentation available.
      #
      UnexpectedFirewallRoutes = "UNEXPECTED_FIREWALL_ROUTES"

      # No documentation available.
      #
      UnexpectedTargetGatewayRoutes = "UNEXPECTED_TARGET_GATEWAY_ROUTES"

      # No documentation available.
      #
      TrafficInspectionCrossesAZBoundary = "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY"

      # No documentation available.
      #
      InvalidRouteConfiguration = "INVALID_ROUTE_CONFIGURATION"

      # No documentation available.
      #
      MissingTargetGateway = "MISSING_TARGET_GATEWAY"

      # No documentation available.
      #
      InternetTrafficNotInspected = "INTERNET_TRAFFIC_NOT_INSPECTED"

      # No documentation available.
      #
      BlackHoleRouteDetected = "BLACK_HOLE_ROUTE_DETECTED"

      # No documentation available.
      #
      BlackHoleRouteDetectedInFirewallSubnet = "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET"

      # No documentation available.
      #
      ResourceMissingDnsFirewall = "RESOURCE_MISSING_DNS_FIREWALL"

      # No documentation available.
      #
      RouteHasOutOfScopeEndpoint = "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT"

      # No documentation available.
      #
      FirewallSubnetMissingVPCEndpoint = "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT"
    end

  end
end
