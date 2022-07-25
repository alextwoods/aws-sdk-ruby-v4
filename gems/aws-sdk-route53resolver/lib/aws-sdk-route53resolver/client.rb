# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Route53Resolver
  # An API client for Route53Resolver
  # See {#initialize} for a full list of supported configuration options
  # <p>When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC
  # 			from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names
  # 			such as domain names for EC2 instances or Elastic Load Balancing load balancers.
  # 			Resolver performs recursive lookups against public name servers for all other domain
  # 			names.</p>
  #
  # 		       <p>You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:</p>
  #
  # 		       <p>
  #             <b>Forward DNS queries from resolvers on your network to Route 53 Resolver</b>
  #          </p>
  #
  # 		       <p>DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers
  # 			to easily resolve domain names for Amazon Web Services resources such as EC2 instances or records in a Route 53 private hosted zone.
  # 			For more information, see
  # 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc">How DNS Resolvers
  # 			on Your Network Forward DNS Queries to Route 53 Resolver</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
  # 		
  # 		       <p>
  #             <b>Conditionally forward queries from a VPC to resolvers on your network</b>
  #          </p>
  #
  # 		       <p>You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network.
  # 			To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward
  # 			(such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to.
  # 			If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match
  # 			(acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see
  # 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network">How Route 53 Resolver
  # 			Forwards DNS Queries from Your VPCs to Your Network</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
  #
  # 		       <p>Like Amazon VPC, Resolver is Regional. In each Region where you have VPCs, you can choose
  # 			whether to forward queries from your VPCs to your network (outbound queries), from your
  # 			network to your VPCs (inbound queries), or both.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::Route53Resolver::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a <a>FirewallRuleGroup</a> with a VPC, to provide DNS filtering for the VPC. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateFirewallRuleGroupInput}.
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be
    #   			retried without the risk of running the operation twice. <code>CreatorRequestId</code>
    #   			can be any unique string, for example, a date/time stamp. </p>
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    #
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC that you want to associate with the rule group. </p>
    #
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    #   			starting from the rule group with the lowest numeric priority setting. </p>
    #            <p>You must specify a unique priority for each rule group that you associate with a single VPC.
    #              To make it easier to insert rule groups later, leave space between the numbers, for example, use 101, 200, and so on. You
    #      can change the priority setting for a rule group association after you create it.</p>
    #      	     <p>The allowed values for <code>Priority</code> are between 100 and 9900.</p>
    #
    # @option params [String] :name
    #   <p>A name that lets you identify the association, to manage and use it.</p>
    #
    # @option params [String] :mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections.
    #          When you create the association, the default setting is <code>DISABLED</code>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the rule group association. </p>
    #
    # @return [Types::AssociateFirewallRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_firewall_rule_group(
    #     creator_request_id: 'CreatorRequestId', # required
    #     firewall_rule_group_id: 'FirewallRuleGroupId', # required
    #     vpc_id: 'VpcId', # required
    #     priority: 1, # required
    #     name: 'Name', # required
    #     mutation_protection: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateFirewallRuleGroupOutput
    #   resp.data.firewall_rule_group_association #=> Types::FirewallRuleGroupAssociation
    #   resp.data.firewall_rule_group_association.id #=> String
    #   resp.data.firewall_rule_group_association.arn #=> String
    #   resp.data.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule_group_association.vpc_id #=> String
    #   resp.data.firewall_rule_group_association.name #=> String
    #   resp.data.firewall_rule_group_association.priority #=> Integer
    #   resp.data.firewall_rule_group_association.mutation_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.data.firewall_rule_group_association.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group_association.status_message #=> String
    #   resp.data.firewall_rule_group_association.creator_request_id #=> String
    #   resp.data.firewall_rule_group_association.creation_time #=> String
    #   resp.data.firewall_rule_group_association.modification_time #=> String
    #
    def associate_firewall_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateFirewallRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateFirewallRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateFirewallRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::LimitExceededException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::AssociateFirewallRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateFirewallRuleGroup,
        stubs: @stubs,
        params_class: Params::AssociateFirewallRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_firewall_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address,
    # 			submit one <code>AssociateResolverEndpointIpAddress</code> request for each IP address.</p>
    # 		       <p>To remove an IP address from an endpoint, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html">DisassociateResolverEndpointIpAddress</a>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateResolverEndpointIpAddressInput}.
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to associate IP addresses with.</p>
    #
    # @option params [IpAddressUpdate] :ip_address
    #   <p>Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID,
    #   			Resolver chooses an IP address for you from the available IPs in the specified subnet.</p>
    #
    # @return [Types::AssociateResolverEndpointIpAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resolver_endpoint_ip_address(
    #     resolver_endpoint_id: 'ResolverEndpointId', # required
    #     ip_address: {
    #       ip_id: 'IpId',
    #       subnet_id: 'SubnetId',
    #       ip: 'Ip'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateResolverEndpointIpAddressOutput
    #   resp.data.resolver_endpoint #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoint.id #=> String
    #   resp.data.resolver_endpoint.creator_request_id #=> String
    #   resp.data.resolver_endpoint.arn #=> String
    #   resp.data.resolver_endpoint.name #=> String
    #   resp.data.resolver_endpoint.security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.data.resolver_endpoint.direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoint.ip_address_count #=> Integer
    #   resp.data.resolver_endpoint.host_vpc_id #=> String
    #   resp.data.resolver_endpoint.status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoint.status_message #=> String
    #   resp.data.resolver_endpoint.creation_time #=> String
    #   resp.data.resolver_endpoint.modification_time #=> String
    #
    def associate_resolver_endpoint_ip_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateResolverEndpointIpAddressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateResolverEndpointIpAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateResolverEndpointIpAddress
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::AssociateResolverEndpointIpAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateResolverEndpointIpAddress,
        stubs: @stubs,
        params_class: Params::AssociateResolverEndpointIpAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_resolver_endpoint_ip_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs
    # 			that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one <code>AssociateResolverQueryLogConfig</code>
    # 			request for each VPC.</p>
    # 		
    # 		       <note>
    #             <p>The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.</p>
    #          </note>
    # 		
    # 		       <p>To remove a VPC from a query logging configuration, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig</a>.
    # 			</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateResolverQueryLogConfigInput}.
    #
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to associate a VPC with.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of an Amazon VPC that you want this query logging configuration to log queries for.</p>
    #   		
    #   		       <note>
    #   			         <p>The VPCs and the query logging configuration must be in the same Region.</p>
    #   		       </note>
    #
    # @return [Types::AssociateResolverQueryLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resolver_query_log_config(
    #     resolver_query_log_config_id: 'ResolverQueryLogConfigId', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateResolverQueryLogConfigOutput
    #   resp.data.resolver_query_log_config_association #=> Types::ResolverQueryLogConfigAssociation
    #   resp.data.resolver_query_log_config_association.id #=> String
    #   resp.data.resolver_query_log_config_association.resolver_query_log_config_id #=> String
    #   resp.data.resolver_query_log_config_association.resource_id #=> String
    #   resp.data.resolver_query_log_config_association.status #=> String, one of ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config_association.error #=> String, one of ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.resolver_query_log_config_association.error_message #=> String
    #   resp.data.resolver_query_log_config_association.creation_time #=> String
    #
    def associate_resolver_query_log_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateResolverQueryLogConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateResolverQueryLogConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateResolverQueryLogConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::AssociateResolverQueryLogConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateResolverQueryLogConfig,
        stubs: @stubs,
        params_class: Params::AssociateResolverQueryLogConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_resolver_query_log_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries
    # 			for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the
    # 			IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html">CreateResolverRule</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateResolverRuleInput}.
    #
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>.</p>
    #
    # @option params [String] :name
    #   <p>A name for the association that you're creating between a Resolver rule and a VPC.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that you want to associate the Resolver rule with.</p>
    #
    # @return [Types::AssociateResolverRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resolver_rule(
    #     resolver_rule_id: 'ResolverRuleId', # required
    #     name: 'Name',
    #     vpc_id: 'VPCId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateResolverRuleOutput
    #   resp.data.resolver_rule_association #=> Types::ResolverRuleAssociation
    #   resp.data.resolver_rule_association.id #=> String
    #   resp.data.resolver_rule_association.resolver_rule_id #=> String
    #   resp.data.resolver_rule_association.name #=> String
    #   resp.data.resolver_rule_association.vpc_id #=> String
    #   resp.data.resolver_rule_association.status #=> String, one of ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"]
    #   resp.data.resolver_rule_association.status_message #=> String
    #
    def associate_resolver_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateResolverRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateResolverRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateResolverRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::ResourceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::AssociateResolverRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateResolverRule,
        stubs: @stubs,
        params_class: Params::AssociateResolverRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_resolver_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty firewall domain list for use in DNS Firewall rules. You can populate the domains for the new list with a file, using <a>ImportFirewallDomains</a>, or with domain strings, using <a>UpdateFirewallDomains</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFirewallDomainListInput}.
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows you to retry failed requests
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    # @option params [String] :name
    #   <p>A name that lets you identify the domain list to manage and use it.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the domain list. </p>
    #
    # @return [Types::CreateFirewallDomainListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_domain_list(
    #     creator_request_id: 'CreatorRequestId', # required
    #     name: 'Name', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFirewallDomainListOutput
    #   resp.data.firewall_domain_list #=> Types::FirewallDomainList
    #   resp.data.firewall_domain_list.id #=> String
    #   resp.data.firewall_domain_list.arn #=> String
    #   resp.data.firewall_domain_list.name #=> String
    #   resp.data.firewall_domain_list.domain_count #=> Integer
    #   resp.data.firewall_domain_list.status #=> String, one of ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #   resp.data.firewall_domain_list.status_message #=> String
    #   resp.data.firewall_domain_list.managed_owner_name #=> String
    #   resp.data.firewall_domain_list.creator_request_id #=> String
    #   resp.data.firewall_domain_list.creation_time #=> String
    #   resp.data.firewall_domain_list.modification_time #=> String
    #
    def create_firewall_domain_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFirewallDomainListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFirewallDomainListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFirewallDomainList
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::CreateFirewallDomainList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFirewallDomainList,
        stubs: @stubs,
        params_class: Params::CreateFirewallDomainListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_firewall_domain_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a single DNS Firewall rule in the specified rule group, using the specified domain list.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFirewallRuleInput}.
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows you to retry failed requests
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group where you want to create the rule. </p>
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that you want to use in the rule. </p>
    #
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #            <p>You must specify a unique priority for each rule in a rule group.
    #              To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You
    #      can change the priority setting for the rules in a rule group at any time.</p>
    #
    # @option params [String] :action
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
    # @option params [String] :block_response
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
    # @option params [String] :block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #
    # @option params [String] :block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #
    # @option params [Integer] :block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    #
    # @option params [String] :name
    #   <p>A name that lets you identify the rule in the rule group.</p>
    #
    # @return [Types::CreateFirewallRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_rule(
    #     creator_request_id: 'CreatorRequestId', # required
    #     firewall_rule_group_id: 'FirewallRuleGroupId', # required
    #     firewall_domain_list_id: 'FirewallDomainListId', # required
    #     priority: 1, # required
    #     action: 'ALLOW', # required - accepts ["ALLOW", "BLOCK", "ALERT"]
    #     block_response: 'NODATA', # accepts ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #     block_override_domain: 'BlockOverrideDomain',
    #     block_override_dns_type: 'CNAME', # accepts ["CNAME"]
    #     block_override_ttl: 1,
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFirewallRuleOutput
    #   resp.data.firewall_rule #=> Types::FirewallRule
    #   resp.data.firewall_rule.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule.firewall_domain_list_id #=> String
    #   resp.data.firewall_rule.name #=> String
    #   resp.data.firewall_rule.priority #=> Integer
    #   resp.data.firewall_rule.action #=> String, one of ["ALLOW", "BLOCK", "ALERT"]
    #   resp.data.firewall_rule.block_response #=> String, one of ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #   resp.data.firewall_rule.block_override_domain #=> String
    #   resp.data.firewall_rule.block_override_dns_type #=> String, one of ["CNAME"]
    #   resp.data.firewall_rule.block_override_ttl #=> Integer
    #   resp.data.firewall_rule.creator_request_id #=> String
    #   resp.data.firewall_rule.creation_time #=> String
    #   resp.data.firewall_rule.modification_time #=> String
    #
    def create_firewall_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFirewallRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFirewallRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFirewallRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::CreateFirewallRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFirewallRule,
        stubs: @stubs,
        params_class: Params::CreateFirewallRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_firewall_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty DNS Firewall rule group for filtering DNS network traffic in a VPC. You can add rules to the new rule group
    #            by calling <a>CreateFirewallRule</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFirewallRuleGroupInput}.
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    #
    # @option params [String] :name
    #   <p>A name that lets you identify the rule group, to manage and use it.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the rule group. </p>
    #
    # @return [Types::CreateFirewallRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_rule_group(
    #     creator_request_id: 'CreatorRequestId', # required
    #     name: 'Name', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFirewallRuleGroupOutput
    #   resp.data.firewall_rule_group #=> Types::FirewallRuleGroup
    #   resp.data.firewall_rule_group.id #=> String
    #   resp.data.firewall_rule_group.arn #=> String
    #   resp.data.firewall_rule_group.name #=> String
    #   resp.data.firewall_rule_group.rule_count #=> Integer
    #   resp.data.firewall_rule_group.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group.status_message #=> String
    #   resp.data.firewall_rule_group.owner_id #=> String
    #   resp.data.firewall_rule_group.creator_request_id #=> String
    #   resp.data.firewall_rule_group.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.firewall_rule_group.creation_time #=> String
    #   resp.data.firewall_rule_group.modification_time #=> String
    #
    def create_firewall_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFirewallRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFirewallRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFirewallRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::CreateFirewallRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFirewallRuleGroup,
        stubs: @stubs,
        params_class: Params::CreateFirewallRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_firewall_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:</p>
    # 		       <ul>
    #             <li>
    #                <p>An <i>inbound Resolver endpoint</i> forwards DNS queries to the DNS service for a VPC
    # 				from your network.</p>
    #             </li>
    #             <li>
    #                <p>An <i>outbound Resolver endpoint</i> forwards DNS queries from the DNS service for a VPC
    # 				to your network.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateResolverEndpointInput}.
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    # @option params [String] :name
    #   <p>A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify
    #   			must include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints).
    #   			Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port
    #   			that you're using for DNS queries on your network.</p>
    #
    # @option params [String] :direction
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
    # @option params [Array<IpAddressRequest>] :ip_addresses
    #   <p>The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward
    #   			DNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the endpoint.</p>
    #
    # @return [Types::CreateResolverEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver_endpoint(
    #     creator_request_id: 'CreatorRequestId', # required
    #     name: 'Name',
    #     security_group_ids: [
    #       'member'
    #     ], # required
    #     direction: 'INBOUND', # required - accepts ["INBOUND", "OUTBOUND"]
    #     ip_addresses: [
    #       {
    #         subnet_id: 'SubnetId', # required
    #         ip: 'Ip'
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResolverEndpointOutput
    #   resp.data.resolver_endpoint #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoint.id #=> String
    #   resp.data.resolver_endpoint.creator_request_id #=> String
    #   resp.data.resolver_endpoint.arn #=> String
    #   resp.data.resolver_endpoint.name #=> String
    #   resp.data.resolver_endpoint.security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.data.resolver_endpoint.direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoint.ip_address_count #=> Integer
    #   resp.data.resolver_endpoint.host_vpc_id #=> String
    #   resp.data.resolver_endpoint.status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoint.status_message #=> String
    #   resp.data.resolver_endpoint.creation_time #=> String
    #   resp.data.resolver_endpoint.modification_time #=> String
    #
    def create_resolver_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResolverEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResolverEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResolverEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::CreateResolverEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResolverEndpoint,
        stubs: @stubs,
        params_class: Params::CreateResolverEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resolver_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs.
    # 			Resolver can log queries only for VPCs that are in the same Region as the query logging configuration.</p>
    # 		
    # 		       <p>To specify which VPCs you want to log queries for, you use <code>AssociateResolverQueryLogConfig</code>. For more information, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html">AssociateResolverQueryLogConfig</a>. </p>
    # 		
    # 		       <p>You can optionally use Resource Access Manager (RAM) to share a query logging configuration with other Amazon Web Services accounts. The other accounts
    # 			can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all
    # 			VPCs that are associated with the configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResolverQueryLogConfigInput}.
    #
    # @option params [String] :name
    #   <p>The name that you want to give the query logging configuration.</p>
    #
    # @option params [String] :destination_arn
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
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>
    #
    # @return [Types::CreateResolverQueryLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver_query_log_config(
    #     name: 'Name', # required
    #     destination_arn: 'DestinationArn', # required
    #     creator_request_id: 'CreatorRequestId', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResolverQueryLogConfigOutput
    #   resp.data.resolver_query_log_config #=> Types::ResolverQueryLogConfig
    #   resp.data.resolver_query_log_config.id #=> String
    #   resp.data.resolver_query_log_config.owner_id #=> String
    #   resp.data.resolver_query_log_config.status #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_query_log_config.association_count #=> Integer
    #   resp.data.resolver_query_log_config.arn #=> String
    #   resp.data.resolver_query_log_config.name #=> String
    #   resp.data.resolver_query_log_config.destination_arn #=> String
    #   resp.data.resolver_query_log_config.creator_request_id #=> String
    #   resp.data.resolver_query_log_config.creation_time #=> String
    #
    def create_resolver_query_log_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResolverQueryLogConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResolverQueryLogConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResolverQueryLogConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::CreateResolverQueryLogConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResolverQueryLogConfig,
        stubs: @stubs,
        params_class: Params::CreateResolverQueryLogConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resolver_query_log_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through,
    # 			one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResolverRuleInput}.
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    #
    # @option params [String] :name
    #   <p>A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.</p>
    #
    # @option params [String] :rule_type
    #   <p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p>
    #   		       <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for
    #   			a subdomain of that domain, specify <code>SYSTEM</code>.</p>
    #   		       <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code>
    #   			for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify
    #   			<code>SYSTEM</code> for <code>RuleType</code>.</p>
    #   		       <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>
    #
    # @option params [String] :domain_name
    #   <p>DNS queries for this domain name are forwarded to the IP addresses that you specify in <code>TargetIps</code>. If a query matches
    #   			multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains
    #   			the most specific domain name (www.example.com).</p>
    #
    # @option params [Array<TargetAddress>] :target_ips
    #   <p>The IPs that you want Resolver to forward DNS queries to. You can specify only IPv4 addresses. Separate IP addresses with a space.</p>
    #   		       <p>
    #               <code>TargetIps</code> is available only when the value of <code>Rule type</code> is <code>FORWARD</code>.</p>
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify
    #   			in <code>TargetIps</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the endpoint.</p>
    #
    # @return [Types::CreateResolverRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver_rule(
    #     creator_request_id: 'CreatorRequestId', # required
    #     name: 'Name',
    #     rule_type: 'FORWARD', # required - accepts ["FORWARD", "SYSTEM", "RECURSIVE"]
    #     domain_name: 'DomainName', # required
    #     target_ips: [
    #       {
    #         ip: 'Ip', # required
    #         port: 1
    #       }
    #     ],
    #     resolver_endpoint_id: 'ResolverEndpointId',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResolverRuleOutput
    #   resp.data.resolver_rule #=> Types::ResolverRule
    #   resp.data.resolver_rule.id #=> String
    #   resp.data.resolver_rule.creator_request_id #=> String
    #   resp.data.resolver_rule.arn #=> String
    #   resp.data.resolver_rule.domain_name #=> String
    #   resp.data.resolver_rule.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING", "FAILED"]
    #   resp.data.resolver_rule.status_message #=> String
    #   resp.data.resolver_rule.rule_type #=> String, one of ["FORWARD", "SYSTEM", "RECURSIVE"]
    #   resp.data.resolver_rule.name #=> String
    #   resp.data.resolver_rule.target_ips #=> Array<TargetAddress>
    #   resp.data.resolver_rule.target_ips[0] #=> Types::TargetAddress
    #   resp.data.resolver_rule.target_ips[0].ip #=> String
    #   resp.data.resolver_rule.target_ips[0].port #=> Integer
    #   resp.data.resolver_rule.resolver_endpoint_id #=> String
    #   resp.data.resolver_rule.owner_id #=> String
    #   resp.data.resolver_rule.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_rule.creation_time #=> String
    #   resp.data.resolver_rule.modification_time #=> String
    #
    def create_resolver_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResolverRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResolverRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResolverRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::ResourceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::CreateResolverRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResolverRule,
        stubs: @stubs,
        params_class: Params::CreateResolverRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resolver_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified domain list. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFirewallDomainListInput}.
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that you want to delete. </p>
    #
    # @return [Types::DeleteFirewallDomainListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_domain_list(
    #     firewall_domain_list_id: 'FirewallDomainListId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFirewallDomainListOutput
    #   resp.data.firewall_domain_list #=> Types::FirewallDomainList
    #   resp.data.firewall_domain_list.id #=> String
    #   resp.data.firewall_domain_list.arn #=> String
    #   resp.data.firewall_domain_list.name #=> String
    #   resp.data.firewall_domain_list.domain_count #=> Integer
    #   resp.data.firewall_domain_list.status #=> String, one of ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #   resp.data.firewall_domain_list.status_message #=> String
    #   resp.data.firewall_domain_list.managed_owner_name #=> String
    #   resp.data.firewall_domain_list.creator_request_id #=> String
    #   resp.data.firewall_domain_list.creation_time #=> String
    #   resp.data.firewall_domain_list.modification_time #=> String
    #
    def delete_firewall_domain_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFirewallDomainListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFirewallDomainListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFirewallDomainList
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteFirewallDomainList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFirewallDomainList,
        stubs: @stubs,
        params_class: Params::DeleteFirewallDomainListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_firewall_domain_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified firewall rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFirewallRuleInput}.
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to delete the rule from. </p>
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that's used in the rule.  </p>
    #
    # @return [Types::DeleteFirewallRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_rule(
    #     firewall_rule_group_id: 'FirewallRuleGroupId', # required
    #     firewall_domain_list_id: 'FirewallDomainListId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFirewallRuleOutput
    #   resp.data.firewall_rule #=> Types::FirewallRule
    #   resp.data.firewall_rule.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule.firewall_domain_list_id #=> String
    #   resp.data.firewall_rule.name #=> String
    #   resp.data.firewall_rule.priority #=> Integer
    #   resp.data.firewall_rule.action #=> String, one of ["ALLOW", "BLOCK", "ALERT"]
    #   resp.data.firewall_rule.block_response #=> String, one of ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #   resp.data.firewall_rule.block_override_domain #=> String
    #   resp.data.firewall_rule.block_override_dns_type #=> String, one of ["CNAME"]
    #   resp.data.firewall_rule.block_override_ttl #=> Integer
    #   resp.data.firewall_rule.creator_request_id #=> String
    #   resp.data.firewall_rule.creation_time #=> String
    #   resp.data.firewall_rule.modification_time #=> String
    #
    def delete_firewall_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFirewallRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFirewallRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFirewallRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteFirewallRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFirewallRule,
        stubs: @stubs,
        params_class: Params::DeleteFirewallRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_firewall_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified firewall rule group. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFirewallRuleGroupInput}.
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to delete. </p>
    #
    # @return [Types::DeleteFirewallRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_rule_group(
    #     firewall_rule_group_id: 'FirewallRuleGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFirewallRuleGroupOutput
    #   resp.data.firewall_rule_group #=> Types::FirewallRuleGroup
    #   resp.data.firewall_rule_group.id #=> String
    #   resp.data.firewall_rule_group.arn #=> String
    #   resp.data.firewall_rule_group.name #=> String
    #   resp.data.firewall_rule_group.rule_count #=> Integer
    #   resp.data.firewall_rule_group.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group.status_message #=> String
    #   resp.data.firewall_rule_group.owner_id #=> String
    #   resp.data.firewall_rule_group.creator_request_id #=> String
    #   resp.data.firewall_rule_group.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.firewall_rule_group.creation_time #=> String
    #   resp.data.firewall_rule_group.modification_time #=> String
    #
    def delete_firewall_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFirewallRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFirewallRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFirewallRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteFirewallRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFirewallRuleGroup,
        stubs: @stubs,
        params_class: Params::DeleteFirewallRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_firewall_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound
    # 			Resolver endpoint:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <b>Inbound</b>: DNS queries from your network are no longer routed
    # 				to the DNS service for the specified VPC.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Outbound</b>: DNS queries from a VPC are no longer routed to your network.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteResolverEndpointInput}.
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to delete.</p>
    #
    # @return [Types::DeleteResolverEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver_endpoint(
    #     resolver_endpoint_id: 'ResolverEndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResolverEndpointOutput
    #   resp.data.resolver_endpoint #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoint.id #=> String
    #   resp.data.resolver_endpoint.creator_request_id #=> String
    #   resp.data.resolver_endpoint.arn #=> String
    #   resp.data.resolver_endpoint.name #=> String
    #   resp.data.resolver_endpoint.security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.data.resolver_endpoint.direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoint.ip_address_count #=> Integer
    #   resp.data.resolver_endpoint.host_vpc_id #=> String
    #   resp.data.resolver_endpoint.status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoint.status_message #=> String
    #   resp.data.resolver_endpoint.creation_time #=> String
    #   resp.data.resolver_endpoint.modification_time #=> String
    #
    def delete_resolver_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResolverEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResolverEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResolverEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteResolverEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResolverEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteResolverEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resolver_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are
    # 			associated with the configuration. This also applies if the query logging configuration is shared with other Amazon Web Services accounts, and
    # 			the other accounts have associated VPCs with the shared configuration.</p>
    # 		
    # 		       <p>Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig</a>.</p>
    # 			
    # 		       <p>If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing
    # 			the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs
    # 			that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically
    # 			disassociated from the configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResolverQueryLogConfigInput}.
    #
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to delete.</p>
    #
    # @return [Types::DeleteResolverQueryLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver_query_log_config(
    #     resolver_query_log_config_id: 'ResolverQueryLogConfigId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResolverQueryLogConfigOutput
    #   resp.data.resolver_query_log_config #=> Types::ResolverQueryLogConfig
    #   resp.data.resolver_query_log_config.id #=> String
    #   resp.data.resolver_query_log_config.owner_id #=> String
    #   resp.data.resolver_query_log_config.status #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_query_log_config.association_count #=> Integer
    #   resp.data.resolver_query_log_config.arn #=> String
    #   resp.data.resolver_query_log_config.name #=> String
    #   resp.data.resolver_query_log_config.destination_arn #=> String
    #   resp.data.resolver_query_log_config.creator_request_id #=> String
    #   resp.data.resolver_query_log_config.creation_time #=> String
    #
    def delete_resolver_query_log_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResolverQueryLogConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResolverQueryLogConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResolverQueryLogConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteResolverQueryLogConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResolverQueryLogConfig,
        stubs: @stubs,
        params_class: Params::DeleteResolverQueryLogConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resolver_query_log_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you
    # 			associated the Resolver rule with. For more information, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html">DisassociateResolverRule</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResolverRuleInput}.
    #
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to delete.</p>
    #
    # @return [Types::DeleteResolverRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver_rule(
    #     resolver_rule_id: 'ResolverRuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResolverRuleOutput
    #   resp.data.resolver_rule #=> Types::ResolverRule
    #   resp.data.resolver_rule.id #=> String
    #   resp.data.resolver_rule.creator_request_id #=> String
    #   resp.data.resolver_rule.arn #=> String
    #   resp.data.resolver_rule.domain_name #=> String
    #   resp.data.resolver_rule.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING", "FAILED"]
    #   resp.data.resolver_rule.status_message #=> String
    #   resp.data.resolver_rule.rule_type #=> String, one of ["FORWARD", "SYSTEM", "RECURSIVE"]
    #   resp.data.resolver_rule.name #=> String
    #   resp.data.resolver_rule.target_ips #=> Array<TargetAddress>
    #   resp.data.resolver_rule.target_ips[0] #=> Types::TargetAddress
    #   resp.data.resolver_rule.target_ips[0].ip #=> String
    #   resp.data.resolver_rule.target_ips[0].port #=> Integer
    #   resp.data.resolver_rule.resolver_endpoint_id #=> String
    #   resp.data.resolver_rule.owner_id #=> String
    #   resp.data.resolver_rule.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_rule.creation_time #=> String
    #   resp.data.resolver_rule.modification_time #=> String
    #
    def delete_resolver_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResolverRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResolverRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResolverRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteResolverRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResolverRule,
        stubs: @stubs,
        params_class: Params::DeleteResolverRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resolver_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a <a>FirewallRuleGroup</a> from a VPC, to remove DNS filtering from the VPC. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFirewallRuleGroupInput}.
    #
    # @option params [String] :firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    #
    # @return [Types::DisassociateFirewallRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_firewall_rule_group(
    #     firewall_rule_group_association_id: 'FirewallRuleGroupAssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFirewallRuleGroupOutput
    #   resp.data.firewall_rule_group_association #=> Types::FirewallRuleGroupAssociation
    #   resp.data.firewall_rule_group_association.id #=> String
    #   resp.data.firewall_rule_group_association.arn #=> String
    #   resp.data.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule_group_association.vpc_id #=> String
    #   resp.data.firewall_rule_group_association.name #=> String
    #   resp.data.firewall_rule_group_association.priority #=> Integer
    #   resp.data.firewall_rule_group_association.mutation_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.data.firewall_rule_group_association.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group_association.status_message #=> String
    #   resp.data.firewall_rule_group_association.creator_request_id #=> String
    #   resp.data.firewall_rule_group_association.creation_time #=> String
    #   resp.data.firewall_rule_group_association.modification_time #=> String
    #
    def disassociate_firewall_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFirewallRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFirewallRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFirewallRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DisassociateFirewallRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFirewallRuleGroup,
        stubs: @stubs,
        params_class: Params::DisassociateFirewallRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_firewall_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address,
    # 			submit one <code>DisassociateResolverEndpointIpAddress</code> request for each IP address.</p>
    # 		       <p>To add an IP address to an endpoint, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html">AssociateResolverEndpointIpAddress</a>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateResolverEndpointIpAddressInput}.
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to disassociate an IP address from.</p>
    #
    # @option params [IpAddressUpdate] :ip_address
    #   <p>The IPv4 address that you want to remove from a Resolver endpoint.</p>
    #
    # @return [Types::DisassociateResolverEndpointIpAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resolver_endpoint_ip_address(
    #     resolver_endpoint_id: 'ResolverEndpointId', # required
    #     ip_address: {
    #       ip_id: 'IpId',
    #       subnet_id: 'SubnetId',
    #       ip: 'Ip'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateResolverEndpointIpAddressOutput
    #   resp.data.resolver_endpoint #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoint.id #=> String
    #   resp.data.resolver_endpoint.creator_request_id #=> String
    #   resp.data.resolver_endpoint.arn #=> String
    #   resp.data.resolver_endpoint.name #=> String
    #   resp.data.resolver_endpoint.security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.data.resolver_endpoint.direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoint.ip_address_count #=> Integer
    #   resp.data.resolver_endpoint.host_vpc_id #=> String
    #   resp.data.resolver_endpoint.status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoint.status_message #=> String
    #   resp.data.resolver_endpoint.creation_time #=> String
    #   resp.data.resolver_endpoint.modification_time #=> String
    #
    def disassociate_resolver_endpoint_ip_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateResolverEndpointIpAddressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateResolverEndpointIpAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateResolverEndpointIpAddress
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceExistsException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DisassociateResolverEndpointIpAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateResolverEndpointIpAddress,
        stubs: @stubs,
        params_class: Params::DisassociateResolverEndpointIpAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_resolver_endpoint_ip_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a VPC from a query logging configuration.</p>
    # 		
    # 		       <note>
    # 			         <p>Before you can delete a query logging configuration, you must first disassociate all VPCs
    # 				from the configuration. If you used Resource Access Manager (RAM) to share a
    # 				query logging configuration with other accounts, VPCs can be disassociated from the
    # 				configuration in the following ways:</p>
    # 			         <ul>
    #                <li>
    #                   <p>The accounts that you shared the configuration with can disassociate VPCs from the configuration.</p>
    #                </li>
    #                <li>
    #                   <p>You can stop sharing the configuration.</p>
    #                </li>
    #             </ul>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DisassociateResolverQueryLogConfigInput}.
    #
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to disassociate a specified VPC from.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration.</p>
    #
    # @return [Types::DisassociateResolverQueryLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resolver_query_log_config(
    #     resolver_query_log_config_id: 'ResolverQueryLogConfigId', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateResolverQueryLogConfigOutput
    #   resp.data.resolver_query_log_config_association #=> Types::ResolverQueryLogConfigAssociation
    #   resp.data.resolver_query_log_config_association.id #=> String
    #   resp.data.resolver_query_log_config_association.resolver_query_log_config_id #=> String
    #   resp.data.resolver_query_log_config_association.resource_id #=> String
    #   resp.data.resolver_query_log_config_association.status #=> String, one of ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config_association.error #=> String, one of ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.resolver_query_log_config_association.error_message #=> String
    #   resp.data.resolver_query_log_config_association.creation_time #=> String
    #
    def disassociate_resolver_query_log_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateResolverQueryLogConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateResolverQueryLogConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateResolverQueryLogConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DisassociateResolverQueryLogConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateResolverQueryLogConfig,
        stubs: @stubs,
        params_class: Params::DisassociateResolverQueryLogConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_resolver_query_log_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between a specified Resolver rule and a specified VPC.</p>
    # 		       <important>
    # 			         <p>If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the
    # 				domain name that you specified in the Resolver rule. </p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DisassociateResolverRuleInput}.
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that you want to disassociate the Resolver rule from.</p>
    #
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to disassociate from the specified VPC.</p>
    #
    # @return [Types::DisassociateResolverRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resolver_rule(
    #     vpc_id: 'VPCId', # required
    #     resolver_rule_id: 'ResolverRuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateResolverRuleOutput
    #   resp.data.resolver_rule_association #=> Types::ResolverRuleAssociation
    #   resp.data.resolver_rule_association.id #=> String
    #   resp.data.resolver_rule_association.resolver_rule_id #=> String
    #   resp.data.resolver_rule_association.name #=> String
    #   resp.data.resolver_rule_association.vpc_id #=> String
    #   resp.data.resolver_rule_association.status #=> String, one of ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"]
    #   resp.data.resolver_rule_association.status_message #=> String
    #
    def disassociate_resolver_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateResolverRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateResolverRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateResolverRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DisassociateResolverRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateResolverRule,
        stubs: @stubs,
        params_class: Params::DisassociateResolverRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_resolver_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the configuration of the firewall behavior provided by DNS Firewall for a
    # 			single VPC from Amazon Virtual Private Cloud (Amazon VPC). </p>
    #
    # @param [Hash] params
    #   See {Types::GetFirewallConfigInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the VPC from Amazon VPC that the configuration is for.</p>
    #
    # @return [Types::GetFirewallConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_config(
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFirewallConfigOutput
    #   resp.data.firewall_config #=> Types::FirewallConfig
    #   resp.data.firewall_config.id #=> String
    #   resp.data.firewall_config.resource_id #=> String
    #   resp.data.firewall_config.owner_id #=> String
    #   resp.data.firewall_config.firewall_fail_open #=> String, one of ["ENABLED", "DISABLED"]
    #
    def get_firewall_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFirewallConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFirewallConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFirewallConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetFirewallConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFirewallConfig,
        stubs: @stubs,
        params_class: Params::GetFirewallConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_firewall_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified firewall domain list.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFirewallDomainListInput}.
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list.  </p>
    #
    # @return [Types::GetFirewallDomainListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_domain_list(
    #     firewall_domain_list_id: 'FirewallDomainListId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFirewallDomainListOutput
    #   resp.data.firewall_domain_list #=> Types::FirewallDomainList
    #   resp.data.firewall_domain_list.id #=> String
    #   resp.data.firewall_domain_list.arn #=> String
    #   resp.data.firewall_domain_list.name #=> String
    #   resp.data.firewall_domain_list.domain_count #=> Integer
    #   resp.data.firewall_domain_list.status #=> String, one of ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #   resp.data.firewall_domain_list.status_message #=> String
    #   resp.data.firewall_domain_list.managed_owner_name #=> String
    #   resp.data.firewall_domain_list.creator_request_id #=> String
    #   resp.data.firewall_domain_list.creation_time #=> String
    #   resp.data.firewall_domain_list.modification_time #=> String
    #
    def get_firewall_domain_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFirewallDomainListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFirewallDomainListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFirewallDomainList
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetFirewallDomainList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFirewallDomainList,
        stubs: @stubs,
        params_class: Params::GetFirewallDomainListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_firewall_domain_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified firewall rule group. </p>
    #
    # @param [Hash] params
    #   See {Types::GetFirewallRuleGroupInput}.
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    #
    # @return [Types::GetFirewallRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule_group(
    #     firewall_rule_group_id: 'FirewallRuleGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFirewallRuleGroupOutput
    #   resp.data.firewall_rule_group #=> Types::FirewallRuleGroup
    #   resp.data.firewall_rule_group.id #=> String
    #   resp.data.firewall_rule_group.arn #=> String
    #   resp.data.firewall_rule_group.name #=> String
    #   resp.data.firewall_rule_group.rule_count #=> Integer
    #   resp.data.firewall_rule_group.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group.status_message #=> String
    #   resp.data.firewall_rule_group.owner_id #=> String
    #   resp.data.firewall_rule_group.creator_request_id #=> String
    #   resp.data.firewall_rule_group.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.firewall_rule_group.creation_time #=> String
    #   resp.data.firewall_rule_group.modification_time #=> String
    #
    def get_firewall_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFirewallRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFirewallRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFirewallRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetFirewallRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFirewallRuleGroup,
        stubs: @stubs,
        params_class: Params::GetFirewallRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_firewall_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a firewall rule group association, which enables DNS filtering for a VPC with one rule group. A VPC can have more than one firewall rule group association, and a rule group can be associated with more than one VPC.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFirewallRuleGroupAssociationInput}.
    #
    # @option params [String] :firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    #
    # @return [Types::GetFirewallRuleGroupAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule_group_association(
    #     firewall_rule_group_association_id: 'FirewallRuleGroupAssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFirewallRuleGroupAssociationOutput
    #   resp.data.firewall_rule_group_association #=> Types::FirewallRuleGroupAssociation
    #   resp.data.firewall_rule_group_association.id #=> String
    #   resp.data.firewall_rule_group_association.arn #=> String
    #   resp.data.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule_group_association.vpc_id #=> String
    #   resp.data.firewall_rule_group_association.name #=> String
    #   resp.data.firewall_rule_group_association.priority #=> Integer
    #   resp.data.firewall_rule_group_association.mutation_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.data.firewall_rule_group_association.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group_association.status_message #=> String
    #   resp.data.firewall_rule_group_association.creator_request_id #=> String
    #   resp.data.firewall_rule_group_association.creation_time #=> String
    #   resp.data.firewall_rule_group_association.modification_time #=> String
    #
    def get_firewall_rule_group_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFirewallRuleGroupAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFirewallRuleGroupAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFirewallRuleGroupAssociation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetFirewallRuleGroupAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFirewallRuleGroupAssociation,
        stubs: @stubs,
        params_class: Params::GetFirewallRuleGroupAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_firewall_rule_group_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Identity and Access Management (Amazon Web Services IAM) policy for sharing the
    #        	specified rule group. You can use the policy to share the rule group using Resource Access Manager (RAM). </p>
    #
    # @param [Hash] params
    #   See {Types::GetFirewallRuleGroupPolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN (Amazon Resource Name) for the rule group.</p>
    #
    # @return [Types::GetFirewallRuleGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule_group_policy(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFirewallRuleGroupPolicyOutput
    #   resp.data.firewall_rule_group_policy #=> String
    #
    def get_firewall_rule_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFirewallRuleGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFirewallRuleGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFirewallRuleGroupPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetFirewallRuleGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFirewallRuleGroupPolicy,
        stubs: @stubs,
        params_class: Params::GetFirewallRuleGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_firewall_rule_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the behavior configuration of Route 53 Resolver behavior for a single VPC from
    # 				Amazon Virtual Private Cloud.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverConfigInput}.
    #
    # @option params [String] :resource_id
    #   <p>Resource ID of the Amazon VPC that you want to get information about.</p>
    #
    # @return [Types::GetResolverConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_config(
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverConfigOutput
    #   resp.data.resolver_config #=> Types::ResolverConfig
    #   resp.data.resolver_config.id #=> String
    #   resp.data.resolver_config.resource_id #=> String
    #   resp.data.resolver_config.owner_id #=> String
    #   resp.data.resolver_config.autodefined_reverse #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    def get_resolver_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverConfig,
        stubs: @stubs,
        params_class: Params::GetResolverConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets DNSSEC validation information for a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverDnssecConfigInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the virtual private cloud (VPC) for the DNSSEC validation status.</p>
    #
    # @return [Types::GetResolverDnssecConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_dnssec_config(
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverDnssecConfigOutput
    #   resp.data.resolver_dnssec_config #=> Types::ResolverDnssecConfig
    #   resp.data.resolver_dnssec_config.id #=> String
    #   resp.data.resolver_dnssec_config.owner_id #=> String
    #   resp.data.resolver_dnssec_config.resource_id #=> String
    #   resp.data.resolver_dnssec_config.validation_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    def get_resolver_dnssec_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverDnssecConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverDnssecConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverDnssecConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverDnssecConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverDnssecConfig,
        stubs: @stubs,
        params_class: Params::GetResolverDnssecConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_dnssec_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the
    # 			current status of the endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverEndpointInput}.
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to get information about.</p>
    #
    # @return [Types::GetResolverEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_endpoint(
    #     resolver_endpoint_id: 'ResolverEndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverEndpointOutput
    #   resp.data.resolver_endpoint #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoint.id #=> String
    #   resp.data.resolver_endpoint.creator_request_id #=> String
    #   resp.data.resolver_endpoint.arn #=> String
    #   resp.data.resolver_endpoint.name #=> String
    #   resp.data.resolver_endpoint.security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.data.resolver_endpoint.direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoint.ip_address_count #=> Integer
    #   resp.data.resolver_endpoint.host_vpc_id #=> String
    #   resp.data.resolver_endpoint.status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoint.status_message #=> String
    #   resp.data.resolver_endpoint.creation_time #=> String
    #   resp.data.resolver_endpoint.modification_time #=> String
    #
    def get_resolver_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverEndpoint,
        stubs: @stubs,
        params_class: Params::GetResolverEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration
    # 			is logging queries for and the location that logs are sent to. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverQueryLogConfigInput}.
    #
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the Resolver query logging configuration that you want to get information about.</p>
    #
    # @return [Types::GetResolverQueryLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_query_log_config(
    #     resolver_query_log_config_id: 'ResolverQueryLogConfigId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverQueryLogConfigOutput
    #   resp.data.resolver_query_log_config #=> Types::ResolverQueryLogConfig
    #   resp.data.resolver_query_log_config.id #=> String
    #   resp.data.resolver_query_log_config.owner_id #=> String
    #   resp.data.resolver_query_log_config.status #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_query_log_config.association_count #=> Integer
    #   resp.data.resolver_query_log_config.arn #=> String
    #   resp.data.resolver_query_log_config.name #=> String
    #   resp.data.resolver_query_log_config.destination_arn #=> String
    #   resp.data.resolver_query_log_config.creator_request_id #=> String
    #   resp.data.resolver_query_log_config.creation_time #=> String
    #
    def get_resolver_query_log_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverQueryLogConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverQueryLogConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverQueryLogConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverQueryLogConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverQueryLogConfig,
        stubs: @stubs,
        params_class: Params::GetResolverQueryLogConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_query_log_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC
    # 			with a query logging configuration, Resolver logs DNS queries that originate in that VPC.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverQueryLogConfigAssociationInput}.
    #
    # @option params [String] :resolver_query_log_config_association_id
    #   <p>The ID of the Resolver query logging configuration association that you want to get information about.</p>
    #
    # @return [Types::GetResolverQueryLogConfigAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_query_log_config_association(
    #     resolver_query_log_config_association_id: 'ResolverQueryLogConfigAssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverQueryLogConfigAssociationOutput
    #   resp.data.resolver_query_log_config_association #=> Types::ResolverQueryLogConfigAssociation
    #   resp.data.resolver_query_log_config_association.id #=> String
    #   resp.data.resolver_query_log_config_association.resolver_query_log_config_id #=> String
    #   resp.data.resolver_query_log_config_association.resource_id #=> String
    #   resp.data.resolver_query_log_config_association.status #=> String, one of ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config_association.error #=> String, one of ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.resolver_query_log_config_association.error_message #=> String
    #   resp.data.resolver_query_log_config_association.creation_time #=> String
    #
    def get_resolver_query_log_config_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverQueryLogConfigAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverQueryLogConfigAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverQueryLogConfigAssociation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverQueryLogConfigAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverQueryLogConfigAssociation,
        stubs: @stubs,
        params_class: Params::GetResolverQueryLogConfigAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_query_log_config_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a query logging policy. A query logging policy specifies the Resolver query logging
    # 			operations and resources that you want to allow another Amazon Web Services account to be able to use.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverQueryLogConfigPolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the query logging configuration that you want to get the query logging policy for.</p>
    #
    # @return [Types::GetResolverQueryLogConfigPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_query_log_config_policy(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverQueryLogConfigPolicyOutput
    #   resp.data.resolver_query_log_config_policy #=> String
    #
    def get_resolver_query_log_config_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverQueryLogConfigPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverQueryLogConfigPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverQueryLogConfigPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::UnknownResourceException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverQueryLogConfigPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverQueryLogConfigPolicy,
        stubs: @stubs,
        params_class: Params::GetResolverQueryLogConfigPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_query_log_config_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the
    # 			outbound Resolver endpoint that the rule is associated with.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverRuleInput}.
    #
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to get information about.</p>
    #
    # @return [Types::GetResolverRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_rule(
    #     resolver_rule_id: 'ResolverRuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverRuleOutput
    #   resp.data.resolver_rule #=> Types::ResolverRule
    #   resp.data.resolver_rule.id #=> String
    #   resp.data.resolver_rule.creator_request_id #=> String
    #   resp.data.resolver_rule.arn #=> String
    #   resp.data.resolver_rule.domain_name #=> String
    #   resp.data.resolver_rule.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING", "FAILED"]
    #   resp.data.resolver_rule.status_message #=> String
    #   resp.data.resolver_rule.rule_type #=> String, one of ["FORWARD", "SYSTEM", "RECURSIVE"]
    #   resp.data.resolver_rule.name #=> String
    #   resp.data.resolver_rule.target_ips #=> Array<TargetAddress>
    #   resp.data.resolver_rule.target_ips[0] #=> Types::TargetAddress
    #   resp.data.resolver_rule.target_ips[0].ip #=> String
    #   resp.data.resolver_rule.target_ips[0].port #=> Integer
    #   resp.data.resolver_rule.resolver_endpoint_id #=> String
    #   resp.data.resolver_rule.owner_id #=> String
    #   resp.data.resolver_rule.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_rule.creation_time #=> String
    #   resp.data.resolver_rule.modification_time #=> String
    #
    def get_resolver_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverRule,
        stubs: @stubs,
        params_class: Params::GetResolverRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html">AssociateResolverRule</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverRuleAssociationInput}.
    #
    # @option params [String] :resolver_rule_association_id
    #   <p>The ID of the Resolver rule association that you want to get information about.</p>
    #
    # @return [Types::GetResolverRuleAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_rule_association(
    #     resolver_rule_association_id: 'ResolverRuleAssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverRuleAssociationOutput
    #   resp.data.resolver_rule_association #=> Types::ResolverRuleAssociation
    #   resp.data.resolver_rule_association.id #=> String
    #   resp.data.resolver_rule_association.resolver_rule_id #=> String
    #   resp.data.resolver_rule_association.name #=> String
    #   resp.data.resolver_rule_association.vpc_id #=> String
    #   resp.data.resolver_rule_association.status #=> String, one of ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"]
    #   resp.data.resolver_rule_association.status_message #=> String
    #
    def get_resolver_rule_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverRuleAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverRuleAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverRuleAssociation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverRuleAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverRuleAssociation,
        stubs: @stubs,
        params_class: Params::GetResolverRuleAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_rule_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the Resolver rule policy for a specified rule. A Resolver rule policy includes the rule that you want to share
    # 			with another account, the account that you want to share the rule with, and the Resolver operations that you want to allow the account to use. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverRulePolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The ID of the Resolver rule that you want to get the Resolver rule policy for.</p>
    #
    # @return [Types::GetResolverRulePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_rule_policy(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverRulePolicyOutput
    #   resp.data.resolver_rule_policy #=> String
    #
    def get_resolver_rule_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverRulePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverRulePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolverRulePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnknownResourceException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::GetResolverRulePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolverRulePolicy,
        stubs: @stubs,
        params_class: Params::GetResolverRulePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver_rule_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports domain names from a file into a domain list, for use in a DNS firewall rule group. </p>
    #          <p>Each domain specification in your domain list must satisfy the following
    # 	requirements: </p>
    #          <ul>
    #             <li>
    #       	        <p>It can optionally start with <code>*</code> (asterisk).</p>
    #       	     </li>
    #             <li>
    #       	        <p>With the exception of the optional starting asterisk, it must only contain
    #       	   the following characters: <code>A-Z</code>, <code>a-z</code>,
    #       	   <code>0-9</code>, <code>-</code> (hyphen).</p>
    #       	     </li>
    #             <li>
    #       	        <p>It must be from 1-255 characters in length. </p>
    #       	     </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ImportFirewallDomainsInput}.
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that you want to modify with the import operation.</p>
    #
    # @option params [String] :operation
    #   <p>What you want DNS Firewall to do with the domains that are listed in the file. This must be set to <code>REPLACE</code>, which updates the domain list to exactly match the list in the file. </p>
    #
    # @option params [String] :domain_file_url
    #   <p>The fully qualified URL or URI of the file stored in Amazon Simple Storage Service
    #   			(Amazon S3) that contains the list of domains to import.</p>
    #            <p>The file must be in an S3 bucket that's in the same Region
    #          as your DNS Firewall. The file must be a text file and must contain a single domain per line.</p>
    #
    # @return [Types::ImportFirewallDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_firewall_domains(
    #     firewall_domain_list_id: 'FirewallDomainListId', # required
    #     operation: 'REPLACE', # required - accepts ["REPLACE"]
    #     domain_file_url: 'DomainFileUrl' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportFirewallDomainsOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #   resp.data.status_message #=> String
    #
    def import_firewall_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportFirewallDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportFirewallDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportFirewallDomains
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::LimitExceededException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ImportFirewallDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportFirewallDomains,
        stubs: @stubs,
        params_class: Params::ImportFirewallDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_firewall_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the firewall configurations that you have defined. DNS Firewall uses the configurations to manage firewall behavior for your VPCs. </p>
    #          <p>A single call might return only a partial list of the configurations. For information, see <code>MaxResults</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallConfigsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    # @return [Types::ListFirewallConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_configs(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallConfigsOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewall_configs #=> Array<FirewallConfig>
    #   resp.data.firewall_configs[0] #=> Types::FirewallConfig
    #   resp.data.firewall_configs[0].id #=> String
    #   resp.data.firewall_configs[0].resource_id #=> String
    #   resp.data.firewall_configs[0].owner_id #=> String
    #   resp.data.firewall_configs[0].firewall_fail_open #=> String, one of ["ENABLED", "DISABLED"]
    #
    def list_firewall_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallConfigs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListFirewallConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallConfigs,
        stubs: @stubs,
        params_class: Params::ListFirewallConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the firewall domain lists that you have defined. For each firewall domain list, you can retrieve the domains that are defined for a list by calling <a>ListFirewallDomains</a>. </p>
    #          <p>A single call to this list operation might return only a partial list of the domain lists. For information, see <code>MaxResults</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallDomainListsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    # @return [Types::ListFirewallDomainListsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_domain_lists(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallDomainListsOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewall_domain_lists #=> Array<FirewallDomainListMetadata>
    #   resp.data.firewall_domain_lists[0] #=> Types::FirewallDomainListMetadata
    #   resp.data.firewall_domain_lists[0].id #=> String
    #   resp.data.firewall_domain_lists[0].arn #=> String
    #   resp.data.firewall_domain_lists[0].name #=> String
    #   resp.data.firewall_domain_lists[0].creator_request_id #=> String
    #   resp.data.firewall_domain_lists[0].managed_owner_name #=> String
    #
    def list_firewall_domain_lists(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallDomainListsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallDomainListsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallDomainLists
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListFirewallDomainLists
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallDomainLists,
        stubs: @stubs,
        params_class: Params::ListFirewallDomainListsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_domain_lists
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the domains that you have defined for the specified firewall domain list.  </p>
    #          <p>A single call might return only a partial list of the domains. For information, see <code>MaxResults</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallDomainsInput}.
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list whose domains you want to retrieve. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    # @return [Types::ListFirewallDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_domains(
    #     firewall_domain_list_id: 'FirewallDomainListId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallDomainsOutput
    #   resp.data.next_token #=> String
    #   resp.data.domains #=> Array<String>
    #   resp.data.domains[0] #=> String
    #
    def list_firewall_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallDomains
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListFirewallDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallDomains,
        stubs: @stubs,
        params_class: Params::ListFirewallDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the firewall rule group associations that you have defined. Each association enables DNS filtering for a VPC with one rule group. </p>
    #          <p>A single call might return only a partial list of the associations. For information, see <code>MaxResults</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallRuleGroupAssociationsInput}.
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to retrieve the associations
    #              for. Leave this blank to retrieve associations for any rule group. </p>
    #
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC that you want to retrieve the associations
    #              for. Leave this blank to retrieve associations for any VPC. </p>
    #
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that are associated with a single VPC. DNS Firewall filters VPC traffic starting
    #   			from the rule group with the lowest numeric priority setting. </p>
    #
    # @option params [String] :status
    #   <p>The association <code>Status</code> setting that you want DNS Firewall to filter on for the list. If you don't specify this, then DNS Firewall returns all associations, regardless of status.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    # @return [Types::ListFirewallRuleGroupAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rule_group_associations(
    #     firewall_rule_group_id: 'FirewallRuleGroupId',
    #     vpc_id: 'VpcId',
    #     priority: 1,
    #     status: 'COMPLETE', # accepts ["COMPLETE", "DELETING", "UPDATING"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallRuleGroupAssociationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewall_rule_group_associations #=> Array<FirewallRuleGroupAssociation>
    #   resp.data.firewall_rule_group_associations[0] #=> Types::FirewallRuleGroupAssociation
    #   resp.data.firewall_rule_group_associations[0].id #=> String
    #   resp.data.firewall_rule_group_associations[0].arn #=> String
    #   resp.data.firewall_rule_group_associations[0].firewall_rule_group_id #=> String
    #   resp.data.firewall_rule_group_associations[0].vpc_id #=> String
    #   resp.data.firewall_rule_group_associations[0].name #=> String
    #   resp.data.firewall_rule_group_associations[0].priority #=> Integer
    #   resp.data.firewall_rule_group_associations[0].mutation_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.firewall_rule_group_associations[0].managed_owner_name #=> String
    #   resp.data.firewall_rule_group_associations[0].status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group_associations[0].status_message #=> String
    #   resp.data.firewall_rule_group_associations[0].creator_request_id #=> String
    #   resp.data.firewall_rule_group_associations[0].creation_time #=> String
    #   resp.data.firewall_rule_group_associations[0].modification_time #=> String
    #
    def list_firewall_rule_group_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallRuleGroupAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallRuleGroupAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallRuleGroupAssociations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListFirewallRuleGroupAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallRuleGroupAssociations,
        stubs: @stubs,
        params_class: Params::ListFirewallRuleGroupAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_rule_group_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the minimal high-level information for the rule groups that you have defined.  </p>
    #          <p>A single call might return only a partial list of the rule groups. For information, see <code>MaxResults</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallRuleGroupsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    # @return [Types::ListFirewallRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rule_groups(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallRuleGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewall_rule_groups #=> Array<FirewallRuleGroupMetadata>
    #   resp.data.firewall_rule_groups[0] #=> Types::FirewallRuleGroupMetadata
    #   resp.data.firewall_rule_groups[0].id #=> String
    #   resp.data.firewall_rule_groups[0].arn #=> String
    #   resp.data.firewall_rule_groups[0].name #=> String
    #   resp.data.firewall_rule_groups[0].owner_id #=> String
    #   resp.data.firewall_rule_groups[0].creator_request_id #=> String
    #   resp.data.firewall_rule_groups[0].share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #
    def list_firewall_rule_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallRuleGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallRuleGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallRuleGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListFirewallRuleGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallRuleGroups,
        stubs: @stubs,
        params_class: Params::ListFirewallRuleGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_rule_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the firewall rules that you have defined for the specified firewall rule group. DNS Firewall uses the rules in a rule group to filter DNS network traffic for a VPC. </p>
    #          <p>A single call might return only a partial list of the rules. For information, see <code>MaxResults</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallRulesInput}.
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to retrieve the rules for. </p>
    #
    # @option params [Integer] :priority
    #   <p>Optional additional filter for the rules to retrieve.</p>
    #            <p>The setting that determines the processing order of the rules in a rule group. DNS Firewall
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #
    # @option params [String] :action
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
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    #
    # @return [Types::ListFirewallRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rules(
    #     firewall_rule_group_id: 'FirewallRuleGroupId', # required
    #     priority: 1,
    #     action: 'ALLOW', # accepts ["ALLOW", "BLOCK", "ALERT"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallRulesOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewall_rules #=> Array<FirewallRule>
    #   resp.data.firewall_rules[0] #=> Types::FirewallRule
    #   resp.data.firewall_rules[0].firewall_rule_group_id #=> String
    #   resp.data.firewall_rules[0].firewall_domain_list_id #=> String
    #   resp.data.firewall_rules[0].name #=> String
    #   resp.data.firewall_rules[0].priority #=> Integer
    #   resp.data.firewall_rules[0].action #=> String, one of ["ALLOW", "BLOCK", "ALERT"]
    #   resp.data.firewall_rules[0].block_response #=> String, one of ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #   resp.data.firewall_rules[0].block_override_domain #=> String
    #   resp.data.firewall_rules[0].block_override_dns_type #=> String, one of ["CNAME"]
    #   resp.data.firewall_rules[0].block_override_ttl #=> Integer
    #   resp.data.firewall_rules[0].creator_request_id #=> String
    #   resp.data.firewall_rules[0].creation_time #=> String
    #   resp.data.firewall_rules[0].modification_time #=> String
    #
    def list_firewall_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListFirewallRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallRules,
        stubs: @stubs,
        params_class: Params::ListFirewallRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the Resolver configurations that you have defined.
    # 			Route 53 Resolver uses the configurations to manage DNS resolution behavior for your VPCs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverConfigsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolver configurations that you want to return in the response to
    #   			a <code>ListResolverConfigs</code> request. If you don't specify a value for <code>MaxResults</code>,
    #   			up to 100 Resolver configurations are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> Resolver configurations, use
    #   			<code>NextToken</code> to get the second and subsequent pages of results.</p>
    #   		       <p>For the first <code>ListResolverConfigs</code> request, omit this value.</p>
    #   		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and
    #   			specify that value for <code>NextToken</code> in the request.</p>
    #
    # @return [Types::ListResolverConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_configs(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverConfigsOutput
    #   resp.data.next_token #=> String
    #   resp.data.resolver_configs #=> Array<ResolverConfig>
    #   resp.data.resolver_configs[0] #=> Types::ResolverConfig
    #   resp.data.resolver_configs[0].id #=> String
    #   resp.data.resolver_configs[0].resource_id #=> String
    #   resp.data.resolver_configs[0].owner_id #=> String
    #   resp.data.resolver_configs[0].autodefined_reverse #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    def list_resolver_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverConfigs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverConfigs,
        stubs: @stubs,
        params_class: Params::ListResolverConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the configurations for DNSSEC validation that are associated with the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverDnssecConfigsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>
    #               <i>Optional</i>: An integer that specifies the maximum number of DNSSEC configuration results that you want Amazon Route 53 to return.
    #   			If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 configuration per page.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> DNSSEC configurations, use <code>NextToken</code>
    #   			to get the second and subsequent pages of results.</p>
    #   		       <p>For the first <code>ListResolverDnssecConfigs</code> request, omit this value.</p>
    #   		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value
    #   			for <code>NextToken</code> in the request.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An optional specification to return a subset of objects.</p>
    #
    # @return [Types::ListResolverDnssecConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_dnssec_configs(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverDnssecConfigsOutput
    #   resp.data.next_token #=> String
    #   resp.data.resolver_dnssec_configs #=> Array<ResolverDnssecConfig>
    #   resp.data.resolver_dnssec_configs[0] #=> Types::ResolverDnssecConfig
    #   resp.data.resolver_dnssec_configs[0].id #=> String
    #   resp.data.resolver_dnssec_configs[0].owner_id #=> String
    #   resp.data.resolver_dnssec_configs[0].resource_id #=> String
    #   resp.data.resolver_dnssec_configs[0].validation_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    def list_resolver_dnssec_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverDnssecConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverDnssecConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverDnssecConfigs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverDnssecConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverDnssecConfigs,
        stubs: @stubs,
        params_class: Params::ListResolverDnssecConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_dnssec_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the IP addresses for a specified Resolver endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverEndpointIpAddressesInput}.
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to get IP addresses for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of IP addresses that you want to return in the response to a <code>ListResolverEndpointIpAddresses</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 IP addresses. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverEndpointIpAddresses</code> request, omit this value.</p>
    #   		       <p>If the specified Resolver endpoint has more than <code>MaxResults</code> IP addresses, you can submit another
    #   			<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    # @return [Types::ListResolverEndpointIpAddressesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_endpoint_ip_addresses(
    #     resolver_endpoint_id: 'ResolverEndpointId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverEndpointIpAddressesOutput
    #   resp.data.next_token #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.ip_addresses #=> Array<IpAddressResponse>
    #   resp.data.ip_addresses[0] #=> Types::IpAddressResponse
    #   resp.data.ip_addresses[0].ip_id #=> String
    #   resp.data.ip_addresses[0].subnet_id #=> String
    #   resp.data.ip_addresses[0].ip #=> String
    #   resp.data.ip_addresses[0].status #=> String, one of ["CREATING", "FAILED_CREATION", "ATTACHING", "ATTACHED", "REMAP_DETACHING", "REMAP_ATTACHING", "DETACHING", "FAILED_RESOURCE_GONE", "DELETING", "DELETE_FAILED_FAS_EXPIRED"]
    #   resp.data.ip_addresses[0].status_message #=> String
    #   resp.data.ip_addresses[0].creation_time #=> String
    #   resp.data.ip_addresses[0].modification_time #=> String
    #
    def list_resolver_endpoint_ip_addresses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverEndpointIpAddressesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverEndpointIpAddressesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverEndpointIpAddresses
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverEndpointIpAddresses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverEndpointIpAddresses,
        stubs: @stubs,
        params_class: Params::ListResolverEndpointIpAddressesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_endpoint_ip_addresses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the Resolver endpoints that were created using the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverEndpointsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolver endpoints that you want to return in the response to a <code>ListResolverEndpoints</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver endpoints. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverEndpoints</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> Resolver endpoints, you can submit another <code>ListResolverEndpoints</code> request
    #   			to get the next group of Resolver endpoints. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.</p>
    #   		       <note>
    #               <p>If you submit a second or subsequent <code>ListResolverEndpoints</code> request and specify the <code>NextToken</code> parameter,
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    #
    # @return [Types::ListResolverEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_endpoints(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverEndpointsOutput
    #   resp.data.next_token #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.resolver_endpoints #=> Array<ResolverEndpoint>
    #   resp.data.resolver_endpoints[0] #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoints[0].id #=> String
    #   resp.data.resolver_endpoints[0].creator_request_id #=> String
    #   resp.data.resolver_endpoints[0].arn #=> String
    #   resp.data.resolver_endpoints[0].name #=> String
    #   resp.data.resolver_endpoints[0].security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoints[0].security_group_ids[0] #=> String
    #   resp.data.resolver_endpoints[0].direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoints[0].ip_address_count #=> Integer
    #   resp.data.resolver_endpoints[0].host_vpc_id #=> String
    #   resp.data.resolver_endpoints[0].status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoints[0].status_message #=> String
    #   resp.data.resolver_endpoints[0].creation_time #=> String
    #   resp.data.resolver_endpoints[0].modification_time #=> String
    #
    def list_resolver_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverEndpoints
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverEndpoints,
        stubs: @stubs,
        params_class: Params::ListResolverEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about associations between Amazon VPCs and query logging configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverQueryLogConfigAssociationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p>
    #   		       <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>,
    #   			you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An optional specification to return a subset of query logging associations.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    # @option params [String] :sort_by
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
    # @option params [String] :sort_order
    #   <p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in,
    #   			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    # @return [Types::ListResolverQueryLogConfigAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_query_log_config_associations(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     sort_by: 'SortBy',
    #     sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverQueryLogConfigAssociationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #   resp.data.total_filtered_count #=> Integer
    #   resp.data.resolver_query_log_config_associations #=> Array<ResolverQueryLogConfigAssociation>
    #   resp.data.resolver_query_log_config_associations[0] #=> Types::ResolverQueryLogConfigAssociation
    #   resp.data.resolver_query_log_config_associations[0].id #=> String
    #   resp.data.resolver_query_log_config_associations[0].resolver_query_log_config_id #=> String
    #   resp.data.resolver_query_log_config_associations[0].resource_id #=> String
    #   resp.data.resolver_query_log_config_associations[0].status #=> String, one of ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_config_associations[0].error #=> String, one of ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.resolver_query_log_config_associations[0].error_message #=> String
    #   resp.data.resolver_query_log_config_associations[0].creation_time #=> String
    #
    def list_resolver_query_log_config_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverQueryLogConfigAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverQueryLogConfigAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverQueryLogConfigAssociations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverQueryLogConfigAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverQueryLogConfigAssociations,
        stubs: @stubs,
        params_class: Params::ListResolverQueryLogConfigAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_query_log_config_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save
    # 			DNS query logs and specifies the VPCs that you want to log queries for.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverQueryLogConfigsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of query logging configurations that you want to return in the response to a <code>ListResolverQueryLogConfigs</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging configurations. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverQueryLogConfigs</code> request, omit this value.</p>
    #   		       <p>If there are more than <code>MaxResults</code> query logging configurations that match the values that you specify for <code>Filters</code>,
    #   			you can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of
    #   			<code>NextToken</code> from the previous response. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An optional specification to return a subset of query logging configurations.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    # @option params [String] :sort_by
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
    # @option params [String] :sort_order
    #   <p>If you specified a value for <code>SortBy</code>, the order that you want query logging configurations to be listed in,
    #   			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #   		       <note>
    #   			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter,
    #   				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    #   		       </note>
    #
    # @return [Types::ListResolverQueryLogConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_query_log_configs(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     sort_by: 'SortBy',
    #     sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverQueryLogConfigsOutput
    #   resp.data.next_token #=> String
    #   resp.data.total_count #=> Integer
    #   resp.data.total_filtered_count #=> Integer
    #   resp.data.resolver_query_log_configs #=> Array<ResolverQueryLogConfig>
    #   resp.data.resolver_query_log_configs[0] #=> Types::ResolverQueryLogConfig
    #   resp.data.resolver_query_log_configs[0].id #=> String
    #   resp.data.resolver_query_log_configs[0].owner_id #=> String
    #   resp.data.resolver_query_log_configs[0].status #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED"]
    #   resp.data.resolver_query_log_configs[0].share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_query_log_configs[0].association_count #=> Integer
    #   resp.data.resolver_query_log_configs[0].arn #=> String
    #   resp.data.resolver_query_log_configs[0].name #=> String
    #   resp.data.resolver_query_log_configs[0].destination_arn #=> String
    #   resp.data.resolver_query_log_configs[0].creator_request_id #=> String
    #   resp.data.resolver_query_log_configs[0].creation_time #=> String
    #
    def list_resolver_query_log_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverQueryLogConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverQueryLogConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverQueryLogConfigs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverQueryLogConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverQueryLogConfigs,
        stubs: @stubs,
        params_class: Params::ListResolverQueryLogConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_query_log_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the associations that were created between Resolver rules and VPCs using the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverRuleAssociationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of rule associations that you want to return in the response to a <code>ListResolverRuleAssociations</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 rule associations. </p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverRuleAssociation</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> rule associations, you can submit another <code>ListResolverRuleAssociation</code> request
    #   			to get the next group of rule associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.</p>
    #   		       <note>
    #               <p>If you submit a second or subsequent <code>ListResolverRuleAssociations</code> request and specify the <code>NextToken</code> parameter,
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    #
    # @return [Types::ListResolverRuleAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_rule_associations(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverRuleAssociationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.resolver_rule_associations #=> Array<ResolverRuleAssociation>
    #   resp.data.resolver_rule_associations[0] #=> Types::ResolverRuleAssociation
    #   resp.data.resolver_rule_associations[0].id #=> String
    #   resp.data.resolver_rule_associations[0].resolver_rule_id #=> String
    #   resp.data.resolver_rule_associations[0].name #=> String
    #   resp.data.resolver_rule_associations[0].vpc_id #=> String
    #   resp.data.resolver_rule_associations[0].status #=> String, one of ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"]
    #   resp.data.resolver_rule_associations[0].status_message #=> String
    #
    def list_resolver_rule_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverRuleAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverRuleAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverRuleAssociations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverRuleAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverRuleAssociations,
        stubs: @stubs,
        params_class: Params::ListResolverRuleAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_rule_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Resolver rules that were created using the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolverRulesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolver rules that you want to return in the response to a <code>ListResolverRules</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver rules.</p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverRules</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> Resolver rules, you can submit another <code>ListResolverRules</code> request
    #   			to get the next group of Resolver rules. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.</p>
    #   		       <note>
    #               <p>If you submit a second or subsequent <code>ListResolverRules</code> request and specify the <code>NextToken</code> parameter,
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    #
    # @return [Types::ListResolverRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_rules(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolverRulesOutput
    #   resp.data.next_token #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.resolver_rules #=> Array<ResolverRule>
    #   resp.data.resolver_rules[0] #=> Types::ResolverRule
    #   resp.data.resolver_rules[0].id #=> String
    #   resp.data.resolver_rules[0].creator_request_id #=> String
    #   resp.data.resolver_rules[0].arn #=> String
    #   resp.data.resolver_rules[0].domain_name #=> String
    #   resp.data.resolver_rules[0].status #=> String, one of ["COMPLETE", "DELETING", "UPDATING", "FAILED"]
    #   resp.data.resolver_rules[0].status_message #=> String
    #   resp.data.resolver_rules[0].rule_type #=> String, one of ["FORWARD", "SYSTEM", "RECURSIVE"]
    #   resp.data.resolver_rules[0].name #=> String
    #   resp.data.resolver_rules[0].target_ips #=> Array<TargetAddress>
    #   resp.data.resolver_rules[0].target_ips[0] #=> Types::TargetAddress
    #   resp.data.resolver_rules[0].target_ips[0].ip #=> String
    #   resp.data.resolver_rules[0].target_ips[0].port #=> Integer
    #   resp.data.resolver_rules[0].resolver_endpoint_id #=> String
    #   resp.data.resolver_rules[0].owner_id #=> String
    #   resp.data.resolver_rules[0].share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_rules[0].creation_time #=> String
    #   resp.data.resolver_rules[0].modification_time #=> String
    #
    def list_resolver_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolverRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolverRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolverRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListResolverRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolverRules,
        stubs: @stubs,
        params_class: Params::ListResolverRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolver_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that you associated with the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to list tags for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags that you want to return in the response to a <code>ListTagsForResource</code> request.
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 tags.</p>
    #
    # @option params [String] :next_token
    #   <p>For the first <code>ListTagsForResource</code> request, omit this value.</p>
    #   		       <p>If you have more than <code>MaxResults</code> tags, you can submit another <code>ListTagsForResource</code> request
    #   			to get the next group of tags for the resource. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches an Identity and Access Management (Amazon Web Services IAM) policy for sharing the rule
    # 			group. You can use the policy to share the rule group using Resource Access Manager
    # 			(RAM). </p>
    #
    # @param [Hash] params
    #   See {Types::PutFirewallRuleGroupPolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN (Amazon Resource Name) for the rule group that you want to share.</p>
    #
    # @option params [String] :firewall_rule_group_policy
    #   <p>The Identity and Access Management (Amazon Web Services IAM) policy to attach to the rule group.</p>
    #
    # @return [Types::PutFirewallRuleGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_firewall_rule_group_policy(
    #     arn: 'Arn', # required
    #     firewall_rule_group_policy: 'FirewallRuleGroupPolicy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutFirewallRuleGroupPolicyOutput
    #   resp.data.return_value #=> Boolean
    #
    def put_firewall_rule_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFirewallRuleGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFirewallRuleGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFirewallRuleGroupPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::PutFirewallRuleGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFirewallRuleGroupPolicy,
        stubs: @stubs,
        params_class: Params::PutFirewallRuleGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_firewall_rule_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies an Amazon Web Services account that you want to share a query logging configuration with, the query logging configuration that you want to share,
    # 			and the operations that you want the account to be able to perform on the configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResolverQueryLogConfigPolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>
    #
    # @option params [String] :resolver_query_log_config_policy
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
    # @return [Types::PutResolverQueryLogConfigPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resolver_query_log_config_policy(
    #     arn: 'Arn', # required
    #     resolver_query_log_config_policy: 'ResolverQueryLogConfigPolicy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResolverQueryLogConfigPolicyOutput
    #   resp.data.return_value #=> Boolean
    #
    def put_resolver_query_log_config_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResolverQueryLogConfigPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResolverQueryLogConfigPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResolverQueryLogConfigPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::UnknownResourceException, Errors::InvalidPolicyDocument, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::PutResolverQueryLogConfigPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResolverQueryLogConfigPolicy,
        stubs: @stubs,
        params_class: Params::PutResolverQueryLogConfigPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resolver_query_log_config_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies an Amazon Web Services rule that you want to share with another account, the account that you want to share the rule with,
    # 			and the operations that you want the account to be able to perform on the rule.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResolverRulePolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the rule that you want to share with another account.</p>
    #
    # @option params [String] :resolver_rule_policy
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
    # @return [Types::PutResolverRulePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resolver_rule_policy(
    #     arn: 'Arn', # required
    #     resolver_rule_policy: 'ResolverRulePolicy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResolverRulePolicyOutput
    #   resp.data.return_value #=> Boolean
    #
    def put_resolver_rule_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResolverRulePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResolverRulePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResolverRulePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnknownResourceException, Errors::InvalidPolicyDocument, Errors::InternalServiceErrorException]),
        data_parser: Parsers::PutResolverRulePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResolverRulePolicy,
        stubs: @stubs,
        params_class: Params::PutResolverRulePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resolver_rule_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
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
    # @option params [Array<Tag>] :tags
    #   <p>The tags that you want to add to the specified resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidTagException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
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
    # @option params [Array<String>] :tag_keys
    #   <p>The tags that you want to remove to the specified resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of the firewall behavior provided by DNS Firewall for a single
    # 			VPC from Amazon Virtual Private Cloud (Amazon VPC). </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallConfigInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the VPC that the configuration is for.</p>
    #
    # @option params [String] :firewall_fail_open
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
    # @return [Types::UpdateFirewallConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_config(
    #     resource_id: 'ResourceId', # required
    #     firewall_fail_open: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallConfigOutput
    #   resp.data.firewall_config #=> Types::FirewallConfig
    #   resp.data.firewall_config.id #=> String
    #   resp.data.firewall_config.resource_id #=> String
    #   resp.data.firewall_config.owner_id #=> String
    #   resp.data.firewall_config.firewall_fail_open #=> String, one of ["ENABLED", "DISABLED"]
    #
    def update_firewall_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateFirewallConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallConfig,
        stubs: @stubs,
        params_class: Params::UpdateFirewallConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the firewall domain list from an array of domain specifications. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallDomainsInput}.
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list whose domains you want to update. </p>
    #
    # @option params [String] :operation
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
    # @option params [Array<String>] :domains
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
    # @return [Types::UpdateFirewallDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_domains(
    #     firewall_domain_list_id: 'FirewallDomainListId', # required
    #     operation: 'ADD', # required - accepts ["ADD", "REMOVE", "REPLACE"]
    #     domains: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallDomainsOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"]
    #   resp.data.status_message #=> String
    #
    def update_firewall_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallDomains
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::LimitExceededException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateFirewallDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallDomains,
        stubs: @stubs,
        params_class: Params::UpdateFirewallDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified firewall rule. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallRuleInput}.
    #
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group for the rule. </p>
    #
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list to use in the rule.  </p>
    #
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #            <p>You must specify a unique priority for each rule in a rule group.
    #              To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You
    #      can change the priority setting for the rules in a rule group at any time.</p>
    #
    # @option params [String] :action
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
    # @option params [String] :block_response
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
    # @option params [String] :block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    # @option params [String] :block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    # @option params [Integer] :block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    #
    # @return [Types::UpdateFirewallRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_rule(
    #     firewall_rule_group_id: 'FirewallRuleGroupId', # required
    #     firewall_domain_list_id: 'FirewallDomainListId', # required
    #     priority: 1,
    #     action: 'ALLOW', # accepts ["ALLOW", "BLOCK", "ALERT"]
    #     block_response: 'NODATA', # accepts ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #     block_override_domain: 'BlockOverrideDomain',
    #     block_override_dns_type: 'CNAME', # accepts ["CNAME"]
    #     block_override_ttl: 1,
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallRuleOutput
    #   resp.data.firewall_rule #=> Types::FirewallRule
    #   resp.data.firewall_rule.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule.firewall_domain_list_id #=> String
    #   resp.data.firewall_rule.name #=> String
    #   resp.data.firewall_rule.priority #=> Integer
    #   resp.data.firewall_rule.action #=> String, one of ["ALLOW", "BLOCK", "ALERT"]
    #   resp.data.firewall_rule.block_response #=> String, one of ["NODATA", "NXDOMAIN", "OVERRIDE"]
    #   resp.data.firewall_rule.block_override_domain #=> String
    #   resp.data.firewall_rule.block_override_dns_type #=> String, one of ["CNAME"]
    #   resp.data.firewall_rule.block_override_ttl #=> Integer
    #   resp.data.firewall_rule.creator_request_id #=> String
    #   resp.data.firewall_rule.creation_time #=> String
    #   resp.data.firewall_rule.modification_time #=> String
    #
    def update_firewall_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateFirewallRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallRule,
        stubs: @stubs,
        params_class: Params::UpdateFirewallRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the association of a <a>FirewallRuleGroup</a> with a VPC. The association enables DNS filtering for the VPC. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallRuleGroupAssociationInput}.
    #
    # @option params [String] :firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    #
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    #   			starting from the rule group with the lowest numeric priority setting. </p>
    #            <p>You must specify a unique priority for each rule group that you associate with a single VPC.
    #              To make it easier to insert rule groups later, leave space between the numbers, for example, use 100, 200, and so on. You
    #      can change the priority setting for a rule group association after you create it.</p>
    #
    # @option params [String] :mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>
    #
    # @option params [String] :name
    #   <p>The name of the rule group association.</p>
    #
    # @return [Types::UpdateFirewallRuleGroupAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_rule_group_association(
    #     firewall_rule_group_association_id: 'FirewallRuleGroupAssociationId', # required
    #     priority: 1,
    #     mutation_protection: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallRuleGroupAssociationOutput
    #   resp.data.firewall_rule_group_association #=> Types::FirewallRuleGroupAssociation
    #   resp.data.firewall_rule_group_association.id #=> String
    #   resp.data.firewall_rule_group_association.arn #=> String
    #   resp.data.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.data.firewall_rule_group_association.vpc_id #=> String
    #   resp.data.firewall_rule_group_association.name #=> String
    #   resp.data.firewall_rule_group_association.priority #=> Integer
    #   resp.data.firewall_rule_group_association.mutation_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.data.firewall_rule_group_association.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING"]
    #   resp.data.firewall_rule_group_association.status_message #=> String
    #   resp.data.firewall_rule_group_association.creator_request_id #=> String
    #   resp.data.firewall_rule_group_association.creation_time #=> String
    #   resp.data.firewall_rule_group_association.modification_time #=> String
    #
    def update_firewall_rule_group_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallRuleGroupAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallRuleGroupAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallRuleGroupAssociation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateFirewallRuleGroupAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallRuleGroupAssociation,
        stubs: @stubs,
        params_class: Params::UpdateFirewallRuleGroupAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_rule_group_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the behavior configuration of Route 53 Resolver behavior for a single VPC from
    # 				Amazon Virtual Private Cloud.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResolverConfigInput}.
    #
    # @option params [String] :resource_id
    #   <p>Resource ID of the Amazon VPC that you want to update the Resolver configuration for.</p>
    #
    # @option params [String] :autodefined_reverse_flag
    #   <p>Indicates whether or not the Resolver will create autodefined rules for reverse DNS
    #   			lookups. This is enabled by default. Disabling this option will also affect EC2-Classic
    #   			instances using ClassicLink. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the
    #   					<i>Amazon EC2 guide</i>.</p>
    #   		       <note>
    #               <p>It can take some time for the status change to be completed.</p>
    #            </note>
    #   		       <p></p>
    #
    # @return [Types::UpdateResolverConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_config(
    #     resource_id: 'ResourceId', # required
    #     autodefined_reverse_flag: 'ENABLE' # required - accepts ["ENABLE", "DISABLE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResolverConfigOutput
    #   resp.data.resolver_config #=> Types::ResolverConfig
    #   resp.data.resolver_config.id #=> String
    #   resp.data.resolver_config.resource_id #=> String
    #   resp.data.resolver_config.owner_id #=> String
    #   resp.data.resolver_config.autodefined_reverse #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    def update_resolver_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResolverConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResolverConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResolverConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceUnavailableException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateResolverConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResolverConfig,
        stubs: @stubs,
        params_class: Params::UpdateResolverConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resolver_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing DNSSEC validation configuration. If there is no existing DNSSEC validation configuration, one is created.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResolverDnssecConfigInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.</p>
    #
    # @option params [String] :validation
    #   <p>The new value that you are specifying for DNSSEC validation for the VPC. The value can be <code>ENABLE</code>
    #   			or <code>DISABLE</code>. Be aware that it can take time for a validation status change to be completed.</p>
    #
    # @return [Types::UpdateResolverDnssecConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_dnssec_config(
    #     resource_id: 'ResourceId', # required
    #     validation: 'ENABLE' # required - accepts ["ENABLE", "DISABLE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResolverDnssecConfigOutput
    #   resp.data.resolver_dnssec_config #=> Types::ResolverDnssecConfig
    #   resp.data.resolver_dnssec_config.id #=> String
    #   resp.data.resolver_dnssec_config.owner_id #=> String
    #   resp.data.resolver_dnssec_config.resource_id #=> String
    #   resp.data.resolver_dnssec_config.validation_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #
    def update_resolver_dnssec_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResolverDnssecConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResolverDnssecConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResolverDnssecConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateResolverDnssecConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResolverDnssecConfig,
        stubs: @stubs,
        params_class: Params::UpdateResolverDnssecConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resolver_dnssec_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name of an inbound or an outbound Resolver endpoint.  </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResolverEndpointInput}.
    #
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Resolver endpoint that you want to update.</p>
    #
    # @return [Types::UpdateResolverEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_endpoint(
    #     resolver_endpoint_id: 'ResolverEndpointId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResolverEndpointOutput
    #   resp.data.resolver_endpoint #=> Types::ResolverEndpoint
    #   resp.data.resolver_endpoint.id #=> String
    #   resp.data.resolver_endpoint.creator_request_id #=> String
    #   resp.data.resolver_endpoint.arn #=> String
    #   resp.data.resolver_endpoint.name #=> String
    #   resp.data.resolver_endpoint.security_group_ids #=> Array<String>
    #   resp.data.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.data.resolver_endpoint.direction #=> String, one of ["INBOUND", "OUTBOUND"]
    #   resp.data.resolver_endpoint.ip_address_count #=> Integer
    #   resp.data.resolver_endpoint.host_vpc_id #=> String
    #   resp.data.resolver_endpoint.status #=> String, one of ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"]
    #   resp.data.resolver_endpoint.status_message #=> String
    #   resp.data.resolver_endpoint.creation_time #=> String
    #   resp.data.resolver_endpoint.modification_time #=> String
    #
    def update_resolver_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResolverEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResolverEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResolverEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateResolverEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResolverEndpoint,
        stubs: @stubs,
        params_class: Params::UpdateResolverEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resolver_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates settings for a specified Resolver rule. <code>ResolverRuleId</code> is required, and all other parameters are optional.
    # 			If you don't specify a parameter, it retains its current value.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResolverRuleInput}.
    #
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to update.</p>
    #
    # @option params [ResolverRuleConfig] :config
    #   <p>The new settings for the Resolver rule.</p>
    #
    # @return [Types::UpdateResolverRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_rule(
    #     resolver_rule_id: 'ResolverRuleId', # required
    #     config: {
    #       name: 'Name',
    #       target_ips: [
    #         {
    #           ip: 'Ip', # required
    #           port: 1
    #         }
    #       ],
    #       resolver_endpoint_id: 'ResolverEndpointId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResolverRuleOutput
    #   resp.data.resolver_rule #=> Types::ResolverRule
    #   resp.data.resolver_rule.id #=> String
    #   resp.data.resolver_rule.creator_request_id #=> String
    #   resp.data.resolver_rule.arn #=> String
    #   resp.data.resolver_rule.domain_name #=> String
    #   resp.data.resolver_rule.status #=> String, one of ["COMPLETE", "DELETING", "UPDATING", "FAILED"]
    #   resp.data.resolver_rule.status_message #=> String
    #   resp.data.resolver_rule.rule_type #=> String, one of ["FORWARD", "SYSTEM", "RECURSIVE"]
    #   resp.data.resolver_rule.name #=> String
    #   resp.data.resolver_rule.target_ips #=> Array<TargetAddress>
    #   resp.data.resolver_rule.target_ips[0] #=> Types::TargetAddress
    #   resp.data.resolver_rule.target_ips[0].ip #=> String
    #   resp.data.resolver_rule.target_ips[0].port #=> Integer
    #   resp.data.resolver_rule.resolver_endpoint_id #=> String
    #   resp.data.resolver_rule.owner_id #=> String
    #   resp.data.resolver_rule.share_status #=> String, one of ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #   resp.data.resolver_rule.creation_time #=> String
    #   resp.data.resolver_rule.modification_time #=> String
    #
    def update_resolver_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResolverRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResolverRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResolverRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceUnavailableException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateResolverRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResolverRule,
        stubs: @stubs,
        params_class: Params::UpdateResolverRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resolver_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
