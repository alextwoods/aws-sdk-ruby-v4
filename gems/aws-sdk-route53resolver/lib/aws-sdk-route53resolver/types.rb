# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Resolver
  module Types

    # <p>The current account doesn't have the IAM permissions required to perform the specified Resolver operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Action
    #
    module Action
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      BLOCK = "BLOCK"

      # No documentation available.
      #
      ALERT = "ALERT"
    end

    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be
    #   			retried without the risk of running the operation twice. <code>CreatorRequestId</code>
    #   			can be any unique string, for example, a date/time stamp. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC that you want to associate with the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    #   			starting from the rule group with the lowest numeric priority setting. </p>
    #            <p>You must specify a unique priority for each rule group that you associate with a single VPC.
    #              To make it easier to insert rule groups later, leave space between the numbers, for example, use 101, 200, and so on. You
    #      can change the priority setting for a rule group association after you create it.</p>
    #      	     <p>The allowed values for <code>Priority</code> are between 100 and 9900.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>A name that lets you identify the association, to manage and use it.</p>
    #
    #   @return [String]
    #
    # @!attribute mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections.
    #          When you create the association, the default setting is <code>DISABLED</code>. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the tag keys and values that you want to associate with the rule group association. </p>
    #
    #   @return [Array<Tag>]
    #
    AssociateFirewallRuleGroupInput = ::Struct.new(
      :creator_request_id,
      :firewall_rule_group_id,
      :vpc_id,
      :priority,
      :name,
      :mutation_protection,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association
    #   <p>The association that you just created. The association has an ID that you can use to
    #   			identify it in other requests, like update and delete.</p>
    #
    #   @return [FirewallRuleGroupAssociation]
    #
    AssociateFirewallRuleGroupOutput = ::Struct.new(
      :firewall_rule_group_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to associate IP addresses with.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID,
    #   			Resolver chooses an IP address for you from the available IPs in the specified subnet.</p>
    #
    #   @return [IpAddressUpdate]
    #
    AssociateResolverEndpointIpAddressInput = ::Struct.new(
      :resolver_endpoint_id,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint
    #   <p>The response to an <code>AssociateResolverEndpointIpAddress</code> request.</p>
    #
    #   @return [ResolverEndpoint]
    #
    AssociateResolverEndpointIpAddressOutput = ::Struct.new(
      :resolver_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to associate a VPC with.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of an Amazon VPC that you want this query logging configuration to log queries for.</p>
    #   		
    #   		       <note>
    #   			         <p>The VPCs and the query logging configuration must be in the same Region.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    AssociateResolverQueryLogConfigInput = ::Struct.new(
      :resolver_query_log_config_id,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_association
    #   <p>A complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>
    #
    #   @return [ResolverQueryLogConfigAssociation]
    #
    AssociateResolverQueryLogConfigOutput = ::Struct.new(
      :resolver_query_log_config_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name for the association that you're creating between a Resolver rule and a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC that you want to associate the Resolver rule with.</p>
    #
    #   @return [String]
    #
    AssociateResolverRuleInput = ::Struct.new(
      :resolver_rule_id,
      :name,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_association
    #   <p>Information about the <code>AssociateResolverRule</code> request, including the status of the request.</p>
    #
    #   @return [ResolverRuleAssociation]
    #
    AssociateResolverRuleOutput = ::Struct.new(
      :resolver_rule_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutodefinedReverseFlag
    #
    module AutodefinedReverseFlag
      # No documentation available.
      #
      ENABLE = "ENABLE"

      # No documentation available.
      #
      DISABLE = "DISABLE"
    end

    # Includes enum constants for BlockOverrideDnsType
    #
    module BlockOverrideDnsType
      # No documentation available.
      #
      CNAME = "CNAME"
    end

    # Includes enum constants for BlockResponse
    #
    module BlockResponse
      # No documentation available.
      #
      NODATA = "NODATA"

      # No documentation available.
      #
      NXDOMAIN = "NXDOMAIN"

      # No documentation available.
      #
      OVERRIDE = "OVERRIDE"
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows you to retry failed requests
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name that lets you identify the domain list to manage and use it.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the tag keys and values that you want to associate with the domain list. </p>
    #
    #   @return [Array<Tag>]
    #
    CreateFirewallDomainListInput = ::Struct.new(
      :creator_request_id,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list
    #   <p>The
    #   			domain list that you just created.</p>
    #
    #   @return [FirewallDomainList]
    #
    CreateFirewallDomainListOutput = ::Struct.new(
      :firewall_domain_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name that lets you identify the rule group, to manage and use it.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the tag keys and values that you want to associate with the rule group. </p>
    #
    #   @return [Array<Tag>]
    #
    CreateFirewallRuleGroupInput = ::Struct.new(
      :creator_request_id,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group
    #   <p>A collection of rules used to filter DNS network traffic. </p>
    #
    #   @return [FirewallRuleGroup]
    #
    CreateFirewallRuleGroupOutput = ::Struct.new(
      :firewall_rule_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows you to retry failed requests
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group where you want to create the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list that you want to use in the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #            <p>You must specify a unique priority for each rule in a rule group.
    #              To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You
    #      can change the priority setting for the rules in a rule group at any time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request and send metrics and logs to Cloud Watch.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALLOW", "BLOCK", "ALERT"]
    #
    #   @return [String]
    #
    # @!attribute block_response
    #   <p>The way that you want DNS Firewall to block the request, used with the rule action
    #   			setting <code>BLOCK</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>
    #               </li>
    #            </ul>
    #            <p>This setting is required if the rule action setting is <code>BLOCK</code>.</p>
    #
    #   Enum, one of: ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #
    #   @return [String]
    #
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #
    #   Enum, one of: ["CNAME"]
    #
    #   @return [String]
    #
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>A name that lets you identify the rule in the rule group.</p>
    #
    #   @return [String]
    #
    CreateFirewallRuleInput = ::Struct.new(
      :creator_request_id,
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      :priority,
      :action,
      :block_response,
      :block_override_domain,
      :block_override_dns_type,
      :block_override_ttl,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule
    #   <p>The
    #   			firewall rule that you just created. </p>
    #
    #   @return [FirewallRule]
    #
    CreateFirewallRuleOutput = ::Struct.new(
      :firewall_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify
    #   			must include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints).
    #   			Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port
    #   			that you're using for DNS queries on your network.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute direction
    #   <p>Specify the applicable value:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>INBOUND</code>: Resolver forwards DNS queries to the DNS service for a VPC from your network</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTBOUND</code>: Resolver forwards DNS queries from the DNS service for a VPC to your network</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INBOUND", "OUTBOUND"]
    #
    #   @return [String]
    #
    # @!attribute ip_addresses
    #   <p>The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward
    #   			DNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. </p>
    #
    #   @return [Array<IpAddressRequest>]
    #
    # @!attribute tags
    #   <p>A list of the tag keys and values that you want to associate with the endpoint.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateResolverEndpointInput = ::Struct.new(
      :creator_request_id,
      :name,
      :security_group_ids,
      :direction,
      :ip_addresses,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint
    #   <p>Information about the <code>CreateResolverEndpoint</code> request, including the status of the request.</p>
    #
    #   @return [ResolverEndpoint]
    #
    CreateResolverEndpointOutput = ::Struct.new(
      :resolver_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name that you want to give the query logging configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_arn
    #   <p>The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group,
    #   			or a Kinesis Data Firehose delivery stream. Examples of valid values include the following:</p>
    #   		
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>S3 bucket</b>: </p>
    #   				           <p>
    #                     <code>arn:aws:s3:::examplebucket</code>
    #                  </p>
    #   				           <p>You can optionally append a file prefix to the end of the ARN.</p>
    #   				           <p>
    #                     <code>arn:aws:s3:::examplebucket/development/</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>CloudWatch Logs log group</b>: </p>
    #   				           <p>
    #                     <code>arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Kinesis Data Firehose delivery stream</b>:</p>
    #   				           <p>
    #                     <code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateResolverQueryLogConfigInput = ::Struct.new(
      :name,
      :destination_arn,
      :creator_request_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config
    #   <p>Information about the <code>CreateResolverQueryLogConfig</code> request, including the status of the request.</p>
    #
    #   @return [ResolverQueryLogConfig]
    #
    CreateResolverQueryLogConfigOutput = ::Struct.new(
      :resolver_query_log_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_type
    #   <p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p>
    #   		       <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for
    #   			a subdomain of that domain, specify <code>SYSTEM</code>.</p>
    #   		       <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code>
    #   			for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify
    #   			<code>SYSTEM</code> for <code>RuleType</code>.</p>
    #   		       <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>
    #
    #   Enum, one of: ["FORWARD", "SYSTEM", "RECURSIVE"]
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>DNS queries for this domain name are forwarded to the IP addresses that you specify in <code>TargetIps</code>. If a query matches
    #   			multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains
    #   			the most specific domain name (www.example.com).</p>
    #
    #   @return [String]
    #
    # @!attribute target_ips
    #   <p>The IPs that you want Resolver to forward DNS queries to. You can specify only IPv4 addresses. Separate IP addresses with a space.</p>
    #   		       <p>
    #               <code>TargetIps</code> is available only when the value of <code>Rule type</code> is <code>FORWARD</code>.</p>
    #
    #   @return [Array<TargetAddress>]
    #
    # @!attribute resolver_endpoint_id
    #   <p>The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify
    #   			in <code>TargetIps</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the tag keys and values that you want to associate with the endpoint.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateResolverRuleInput = ::Struct.new(
      :creator_request_id,
      :name,
      :rule_type,
      :domain_name,
      :target_ips,
      :resolver_endpoint_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule
    #   <p>Information about the <code>CreateResolverRule</code> request, including the status of the request.</p>
    #
    #   @return [ResolverRule]
    #
    CreateResolverRuleOutput = ::Struct.new(
      :resolver_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list that you want to delete. </p>
    #
    #   @return [String]
    #
    DeleteFirewallDomainListInput = ::Struct.new(
      :firewall_domain_list_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list
    #   <p>The domain list that you just deleted. </p>
    #
    #   @return [FirewallDomainList]
    #
    DeleteFirewallDomainListOutput = ::Struct.new(
      :firewall_domain_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to delete. </p>
    #
    #   @return [String]
    #
    DeleteFirewallRuleGroupInput = ::Struct.new(
      :firewall_rule_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group
    #   <p>A collection of rules used to filter DNS network traffic. </p>
    #
    #   @return [FirewallRuleGroup]
    #
    DeleteFirewallRuleGroupOutput = ::Struct.new(
      :firewall_rule_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to delete the rule from. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list that's used in the rule.  </p>
    #
    #   @return [String]
    #
    DeleteFirewallRuleInput = ::Struct.new(
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule
    #   <p>The specification for the firewall rule that you just deleted.</p>
    #
    #   @return [FirewallRule]
    #
    DeleteFirewallRuleOutput = ::Struct.new(
      :firewall_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteResolverEndpointInput = ::Struct.new(
      :resolver_endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint
    #   <p>Information about the <code>DeleteResolverEndpoint</code> request, including the status of the request.</p>
    #
    #   @return [ResolverEndpoint]
    #
    DeleteResolverEndpointOutput = ::Struct.new(
      :resolver_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteResolverQueryLogConfigInput = ::Struct.new(
      :resolver_query_log_config_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config
    #   <p>Information about the query logging configuration that you deleted, including the status of the request.</p>
    #
    #   @return [ResolverQueryLogConfig]
    #
    DeleteResolverQueryLogConfigOutput = ::Struct.new(
      :resolver_query_log_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteResolverRuleInput = ::Struct.new(
      :resolver_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule
    #   <p>Information about the <code>DeleteResolverRule</code> request, including the status of the request.</p>
    #
    #   @return [ResolverRule]
    #
    DeleteResolverRuleOutput = ::Struct.new(
      :resolver_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    #
    #   @return [String]
    #
    DisassociateFirewallRuleGroupInput = ::Struct.new(
      :firewall_rule_group_association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association
    #   <p>The firewall rule group association that you just removed. </p>
    #
    #   @return [FirewallRuleGroupAssociation]
    #
    DisassociateFirewallRuleGroupOutput = ::Struct.new(
      :firewall_rule_group_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to disassociate an IP address from.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IPv4 address that you want to remove from a Resolver endpoint.</p>
    #
    #   @return [IpAddressUpdate]
    #
    DisassociateResolverEndpointIpAddressInput = ::Struct.new(
      :resolver_endpoint_id,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint
    #   <p>The response to an <code>DisassociateResolverEndpointIpAddress</code> request.</p>
    #
    #   @return [ResolverEndpoint]
    #
    DisassociateResolverEndpointIpAddressOutput = ::Struct.new(
      :resolver_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to disassociate a specified VPC from.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration.</p>
    #
    #   @return [String]
    #
    DisassociateResolverQueryLogConfigInput = ::Struct.new(
      :resolver_query_log_config_id,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_association
    #   <p>A complex type that contains settings for the association that you deleted between an Amazon VPC and a query logging configuration.</p>
    #
    #   @return [ResolverQueryLogConfigAssociation]
    #
    DisassociateResolverQueryLogConfigOutput = ::Struct.new(
      :resolver_query_log_config_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_id
    #   <p>The ID of the VPC that you want to disassociate the Resolver rule from.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to disassociate from the specified VPC.</p>
    #
    #   @return [String]
    #
    DisassociateResolverRuleInput = ::Struct.new(
      :vpc_id,
      :resolver_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_association
    #   <p>Information about the <code>DisassociateResolverRule</code> request, including the status of the request.</p>
    #
    #   @return [ResolverRuleAssociation]
    #
    DisassociateResolverRuleOutput = ::Struct.new(
      :resolver_rule_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For Resolver list operations
    # 			(<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html">ListResolverQueryLogConfigs</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html">ListResolverQueryLogConfigAssociations</a>),
    # 			and
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverDnssecConfigs.html">ListResolverDnssecConfigs</a>),
    # 			an optional specification to return a subset of objects.</p>
    # 		       <p>To filter objects, such as Resolver endpoints or Resolver rules, you specify <code>Name</code> and <code>Values</code>. For example,
    # 			to list only inbound Resolver endpoints, specify <code>Direction</code> for <code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>. </p>
    #
    # @!attribute name
    #   <p>The name of the parameter that you want to use to filter objects.</p>
    #   		       <p>The valid values for <code>Name</code> depend on the action that you're including the filter in,
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>,
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>,
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>,
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html">ListResolverQueryLogConfigs</a>,
    #   			or
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html">ListResolverQueryLogConfigAssociations</a>.</p>
    #   		
    #   		       <note>
    #   			         <p>In early versions of Resolver, values for <code>Name</code> were listed as uppercase, with underscore (_) delimiters. For example,
    #   				<code>CreatorRequestId</code> was originally listed as <code>CREATOR_REQUEST_ID</code>. Uppercase values for <code>Name</code> are still supported.</p>
    #   		       </note>
    #   		
    #   		       <p>
    #               <b>ListResolverEndpoints</b>
    #            </p>
    #   		       <p>Valid values for <code>Name</code> include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatorRequestId</code>: The value that you specified when you created the Resolver endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Direction</code>: Whether you want to return inbound or outbound Resolver endpoints. If you specify <code>DIRECTION</code>
    #   				for <code>Name</code>, specify <code>INBOUND</code> or <code>OUTBOUND</code> for <code>Values</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HostVPCId</code>: The ID of the VPC that inbound DNS queries pass through on the way from your network to your VPCs in a region, or
    #   				the VPC that outbound queries pass through on the way from your VPCs to your network. In a
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html">CreateResolverEndpoint</a>
    #   				request, <code>SubnetId</code> indirectly identifies the VPC. In a
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>
    #   				request, the VPC ID for a Resolver endpoint
    #   				is returned in the <code>HostVPCId</code> element. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IpAddressCount</code>: The number of IP addresses that you have associated with the Resolver endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code>: The name of the Resolver endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SecurityGroupIds</code>: The IDs of the VPC security groups that you specified when you created the
    #   				Resolver endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The status of the Resolver endpoint. If you specify <code>Status</code> for <code>Name</code>,
    #   				specify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>OPERATIONAL</code>, <code>UPDATING</code>,
    #   				<code>AUTO_RECOVERING</code>, <code>ACTION_NEEDED</code>, or <code>DELETING</code>. For more information, see <code>Status</code> in
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html">ResolverEndpoint</a>.</p>
    #               </li>
    #            </ul>
    #   		
    #   		       <p>
    #               <b>ListResolverRules</b>
    #            </p>
    #   		       <p>Valid values for <code>Name</code> include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatorRequestId</code>: The value that you specified when you created the Resolver rule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DomainName</code>: The domain name for which Resolver is forwarding DNS queries to your network. In the value that
    #   				you specify for <code>Values</code>, include a trailing dot (.) after the domain name. For example, if the domain name is example.com,
    #   				specify the following value. Note the "." after <code>com</code>:</p>
    #   				           <p>
    #                     <code>example.com.</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code>: The name of the Resolver rule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResolverEndpointId</code>: The ID of the Resolver endpoint that the Resolver rule is associated with.</p>
    #   				           <note>
    #                     <p>You can filter on the Resolver endpoint only for rules that have a value of <code>FORWARD</code> for
    #   					<code>RuleType</code>.</p>
    #                  </note>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The status of the Resolver rule. If you specify <code>Status</code> for <code>Name</code>,
    #   				specify one of the following status codes for <code>Values</code>: <code>COMPLETE</code>, <code>DELETING</code>, <code>UPDATING</code>,
    #   				or <code>FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Type</code>: The type of the Resolver rule. If you specify <code>TYPE</code>
    #   				for <code>Name</code>, specify <code>FORWARD</code> or <code>SYSTEM</code> for <code>Values</code>.</p>
    #               </li>
    #            </ul>
    #   		
    #   		       <p>
    #               <b>ListResolverRuleAssociations</b>
    #            </p>
    #   		       <p>Valid values for <code>Name</code> include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>Name</code>: The name of the Resolver rule association.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResolverRuleId</code>: The ID of the Resolver rule that is associated with one or more VPCs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The status of the Resolver rule association. If you specify <code>Status</code> for <code>Name</code>,
    #   				specify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>COMPLETE</code>, <code>DELETING</code>, or
    #   				<code>FAILED</code>.</p>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>VPCId</code>: The ID of the VPC that the Resolver rule is associated with.</p>
    #               </li>
    #            </ul>
    #
    #   		       <p>
    #               <b>ListResolverQueryLogConfigs</b>
    #            </p>
    #   		       <p>Valid values for <code>Name</code> include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>Arn</code>: The ARN for the query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AssociationCount</code>: The number of VPCs that are associated with the query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationTime</code>: The date and time that the query logging configuration was created, in Unix time format and
    #   				Coordinated Universal Time (UTC). </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreatorRequestId</code>: A unique string that identifies the request that created the query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Destination</code>: The Amazon Web Services service that you want to forward query logs to. Valid values include the following:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>
    #                           <code>S3</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CloudWatchLogs</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>KinesisFirehose</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationArn</code>: The ARN of the location that Resolver is sending query logs to. This value can be the ARN for an
    #   				S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Id</code>: The ID of the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code>: The name of the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OwnerId</code>: The Amazon Web Services account ID for the account that created the query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ShareStatus</code>: An indication of whether the query logging configuration is shared with other Amazon Web Services accounts,
    #   				or was shared with the current account by another Amazon Web Services account. Valid values include: <code>NOT_SHARED</code>, <code>SHARED_WITH_ME</code>,
    #   				or <code>SHARED_BY_ME</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The status of the query logging configuration. If you specify <code>Status</code> for <code>Name</code>,
    #   				specify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>,
    #   				<code>DELETING</code>, or <code>FAILED</code>. For more information, see
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status">Status</a>.
    #   				</p>
    #   			         </li>
    #            </ul>
    #   		
    #   		       <p>
    #               <b>ListResolverQueryLogConfigAssociations</b>
    #            </p>
    #   		       <p>Valid values for <code>Name</code> include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CreationTime</code>: The date and time that the VPC was associated with the query logging configuration, in Unix time format and
    #   				Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, specify the cause:
    #   				<code>DESTINATION_NOT_FOUND</code> or <code>ACCESS_DENIED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Id</code>: The ID of the query logging association.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration that a VPC is associated with.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceId</code>: The ID of the Amazon VPC that is associated with the query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The status of the query logging association. If you specify <code>Status</code> for <code>Name</code>,
    #   				specify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>,
    #   				<code>DELETING</code>, or <code>FAILED</code>. For more information, see
    #   			    <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status">Status</a>.
    #   				</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>When you're using a <code>List</code> operation and you want the operation to return a subset of objects, such as Resolver endpoints or Resolver rules,
    #   			the value of the parameter that you want to use to filter objects. For example, to list only inbound Resolver endpoints, specify <code>Direction</code> for
    #   			<code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>.</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC from
    # 			Amazon Virtual Private Cloud (Amazon VPC). </p>
    #
    # @!attribute id
    #   <p>The ID of the firewall configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the VPC that this firewall configuration applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the owner of the VPC that this firewall configuration applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_fail_open
    #   <p>Determines how DNS Firewall operates during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>
    #            <ul>
    #               <li>
    #                  <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall returns
    #              a failure error when it is unable to properly evaluate a query. </p>
    #               </li>
    #               <li>
    #                  <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it
    #          is unable to properly evaluate them. </p>
    #               </li>
    #            </ul>
    #            <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    FirewallConfig = ::Struct.new(
      :id,
      :resource_id,
      :owner_id,
      :firewall_fail_open,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirewallDomainImportOperation
    #
    module FirewallDomainImportOperation
      # No documentation available.
      #
      REPLACE = "REPLACE"
    end

    # <p>High-level information about a list of firewall domains for use in a <a>FirewallRule</a>. This is returned by <a>GetFirewallDomainList</a>.</p>
    #          <p>To retrieve the domains that are defined for this domain list, call <a>ListFirewallDomains</a>.</p>
    #
    # @!attribute id
    #   <p>The ID of the domain list. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the firewall domain list.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the domain list. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_count
    #   <p>The number of domain names that are specified in the domain list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the domain list.  </p>
    #
    #   Enum, one of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional information about the status of the list, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_owner_name
    #   <p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC). </p>
    #
    #   @return [String]
    #
    FirewallDomainList = ::Struct.new(
      :id,
      :arn,
      :name,
      :domain_count,
      :status,
      :status_message,
      :managed_owner_name,
      :creator_request_id,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Minimal high-level information for a firewall domain list. The action <a>ListFirewallDomainLists</a> returns an array of these objects. </p>
    #          <p>To retrieve full information for a firewall domain list, call  <a>GetFirewallDomainList</a> and <a>ListFirewallDomains</a>.</p>
    #
    # @!attribute id
    #   <p>The ID of the domain list. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the firewall domain list metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the domain list. </p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute managed_owner_name
    #   <p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>
    #
    #   @return [String]
    #
    FirewallDomainListMetadata = ::Struct.new(
      :id,
      :arn,
      :name,
      :creator_request_id,
      :managed_owner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirewallDomainListStatus
    #
    module FirewallDomainListStatus
      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      COMPLETE_IMPORT_FAILED = "COMPLETE_IMPORT_FAILED"

      # No documentation available.
      #
      IMPORTING = "IMPORTING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # Includes enum constants for FirewallDomainUpdateOperation
    #
    module FirewallDomainUpdateOperation
      # No documentation available.
      #
      ADD = "ADD"

      # No documentation available.
      #
      REMOVE = "REMOVE"

      # No documentation available.
      #
      REPLACE = "REPLACE"
    end

    # Includes enum constants for FirewallFailOpenStatus
    #
    module FirewallFailOpenStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>A single firewall rule in a rule group.</p>
    #
    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group of the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list that's used in the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority of the rule in the rule group. This value must be unique within the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALLOW", "BLOCK", "ALERT"]
    #
    #   @return [String]
    #
    # @!attribute block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #
    #   @return [String]
    #
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    #   Enum, one of: ["CNAME"]
    #
    #   @return [String]
    #
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed requests
    #              without the risk of executing the operation twice. This can be any unique string, for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the rule was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the rule was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    FirewallRule = ::Struct.new(
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      :name,
      :priority,
      :action,
      :block_response,
      :block_override_domain,
      :block_override_dns_type,
      :block_override_ttl,
      :creator_request_id,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information for a firewall rule group. A firewall rule group is a collection of rules that DNS Firewall uses to filter DNS network traffic for a VPC. To retrieve the rules for the rule group, call <a>ListFirewallRules</a>.</p>
    #
    # @!attribute id
    #   <p>The ID of the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_count
    #   <p>The number of rules in the rule group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the domain list.  </p>
    #
    #   Enum, one of: ["COMPLETE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional information about the status of the rule group, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account,
    #          this is the account that has shared the rule group with you.  </p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute share_status
    #   <p>Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another
    #                 Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>
    #
    #   Enum, one of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    FirewallRuleGroup = ::Struct.new(
      :id,
      :arn,
      :name,
      :rule_count,
      :status,
      :status_message,
      :owner_id,
      :creator_request_id,
      :share_status,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An association between a firewall rule group and a VPC, which enables DNS filtering for
    # 			the VPC. </p>
    #
    # @!attribute id
    #   <p>The identifier for the association.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the firewall rule group association.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC that is associated with the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the association.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC. DNS Firewall
    #              filters VPC traffic starting from rule group with the lowest numeric priority setting. </p>
    #
    #   @return [Integer]
    #
    # @!attribute mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute managed_owner_name
    #   <p>The owner of the association, used only for associations that are not managed by you. If you use Firewall Manager to
    #      manage your DNS Firewalls, then this reports Firewall Manager as the managed owner.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the association.</p>
    #
    #   Enum, one of: ["COMPLETE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional information about the status of the response, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    FirewallRuleGroupAssociation = ::Struct.new(
      :id,
      :arn,
      :firewall_rule_group_id,
      :vpc_id,
      :name,
      :priority,
      :mutation_protection,
      :managed_owner_name,
      :status,
      :status_message,
      :creator_request_id,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirewallRuleGroupAssociationStatus
    #
    module FirewallRuleGroupAssociationStatus
      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>Minimal high-level information for a firewall rule group. The action <a>ListFirewallRuleGroups</a> returns an array of these objects. </p>
    #          <p>To retrieve full information for a firewall rule group, call <a>GetFirewallRuleGroup</a> and <a>ListFirewallRules</a>.</p>
    #
    # @!attribute id
    #   <p>The ID of the rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account,
    #          this is the account that has shared the rule group with you.  </p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute share_status
    #   <p>Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another
    #                 Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>
    #
    #   Enum, one of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #
    #   @return [String]
    #
    FirewallRuleGroupMetadata = ::Struct.new(
      :id,
      :arn,
      :name,
      :owner_id,
      :creator_request_id,
      :share_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirewallRuleGroupStatus
    #
    module FirewallRuleGroupStatus
      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # @!attribute resource_id
    #   <p>The ID of the VPC from Amazon VPC that the configuration is for.</p>
    #
    #   @return [String]
    #
    GetFirewallConfigInput = ::Struct.new(
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_config
    #   <p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC from
    #   			AmazonVPC. </p>
    #
    #   @return [FirewallConfig]
    #
    GetFirewallConfigOutput = ::Struct.new(
      :firewall_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list.  </p>
    #
    #   @return [String]
    #
    GetFirewallDomainListInput = ::Struct.new(
      :firewall_domain_list_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list
    #   <p>The domain list that you requested.  </p>
    #
    #   @return [FirewallDomainList]
    #
    GetFirewallDomainListOutput = ::Struct.new(
      :firewall_domain_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    #
    #   @return [String]
    #
    GetFirewallRuleGroupAssociationInput = ::Struct.new(
      :firewall_rule_group_association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association
    #   <p>The association that you requested. </p>
    #
    #   @return [FirewallRuleGroupAssociation]
    #
    GetFirewallRuleGroupAssociationOutput = ::Struct.new(
      :firewall_rule_group_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    #
    #   @return [String]
    #
    GetFirewallRuleGroupInput = ::Struct.new(
      :firewall_rule_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group
    #   <p>A collection of rules used to filter DNS network traffic. </p>
    #
    #   @return [FirewallRuleGroup]
    #
    GetFirewallRuleGroupOutput = ::Struct.new(
      :firewall_rule_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the rule group.</p>
    #
    #   @return [String]
    #
    GetFirewallRuleGroupPolicyInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_policy
    #   <p>The Identity and Access Management (Amazon Web Services IAM) policy for sharing the specified rule
    #   			group. You can use the policy to share the rule group using Resource Access Manager
    #   			(RAM). </p>
    #
    #   @return [String]
    #
    GetFirewallRuleGroupPolicyOutput = ::Struct.new(
      :firewall_rule_group_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>Resource ID of the Amazon VPC that you want to get information about.</p>
    #
    #   @return [String]
    #
    GetResolverConfigInput = ::Struct.new(
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_config
    #   <p>Information about the behavior configuration of Route 53 Resolver behavior for the VPC you
    #   			specified in the <code>GetResolverConfig</code> request.</p>
    #
    #   @return [ResolverConfig]
    #
    GetResolverConfigOutput = ::Struct.new(
      :resolver_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the virtual private cloud (VPC) for the DNSSEC validation status.</p>
    #
    #   @return [String]
    #
    GetResolverDnssecConfigInput = ::Struct.new(
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_dnssec_config
    #   <p>The information about a configuration for DNSSEC validation.</p>
    #
    #   @return [ResolverDnssecConfig]
    #
    GetResolverDnssecConfigOutput = ::Struct.new(
      :resolver_dnssec_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to get information about.</p>
    #
    #   @return [String]
    #
    GetResolverEndpointInput = ::Struct.new(
      :resolver_endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint
    #   <p>Information about the Resolver endpoint that you specified in a <code>GetResolverEndpoint</code> request.</p>
    #
    #   @return [ResolverEndpoint]
    #
    GetResolverEndpointOutput = ::Struct.new(
      :resolver_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_association_id
    #   <p>The ID of the Resolver query logging configuration association that you want to get information about.</p>
    #
    #   @return [String]
    #
    GetResolverQueryLogConfigAssociationInput = ::Struct.new(
      :resolver_query_log_config_association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_association
    #   <p>Information about the Resolver query logging configuration association that you specified in a <code>GetQueryLogConfigAssociation</code> request.</p>
    #
    #   @return [ResolverQueryLogConfigAssociation]
    #
    GetResolverQueryLogConfigAssociationOutput = ::Struct.new(
      :resolver_query_log_config_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_id
    #   <p>The ID of the Resolver query logging configuration that you want to get information about.</p>
    #
    #   @return [String]
    #
    GetResolverQueryLogConfigInput = ::Struct.new(
      :resolver_query_log_config_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config
    #   <p>Information about the Resolver query logging configuration that you specified in a <code>GetQueryLogConfig</code> request.</p>
    #
    #   @return [ResolverQueryLogConfig]
    #
    GetResolverQueryLogConfigOutput = ::Struct.new(
      :resolver_query_log_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the query logging configuration that you want to get the query logging policy for.</p>
    #
    #   @return [String]
    #
    GetResolverQueryLogConfigPolicyInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_query_log_config_policy
    #   <p>Information about the query logging policy for the query logging configuration that you specified in a
    #   			<code>GetResolverQueryLogConfigPolicy</code> request.</p>
    #
    #   @return [String]
    #
    GetResolverQueryLogConfigPolicyOutput = ::Struct.new(
      :resolver_query_log_config_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_association_id
    #   <p>The ID of the Resolver rule association that you want to get information about.</p>
    #
    #   @return [String]
    #
    GetResolverRuleAssociationInput = ::Struct.new(
      :resolver_rule_association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_association
    #   <p>Information about the Resolver rule association that you specified in a <code>GetResolverRuleAssociation</code> request.</p>
    #
    #   @return [ResolverRuleAssociation]
    #
    GetResolverRuleAssociationOutput = ::Struct.new(
      :resolver_rule_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to get information about.</p>
    #
    #   @return [String]
    #
    GetResolverRuleInput = ::Struct.new(
      :resolver_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule
    #   <p>Information about the Resolver rule that you specified in a <code>GetResolverRule</code> request.</p>
    #
    #   @return [ResolverRule]
    #
    GetResolverRuleOutput = ::Struct.new(
      :resolver_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ID of the Resolver rule that you want to get the Resolver rule policy for.</p>
    #
    #   @return [String]
    #
    GetResolverRulePolicyInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_policy
    #   <p>The Resolver rule policy for the rule that you specified in a <code>GetResolverRulePolicy</code> request.</p>
    #
    #   @return [String]
    #
    GetResolverRulePolicyOutput = ::Struct.new(
      :resolver_rule_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list that you want to modify with the import operation.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>What you want DNS Firewall to do with the domains that are listed in the file. This must be set to <code>REPLACE</code>, which updates the domain list to exactly match the list in the file. </p>
    #
    #   Enum, one of: ["REPLACE"]
    #
    #   @return [String]
    #
    # @!attribute domain_file_url
    #   <p>The fully qualified URL or URI of the file stored in Amazon Simple Storage Service
    #   			(Amazon S3) that contains the list of domains to import.</p>
    #            <p>The file must be in an S3 bucket that's in the same Region
    #          as your DNS Firewall. The file must be a text file and must contain a single domain per line.</p>
    #
    #   @return [String]
    #
    ImportFirewallDomainsInput = ::Struct.new(
      :firewall_domain_list_id,
      :operation,
      :domain_file_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The Id of the firewall domain list that DNS Firewall just updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the domain list. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> </p>
    #
    #   Enum, one of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional information about the status of the list, if available.</p>
    #
    #   @return [String]
    #
    ImportFirewallDomainsOutput = ::Struct.new(
      :id,
      :name,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We encountered an unknown error. Try again in a few minutes.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value that you specified for <code>NextToken</code> in a <code>List</code> request isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters in this request are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   <p>For an <code>InvalidParameterException</code> error, the name of the parameter that's invalid.</p>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      :field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Resolver rule policy is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPolicyDocument = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is invalid.</p>
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

    # <p>The specified tag is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTagException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In a
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html">CreateResolverEndpoint</a>
    # 			request, the IP address that DNS queries originate from (for outbound endpoints) or that you forward DNS queries to (for inbound endpoints).
    # 			<code>IpAddressRequest</code> also includes the ID of the subnet that contains the IP address.</p>
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet that contains the IP address. </p>
    #
    #   @return [String]
    #
    # @!attribute ip
    #   <p>The IP address that you want to use for DNS queries.</p>
    #
    #   @return [String]
    #
    IpAddressRequest = ::Struct.new(
      :subnet_id,
      :ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In the response to a
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>
    # 			request, information about the IP addresses that the Resolver endpoint uses for DNS queries.</p>
    #
    # @!attribute ip_id
    #   <p>The ID of one IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The ID of one subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute ip
    #   <p>One IP address that the Resolver endpoint uses for DNS queries.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A status code that gives the current status of the request.</p>
    #
    #   Enum, one of: ["CREATING", "FAILED_CREATION", "ATTACHING", "ATTACHED", "REMAP_DETACHING", "REMAP_ATTACHING", "DETACHING", "FAILED_RESOURCE_GONE", "DELETING", "DELETE_FAILED_FAS_EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message that provides additional information about the status of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the IP address was created, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the IP address was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    IpAddressResponse = ::Struct.new(
      :ip_id,
      :subnet_id,
      :ip,
      :status,
      :status_message,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpAddressStatus
    #
    module IpAddressStatus
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      FailedCreation = "FAILED_CREATION"

      # No documentation available.
      #
      Attaching = "ATTACHING"

      # No documentation available.
      #
      Attached = "ATTACHED"

      # No documentation available.
      #
      RemapDetaching = "REMAP_DETACHING"

      # No documentation available.
      #
      RemapAttaching = "REMAP_ATTACHING"

      # No documentation available.
      #
      Detaching = "DETACHING"

      # No documentation available.
      #
      FailedResourceGone = "FAILED_RESOURCE_GONE"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      DeleteFailedFasExpired = "DELETE_FAILED_FAS_EXPIRED"
    end

    # <p>In an
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html">UpdateResolverEndpoint</a>
    # 			request, information about an IP address to update.</p>
    #
    # @!attribute ip_id
    #   <p>
    #               <i>Only when removing an IP address from a Resolver endpoint</i>: The ID of the IP address that you want to remove.
    #   			To get this ID, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet that includes the IP address that you want to update. To get this ID, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute ip
    #   <p>The new IP address.</p>
    #
    #   @return [String]
    #
    IpAddressUpdate = ::Struct.new(
      :ip_id,
      :subnet_id,
      :ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request caused one or more limits to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>For a <code>LimitExceededException</code> error, the type of resource that exceeded the current limit.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    #   @return [String]
    #
    ListFirewallConfigsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If objects are still available for retrieval, Resolver returns this token in the response.
    #              To retrieve the next batch of objects, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_configs
    #   <p>The configurations for the firewall behavior provided by DNS Firewall for VPCs from
    #   			Amazon Virtual Private Cloud (Amazon VPC). </p>
    #
    #   @return [Array<FirewallConfig>]
    #
    ListFirewallConfigsOutput = ::Struct.new(
      :next_token,
      :firewall_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    #   @return [String]
    #
    ListFirewallDomainListsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If objects are still available for retrieval, Resolver returns this token in the response.
    #              To retrieve the next batch of objects, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_domain_lists
    #   <p>A list of the domain lists that you have defined.   </p>
    #            <p>This might be a partial list of the domain lists that you've defined. For information,
    #   			see <code>MaxResults</code>. </p>
    #
    #   @return [Array<FirewallDomainListMetadata>]
    #
    ListFirewallDomainListsOutput = ::Struct.new(
      :next_token,
      :firewall_domain_lists,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list whose domains you want to retrieve. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    #   @return [String]
    #
    ListFirewallDomainsInput = ::Struct.new(
      :firewall_domain_list_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If objects are still available for retrieval, Resolver returns this token in the response.
    #              To retrieve the next batch of objects, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute domains
    #   <p>A list of the domains in the firewall domain list.  </p>
    #            <p>This might be a partial list of the domains that you've defined in the domain list. For
    #   			information, see <code>MaxResults</code>. </p>
    #
    #   @return [Array<String>]
    #
    ListFirewallDomainsOutput = ::Struct.new(
      :next_token,
      :domains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to retrieve the associations
    #              for. Leave this blank to retrieve associations for any rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC that you want to retrieve the associations
    #              for. Leave this blank to retrieve associations for any VPC. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that are associated with a single VPC. DNS Firewall filters VPC traffic starting
    #   			from the rule group with the lowest numeric priority setting. </p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The association <code>Status</code> setting that you want DNS Firewall to filter on for the list. If you don't specify this, then DNS Firewall returns all associations, regardless of status.</p>
    #
    #   Enum, one of: ["COMPLETE", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    #   @return [String]
    #
    ListFirewallRuleGroupAssociationsInput = ::Struct.new(
      :firewall_rule_group_id,
      :vpc_id,
      :priority,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If objects are still available for retrieval, Resolver returns this token in the response.
    #              To retrieve the next batch of objects, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rule_group_associations
    #   <p>A list of your firewall rule group associations.</p>
    #            <p>This might be a partial list of the associations that you have defined. For information, see <code>MaxResults</code>. </p>
    #
    #   @return [Array<FirewallRuleGroupAssociation>]
    #
    ListFirewallRuleGroupAssociationsOutput = ::Struct.new(
      :next_token,
      :firewall_rule_group_associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    #   @return [String]
    #
    ListFirewallRuleGroupsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If objects are still available for retrieval, Resolver returns this token in the response.
    #              To retrieve the next batch of objects, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rule_groups
    #   <p>A list of your firewall rule groups.</p>
    #            <p>This might be a partial list of the rule groups that you have defined. For information, see <code>MaxResults</code>. </p>
    #
    #   @return [Array<FirewallRuleGroupMetadata>]
    #
    ListFirewallRuleGroupsOutput = ::Struct.new(
      :next_token,
      :firewall_rule_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to retrieve the rules for. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>Optional additional filter for the rules to retrieve.</p>
    #            <p>The setting that determines the processing order of the rules in a rule group. DNS Firewall
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute action
    #   <p>Optional additional filter for the rules to retrieve.</p>
    #            <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALLOW", "BLOCK", "ALERT"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    #   @return [String]
    #
    ListFirewallRulesInput = ::Struct.new(
      :firewall_rule_group_id,
      :priority,
      :action,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If objects are still available for retrieval, Resolver returns this token in the response.
    #              To retrieve the next batch of objects, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rules
    #   <p>A list of the rules that you have defined.  </p>
    #            <p>This might be a partial list of the firewall rules that you've defined. For information,
    #   			see <code>MaxResults</code>. </p>
    #
    #   @return [Array<FirewallRule>]
    #
    ListFirewallRulesOutput = ::Struct.new(
      :next_token,
      :firewall_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of Resolver configurations that you want to return in the response to
    #   			a <code>ListResolverConfigs</code> request. If you don't specify a value for <code>MaxResults</code>,
    #   			up to 100 Resolver configurations are returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> Resolver configurations, use
    #   			<code>NextToken</code> to get the second and subsequent pages of results.</p>
    #   		       <p>For the first <code>ListResolverConfigs</code> request, omit this value.</p>
    #   		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and
    #   			specify that value for <code>NextToken</code> in the request.</p>
    #
    #   @return [String]
    #
    ListResolverConfigsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If a response includes the last of the Resolver configurations that are associated with the current Amazon Web Services account,
    #   			<code>NextToken</code> doesn't appear in the response.</p>
    #   		       <p>If a response doesn't include the last of the configurations, you can get more configurations by submitting another
    #   			<code>ListResolverConfigs</code> request.
    #   			Get the value of <code>NextToken</code> that Amazon Route 53
    #                returned in the previous response and include it in
    #   			<code>NextToken</code> in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_configs
    #   <p>An array that contains one <code>ResolverConfigs</code> element for each Resolver configuration that is associated
    #   			with the current Amazon Web Services account.</p>
    #
    #   @return [Array<ResolverConfig>]
    #
    ListResolverConfigsOutput = ::Struct.new(
      :next_token,
      :resolver_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>
    #               <i>Optional</i>: An integer that specifies the maximum number of DNSSEC configuration results that you want Amazon Route 53 to return.
    #   			If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 configuration per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> DNSSEC configurations, use <code>NextToken</code>
    #   			to get the second and subsequent pages of results.</p>
    #   		       <p>For the first <code>ListResolverDnssecConfigs</code> request, omit this value.</p>
    #   		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value
    #   			for <code>NextToken</code> in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An optional specification to return a subset of objects.</p>
    #
    #   @return [Array<Filter>]
    #
    ListResolverDnssecConfigsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If a response includes the last of the DNSSEC configurations that are associated with the current Amazon Web Services account,
    #   			<code>NextToken</code> doesn't appear in the response.</p>
    #   		       <p>If a response doesn't include the last of the configurations, you can get more configurations by submitting another
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListResolverDnssecConfigs.html">ListResolverDnssecConfigs</a>
    #   			request. Get the value of <code>NextToken</code> that Amazon Route 53 returned in the previous response and include it in
    #   			<code>NextToken</code> in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_dnssec_configs
    #   <p>An array that contains one
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResolverDnssecConfig.html">ResolverDnssecConfig</a> element
    #   			for each configuration for DNSSEC validation that is associated with the current Amazon Web Services account.</p>
    #
    #   @return [Array<ResolverDnssecConfig>]
    #
    ListResolverDnssecConfigsOutput = ::Struct.new(
      :next_token,
      :resolver_dnssec_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to get IP addresses for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of IP addresses that you want to return in the response to a <code>ListResolverEndpointIpAddresses</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 IP addresses. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListResolverEndpointIpAddresses</code> request, omit this value.</p>
    #   		       <p>If the specified Resolver endpoint has more than <code>MaxResults</code> IP addresses, you can submit another
    #   			<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    ListResolverEndpointIpAddressesInput = ::Struct.new(
      :resolver_endpoint_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the specified endpoint has more than <code>MaxResults</code> IP addresses, you can submit another
    #   			<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request,
    #   			specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The value that you specified for <code>MaxResults</code> in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ip_addresses
    #   <p>Information about the IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward
    #   			DNS queries to (for inbound endpoints).</p>
    #
    #   @return [Array<IpAddressResponse>]
    #
    ListResolverEndpointIpAddressesOutput = ::Struct.new(
      :next_token,
      :max_results,
      :ip_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of Resolver endpoints that you want to return in the response to a <code>ListResolverEndpoints</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver endpoints. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListResolverEndpoints</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> Resolver endpoints, you can submit another <code>ListResolverEndpoints</code> request
    #   			to get the next group of Resolver endpoints. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.</p>
    #   		       <note>
    #               <p>If you submit a second or subsequent <code>ListResolverEndpoints</code> request and specify the <code>NextToken</code> parameter,
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    #
    #   @return [Array<Filter>]
    #
    ListResolverEndpointsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If more than <code>MaxResults</code> IP addresses match the specified criteria, you can submit another <code>ListResolverEndpoint</code> request
    #   			to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The value that you specified for <code>MaxResults</code> in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resolver_endpoints
    #   <p>The Resolver endpoints that were created by using the current Amazon Web Services account, and that match the specified filters, if any.</p>
    #
    #   @return [Array<ResolverEndpoint>]
    #
    ListResolverEndpointsOutput = ::Struct.new(
      :next_token,
      :max_results,
      :resolver_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p>
    #   		       <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>,
    #   			you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An optional specification to return a subset of query logging associations.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_by
    #   <p>The element that you want Resolver to sort query logging associations by. </p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
    #   		       </note>
    #   		
    #   		       <p>Valid values include the following elements:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CreationTime</code>: The ID of the query logging association.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code>
    #   				indicates the cause: </p>
    #   				           <ul>
    #                     <li>
    #                        <p>
    #                           <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>
    #                     </li>
    #                  </ul>
    #   				           <p>If <code>Status</code> is a value other than <code>FAILED</code>, <code>ERROR</code> is null.</p>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>Id</code>: The ID of the query logging association</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceId</code>: The ID of the VPC that is associated with the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
    #   				
    #   				           <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration
    #   						was successfully created. Resolver is logging queries that originate in the specified VPC.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DELETING</code>: Resolver is deleting this query logging association.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association.
    #   						Here are two common causes:</p>
    #   						               <ul>
    #                           <li>
    #                              <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                           </li>
    #                           <li>
    #                              <p>Permissions don't allow sending logs to the destination.</p>
    #                           </li>
    #                        </ul>
    #   					             </li>
    #                  </ul>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in,
    #   			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    ListResolverQueryLogConfigAssociationsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      :sort_by,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are more than <code>MaxResults</code> query logging associations, you can submit another <code>ListResolverQueryLogConfigAssociations</code> request
    #   			to get the next group of associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of query logging associations that were created by the current account in the specified Region. This count can differ from the
    #   			number of associations that are returned in a <code>ListResolverQueryLogConfigAssociations</code> response, depending on the values that you specify
    #   			in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_filtered_count
    #   <p>The total number of query logging associations that were created by the current account in the specified Region and that match the filters
    #   			that were specified in the <code>ListResolverQueryLogConfigAssociations</code> request. For the total number of associations that were created by the
    #   			current account in the specified Region, see <code>TotalCount</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resolver_query_log_config_associations
    #   <p>A list that contains one <code>ResolverQueryLogConfigAssociations</code> element for each query logging association that matches the
    #   			values that you specified for <code>Filter</code>.</p>
    #
    #   @return [Array<ResolverQueryLogConfigAssociation>]
    #
    ListResolverQueryLogConfigAssociationsOutput = ::Struct.new(
      :next_token,
      :total_count,
      :total_filtered_count,
      :resolver_query_log_config_associations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
        self.total_filtered_count ||= 0
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of query logging configurations that you want to return in the response to a <code>ListResolverQueryLogConfigs</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging configurations. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListResolverQueryLogConfigs</code> request, omit this value.</p>
    #   		       <p>If there are more than <code>MaxResults</code> query logging configurations that match the values that you specify for <code>Filters</code>,
    #   			you can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An optional specification to return a subset of query logging configurations.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_by
    #   <p>The element that you want Resolver to sort query logging configurations by. </p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
    #   		       </note>
    #   		
    #   		       <p>Valid values include the following elements:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>Arn</code>: The ARN of the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AssociationCount</code>: The number of VPCs that are associated with the specified configuration </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationTime</code>: The date and time that Resolver returned when the configuration was created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreatorRequestId</code>: The value that was specified for <code>CreatorRequestId</code> when the configuration was created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationArn</code>: The location that logs are sent to</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Id</code>: The ID of the configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code>: The name of the configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OwnerId</code>: The Amazon Web Services account number of the account that created the configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ShareStatus</code>: Whether the configuration is shared with other Amazon Web Services accounts or shared with the current account by
    #   				another Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
    #   				
    #   				           <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING</code>: Resolver is creating the query logging configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CREATED</code>: The query logging configuration was successfully created.
    #   						Resolver is logging queries that originate in the specified VPC.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging configuration.
    #   						Here are two common causes:</p>
    #   						               <ul>
    #                           <li>
    #                              <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                           </li>
    #                           <li>
    #                              <p>Permissions don't allow sending logs to the destination.</p>
    #                           </li>
    #                        </ul>
    #   					             </li>
    #                  </ul>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>If you specified a value for <code>SortBy</code>, the order that you want query logging configurations to be listed in,
    #   			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    ListResolverQueryLogConfigsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      :sort_by,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are more than <code>MaxResults</code> query logging configurations, you can submit another <code>ListResolverQueryLogConfigs</code> request
    #   			to get the next group of configurations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of query logging configurations that were created by the current account in the specified Region. This count can differ from the
    #   			number of query logging configurations that are returned in a <code>ListResolverQueryLogConfigs</code> response, depending on the values that you specify
    #   			in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_filtered_count
    #   <p>The total number of query logging configurations that were created by the current account in the specified Region and that match the filters
    #   			that were specified in the <code>ListResolverQueryLogConfigs</code> request. For the total number of query logging configurations that were created by the
    #   			current account in the specified Region, see <code>TotalCount</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resolver_query_log_configs
    #   <p>A list that contains one <code>ResolverQueryLogConfig</code> element for each query logging configuration that matches the
    #   			values that you specified for <code>Filter</code>.</p>
    #
    #   @return [Array<ResolverQueryLogConfig>]
    #
    ListResolverQueryLogConfigsOutput = ::Struct.new(
      :next_token,
      :total_count,
      :total_filtered_count,
      :resolver_query_log_configs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
        self.total_filtered_count ||= 0
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of rule associations that you want to return in the response to a <code>ListResolverRuleAssociations</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 rule associations. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListResolverRuleAssociation</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> rule associations, you can submit another <code>ListResolverRuleAssociation</code> request
    #   			to get the next group of rule associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.</p>
    #   		       <note>
    #               <p>If you submit a second or subsequent <code>ListResolverRuleAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    #
    #   @return [Array<Filter>]
    #
    ListResolverRuleAssociationsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If more than <code>MaxResults</code> rule associations match the specified criteria, you can submit another
    #   			<code>ListResolverRuleAssociation</code> request to get the next group of results. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The value that you specified for <code>MaxResults</code> in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resolver_rule_associations
    #   <p>The associations that were created between Resolver rules and VPCs using the current Amazon Web Services account, and that match the
    #   			specified filters, if any.</p>
    #
    #   @return [Array<ResolverRuleAssociation>]
    #
    ListResolverRuleAssociationsOutput = ::Struct.new(
      :next_token,
      :max_results,
      :resolver_rule_associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of Resolver rules that you want to return in the response to a <code>ListResolverRules</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver rules.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListResolverRules</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> Resolver rules, you can submit another <code>ListResolverRules</code> request
    #   			to get the next group of Resolver rules. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.</p>
    #   		       <note>
    #               <p>If you submit a second or subsequent <code>ListResolverRules</code> request and specify the <code>NextToken</code> parameter,
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    #
    #   @return [Array<Filter>]
    #
    ListResolverRulesInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If more than <code>MaxResults</code> Resolver rules match the specified criteria, you can submit another
    #   			<code>ListResolverRules</code> request to get the next group of results. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The value that you specified for <code>MaxResults</code> in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resolver_rules
    #   <p>The Resolver rules that were created using the current Amazon Web Services account and that match the specified filters, if any.</p>
    #
    #   @return [Array<ResolverRule>]
    #
    ListResolverRulesOutput = ::Struct.new(
      :next_token,
      :max_results,
      :resolver_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to list tags for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tags that you want to return in the response to a <code>ListTagsForResource</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 tags.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>For the first <code>ListTagsForResource</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> tags, you can submit another <code>ListTagsForResource</code> request
    #   			to get the next group of tags for the resource. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags that are associated with the resource that you specified in the <code>ListTagsForResource</code> request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>If more than <code>MaxResults</code> tags match the specified criteria, you can submit another
    #   			<code>ListTagsForResource</code> request to get the next group of results. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MutationProtectionStatus
    #
    module MutationProtectionStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the rule group that you want to share.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_rule_group_policy
    #   <p>The Identity and Access Management (Amazon Web Services IAM) policy to attach to the rule group.</p>
    #
    #   @return [String]
    #
    PutFirewallRuleGroupPolicyInput = ::Struct.new(
      :arn,
      :firewall_rule_group_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute return_value
    #   <p></p>
    #
    #   @return [Boolean]
    #
    PutFirewallRuleGroupPolicyOutput = ::Struct.new(
      :return_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.return_value ||= false
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_query_log_config_policy
    #   <p>An Identity and Access Management policy statement that lists the query logging configurations that you want to share with another Amazon Web Services account
    #   			and the operations that you want the account to be able to perform. You can specify the following operations in the <code>Actions</code> section
    #   			of the statement:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:AssociateResolverQueryLogConfig</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:DisassociateResolverQueryLogConfig</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverQueryLogConfigAssociations</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverQueryLogConfigs</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   		
    #   		       <p>In the <code>Resource</code> section of the statement, you specify the ARNs for the query logging configurations that you want to share
    #   			with the account that you specified in <code>Arn</code>. </p>
    #
    #   @return [String]
    #
    PutResolverQueryLogConfigPolicyInput = ::Struct.new(
      :arn,
      :resolver_query_log_config_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a <code>PutResolverQueryLogConfigPolicy</code> request.</p>
    #
    # @!attribute return_value
    #   <p>Whether the <code>PutResolverQueryLogConfigPolicy</code> request was successful.</p>
    #
    #   @return [Boolean]
    #
    PutResolverQueryLogConfigPolicyOutput = ::Struct.new(
      :return_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.return_value ||= false
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule that you want to share with another account.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_rule_policy
    #   <p>An Identity and Access Management policy statement that lists the rules that you want to share with another Amazon Web Services account and the operations that you want the account
    #   			to be able to perform. You can specify the following operations in the <code>Action</code> section of the statement:</p>
    #   			      <ul>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:GetResolverRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:AssociateResolverRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:DisassociateResolverRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverRules</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverRuleAssociations</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   		
    #   		       <p>In the <code>Resource</code> section of the statement, specify the ARN for the rule that you want to share with another account. Specify the same ARN
    #   			that you specified in <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    PutResolverRulePolicyInput = ::Struct.new(
      :arn,
      :resolver_rule_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a <code>PutResolverRulePolicy</code> request.</p>
    #
    # @!attribute return_value
    #   <p>Whether the <code>PutResolverRulePolicy</code> request was successful.</p>
    #
    #   @return [Boolean]
    #
    PutResolverRulePolicyOutput = ::Struct.new(
      :return_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.return_value ||= false
      end
    end

    # Includes enum constants for ResolverAutodefinedReverseStatus
    #
    module ResolverAutodefinedReverseStatus
      # No documentation available.
      #
      Enabling = "ENABLING"

      # No documentation available.
      #
      Enabled = "ENABLED"

      # No documentation available.
      #
      Disabling = "DISABLING"

      # No documentation available.
      #
      Disabled = "DISABLED"
    end

    # <p>A complex type that contains information about a Resolver configuration for a VPC.</p>
    #
    # @!attribute id
    #   <p>ID for the Resolver configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon Virtual Private Cloud VPC that you're configuring Resolver for.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The owner account ID of the Amazon Virtual Private Cloud VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute autodefined_reverse
    #   <p> The status of whether or not the Resolver will create autodefined rules for reverse DNS
    #   			lookups. This is enabled by default. The status can be one of following:</p>
    #   		       <p> Status of the rules generated by VPCs based on CIDR/Region for reverse DNS resolution. The
    #   			status can be one of following:</p>
    #
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <b>ENABLING:</b> Autodefined rules for reverse DNS lookups are being
    #   					enabled but are not complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ENABLED:</b> Autodefined rules for reverse DNS lookups are
    #   					enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DISABLING:</b> Autodefined rules for reverse DNS lookups are
    #   					being disabled but are not complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DISABLED:</b> Autodefined rules for reverse DNS lookups are
    #   					disabled.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    #   @return [String]
    #
    ResolverConfig = ::Struct.new(
      :id,
      :resource_id,
      :owner_id,
      :autodefined_reverse,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResolverDNSSECValidationStatus
    #
    module ResolverDNSSECValidationStatus
      # No documentation available.
      #
      Enabling = "ENABLING"

      # No documentation available.
      #
      Enabled = "ENABLED"

      # No documentation available.
      #
      Disabling = "DISABLING"

      # No documentation available.
      #
      Disabled = "DISABLED"
    end

    # <p>A complex type that contains information about a configuration for DNSSEC validation.</p>
    #
    # @!attribute id
    #   <p>The ID for a configuration for DNSSEC validation.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the virtual private cloud (VPC) that you're configuring the DNSSEC validation status for.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_status
    #   <p>The validation status for a DNSSEC configuration. The status can be one of the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <b>ENABLING:</b> DNSSEC validation is being enabled but is not complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ENABLED:</b> DNSSEC validation is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DISABLING:</b> DNSSEC validation is being disabled but is not complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DISABLED</b> DNSSEC validation is disabled.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    #   @return [String]
    #
    ResolverDnssecConfig = ::Struct.new(
      :id,
      :owner_id,
      :resource_id,
      :validation_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In the response to a
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html">CreateResolverEndpoint</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverEndpoint.html">DeleteResolverEndpoint</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>,
    # 			or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html">UpdateResolverEndpoint</a>
    # 			request, a complex type that contains settings for an existing inbound or outbound Resolver endpoint.</p>
    #
    # @!attribute id
    #   <p>The ID of the Resolver endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request that created the Resolver endpoint. The
    #   				<code>CreatorRequestId</code> allows failed requests to be retried without the risk
    #   			of running the operation twice.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the Resolver endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you assigned to the Resolver endpoint when you submitted a
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html">CreateResolverEndpoint</a>
    #   			request.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The ID of one or more security groups that control access to this VPC. The security group must include one or more inbound rules
    #   			(for inbound endpoints) or outbound rules (for outbound endpoints). Inbound and outbound rules must allow TCP and UDP access.
    #   			For inbound access, open port 53. For outbound access, open the port that you're using for DNS queries on your network.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute direction
    #   <p>Indicates whether the Resolver endpoint allows inbound or outbound DNS queries:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>INBOUND</code>: allows DNS queries to your VPC from your network</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTBOUND</code>: allows DNS queries from your VPC to your network</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INBOUND", "OUTBOUND"]
    #
    #   @return [String]
    #
    # @!attribute ip_address_count
    #   <p>The number of IP addresses that the Resolver endpoint can use for DNS queries.</p>
    #
    #   @return [Integer]
    #
    # @!attribute host_vpc_id
    #   <p>The ID of the VPC that you want to create the Resolver endpoint in.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A code that specifies the current status of the Resolver endpoint. Valid values include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code>: Resolver is creating and configuring one or more Amazon VPC network interfaces
    #   				for this endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATIONAL</code>: The Amazon VPC network interfaces for this endpoint are correctly configured and
    #   				able to pass inbound or outbound DNS queries between your network and Resolver.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code>: Resolver is associating or disassociating one or more network interfaces
    #   				with this endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUTO_RECOVERING</code>: Resolver is trying to recover one or more of the network interfaces
    #   				that are associated with this endpoint. During the recovery process, the endpoint functions with limited capacity because of the
    #   				limit on the number of DNS queries per IP address (per network interface). For the current limit, see
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html limits-api-entities-resolver">Limits on Route 53 Resolver</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTION_NEEDED</code>: This endpoint is unhealthy, and Resolver can't automatically recover it.
    #   				To resolve the problem, we recommend that you check each IP address that you associated with the endpoint. For each IP address
    #   				that isn't available, add another IP address and then delete the IP address that isn't available. (An endpoint must always include
    #   				at least two IP addresses.) A status of <code>ACTION_NEEDED</code> can have a variety of causes. Here are two common causes:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>One or more of the network interfaces that are associated with the endpoint were deleted using Amazon VPC.</p>
    #                     </li>
    #                     <li>
    #                        <p>The network interface couldn't be created for some reason that's outside the control of Resolver.</p>
    #                     </li>
    #                  </ul>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code>: Resolver is deleting this endpoint and the associated network interfaces.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed description of the status of the Resolver endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the endpoint was created, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the endpoint was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    ResolverEndpoint = ::Struct.new(
      :id,
      :creator_request_id,
      :arn,
      :name,
      :security_group_ids,
      :direction,
      :ip_address_count,
      :host_vpc_id,
      :status,
      :status_message,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResolverEndpointDirection
    #
    module ResolverEndpointDirection
      # No documentation available.
      #
      Inbound = "INBOUND"

      # No documentation available.
      #
      Outbound = "OUTBOUND"
    end

    # Includes enum constants for ResolverEndpointStatus
    #
    module ResolverEndpointStatus
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      Operational = "OPERATIONAL"

      # No documentation available.
      #
      Updating = "UPDATING"

      # No documentation available.
      #
      AutoRecovering = "AUTO_RECOVERING"

      # No documentation available.
      #
      ActionNeeded = "ACTION_NEEDED"

      # No documentation available.
      #
      Deleting = "DELETING"
    end

    # <p>In the response to a
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverQueryLogConfig.html">CreateResolverQueryLogConfig</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverQueryLogConfig.html">DeleteResolverQueryLogConfig</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfig.html">GetResolverQueryLogConfig</a>,
    # 			or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html">ListResolverQueryLogConfigs</a>
    # 			request, a complex type that contains settings for one query logging configuration.</p>
    #
    # @!attribute id
    #   <p>The ID for the query logging configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID for the account that created the query logging configuration. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the specified query logging configuration. Valid values include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code>: Resolver is creating the query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code>: The query logging configuration was successfully created.
    #   				Resolver is logging queries that originate in the specified VPC.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: Resolver can't deliver logs to the location that is specified in the query logging configuration.
    #   				Here are two common causes:</p>
    #   				           <ul>
    #                     <li>
    #                        <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                     </li>
    #                     <li>
    #                        <p>Permissions don't allow sending logs to the destination.</p>
    #                     </li>
    #                  </ul>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "CREATED", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute share_status
    #   <p>An indication of whether the query logging configuration is shared with other Amazon Web Services accounts, or was shared with the current account by another
    #   			Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>
    #
    #   Enum, one of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #
    #   @return [String]
    #
    # @!attribute association_count
    #   <p>The number of VPCs that are associated with the query logging configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The ARN for the query logging configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the query logging configuration. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_arn
    #   <p>The ARN of the resource that you want Resolver to send query logs: an Amazon S3 bucket, a CloudWatch Logs log group, or
    #   			a Kinesis Data Firehose delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request that created the query logging configuration.
    #   			The <code>CreatorRequestId</code> allows failed requests to be retried without the risk
    #   			of running the operation twice.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the query logging configuration was created, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    ResolverQueryLogConfig = ::Struct.new(
      :id,
      :owner_id,
      :status,
      :share_status,
      :association_count,
      :arn,
      :name,
      :destination_arn,
      :creator_request_id,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.association_count ||= 0
      end
    end

    # <p>In the response to an
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html">AssociateResolverQueryLogConfig</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfigAssociation.html">GetResolverQueryLogConfigAssociation</a>,
    # 			or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html">ListResolverQueryLogConfigAssociations</a>,
    # 			request, a complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>
    #
    # @!attribute id
    #   <p>The ID of the query logging association.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that a VPC is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon VPC that is associated with the query logging configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the specified query logging association. Valid values include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration
    #   				was successfully created. Resolver is logging queries that originate in the specified VPC.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code>: Resolver is deleting this query logging association.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> indicates the cause:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>
    #               </li>
    #            </ul>
    #   		       <p>If the value of <code>Status</code> is a value other than <code>FAILED</code>, <code>Error</code> is null. </p>
    #
    #   Enum, one of: ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Contains additional information about the error. If the value or <code>Error</code> is null, the value of <code>ErrorMessage</code> also is null.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the VPC was associated with the query logging configuration, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    ResolverQueryLogConfigAssociation = ::Struct.new(
      :id,
      :resolver_query_log_config_id,
      :resource_id,
      :status,
      :error,
      :error_message,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResolverQueryLogConfigAssociationError
    #
    module ResolverQueryLogConfigAssociationError
      # No documentation available.
      #
      None = "NONE"

      # No documentation available.
      #
      DestinationNotFound = "DESTINATION_NOT_FOUND"

      # No documentation available.
      #
      AccessDenied = "ACCESS_DENIED"

      # No documentation available.
      #
      InternalServiceError = "INTERNAL_SERVICE_ERROR"
    end

    # Includes enum constants for ResolverQueryLogConfigAssociationStatus
    #
    module ResolverQueryLogConfigAssociationStatus
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      Active = "ACTIVE"

      # No documentation available.
      #
      ActionNeeded = "ACTION_NEEDED"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # Includes enum constants for ResolverQueryLogConfigStatus
    #
    module ResolverQueryLogConfigStatus
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      Created = "CREATED"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # <p>For queries that originate in your VPC, detailed information about a Resolver rule, which specifies how to route DNS queries
    # 			out of the VPC. The <code>ResolverRule</code> parameter appears in the response to a
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html">CreateResolverRule</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverRule.html">DeleteResolverRule</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html">GetResolverRule</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>,
    # 			or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html">UpdateResolverRule</a> request.</p>
    #
    # @!attribute id
    #   <p>The ID that Resolver assigned to the Resolver rule when you created it.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that you specified when you created the Resolver rule.
    #   				<code>CreatorRequestId</code> identifies the request and allows failed requests to
    #   			be retried without the risk of running the operation twice. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the Resolver rule specified by <code>Id</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>DNS queries for this domain name are forwarded to the IP addresses that are specified in <code>TargetIps</code>. If a query matches
    #   			multiple Resolver rules (example.com and www.example.com), the query is routed using the Resolver rule that contains the most specific domain name
    #   			(www.example.com).</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A code that specifies the current status of the Resolver rule.</p>
    #
    #   Enum, one of: ["COMPLETE", "DELETING", "UPDATING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed description of the status of a Resolver rule.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_type
    #   <p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p>
    #   		       <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for
    #   			a subdomain of that domain, specify <code>SYSTEM</code>.</p>
    #   		       <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code>
    #   			for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify
    #   			<code>SYSTEM</code> for <code>RuleType</code>.</p>
    #   		       <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>
    #
    #   Enum, one of: ["FORWARD", "SYSTEM", "RECURSIVE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the Resolver rule, which you specified when you created the Resolver rule.</p>
    #
    #   @return [String]
    #
    # @!attribute target_ips
    #   <p>An array that contains the IP addresses and ports that an outbound endpoint forwards DNS queries to. Typically,
    #   			these are the IP addresses of DNS resolvers on your network. Specify IPv4 addresses. IPv6 is not supported.</p>
    #
    #   @return [Array<TargetAddress>]
    #
    # @!attribute resolver_endpoint_id
    #   <p>The ID of the endpoint that the rule is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>When a rule is shared with another Amazon Web Services account, the account ID of the account that the rule is shared with.</p>
    #
    #   @return [String]
    #
    # @!attribute share_status
    #   <p>Whether the rule is shared and, if so, whether the current account is sharing the rule with
    #   			another account, or another account is sharing the rule with the current account.</p>
    #
    #   Enum, one of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that the Resolver rule was created, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute modification_time
    #   <p>The date and time that the Resolver rule was last updated, in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    ResolverRule = ::Struct.new(
      :id,
      :creator_request_id,
      :arn,
      :domain_name,
      :status,
      :status_message,
      :rule_type,
      :name,
      :target_ips,
      :resolver_endpoint_id,
      :owner_id,
      :share_status,
      :creation_time,
      :modification_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In the response to an
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html">AssociateResolverRule</a>,
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html">DisassociateResolverRule</a>,
    # 			or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>
    # 			request, provides information about an association between a Resolver rule and a VPC.
    # 			The association determines which DNS queries that originate in the VPC are forwarded to your network. </p>
    #
    # @!attribute id
    #   <p>The ID of the association between a Resolver rule and a VPC. Resolver assigns this value when you submit an
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html">AssociateResolverRule</a>
    #   			request.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_rule_id
    #   <p>The ID of the Resolver rule that you associated with the VPC that is specified by <code>VPCId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of an association between a Resolver rule and a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC that you associated the Resolver rule with.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A code that specifies the current status of the association between a Resolver rule and a VPC.</p>
    #
    #   Enum, one of: ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed description of the status of the association between a Resolver rule and a VPC.</p>
    #
    #   @return [String]
    #
    ResolverRuleAssociation = ::Struct.new(
      :id,
      :resolver_rule_id,
      :name,
      :vpc_id,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResolverRuleAssociationStatus
    #
    module ResolverRuleAssociationStatus
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      Complete = "COMPLETE"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Failed = "FAILED"

      # No documentation available.
      #
      Overridden = "OVERRIDDEN"
    end

    # <p>In an
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html">UpdateResolverRule</a>
    # 			request, information about the changes that you want to make.</p>
    #
    # @!attribute name
    #   <p>The new name for the Resolver rule. The name that you specify appears in the Resolver dashboard in the Route 53 console. </p>
    #
    #   @return [String]
    #
    # @!attribute target_ips
    #   <p>For DNS queries that originate in your VPC, the new IP addresses that you want to route outbound DNS queries to.</p>
    #
    #   @return [Array<TargetAddress>]
    #
    # @!attribute resolver_endpoint_id
    #   <p>The ID of the new outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify in
    #   			<code>TargetIps</code>.</p>
    #
    #   @return [String]
    #
    ResolverRuleConfig = ::Struct.new(
      :name,
      :target_ips,
      :resolver_endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResolverRuleStatus
    #
    module ResolverRuleStatus
      # No documentation available.
      #
      Complete = "COMPLETE"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Updating = "UPDATING"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # <p>The resource that you tried to create already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>For a <code>ResourceExistsException</code> error, the type of resource that the error applies to.</p>
    #
    #   @return [String]
    #
    ResourceExistsException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource that you tried to update or delete is currently in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>For a <code>ResourceInUseException</code> error, the type of resource that is currently in use.</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>For a <code>ResourceNotFoundException</code> error, the type of resource that doesn't exist.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource isn't available.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>For a <code>ResourceUnavailableException</code> error, the type of resource that isn't available.</p>
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuleTypeOption
    #
    module RuleTypeOption
      # No documentation available.
      #
      Forward = "FORWARD"

      # No documentation available.
      #
      System = "SYSTEM"

      # No documentation available.
      #
      Recursive = "RECURSIVE"
    end

    # Includes enum constants for ShareStatus
    #
    module ShareStatus
      # No documentation available.
      #
      NotShared = "NOT_SHARED"

      # No documentation available.
      #
      SharedWithMe = "SHARED_WITH_ME"

      # No documentation available.
      #
      SharedByMe = "SHARED_BY_ME"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      Ascending = "ASCENDING"

      # No documentation available.
      #
      Descending = "DESCENDING"
    end

    # <p>One tag that you want to add to the specified resource. A tag consists of a <code>Key</code> (a name for the tag) and a <code>Value</code>.</p>
    #
    # @!attribute key
    #   <p>The name for the tag. For example, if you want to associate Resolver resources with the account IDs of your customers for billing purposes,
    #   			the value of <code>Key</code> might be <code>account-id</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the tag. For example, if <code>Key</code> is <code>account-id</code>, then <code>Value</code> might be the ID of the
    #   			customer account that you're creating the resource for.</p>
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
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to add tags to. To get the ARN for a resource, use the applicable
    #   			<code>Get</code> or <code>List</code> command: </p>
    #   			      <ul>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html">GetResolverRule</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html">GetResolverRuleAssociation</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>
    #                  </p>
    #   				        </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you want to add to the specified resource.</p>
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

    # <p>In a
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html">CreateResolverRule</a>
    # 			request, an array of the IPs that you want to forward DNS queries to.</p>
    #
    # @!attribute ip
    #   <p>One IP address that you want to forward DNS queries to. You can specify only IPv4 addresses.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port at <code>Ip</code> that you want to forward DNS queries to.</p>
    #
    #   @return [Integer]
    #
    TargetAddress = ::Struct.new(
      :ip,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was throttled. Try again in a few minutes.</p>
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

    # <p>The specified resource doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnknownResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to remove tags from. To get the ARN for a resource, use the applicable
    #   			<code>Get</code> or <code>List</code> command: </p>
    #   			      <ul>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html">GetResolverRule</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html">GetResolverRuleAssociation</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>
    #                  </p>
    #   				        </li>
    #               <li>
    #   					          <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>
    #                  </p>
    #   				        </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tags that you want to remove to the specified resource.</p>
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

    # @!attribute resource_id
    #   <p>The ID of the VPC that the configuration is for.</p>
    #
    #   @return [String]
    #
    # @!attribute firewall_fail_open
    #   <p>Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>
    #            <ul>
    #               <li>
    #                  <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability.
    #          DNS Firewall blocks queries that it is unable to evaluate properly. </p>
    #               </li>
    #               <li>
    #                  <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it
    #          is unable to properly evaluate them. </p>
    #               </li>
    #            </ul>
    #            <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UpdateFirewallConfigInput = ::Struct.new(
      :resource_id,
      :firewall_fail_open,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_config
    #   <p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC. </p>
    #
    #   @return [FirewallConfig]
    #
    UpdateFirewallConfigOutput = ::Struct.new(
      :firewall_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list whose domains you want to update. </p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>What you want DNS Firewall to do with the domains that you are providing: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - Add the domains to the ones that are already in the domain list. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code> - Search the domain list for the domains and remove them from the list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> - Update the domain list to exactly match the list that you are providing. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ADD", "REMOVE", "REPLACE"]
    #
    #   @return [String]
    #
    # @!attribute domains
    #   <p>A list of domains to use in the update operation.</p>
    #            <p>Each domain specification in your domain list must satisfy the following
    #   	requirements: </p>
    #            <ul>
    #               <li>
    #         	        <p>It can optionally start with <code>*</code> (asterisk).</p>
    #         	     </li>
    #               <li>
    #         	        <p>With the exception of the optional starting asterisk, it must only contain
    #         	   the following characters: <code>A-Z</code>, <code>a-z</code>,
    #         	   <code>0-9</code>, <code>-</code> (hyphen).</p>
    #         	     </li>
    #               <li>
    #         	        <p>It must be from 1-255 characters in length. </p>
    #         	     </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    UpdateFirewallDomainsInput = ::Struct.new(
      :firewall_domain_list_id,
      :operation,
      :domains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the firewall domain list that DNS Firewall just updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the domain list. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> </p>
    #
    #   Enum, one of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional information about the status of the list, if available.</p>
    #
    #   @return [String]
    #
    UpdateFirewallDomainsOutput = ::Struct.new(
      :id,
      :name,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    #   			starting from the rule group with the lowest numeric priority setting. </p>
    #            <p>You must specify a unique priority for each rule group that you associate with a single VPC.
    #              To make it easier to insert rule groups later, leave space between the numbers, for example, use 100, 200, and so on. You
    #      can change the priority setting for a rule group association after you create it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the rule group association.</p>
    #
    #   @return [String]
    #
    UpdateFirewallRuleGroupAssociationInput = ::Struct.new(
      :firewall_rule_group_association_id,
      :priority,
      :mutation_protection,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_association
    #   <p>The association that you just updated. </p>
    #
    #   @return [FirewallRuleGroupAssociation]
    #
    UpdateFirewallRuleGroupAssociationOutput = ::Struct.new(
      :firewall_rule_group_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group for the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute firewall_domain_list_id
    #   <p>The ID of the domain list to use in the rule.  </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #            <p>You must specify a unique priority for each rule in a rule group.
    #              To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You
    #      can change the priority setting for the rules in a rule group at any time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALLOW", "BLOCK", "ALERT"]
    #
    #   @return [String]
    #
    # @!attribute block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #
    #   @return [String]
    #
    # @!attribute block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    #   Enum, one of: ["CNAME"]
    #
    #   @return [String]
    #
    # @!attribute block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    UpdateFirewallRuleInput = ::Struct.new(
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      :priority,
      :action,
      :block_response,
      :block_override_domain,
      :block_override_dns_type,
      :block_override_ttl,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute firewall_rule
    #   <p>The firewall rule that you just updated. </p>
    #
    #   @return [FirewallRule]
    #
    UpdateFirewallRuleOutput = ::Struct.new(
      :firewall_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>Resource ID of the Amazon VPC that you want to update the Resolver configuration for.</p>
    #
    #   @return [String]
    #
    # @!attribute autodefined_reverse_flag
    #   <p>Indicates whether or not the Resolver will create autodefined rules for reverse DNS
    #   			lookups. This is enabled by default. Disabling this option will also affect EC2-Classic
    #   			instances using ClassicLink. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the
    #   					<i>Amazon EC2 guide</i>.</p>
    #   		       <note>
    #               <p>It can take some time for the status change to be completed.</p>
    #            </note>
    #   		       <p></p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    UpdateResolverConfigInput = ::Struct.new(
      :resource_id,
      :autodefined_reverse_flag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_config
    #   <p>An array that contains settings for the specified Resolver configuration.</p>
    #
    #   @return [ResolverConfig]
    #
    UpdateResolverConfigOutput = ::Struct.new(
      :resolver_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.</p>
    #
    #   @return [String]
    #
    # @!attribute validation
    #   <p>The new value that you are specifying for DNSSEC validation for the VPC. The value can be <code>ENABLE</code>
    #   			or <code>DISABLE</code>. Be aware that it can take time for a validation status change to be completed.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    UpdateResolverDnssecConfigInput = ::Struct.new(
      :resource_id,
      :validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_dnssec_config
    #   <p>A complex type that contains settings for the specified DNSSEC configuration.</p>
    #
    #   @return [ResolverDnssecConfig]
    #
    UpdateResolverDnssecConfigOutput = ::Struct.new(
      :resolver_dnssec_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Resolver endpoint that you want to update.</p>
    #
    #   @return [String]
    #
    UpdateResolverEndpointInput = ::Struct.new(
      :resolver_endpoint_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_endpoint
    #   <p>The response to an <code>UpdateResolverEndpoint</code> request.</p>
    #
    #   @return [ResolverEndpoint]
    #
    UpdateResolverEndpointOutput = ::Struct.new(
      :resolver_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>The new settings for the Resolver rule.</p>
    #
    #   @return [ResolverRuleConfig]
    #
    UpdateResolverRuleInput = ::Struct.new(
      :resolver_rule_id,
      :config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver_rule
    #   <p>The response to an <code>UpdateResolverRule</code> request.</p>
    #
    #   @return [ResolverRule]
    #
    UpdateResolverRuleOutput = ::Struct.new(
      :resolver_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Validation
    #
    module Validation
      # No documentation available.
      #
      ENABLE = "ENABLE"

      # No documentation available.
      #
      DISABLE = "DISABLE"
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
