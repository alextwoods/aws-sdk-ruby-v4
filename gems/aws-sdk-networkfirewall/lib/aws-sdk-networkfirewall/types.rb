# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkFirewall
  module Types

    # <p>A custom action to use in stateless rule actions settings. This is used in <a>CustomAction</a>.</p>
    #
    # @!attribute publish_metric_action
    #   <p>Stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the
    #            matching packet. This setting defines a CloudWatch dimension value to be published.</p>
    #            <p>You can pair this custom action with any of the standard stateless rule actions. For
    #            example, you could pair this in a rule action with the standard action that forwards the
    #            packet for stateful inspection. Then, when a packet matches the rule, Network Firewall
    #            publishes metrics for the packet and forwards it. </p>
    #
    #   @return [PublishMetricAction]
    #
    ActionDefinition = ::Struct.new(
      :publish_metric_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single IP address specification. This is used in the <a>MatchAttributes</a>
    #          source and destination specifications.</p>
    #
    # @!attribute address_definition
    #   <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4. </p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #            Inter-Domain Routing</a>.</p>
    #
    #   @return [String]
    #
    Address = ::Struct.new(
      :address_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #           <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #
    #   @return [String]
    #
    AssociateFirewallPolicyInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    AssociateFirewallPolicyOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :firewall_policy_arn,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets that you want to associate with the firewall. </p>
    #
    #   @return [Array<SubnetMapping>]
    #
    AssociateSubnetsInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets that are associated with the firewall. </p>
    #
    #   @return [Array<SubnetMapping>]
    #
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    AssociateSubnetsOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration and status for a single subnet that you've specified for use by the
    #          Network Firewall firewall. This is part of the <a>FirewallStatus</a>.</p>
    #
    # @!attribute subnet_id
    #   <p>The unique identifier of the subnet that you've specified to be used for a firewall
    #            endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The identifier of the firewall endpoint that Network Firewall has instantiated in the
    #            subnet. You use this to identify the firewall endpoint in the VPC route tables, when you
    #            redirect the VPC traffic through the endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the firewall endpoint in the subnet. This value reflects both the
    #            instantiation of the endpoint in the VPC subnet and the sync states that are reported in
    #            the <code>Config</code> settings. When this value is <code>READY</code>, the endpoint is
    #            available and configured properly to handle network traffic. When the endpoint isn't
    #            available for traffic, this value will reflect its state, for example
    #            <code>CREATING</code>, <code>DELETING</code>, or <code>FAILED</code>.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "SCALING", "READY"]
    #
    #   @return [String]
    #
    Attachment = ::Struct.new(
      :subnet_id,
      :endpoint_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AttachmentStatus
    #
    module AttachmentStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      SCALING = "SCALING"

      # No documentation available.
      #
      READY = "READY"
    end

    # Includes enum constants for ConfigurationSyncState
    #
    module ConfigurationSyncState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_SYNC = "IN_SYNC"
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>FirewallPolicy</a> that you want to
    #            use for the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC where Network Firewall should create the firewall. </p>
    #            <p>You can't change this setting after you create the firewall. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_mappings
    #   <p>The public subnets to use for your Network Firewall firewalls. Each subnet must belong to a
    #            different Availability Zone in the VPC. Network Firewall creates a firewall endpoint in each
    #            subnet. </p>
    #
    #   @return [Array<SubnetMapping>]
    #
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall resources.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    CreateFirewallInput = ::Struct.new(
      :firewall_name,
      :firewall_policy_arn,
      :vpc_id,
      :subnet_mappings,
      :delete_protection,
      :subnet_change_protection,
      :firewall_policy_change_protection,
      :description,
      :tags,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_protection ||= false
        self.subnet_change_protection ||= false
        self.firewall_policy_change_protection ||= false
      end
    end

    # @!attribute firewall
    #   <p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>
    #
    #   @return [Firewall]
    #
    # @!attribute firewall_status
    #   <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #
    #   @return [FirewallStatus]
    #
    CreateFirewallOutput = ::Struct.new(
      :firewall,
      :firewall_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy
    #   <p>The rule groups and policy actions to use in the firewall policy.</p>
    #
    #   @return [FirewallPolicy]
    #
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    CreateFirewallPolicyInput = ::Struct.new(
      :firewall_policy_name,
      :firewall_policy,
      :description,
      :tags,
      :dry_run,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_response
    #   <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #
    #   @return [FirewallPolicyResponse]
    #
    CreateFirewallPolicyOutput = ::Struct.new(
      :update_token,
      :firewall_policy_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    #
    #   @return [RuleGroup]
    #
    # @!attribute rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #            <note>
    #               <p>You can't change or exceed this capacity when you update the rule group, so leave
    #               room for your rule group to grow. </p>
    #            </note>
    #            <p>
    #               <b>Capacity for a stateless rule group</b>
    #            </p>
    #            <p>For a stateless rule group, the capacity required is the sum of the capacity
    #            requirements of the individual rules that you expect to have in the rule group. </p>
    #            <p>To calculate the capacity requirement of a single rule, multiply the capacity
    #            requirement values of each of the rule's match settings:</p>
    #            <ul>
    #               <li>
    #                  <p>A match setting with no criteria specified has a value of 1. </p>
    #               </li>
    #               <li>
    #                  <p>A match setting with <code>Any</code> specified has a value of 1. </p>
    #               </li>
    #               <li>
    #                  <p>All other match settings have a value equal to the number of elements provided in
    #                  the setting. For example, a protocol setting ["UDP"] and a source setting
    #                  ["10.0.0.0/24"] each have a value of 1. A protocol setting ["UDP","TCP"] has a value
    #                  of 2. A source setting ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"] has a value of 3.
    #               </p>
    #               </li>
    #            </ul>
    #            <p>A rule with no criteria specified in any of its match settings has a capacity
    #            requirement of 1. A rule with protocol setting ["UDP","TCP"], source setting
    #            ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"], and a single specification or no specification
    #            for each of the other match settings has a capacity requirement of 6. </p>
    #            <p>
    #               <b>Capacity for a stateful rule group</b>
    #            </p>
    #            <p>For
    #            a stateful rule group, the minimum capacity required is the number of individual rules that
    #            you expect to have in the rule group. </p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    #
    #   @return [SourceMetadata]
    #
    CreateRuleGroupInput = ::Struct.new(
      :rule_group_name,
      :rule_group,
      :rules,
      :type,
      :description,
      :capacity,
      :tags,
      :dry_run,
      :encryption_configuration,
      :source_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #
    #   @return [RuleGroupResponse]
    #
    CreateRuleGroupOutput = ::Struct.new(
      :update_token,
      :rule_group_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An optional, non-standard action to use for stateless packet handling. You can define
    #          this in addition to the standard action that you must specify. </p>
    #          <p>You define and name the custom actions that you want to be able to use, and then you
    #          reference them by name in your actions settings. </p>
    #          <p>You can use custom actions in the following places: </p>
    #          <ul>
    #             <li>
    #                <p>In a rule group's <a>StatelessRulesAndCustomActions</a> specification.
    #                The custom actions are available for use by name inside the
    #                   <code>StatelessRulesAndCustomActions</code> where you define them. You can use
    #                them for your stateless rule actions to specify what to do with a packet that matches
    #                the rule's match attributes. </p>
    #             </li>
    #             <li>
    #                <p>In a <a>FirewallPolicy</a> specification, in
    #                   <code>StatelessCustomActions</code>. The custom actions are available for use
    #                inside the policy where you define them. You can use them for the policy's default
    #                stateless actions settings to specify what to do with packets that don't match any of
    #                the policy's stateless rules. </p>
    #             </li>
    #          </ul>
    #
    # @!attribute action_name
    #   <p>The descriptive name of the custom action. You can't change the name of a custom action after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute action_definition
    #   <p>The custom action associated with the action name.</p>
    #
    #   @return [ActionDefinition]
    #
    CustomAction = ::Struct.new(
      :action_name,
      :action_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    DeleteFirewallInput = ::Struct.new(
      :firewall_name,
      :firewall_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall
    #   <p>The firewall defines the configuration settings for an Network Firewall firewall. These settings include the firewall policy, the subnets in your VPC to use for the firewall endpoints, and any tags that are attached to the firewall Amazon Web Services resource. </p>
    #            <p>The status of the firewall, for example whether it's ready to filter network traffic,
    #            is provided in the corresponding <a>FirewallStatus</a>. You can retrieve both
    #            objects by calling <a>DescribeFirewall</a>.</p>
    #
    #   @return [Firewall]
    #
    # @!attribute firewall_status
    #   <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #
    #   @return [FirewallStatus]
    #
    DeleteFirewallOutput = ::Struct.new(
      :firewall,
      :firewall_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    DeleteFirewallPolicyInput = ::Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_policy_response
    #   <p>The object containing the definition of the <a>FirewallPolicyResponse</a>
    #            that you asked to delete. </p>
    #
    #   @return [FirewallPolicyResponse]
    #
    DeleteFirewallPolicyOutput = ::Struct.new(
      :firewall_policy_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to delete. </p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    DeleteRuleGroupInput = ::Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #
    #   @return [RuleGroupResponse]
    #
    DeleteRuleGroupOutput = ::Struct.new(
      :rule_group_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    DescribeFirewallInput = ::Struct.new(
      :firewall_name,
      :firewall_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall
    #   <p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>
    #
    #   @return [Firewall]
    #
    # @!attribute firewall_status
    #   <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #
    #   @return [FirewallStatus]
    #
    DescribeFirewallOutput = ::Struct.new(
      :update_token,
      :firewall,
      :firewall_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    DescribeFirewallPolicyInput = ::Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_response
    #   <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #
    #   @return [FirewallPolicyResponse]
    #
    # @!attribute firewall_policy
    #   <p>The policy for the specified firewall policy. </p>
    #
    #   @return [FirewallPolicy]
    #
    DescribeFirewallPolicyOutput = ::Struct.new(
      :update_token,
      :firewall_policy_response,
      :firewall_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    DescribeLoggingConfigurationInput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>Defines how Network Firewall performs logging for a <a>Firewall</a>. </p>
    #
    #   @return [LoggingConfiguration]
    #
    DescribeLoggingConfigurationOutput = ::Struct.new(
      :firewall_arn,
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to retrieve. </p>
    #
    #   @return [String]
    #
    DescribeResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The IAM policy for the resource. </p>
    #
    #   @return [String]
    #
    DescribeResourcePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #              <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    DescribeRuleGroupInput = ::Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_arn
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    DescribeRuleGroupMetadataInput = ::Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_arn
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Returns the metadata objects for the specified rule group.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    # @!attribute capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute stateful_rule_options
    #   <p>Additional options governing how Network Firewall handles the rule group. You can only use these for stateful rule groups.</p>
    #
    #   @return [StatefulRuleOptions]
    #
    # @!attribute last_modified_time
    #   <p>The last time that the rule group was changed.</p>
    #
    #   @return [Time]
    #
    DescribeRuleGroupMetadataOutput = ::Struct.new(
      :rule_group_arn,
      :rule_group_name,
      :description,
      :type,
      :capacity,
      :stateful_rule_options,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group
    #   <p>The object that defines the rules in a rule group. This, along with <a>RuleGroupResponse</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #            <p>Network Firewall uses a rule group to inspect and control network traffic.
    #       You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their
    #       traffic flow. </p>
    #            <p>To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from
    #       more than one firewall policy, and you can use a firewall policy in more than one firewall. </p>
    #
    #   @return [RuleGroup]
    #
    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #
    #   @return [RuleGroupResponse]
    #
    DescribeRuleGroupOutput = ::Struct.new(
      :update_token,
      :rule_group,
      :rule_group_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value to use in an Amazon CloudWatch custom metric dimension. This is used in the
    #             <code>PublishMetrics</code>
    #             <a>CustomAction</a>. A CloudWatch custom metric dimension is a name/value pair that's
    #          part of the identity of a metric. </p>
    #          <p>Network Firewall sets the dimension name to <code>CustomAction</code> and you provide the
    #          dimension value. </p>
    #          <p>For more information about CloudWatch custom metric dimensions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#usingDimensions">Publishing Custom Metrics</a> in the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch User
    #             Guide</a>.</p>
    #
    # @!attribute value
    #   <p>The value to use in the custom metric dimension.</p>
    #
    #   @return [String]
    #
    Dimension = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The unique identifiers for the subnets that you want to disassociate. </p>
    #
    #   @return [Array<String>]
    #
    DisassociateSubnetsInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets that are associated with the firewall. </p>
    #
    #   @return [Array<SubnetMapping>]
    #
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    DisassociateSubnetsOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #
    # @!attribute key_id
    #   <p>The ID of the Amazon Web Services Key Management Service (KMS) customer managed key. You can use any of the key identifiers that KMS supports, unless you're using a key that's managed by another account. If you're using a key managed by another account, then specify the key ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html key-id">Key ID</a> in the <i>Amazon Web Services KMS Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of Amazon Web Services KMS key to use for encryption of your Network Firewall resources.</p>
    #
    #   Enum, one of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #
    #   @return [String]
    #
    EncryptionConfiguration = ::Struct.new(
      :key_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionType
    #
    module EncryptionType
      # No documentation available.
      #
      CUSTOMER_KMS = "CUSTOMER_KMS"

      # No documentation available.
      #
      AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY"
    end

    # <p>The firewall defines the configuration settings for an Network Firewall firewall. These settings include the firewall policy, the subnets in your VPC to use for the firewall endpoints, and any tags that are attached to the firewall Amazon Web Services resource. </p>
    #          <p>The status of the firewall, for example whether it's ready to filter network traffic,
    #          is provided in the corresponding <a>FirewallStatus</a>. You can retrieve both
    #          objects by calling <a>DescribeFirewall</a>.</p>
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>The relationship of firewall to firewall policy is many to one. Each firewall requires
    #            one firewall policy association, and you can use the same firewall policy for multiple
    #            firewalls. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC where the firewall is in use. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_mappings
    #   <p>The public subnets that Network Firewall is using for the firewall. Each subnet must belong
    #            to a different Availability Zone. </p>
    #
    #   @return [Array<SubnetMapping>]
    #
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_id
    #   <p>The unique identifier for the firewall. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your firewall.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    Firewall = ::Struct.new(
      :firewall_name,
      :firewall_arn,
      :firewall_policy_arn,
      :vpc_id,
      :subnet_mappings,
      :delete_protection,
      :subnet_change_protection,
      :firewall_policy_change_protection,
      :description,
      :firewall_id,
      :tags,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_protection ||= false
        self.subnet_change_protection ||= false
        self.firewall_policy_change_protection ||= false
      end
    end

    # <p>High-level information about a firewall, returned by operations like create and
    #          describe. You can use the information provided in the metadata to retrieve and manage a
    #          firewall.</p>
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    FirewallMetadata = ::Struct.new(
      :firewall_name,
      :firewall_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The firewall policy defines the behavior of a firewall using a collection of stateless
    #          and stateful rule groups and other settings. You can use one firewall policy for multiple
    #          firewalls. </p>
    #          <p>This, along with <a>FirewallPolicyResponse</a>, define the policy.
    #          You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>.</p>
    #
    # @!attribute stateless_rule_group_references
    #   <p>References to the stateless rule groups that are used in the policy. These define the
    #            matching criteria in stateless rules. </p>
    #
    #   @return [Array<StatelessRuleGroupReference>]
    #
    # @!attribute stateless_default_actions
    #   <p>The actions to take on a packet if it doesn't match any of the stateless rules in the
    #            policy. If you want non-matching packets to be forwarded for stateful inspection, specify
    #               <code>aws:forward_to_sfe</code>. </p>
    #            <p>You must specify one of the standard actions: <code>aws:pass</code>,
    #               <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>. In addition, you can specify
    #            custom actions that are compatible with your standard section choice.</p>
    #            <p>For example, you could specify <code>["aws:pass"]</code> or you could specify
    #               <code>["aws:pass", “customActionName”]</code>. For information about compatibility, see
    #            the custom action descriptions under <a>CustomAction</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateless_fragment_default_actions
    #   <p>The actions to take on a fragmented UDP packet if it doesn't match any of the stateless
    #         rules in the policy. Network Firewall only manages UDP packet fragments and silently drops packet fragments for other protocols.
    #         If you want non-matching fragmented UDP packets to be forwarded for
    #            stateful inspection, specify <code>aws:forward_to_sfe</code>. </p>
    #            <p>You must specify one of the standard actions: <code>aws:pass</code>,
    #               <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>. In addition, you can specify
    #            custom actions that are compatible with your standard section choice.</p>
    #            <p>For example, you could specify <code>["aws:pass"]</code> or you could specify
    #               <code>["aws:pass", “customActionName”]</code>. For information about compatibility, see
    #            the custom action descriptions under <a>CustomAction</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateless_custom_actions
    #   <p>The custom action definitions that are available for use in the firewall policy's
    #               <code>StatelessDefaultActions</code> setting. You name each custom action that you
    #            define, and then you can use it by name in your default actions specifications.</p>
    #
    #   @return [Array<CustomAction>]
    #
    # @!attribute stateful_rule_group_references
    #   <p>References to the stateful rule groups that are used in the policy. These define the
    #            inspection criteria in stateful rules. </p>
    #
    #   @return [Array<StatefulRuleGroupReference>]
    #
    # @!attribute stateful_default_actions
    #   <p>The default actions to take on a packet that doesn't match any stateful rules. The stateful default action is optional,
    #            and is only valid when using the strict rule order.</p>
    #            <p>Valid values of the stateful default action:</p>
    #            <ul>
    #               <li>
    #                  <p>aws:drop_strict</p>
    #               </li>
    #               <li>
    #                  <p>aws:drop_established</p>
    #               </li>
    #               <li>
    #                  <p>aws:alert_strict</p>
    #               </li>
    #               <li>
    #                  <p>aws:alert_established</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see
    #            <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html suricata-strict-rule-evaluation-order.html">Strict evaluation order</a> in the <i>Network Firewall Developer Guide</i>.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stateful_engine_options
    #   <p>Additional options governing how Network Firewall handles stateful rules. The stateful
    #          rule groups that you use in your policy must have stateful rule options settings that are compatible with these settings.</p>
    #
    #   @return [StatefulEngineOptions]
    #
    FirewallPolicy = ::Struct.new(
      :stateless_rule_group_references,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_custom_actions,
      :stateful_rule_group_references,
      :stateful_default_actions,
      :stateful_engine_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about a firewall policy, returned by operations like create and
    #          describe. You can use the information provided in the metadata to retrieve and manage a
    #          firewall policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #
    # @!attribute name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #
    #   @return [String]
    #
    FirewallPolicyMetadata = ::Struct.new(
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #
    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <note>
    #               <p>If this response is for a create request that had <code>DryRun</code> set to
    #                  <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
    #               resource.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_id
    #   <p>The unique identifier for the firewall policy. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_status
    #   <p>The current status of the firewall policy. You can retrieve this for a firewall policy
    #            by calling <a>DescribeFirewallPolicy</a> and providing the firewall policy's
    #            name or ARN.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute consumed_stateless_rule_capacity
    #   <p>The number of capacity units currently consumed by the policy's stateless rules.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consumed_stateful_rule_capacity
    #   <p>The number of capacity units currently consumed by the policy's stateful rules.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_associations
    #   <p>The number of firewalls that are associated with this firewall policy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your firewall policy.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute last_modified_time
    #   <p>The last time that the firewall policy was changed.</p>
    #
    #   @return [Time]
    #
    FirewallPolicyResponse = ::Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn,
      :firewall_policy_id,
      :description,
      :firewall_policy_status,
      :tags,
      :consumed_stateless_rule_capacity,
      :consumed_stateful_rule_capacity,
      :number_of_associations,
      :encryption_configuration,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #
    # @!attribute status
    #   <p>The readiness of the configured firewall to handle network traffic across all of the
    #            Availability Zones where you've configured it. This setting is <code>READY</code> only when
    #            the <code>ConfigurationSyncStateSummary</code> value is <code>IN_SYNC</code> and the
    #               <code>Attachment</code>
    #               <code>Status</code> values for all of the configured subnets are <code>READY</code>.
    #         </p>
    #
    #   Enum, one of: ["PROVISIONING", "DELETING", "READY"]
    #
    #   @return [String]
    #
    # @!attribute configuration_sync_state_summary
    #   <p>The configuration sync state for the firewall. This summarizes the sync states reported
    #            in the <code>Config</code> settings for all of the Availability Zones where you have
    #            configured the firewall. </p>
    #            <p>When you create a firewall or update its configuration, for example by adding a rule
    #            group to its firewall policy, Network Firewall distributes the configuration changes to all
    #            zones where the firewall is in use. This summary indicates whether the configuration
    #            changes have been applied everywhere. </p>
    #            <p>This status must be <code>IN_SYNC</code> for the firewall to be ready for use, but it
    #            doesn't indicate that the firewall is ready. The <code>Status</code> setting indicates
    #            firewall readiness.</p>
    #
    #   Enum, one of: ["PENDING", "IN_SYNC"]
    #
    #   @return [String]
    #
    # @!attribute sync_states
    #   <p>The subnets that you've configured for use by the Network Firewall firewall. This contains
    #            one array element per Availability Zone where you've configured a subnet. These objects
    #            provide details of the information that is summarized in the
    #               <code>ConfigurationSyncStateSummary</code> and <code>Status</code>, broken down by zone
    #            and configuration object. </p>
    #
    #   @return [Hash<String, SyncState>]
    #
    FirewallStatus = ::Struct.new(
      :status,
      :configuration_sync_state_summary,
      :sync_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirewallStatusValue
    #
    module FirewallStatusValue
      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      READY = "READY"
    end

    # Includes enum constants for GeneratedRulesType
    #
    module GeneratedRulesType
      # No documentation available.
      #
      ALLOWLIST = "ALLOWLIST"

      # No documentation available.
      #
      DENYLIST = "DENYLIST"
    end

    # <p>The basic rule criteria for Network Firewall to use to inspect packet headers in stateful
    #          traffic flow inspection. Traffic flows that match the criteria are a match for the
    #          corresponding <a>StatefulRule</a>. </p>
    #
    # @!attribute protocol
    #   <p>The protocol to inspect for. To specify all, you can use <code>IP</code>, because all traffic on Amazon Web Services and on the internet is IP.</p>
    #
    #   Enum, one of: ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP"]
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source IP address or address range to inspect for, in CIDR notation.
    #             To match with any address, specify <code>ANY</code>. </p>
    #            <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4. </p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #            Inter-Domain Routing</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_port
    #   <p>The source port to inspect for. You can specify an individual port, for
    #              example <code>1994</code> and you can specify a port
    #                  range, for example <code>1990:1994</code>.
    #             To match with any port, specify <code>ANY</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute direction
    #   <p>The direction of traffic flow to inspect. If set to <code>ANY</code>, the inspection
    #            matches bidirectional traffic, both from the source to the destination and from the
    #            destination to the source. If set to <code>FORWARD</code>, the inspection only matches
    #            traffic going from the source to the destination. </p>
    #
    #   Enum, one of: ["FORWARD", "ANY"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination IP address or address range to inspect for, in CIDR notation.
    #             To match with any address, specify <code>ANY</code>. </p>
    #            <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4. </p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #            Inter-Domain Routing</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_port
    #   <p>The destination port to inspect for. You can specify an individual port, for
    #              example <code>1994</code> and you can specify
    #            a port range, for example <code>1990:1994</code>.
    #             To match with any port, specify <code>ANY</code>. </p>
    #
    #   @return [String]
    #
    Header = ::Struct.new(
      :protocol,
      :source,
      :source_port,
      :direction,
      :destination,
      :destination_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of IP addresses and address ranges, in CIDR notation. This is part of a <a>RuleVariables</a>. </p>
    #
    # @!attribute definition
    #   <p>The list of IP addresses and address ranges, in CIDR notation.
    #
    #         </p>
    #
    #   @return [Array<String>]
    #
    IPSet = ::Struct.new(
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Web Services doesn't currently have enough available capacity to fulfill your request. Try your
    #          request later. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientCapacityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request is valid, but Network Firewall couldn’t perform the operation because of a
    #          system problem. Retry your request. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because it's not valid. For example, you might have tried to delete
    #          a rule group or firewall policy that's in use.</p>
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

    # <p>The operation failed because of a problem with your request. Examples include: </p>
    #          <ul>
    #             <li>
    #                <p>You specified an unsupported parameter name or value.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a property with a value that isn't among the available
    #                types.</p>
    #             </li>
    #             <li>
    #                <p>Your request references an ARN that is malformed, or corresponds to a resource
    #                that isn't valid in the context of the request.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The policy statement failed validation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourcePolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The token you provided is stale or isn't valid for the operation. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unable to perform the operation because doing so would violate a limit setting. </p>
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

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListFirewallPoliciesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policies
    #   <p>The metadata for the firewall policies. Depending on your setting for max results and
    #            the number of firewall policies that you have, this might not be the full list. </p>
    #
    #   @return [Array<FirewallPolicyMetadata>]
    #
    ListFirewallPoliciesOutput = ::Struct.new(
      :next_token,
      :firewall_policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_ids
    #   <p>The unique identifiers of the VPCs that you want Network Firewall to retrieve the firewalls
    #            for. Leave this blank to retrieve all firewalls that you have defined.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListFirewallsInput = ::Struct.new(
      :next_token,
      :vpc_ids,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewalls
    #   <p>The firewall metadata objects for the VPCs that you specified. Depending on your setting
    #            for max results and the number of firewalls you have, a single call might not be the full
    #            list. </p>
    #
    #   @return [Array<FirewallMetadata>]
    #
    ListFirewallsOutput = ::Struct.new(
      :next_token,
      :firewalls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scope
    #   <p>The scope of the request. The default setting of <code>ACCOUNT</code> or a setting of
    #            <code>NULL</code> returns all of the rule groups in your account. A setting of
    #            <code>MANAGED</code> returns all available managed rule groups.</p>
    #
    #   Enum, one of: ["MANAGED", "ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute managed_type
    #   <p>Indicates the general category of the Amazon Web Services managed rule group.</p>
    #
    #   Enum, one of: ["AWS_MANAGED_THREAT_SIGNATURES", "AWS_MANAGED_DOMAIN_LISTS"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains stateless rules. If it is stateful, it contains stateful rules.</p>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    ListRuleGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      :scope,
      :managed_type,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_groups
    #   <p>The rule group metadata objects that you've defined. Depending on your setting for max
    #            results and the number of rule groups, this might not be the full list. </p>
    #
    #   @return [Array<RuleGroupMetadata>]
    #
    ListRuleGroupsOutput = ::Struct.new(
      :next_token,
      :rule_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :next_token,
      :max_results,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that are associated with the resource. </p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines where Network Firewall sends logs for the firewall for one log type. This is used
    #          in <a>LoggingConfiguration</a>. You can send each type of log to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis Data Firehose delivery stream.</p>
    #          <p>Network Firewall generates logs for stateful rule groups. You can save alert and flow log
    #           types. The stateful rules engine records flow logs for all network traffic that it receives.
    #           It records alert logs for traffic that matches stateful rules that have the rule
    #           action set to <code>DROP</code> or <code>ALERT</code>. </p>
    #
    # @!attribute log_type
    #   <p>The type of log to send. Alert logs report traffic that matches a <a>StatefulRule</a> with an action setting that sends an alert log message. Flow logs are
    #            standard network traffic flow logs. </p>
    #
    #   Enum, one of: ["ALERT", "FLOW"]
    #
    #   @return [String]
    #
    # @!attribute log_destination_type
    #   <p>The type of storage destination to send these logs to. You can send logs to an Amazon S3 bucket,
    #            a CloudWatch log group, or a Kinesis Data Firehose delivery stream.</p>
    #
    #   Enum, one of: ["S3", "CloudWatchLogs", "KinesisDataFirehose"]
    #
    #   @return [String]
    #
    # @!attribute log_destination
    #   <p>The named location for the logs, provided in a key:value mapping that is specific to the
    #            chosen destination type. </p>
    #            <ul>
    #               <li>
    #                  <p>For an Amazon S3 bucket, provide the name of the bucket, with key <code>bucketName</code>,
    #                  and optionally provide a prefix, with key <code>prefix</code>. The following example
    #                  specifies an Amazon S3 bucket named
    #                  <code>DOC-EXAMPLE-BUCKET</code> and the prefix <code>alerts</code>: </p>
    #                  <p>
    #                     <code>"LogDestination": { "bucketName": "DOC-EXAMPLE-BUCKET", "prefix": "alerts"
    #                     }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For a CloudWatch log group, provide the name of the CloudWatch log group, with key
    #                     <code>logGroup</code>. The following example specifies a log group named
    #                     <code>alert-log-group</code>: </p>
    #                  <p>
    #                     <code>"LogDestination": { "logGroup": "alert-log-group" }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For a Kinesis Data Firehose delivery stream, provide the name of the delivery stream, with key
    #                     <code>deliveryStream</code>. The following example specifies a delivery stream
    #                  named <code>alert-delivery-stream</code>: </p>
    #                  <p>
    #                     <code>"LogDestination": { "deliveryStream": "alert-delivery-stream"
    #                  }</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    LogDestinationConfig = ::Struct.new(
      :log_type,
      :log_destination_type,
      :log_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unable to send logs to a configured logging destination. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LogDestinationPermissionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogDestinationType
    #
    module LogDestinationType
      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      CLOUDWATCH_LOGS = "CloudWatchLogs"

      # No documentation available.
      #
      KINESIS_DATA_FIREHOSE = "KinesisDataFirehose"
    end

    # Includes enum constants for LogType
    #
    module LogType
      # No documentation available.
      #
      ALERT = "ALERT"

      # No documentation available.
      #
      FLOW = "FLOW"
    end

    # <p>Defines how Network Firewall performs logging for a <a>Firewall</a>. </p>
    #
    # @!attribute log_destination_configs
    #   <p>Defines the logging destinations for the logs for a firewall. Network Firewall generates
    #            logs for stateful rule groups. </p>
    #
    #   @return [Array<LogDestinationConfig>]
    #
    LoggingConfiguration = ::Struct.new(
      :log_destination_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags. </p>
    #
    # @!attribute sources
    #   <p>The source IP addresses and address ranges to inspect for, in CIDR notation. If not
    #            specified, this matches with any source address. </p>
    #
    #   @return [Array<Address>]
    #
    # @!attribute destinations
    #   <p>The destination IP addresses and address ranges to inspect for, in CIDR notation. If not
    #            specified, this matches with any destination address. </p>
    #
    #   @return [Array<Address>]
    #
    # @!attribute source_ports
    #   <p>The source ports to inspect for. If not specified, this matches with any source port.
    #            This setting is only used for protocols 6 (TCP) and 17 (UDP). </p>
    #            <p>You can specify individual ports, for example <code>1994</code> and you can specify port
    #            ranges, for example <code>1990:1994</code>. </p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute destination_ports
    #   <p>The destination ports to inspect for. If not specified, this matches with any
    #            destination port. This setting is only used for protocols 6 (TCP) and 17 (UDP). </p>
    #            <p>You can specify individual ports, for example <code>1994</code> and you can specify port
    #            ranges, for example <code>1990:1994</code>. </p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute protocols
    #   <p>The protocols to inspect for, specified using each protocol's assigned internet protocol
    #            number (IANA). If not specified, this matches with any protocol. </p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute tcp_flags
    #   <p>The TCP flags and masks to inspect for. If not specified, this matches with any
    #            settings. This setting is only used for protocol 6 (TCP).</p>
    #
    #   @return [Array<TCPFlagField>]
    #
    MatchAttributes = ::Struct.new(
      :sources,
      :destinations,
      :source_ports,
      :destination_ports,
      :protocols,
      :tcp_flags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OverrideAction
    #
    module OverrideAction
      # No documentation available.
      #
      DROP_TO_ALERT = "DROP_TO_ALERT"
    end

    # <p>Provides configuration status for a single policy or rule group that is used for a firewall endpoint. Network Firewall
    #          provides each endpoint with the rules that are configured in the firewall policy. Each time
    #          you add a subnet or modify the associated firewall policy, Network Firewall synchronizes the
    #           rules in the endpoint, so it can properly filter network traffic. This is part of a <a>SyncState</a> for a firewall.</p>
    #
    # @!attribute sync_status
    #   <p>Indicates whether this object is in sync with the version indicated in the update token.</p>
    #
    #   Enum, one of: ["PENDING", "IN_SYNC"]
    #
    #   @return [String]
    #
    # @!attribute update_token
    #   <p>The current version of the object that is either in sync or pending synchronization. </p>
    #
    #   @return [String]
    #
    PerObjectStatus = ::Struct.new(
      :sync_status,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PerObjectSyncStatus
    #
    module PerObjectSyncStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_SYNC = "IN_SYNC"
    end

    # <p>A single port range specification. This is used for source and destination port ranges
    #          in the stateless rule <a>MatchAttributes</a>, <code>SourcePorts</code>, and
    #             <code>DestinationPorts</code> settings. </p>
    #
    # @!attribute from_port
    #   <p>The lower limit of the port range. This must be less than or equal to the
    #               <code>ToPort</code> specification. </p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>The upper limit of the port range. This must be greater than or equal to the
    #               <code>FromPort</code> specification. </p>
    #
    #   @return [Integer]
    #
    PortRange = ::Struct.new(
      :from_port,
      :to_port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.from_port ||= 0
        self.to_port ||= 0
      end
    end

    # <p>A set of port ranges for use in the rules in a rule group. </p>
    #
    # @!attribute definition
    #   <p>The set of port ranges.
    #         </p>
    #
    #   @return [Array<String>]
    #
    PortSet = ::Struct.new(
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the
    #          matching packet. This setting defines a CloudWatch dimension value to be published.</p>
    #
    # @!attribute dimensions
    #   <p></p>
    #
    #   @return [Array<Dimension>]
    #
    PublishMetricAction = ::Struct.new(
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share rule groups and firewall policies with.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The IAM policy statement that lists the accounts that you want to share your rule group or firewall policy with
    #              and the operations that you want the accounts to be able to perform. </p>
    #            <p>For a rule group resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:CreateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:UpdateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListRuleGroups</p>
    #               </li>
    #            </ul>
    #            <p>For a firewall policy resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:CreateFirewall</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:UpdateFirewall</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:AssociateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListFirewallPolicies</p>
    #               </li>
    #            </ul>
    #            <p>In the Resource section of the statement, you specify the ARNs for the rule groups and firewall policies that you want to share with the account that you specified in <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceManagedStatus
    #
    module ResourceManagedStatus
      # No documentation available.
      #
      MANAGED = "MANAGED"

      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"
    end

    # Includes enum constants for ResourceManagedType
    #
    module ResourceManagedType
      # No documentation available.
      #
      AWS_MANAGED_THREAT_SIGNATURES = "AWS_MANAGED_THREAT_SIGNATURES"

      # No documentation available.
      #
      AWS_MANAGED_DOMAIN_LISTS = "AWS_MANAGED_DOMAIN_LISTS"
    end

    # <p>Unable to locate a resource using the parameters that you provided.</p>
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

    # <p>Unable to change the resource because your account doesn't own it. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceOwnerCheckException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceStatus
    #
    module ResourceStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>The inspection criteria and action for a single stateless rule. Network Firewall inspects each packet for the specified matching
    #          criteria. When a packet matches the criteria, Network Firewall performs the rule's actions on
    #          the packet.</p>
    #
    # @!attribute match_attributes
    #   <p>Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags. </p>
    #
    #   @return [MatchAttributes]
    #
    # @!attribute actions
    #   <p>The actions to take on a packet that matches one of the stateless rule definition's
    #            match attributes. You must specify a standard action and you can add custom actions. </p>
    #            <note>
    #               <p>Network Firewall only forwards a packet for stateful rule inspection if you specify
    #                  <code>aws:forward_to_sfe</code> for a rule that the packet matches, or if the packet
    #               doesn't match any stateless rule and you specify <code>aws:forward_to_sfe</code> for the
    #                  <code>StatelessDefaultActions</code> setting for the <a>FirewallPolicy</a>.</p>
    #            </note>
    #            <p>For every rule, you must specify exactly one of the following standard actions. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>aws:pass</b> - Discontinues all inspection of
    #                  the packet and permits it to go to its intended destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>aws:drop</b> - Discontinues all inspection of
    #                  the packet and blocks it from going to its intended destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>aws:forward_to_sfe</b> - Discontinues
    #                  stateless inspection of the packet and forwards it to the stateful rule engine for
    #                  inspection. </p>
    #               </li>
    #            </ul>
    #            <p>Additionally, you can specify a custom action.
    #            To
    #            do this, you define a custom action by name and type, then provide the name you've assigned
    #            to the action in this <code>Actions</code> setting. For information about the options, see
    #               <a>CustomAction</a>. </p>
    #            <p>To provide more than one action in this setting, separate the settings with a comma. For
    #            example, if you have a custom <code>PublishMetrics</code> action that you've named
    #               <code>MyMetricsAction</code>, then you could specify the standard action
    #               <code>aws:pass</code> and the custom action with <code>[“aws:pass”,
    #               “MyMetricsAction”]</code>. </p>
    #
    #   @return [Array<String>]
    #
    RuleDefinition = ::Struct.new(
      :match_attributes,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object that defines the rules in a rule group. This, along with <a>RuleGroupResponse</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #          <p>Network Firewall uses a rule group to inspect and control network traffic.
    #     You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their
    #     traffic flow. </p>
    #          <p>To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from
    #     more than one firewall policy, and you can use a firewall policy in more than one firewall. </p>
    #
    # @!attribute rule_variables
    #   <p>Settings that are available for use in the rules in the rule group. You can only use
    #            these for stateful rule groups. </p>
    #
    #   @return [RuleVariables]
    #
    # @!attribute rules_source
    #   <p>The stateful rules or stateless rules for the rule group. </p>
    #
    #   @return [RulesSource]
    #
    # @!attribute stateful_rule_options
    #   <p>Additional options governing how Network Firewall handles stateful rules. The policies where you use your stateful
    #          rule group must have stateful rule options settings that are compatible with these settings.</p>
    #
    #   @return [StatefulRuleOptions]
    #
    RuleGroup = ::Struct.new(
      :rule_variables,
      :rules_source,
      :stateful_rule_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about a rule group, returned by <a>ListRuleGroups</a>.
    #          You can use the information provided in the metadata to retrieve and manage a
    #          rule group.</p>
    #
    # @!attribute name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #
    #   @return [String]
    #
    RuleGroupMetadata = ::Struct.new(
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <note>
    #               <p>If this response is for a create request that had <code>DryRun</code> set to
    #                  <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
    #               resource.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_id
    #   <p>The unique identifier for the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    # @!attribute capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute rule_group_status
    #   <p>Detailed information about the current status of a rule group. </p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute consumed_capacity
    #   <p>The number of capacity units currently consumed by the rule group rules. </p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_associations
    #   <p>The number of firewall policies that use this rule group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your rule group.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to track the version updates made to the originating rule group.</p>
    #
    #   @return [SourceMetadata]
    #
    # @!attribute sns_topic
    #   <p>The Amazon resource name (ARN) of the Amazon Simple Notification Service SNS topic that's
    #   used to record changes to the managed rule group. You can subscribe to the SNS topic to receive
    #   notifications when the managed rule group is modified, such as for new versions and for version
    #   expiration. For more information, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon Simple Notification Service Developer Guide.</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The last time that the rule group was changed.</p>
    #
    #   @return [Time]
    #
    RuleGroupResponse = ::Struct.new(
      :rule_group_arn,
      :rule_group_name,
      :rule_group_id,
      :description,
      :type,
      :capacity,
      :rule_group_status,
      :tags,
      :consumed_capacity,
      :number_of_associations,
      :encryption_configuration,
      :source_metadata,
      :sns_topic,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuleGroupType
    #
    module RuleGroupType
      # No documentation available.
      #
      STATELESS = "STATELESS"

      # No documentation available.
      #
      STATEFUL = "STATEFUL"
    end

    # <p>Additional settings for a stateful rule. This is part of the <a>StatefulRule</a> configuration.</p>
    #
    # @!attribute keyword
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p></p>
    #
    #   @return [Array<String>]
    #
    RuleOption = ::Struct.new(
      :keyword,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuleOrder
    #
    module RuleOrder
      # No documentation available.
      #
      DEFAULT_ACTION_ORDER = "DEFAULT_ACTION_ORDER"

      # No documentation available.
      #
      STRICT_ORDER = "STRICT_ORDER"
    end

    # <p>Settings that are available for use in the rules in the <a>RuleGroup</a>
    #          where this is defined. </p>
    #
    # @!attribute ip_sets
    #   <p>A list of IP addresses and address ranges, in CIDR notation. </p>
    #
    #   @return [Hash<String, IPSet>]
    #
    # @!attribute port_sets
    #   <p>A list of port ranges. </p>
    #
    #   @return [Hash<String, PortSet>]
    #
    RuleVariables = ::Struct.new(
      :ip_sets,
      :port_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The stateless or stateful rules definitions for use in a single rule group. Each rule
    #          group requires a single <code>RulesSource</code>. You can use an instance of this for
    #          either stateless rules or stateful rules. </p>
    #
    # @!attribute rules_string
    #   <p>Stateful inspection criteria, provided in Suricata compatible intrusion prevention
    #            system (IPS) rules. Suricata is an open-source network IPS that includes a standard
    #            rule-based language for network traffic inspection.</p>
    #            <p>These rules contain the inspection criteria and the action to take for traffic that
    #            matches the criteria, so this type of rule group doesn't have a separate action
    #            setting.</p>
    #
    #   @return [String]
    #
    # @!attribute rules_source_list
    #   <p>Stateful inspection criteria for a domain list rule group. </p>
    #
    #   @return [RulesSourceList]
    #
    # @!attribute stateful_rules
    #   <p>An array of individual stateful rules inspection criteria to be used together in a stateful rule group.
    #          Use this option to specify simple Suricata rules with protocol, source and destination, ports, direction, and rule options.
    #          For information about the Suricata <code>Rules</code> format, see
    #                                           <a href="https://suricata.readthedocs.io/en/suricata-5.0.0/rules/intro.html ">Rules Format</a>. </p>
    #
    #   @return [Array<StatefulRule>]
    #
    # @!attribute stateless_rules_and_custom_actions
    #   <p>Stateless inspection criteria to be used in a stateless rule group. </p>
    #
    #   @return [StatelessRulesAndCustomActions]
    #
    RulesSource = ::Struct.new(
      :rules_string,
      :rules_source_list,
      :stateful_rules,
      :stateless_rules_and_custom_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Stateful inspection criteria for a domain list rule group. </p>
    #          <p>For HTTPS traffic, domain filtering is SNI-based. It uses the server name indicator extension of the TLS handshake.</p>
    #          <p>By default, Network Firewall domain list inspection only includes traffic coming from the VPC where you deploy the firewall. To inspect traffic from IP addresses outside of the deployment VPC, you set the <code>HOME_NET</code> rule variable to include the CIDR range of the deployment VPC plus the other CIDR ranges. For more information, see <a>RuleVariables</a> in this guide and <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/stateful-rule-groups-domain-names.html">Stateful domain list rule groups in Network Firewall</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #
    # @!attribute targets
    #   <p>The domains that you want to inspect for in your traffic flows. Valid domain specifications are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Explicit names. For example, <code>abc.example.com</code> matches only the domain <code>abc.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Names that use a domain wildcard, which you indicate with an initial '<code>.</code>'. For example,<code>.example.com</code> matches <code>example.com</code> and matches all subdomains of <code>example.com</code>, such as <code>abc.example.com</code> and <code>www.example.com</code>. </p>
    #   	           </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_types
    #   <p>The protocols you want to inspect. Specify <code>TLS_SNI</code> for <code>HTTPS</code>. Specify <code>HTTP_HOST</code> for <code>HTTP</code>. You can specify either or both. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute generated_rules_type
    #   <p>Whether you want to allow or deny access to the domains in your target list.</p>
    #
    #   Enum, one of: ["ALLOWLIST", "DENYLIST"]
    #
    #   @return [String]
    #
    RulesSourceList = ::Struct.new(
      :targets,
      :target_types,
      :generated_rules_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about the managed rule group that your own rule group is copied from. You can use the the metadata to track version updates made to the originating rule group. You can retrieve all objects for a rule group by calling <a href="https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_DescribeRuleGroup.html">DescribeRuleGroup</a>.</p>
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group that your own rule group is copied from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_update_token
    #   <p>The update token of the Amazon Web Services managed rule group that your own rule group is copied from. To determine the update token for the managed rule group, call <a href="https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_DescribeRuleGroup.html networkfirewall-DescribeRuleGroup-response-UpdateToken">DescribeRuleGroup</a>.</p>
    #
    #   @return [String]
    #
    SourceMetadata = ::Struct.new(
      :source_arn,
      :source_update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatefulAction
    #
    module StatefulAction
      # No documentation available.
      #
      PASS = "PASS"

      # No documentation available.
      #
      DROP = "DROP"

      # No documentation available.
      #
      ALERT = "ALERT"
    end

    # <p>Configuration settings for the handling of the stateful rule groups in a firewall policy. </p>
    #
    # @!attribute rule_order
    #   <p>Indicates how to manage the order of stateful rule evaluation for the policy. <code>DEFAULT_ACTION_ORDER</code> is
    #            the default behavior. Stateful rules are provided to the rule engine as Suricata compatible strings, and Suricata evaluates them
    #            based on certain settings. For more information, see
    #            <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html">Evaluation order for stateful rules</a> in the <i>Network Firewall Developer Guide</i>.
    #         </p>
    #
    #   Enum, one of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #
    #   @return [String]
    #
    StatefulEngineOptions = ::Struct.new(
      :rule_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single Suricata rules specification, for use in a stateful rule group.
    #        Use this option to specify a simple Suricata rule with protocol, source and destination, ports, direction, and rule options.
    #        For information about the Suricata <code>Rules</code> format, see
    #                                         <a href="https://suricata.readthedocs.io/en/suricata-5.0.0/rules/intro.html#">Rules Format</a>. </p>
    #
    # @!attribute action
    #   <p>Defines what Network Firewall should do with the packets in a traffic flow when the flow
    #            matches the stateful rule criteria. For all actions, Network Firewall performs the specified
    #            action and discontinues stateful inspection of the traffic flow. </p>
    #            <p>The actions for a stateful rule are defined as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PASS</b> - Permits the packets to go to the
    #                  intended destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DROP</b> - Blocks the packets from going to
    #                  the intended destination and sends an alert log message, if alert logging is configured in the <a>Firewall</a>
    #                     <a>LoggingConfiguration</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ALERT</b> - Permits the packets to go to the
    #                  intended destination and sends an alert log message, if alert logging is configured in the <a>Firewall</a>
    #                     <a>LoggingConfiguration</a>. </p>
    #                  <p>You can use this action to test a rule that you intend to use to drop traffic. You
    #                  can enable the rule with <code>ALERT</code> action, verify in the logs that the rule
    #                  is filtering as you want, then change the action to <code>DROP</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PASS", "DROP", "ALERT"]
    #
    #   @return [String]
    #
    # @!attribute header
    #   <p>The stateful inspection criteria for this rule, used to inspect traffic flows.
    #         </p>
    #
    #   @return [Header]
    #
    # @!attribute rule_options
    #   <p>Additional options for the rule. These are the Suricata <code>RuleOptions</code> settings.</p>
    #
    #   @return [Array<RuleOption>]
    #
    StatefulRule = ::Struct.new(
      :action,
      :header,
      :rule_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatefulRuleDirection
    #
    module StatefulRuleDirection
      # No documentation available.
      #
      FORWARD = "FORWARD"

      # No documentation available.
      #
      ANY = "ANY"
    end

    # <p>The setting that allows the policy owner to change the behavior of the rule group within a policy. </p>
    #
    # @!attribute action
    #   <p>The action that changes the rule group from <code>DROP</code> to <code>ALERT</code>. This only applies to
    #         managed rule groups.</p>
    #
    #   Enum, one of: ["DROP_TO_ALERT"]
    #
    #   @return [String]
    #
    StatefulRuleGroupOverride = ::Struct.new(
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifier for a single stateful rule group, used in a firewall policy to refer to a
    #          rule group. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the stateful rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>An integer setting that indicates the order in which to run the stateful rule groups in
    #         a single <a>FirewallPolicy</a>. This setting only applies to firewall policies
    #         that specify the <code>STRICT_ORDER</code> rule order in the stateful engine options settings.</p>
    #            <p>Network Firewall evalutes each stateful rule group
    #            against a packet starting with the group that has the lowest priority setting. You must ensure
    #            that the priority settings are unique within each policy.</p>
    #            <p>You can change the priority settings of your rule groups at any time. To make it easier to
    #            insert rule groups later, number them so there's a wide range in between, for example use 100,
    #            200, and so on. </p>
    #
    #   @return [Integer]
    #
    # @!attribute override
    #   <p>The action that allows the policy owner to override the behavior of the rule group within a policy.</p>
    #
    #   @return [StatefulRuleGroupOverride]
    #
    StatefulRuleGroupReference = ::Struct.new(
      :resource_arn,
      :priority,
      :override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional options governing how Network Firewall handles the rule group. You can only use these for stateful rule groups.</p>
    #
    # @!attribute rule_order
    #   <p>Indicates how to manage the order of the rule evaluation for the rule group. <code>DEFAULT_ACTION_ORDER</code> is
    #                the default behavior. Stateful rules are provided to the rule engine as Suricata compatible strings, and Suricata evaluates them
    #                based on certain settings. For more information, see
    #            <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html">Evaluation order for stateful rules</a> in the <i>Network Firewall Developer Guide</i>.
    #         </p>
    #
    #   Enum, one of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #
    #   @return [String]
    #
    StatefulRuleOptions = ::Struct.new(
      :rule_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatefulRuleProtocol
    #
    module StatefulRuleProtocol
      # No documentation available.
      #
      ANY = "IP"

      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      UDP = "UDP"

      # No documentation available.
      #
      ICMP = "ICMP"

      # No documentation available.
      #
      HTTP = "HTTP"

      # No documentation available.
      #
      FTP = "FTP"

      # No documentation available.
      #
      TLS = "TLS"

      # No documentation available.
      #
      SMB = "SMB"

      # No documentation available.
      #
      DNS = "DNS"

      # No documentation available.
      #
      DCERPC = "DCERPC"

      # No documentation available.
      #
      SSH = "SSH"

      # No documentation available.
      #
      SMTP = "SMTP"

      # No documentation available.
      #
      IMAP = "IMAP"

      # No documentation available.
      #
      MSN = "MSN"

      # No documentation available.
      #
      KRB5 = "KRB5"

      # No documentation available.
      #
      IKEV2 = "IKEV2"

      # No documentation available.
      #
      TFTP = "TFTP"

      # No documentation available.
      #
      NTP = "NTP"

      # No documentation available.
      #
      DHCP = "DHCP"
    end

    # <p>A single stateless rule. This is used in <a>StatelessRulesAndCustomActions</a>.</p>
    #
    # @!attribute rule_definition
    #   <p>Defines the stateless 5-tuple packet inspection criteria and the action to take on a
    #            packet that matches the criteria. </p>
    #
    #   @return [RuleDefinition]
    #
    # @!attribute priority
    #   <p>Indicates the order in which to run this rule relative to all of the
    #            rules that are defined for a stateless rule group. Network Firewall evaluates the rules in a
    #            rule group starting with the lowest priority setting. You must ensure that the priority
    #            settings are unique for the rule group. </p>
    #            <p>Each stateless rule group uses exactly one <code>StatelessRulesAndCustomActions</code>
    #            object, and each <code>StatelessRulesAndCustomActions</code> contains exactly one
    #               <code>StatelessRules</code> object. To ensure unique priority settings for your rule
    #            groups, set unique priorities for the stateless rules that you define inside any single
    #               <code>StatelessRules</code> object.</p>
    #            <p>You can change the priority settings of your rules at any time. To make it easier to
    #            insert rules later, number them so there's a wide range in between, for example use 100,
    #            200, and so on. </p>
    #
    #   @return [Integer]
    #
    StatelessRule = ::Struct.new(
      :rule_definition,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>Identifier for a single stateless rule group, used in a firewall policy to refer to the
    #          rule group. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the stateless rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>An integer setting that indicates the order in which to run the stateless rule groups in
    #            a single <a>FirewallPolicy</a>. Network Firewall applies each stateless rule group
    #            to a packet starting with the group that has the lowest priority setting. You must ensure
    #            that the priority settings are unique within each policy.</p>
    #
    #   @return [Integer]
    #
    StatelessRuleGroupReference = ::Struct.new(
      :resource_arn,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>Stateless inspection criteria. Each stateless rule group uses exactly one of these data
    #          types to define its stateless rules. </p>
    #
    # @!attribute stateless_rules
    #   <p>Defines the set of stateless rules for use in a stateless rule group. </p>
    #
    #   @return [Array<StatelessRule>]
    #
    # @!attribute custom_actions
    #   <p>Defines an array of individual custom action definitions that are available for use by
    #            the stateless rules in this <code>StatelessRulesAndCustomActions</code> specification. You
    #            name each custom action that you define, and then you can use it by name in your <a>StatelessRule</a>
    #               <a>RuleDefinition</a>
    #               <code>Actions</code> specification.</p>
    #
    #   @return [Array<CustomAction>]
    #
    StatelessRulesAndCustomActions = ::Struct.new(
      :stateless_rules,
      :custom_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ID for a subnet that you want to associate with the firewall. This is used with
    #             <a>CreateFirewall</a> and <a>AssociateSubnets</a>. Network Firewall
    #          creates an instance of the associated firewall in each subnet that you specify, to filter
    #          traffic in the subnet's Availability Zone.</p>
    #
    # @!attribute subnet_id
    #   <p>The unique identifier for the subnet. </p>
    #
    #   @return [String]
    #
    SubnetMapping = ::Struct.new(
      :subnet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the firewall endpoint and firewall policy configuration for a single VPC
    #          subnet. </p>
    #          <p>For each VPC subnet that you associate with a firewall, Network Firewall does the
    #          following: </p>
    #          <ul>
    #             <li>
    #                <p>Instantiates a firewall endpoint in the subnet, ready to take traffic.</p>
    #             </li>
    #             <li>
    #                <p>Configures the endpoint with the current firewall policy settings, to provide the
    #                filtering behavior for the endpoint.</p>
    #             </li>
    #          </ul>
    #          <p>When you update a firewall, for example to add a subnet association or change a rule
    #          group in the firewall policy, the affected sync states reflect out-of-sync or not ready
    #          status until the changes are complete. </p>
    #
    # @!attribute attachment
    #   <p>The attachment status of the firewall's association with a single VPC subnet. For each
    #            configured subnet, Network Firewall creates the attachment by instantiating the firewall
    #            endpoint in the subnet so that it's ready to take traffic. This is part of the <a>FirewallStatus</a>.</p>
    #
    #   @return [Attachment]
    #
    # @!attribute config
    #   <p>The configuration status of the firewall endpoint in a single VPC subnet. Network Firewall
    #            provides each endpoint with the rules that are configured in the firewall policy. Each time
    #            you add a subnet or modify the associated firewall policy, Network Firewall synchronizes the
    #            rules in the endpoint, so it can properly filter network traffic. This is part of the <a>FirewallStatus</a>.</p>
    #
    #   @return [Hash<String, PerObjectStatus>]
    #
    SyncState = ::Struct.new(
      :attachment,
      :config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TCPFlag
    #
    module TCPFlag
      # No documentation available.
      #
      FIN = "FIN"

      # No documentation available.
      #
      SYN = "SYN"

      # No documentation available.
      #
      RST = "RST"

      # No documentation available.
      #
      PSH = "PSH"

      # No documentation available.
      #
      ACK = "ACK"

      # No documentation available.
      #
      URG = "URG"

      # No documentation available.
      #
      ECE = "ECE"

      # No documentation available.
      #
      CWR = "CWR"
    end

    # <p>TCP flags and masks to inspect packets for, used in stateless rules <a>MatchAttributes</a> settings.</p>
    #
    # @!attribute flags
    #   <p>Used in conjunction with the <code>Masks</code> setting to define the flags that must be set and flags that must not be set in order for the packet to match. This setting can only specify values that are also specified in the <code>Masks</code> setting.</p>
    #            <p>For the flags that are specified in the masks setting, the following must be true for the packet to match: </p>
    #            <ul>
    #               <li>
    #                  <p>The ones that are set in this flags setting must be set in the packet. </p>
    #              </li>
    #               <li>
    #                  <p>The ones that are not set in this flags setting must also not be set in the packet. </p>
    #              </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute masks
    #   <p>The set of flags to consider in the inspection. To inspect all flags in the valid values list, leave this with no setting.</p>
    #
    #   @return [Array<String>]
    #
    TCPFlagField = ::Struct.new(
      :flags,
      :masks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key:value pair associated with an Amazon Web Services resource. The key:value pair can be anything you
    #          define. Typically, the tag key represents a category (such as "environment") and the tag
    #          value represents a specific value within that category (such as "test," "development," or
    #          "production"). You can add up to 50 tags to each Amazon Web Services resource. </p>
    #
    # @!attribute key
    #   <p>The part of the key:value pair that defines a tag. You can use a tag key to describe a
    #            category of information, such as "customer." Tag keys are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The part of the key:value pair that defines a tag. You can use a tag value to describe a
    #            specific value within a category, such as "companyA" or "companyB." Tag values are
    #            case-sensitive.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
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
      TLS_SNI = "TLS_SNI"

      # No documentation available.
      #
      HTTP_HOST = "HTTP_HOST"
    end

    # <p>Unable to process the request due to throttling limitations.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation you requested isn't supported by Network Firewall. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p></p>
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

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    UpdateFirewallDeleteProtectionInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :delete_protection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_protection ||= false
      end
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    UpdateFirewallDeleteProtectionOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :delete_protection,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_protection ||= false
      end
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description for the firewall. If you omit this setting, Network Firewall removes
    #            the description for the firewall.</p>
    #
    #   @return [String]
    #
    UpdateFirewallDescriptionInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    UpdateFirewallDescriptionOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :description,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    UpdateFirewallEncryptionConfigurationInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    UpdateFirewallEncryptionConfigurationOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :update_token,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    UpdateFirewallPolicyChangeProtectionInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_change_protection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.firewall_policy_change_protection ||= false
      end
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    UpdateFirewallPolicyChangeProtectionOutput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_change_protection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.firewall_policy_change_protection ||= false
      end
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy
    #   <p>The updated firewall policy to use for the firewall. </p>
    #
    #   @return [FirewallPolicy]
    #
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #
    #   @return [String]
    #
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    UpdateFirewallPolicyInput = ::Struct.new(
      :update_token,
      :firewall_policy_arn,
      :firewall_policy_name,
      :firewall_policy,
      :description,
      :dry_run,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_policy_response
    #   <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #
    #   @return [FirewallPolicyResponse]
    #
    UpdateFirewallPolicyOutput = ::Struct.new(
      :update_token,
      :firewall_policy_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>Defines how Network Firewall performs logging for a firewall. If you omit this setting,
    #            Network Firewall disables logging for the firewall.</p>
    #
    #   @return [LoggingConfiguration]
    #
    UpdateLoggingConfigurationInput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>Defines how Network Firewall performs logging for a <a>Firewall</a>. </p>
    #
    #   @return [LoggingConfiguration]
    #
    UpdateLoggingConfigurationOutput = ::Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #             <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    #
    #   @return [RuleGroup]
    #
    # @!attribute rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #              <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["STATELESS", "STATEFUL"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    #
    #   @return [SourceMetadata]
    #
    UpdateRuleGroupInput = ::Struct.new(
      :update_token,
      :rule_group_arn,
      :rule_group_name,
      :rule_group,
      :rules,
      :type,
      :description,
      :dry_run,
      :encryption_configuration,
      :source_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #
    #   @return [RuleGroupResponse]
    #
    UpdateRuleGroupOutput = ::Struct.new(
      :update_token,
      :rule_group_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    UpdateSubnetChangeProtectionInput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_change_protection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.subnet_change_protection ||= false
      end
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    UpdateSubnetChangeProtectionOutput = ::Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_change_protection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.subnet_change_protection ||= false
      end
    end

  end
end
