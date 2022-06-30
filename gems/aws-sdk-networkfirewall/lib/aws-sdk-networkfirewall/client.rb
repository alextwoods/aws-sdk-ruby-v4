# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::NetworkFirewall
  # An API client for NetworkFirewall_20201112
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the API Reference for Network Firewall. This guide is for developers who need
  #          detailed information about the Network Firewall API actions, data types, and errors. </p>
  #          <ul>
  #             <li>
  #                <p>The REST API requires you to handle connection details, such as calculating
  #                signatures, handling request retries, and error handling. For general information
  #                about using the Amazon Web Services REST APIs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-apis.html">Amazon Web Services APIs</a>. </p>
  #                <p>To access Network Firewall using the REST API endpoint:
  #                   <code>https://network-firewall.<region>.amazonaws.com </code>
  #                </p>
  #             </li>
  #             <li>
  #                <p>Alternatively, you can use one of the Amazon Web Services SDKs to access an API that's tailored to
  #                the programming language or platform that you're using. For more information, see
  #                <a href="http://aws.amazon.com/tools/#SDKs">Amazon Web Services SDKs</a>.</p>
  #             </li>
  #             <li>
  #                <p>For descriptions of Network Firewall features, including and step-by-step
  #                instructions on how to use them through the Network Firewall console, see the <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/">Network Firewall Developer
  #                   Guide</a>.</p>
  #             </li>
  #          </ul>
  #          <p>Network Firewall is a stateful, managed, network firewall and intrusion detection and
  #          prevention service for Amazon Virtual Private Cloud (Amazon VPC). With Network Firewall, you can filter traffic at the
  #          perimeter of your VPC. This includes filtering traffic going to and coming from an internet
  #          gateway, NAT gateway, or over VPN or Direct Connect. Network Firewall uses rules that are compatible
  #       with Suricata, a free, open source intrusion detection system (IDS) engine.
  #       Network Firewall supports Suricata version 5.0.2. For information about Suricata,
  #           see the <a href="https://suricata-ids.org/">Suricata website</a>.</p>
  #          <p>You can use Network Firewall to monitor and protect your VPC traffic in a number of ways.
  #          The following are just a few examples: </p>
  #          <ul>
  #             <li>
  #                <p>Allow domains or IP addresses for known Amazon Web Services service endpoints, such as Amazon S3, and
  #                block all other forms of traffic.</p>
  #             </li>
  #             <li>
  #                <p>Use custom lists of known bad domains to limit the types of domain names that your
  #                applications can access.</p>
  #             </li>
  #             <li>
  #                <p>Perform deep packet inspection on traffic entering or leaving your VPC.</p>
  #             </li>
  #             <li>
  #                <p>Use stateful protocol detection to filter protocols like HTTPS, regardless of the
  #                port used.</p>
  #             </li>
  #          </ul>
  #          <p>To enable Network Firewall for your VPCs, you perform steps in both Amazon VPC and in
  #          Network Firewall. For information about using Amazon VPC, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/">Amazon VPC User Guide</a>.</p>
  #          <p>To start using Network Firewall, do the following: </p>
  #          <ol>
  #             <li>
  #                <p>(Optional) If you don't already have a VPC that you want to protect, create it in
  #                Amazon VPC. </p>
  #             </li>
  #             <li>
  #                <p>In Amazon VPC, in each Availability Zone where you want to have a firewall endpoint, create a
  #                subnet for the sole use of Network Firewall. </p>
  #             </li>
  #             <li>
  #                <p>In Network Firewall, create stateless and stateful rule groups,
  #                  to define the components of the network traffic filtering behavior that you want your firewall to have. </p>
  #             </li>
  #             <li>
  #                <p>In Network Firewall, create a firewall policy that uses your rule groups and
  #                  specifies additional default traffic filtering behavior. </p>
  #             </li>
  #             <li>
  #                <p>In Network Firewall, create a firewall and specify your new firewall policy and
  #                  VPC subnets. Network Firewall creates a firewall endpoint in each subnet that you
  #                specify, with the behavior that's defined in the firewall policy.</p>
  #             </li>
  #             <li>
  #                <p>In Amazon VPC, use ingress routing enhancements to route traffic through the new firewall
  #                endpoints.</p>
  #             </li>
  #          </ol>
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
    def initialize(config = AWS::SDK::NetworkFirewall::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a <a>FirewallPolicy</a> to a <a>Firewall</a>. </p>
    #          <p>A firewall policy defines how to monitor and manage your VPC network traffic, using a
    #          collection of inspection rule groups and other settings. Each firewall requires one
    #          firewall policy association, and you can use the same firewall policy for multiple
    #          firewalls. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateFirewallPolicyInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #           <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #
    # @return [Types::AssociateFirewallPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_firewall_policy(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     firewall_policy_arn: 'FirewallPolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateFirewallPolicyOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.firewall_policy_arn #=> String
    #   resp.data.update_token #=> String
    #
    def associate_firewall_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateFirewallPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateFirewallPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateFirewallPolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidOperationException, Errors::InvalidTokenException]),
        data_parser: Parsers::AssociateFirewallPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateFirewallPolicy,
        stubs: @stubs,
        params_class: Params::AssociateFirewallPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_firewall_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified subnets in the Amazon VPC to the firewall. You can specify one
    #          subnet for each of the Availability Zones that the VPC spans. </p>
    #          <p>This request creates an Network Firewall firewall endpoint in each of the subnets. To
    #          enable the firewall's protections, you must also modify the VPC's route tables for each
    #          subnet's Availability Zone, to redirect the traffic that's coming into and going out of the
    #          zone through the firewall endpoint. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateSubnetsInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [Array<SubnetMapping>] :subnet_mappings
    #   <p>The IDs of the subnets that you want to associate with the firewall. </p>
    #
    # @return [Types::AssociateSubnetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_subnets(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     subnet_mappings: [
    #       {
    #         subnet_id: 'SubnetId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSubnetsOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.subnet_mappings #=> Array<SubnetMapping>
    #   resp.data.subnet_mappings[0] #=> Types::SubnetMapping
    #   resp.data.subnet_mappings[0].subnet_id #=> String
    #   resp.data.update_token #=> String
    #
    def associate_subnets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSubnetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSubnetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSubnets
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InsufficientCapacityException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidOperationException, Errors::InvalidTokenException]),
        data_parser: Parsers::AssociateSubnets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSubnets,
        stubs: @stubs,
        params_class: Params::AssociateSubnetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_subnets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Network Firewall <a>Firewall</a> and accompanying <a>FirewallStatus</a> for a VPC. </p>
    #          <p>The firewall defines the configuration settings for an Network Firewall firewall. The settings that you can define at creation include the firewall policy, the subnets in your VPC to use for the firewall endpoints, and any tags that are attached to the firewall Amazon Web Services resource. </p>
    #          <p>After you create a firewall, you can provide additional settings, like the logging configuration. </p>
    #          <p>To update the settings for a firewall, you use the operations that apply to the settings
    #          themselves, for example <a>UpdateLoggingConfiguration</a>, <a>AssociateSubnets</a>, and <a>UpdateFirewallDeleteProtection</a>. </p>
    #          <p>To manage a firewall's tags, use the standard Amazon Web Services resource tagging operations, <a>ListTagsForResource</a>, <a>TagResource</a>, and <a>UntagResource</a>.</p>
    #          <p>To retrieve information about firewalls, use <a>ListFirewalls</a> and <a>DescribeFirewall</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFirewallInput}.
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>FirewallPolicy</a> that you want to
    #            use for the firewall.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC where Network Firewall should create the firewall. </p>
    #            <p>You can't change this setting after you create the firewall. </p>
    #
    # @option params [Array<SubnetMapping>] :subnet_mappings
    #   <p>The public subnets to use for your Network Firewall firewalls. Each subnet must belong to a
    #            different Availability Zone in the VPC. Network Firewall creates a firewall endpoint in each
    #            subnet. </p>
    #
    # @option params [Boolean] :delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #
    # @option params [Boolean] :subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    # @option params [Boolean] :firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the firewall.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall resources.</p>
    #
    # @return [Types::CreateFirewallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall(
    #     firewall_name: 'FirewallName', # required
    #     firewall_policy_arn: 'FirewallPolicyArn', # required
    #     vpc_id: 'VpcId', # required
    #     subnet_mappings: [
    #       {
    #         subnet_id: 'SubnetId' # required
    #       }
    #     ], # required
    #     delete_protection: false,
    #     subnet_change_protection: false,
    #     firewall_policy_change_protection: false,
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     encryption_configuration: {
    #       key_id: 'KeyId',
    #       type: 'CUSTOMER_KMS' # required - accepts ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFirewallOutput
    #   resp.data.firewall #=> Types::Firewall
    #   resp.data.firewall.firewall_name #=> String
    #   resp.data.firewall.firewall_arn #=> String
    #   resp.data.firewall.firewall_policy_arn #=> String
    #   resp.data.firewall.vpc_id #=> String
    #   resp.data.firewall.subnet_mappings #=> Array<SubnetMapping>
    #   resp.data.firewall.subnet_mappings[0] #=> Types::SubnetMapping
    #   resp.data.firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.data.firewall.delete_protection #=> Boolean
    #   resp.data.firewall.subnet_change_protection #=> Boolean
    #   resp.data.firewall.firewall_policy_change_protection #=> Boolean
    #   resp.data.firewall.description #=> String
    #   resp.data.firewall.firewall_id #=> String
    #   resp.data.firewall.tags #=> Array<Tag>
    #   resp.data.firewall.tags[0] #=> Types::Tag
    #   resp.data.firewall.tags[0].key #=> String
    #   resp.data.firewall.tags[0].value #=> String
    #   resp.data.firewall.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall.encryption_configuration.key_id #=> String
    #   resp.data.firewall.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_status #=> Types::FirewallStatus
    #   resp.data.firewall_status.status #=> String, one of ["PROVISIONING", "DELETING", "READY"]
    #   resp.data.firewall_status.configuration_sync_state_summary #=> String, one of ["PENDING", "IN_SYNC"]
    #   resp.data.firewall_status.sync_states #=> Hash<String, SyncState>
    #   resp.data.firewall_status.sync_states['key'] #=> Types::SyncState
    #   resp.data.firewall_status.sync_states['key'].attachment #=> Types::Attachment
    #   resp.data.firewall_status.sync_states['key'].attachment.subnet_id #=> String
    #   resp.data.firewall_status.sync_states['key'].attachment.endpoint_id #=> String
    #   resp.data.firewall_status.sync_states['key'].attachment.status #=> String, one of ["CREATING", "DELETING", "SCALING", "READY"]
    #   resp.data.firewall_status.sync_states['key'].config #=> Hash<String, PerObjectStatus>
    #   resp.data.firewall_status.sync_states['key'].config['key'] #=> Types::PerObjectStatus
    #   resp.data.firewall_status.sync_states['key'].config['key'].sync_status #=> String, one of ["PENDING", "IN_SYNC"]
    #   resp.data.firewall_status.sync_states['key'].config['key'].update_token #=> String
    #
    def create_firewall(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFirewallInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFirewallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFirewall
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::InsufficientCapacityException, Errors::InternalServerError, Errors::InvalidOperationException]),
        data_parser: Parsers::CreateFirewall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFirewall,
        stubs: @stubs,
        params_class: Params::CreateFirewallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_firewall
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the firewall policy for the firewall according to the specifications. </p>
    #          <p>An Network Firewall firewall policy defines the behavior of a firewall, in a collection of
    #          stateless and stateful rule groups and other settings. You can use one firewall policy for
    #          multiple firewalls. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFirewallPolicyInput}.
    #
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #
    # @option params [FirewallPolicy] :firewall_policy
    #   <p>The rule groups and policy actions to use in the firewall policy.</p>
    #
    # @option params [String] :description
    #   <p>A description of the firewall policy.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    #
    # @return [Types::CreateFirewallPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_policy(
    #     firewall_policy_name: 'FirewallPolicyName', # required
    #     firewall_policy: {
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: 'ResourceArn', # required
    #           priority: 1 # required
    #         }
    #       ],
    #       stateless_default_actions: [
    #         'member'
    #       ], # required
    #       stateless_custom_actions: [
    #         {
    #           action_name: 'ActionName', # required
    #           action_definition: {
    #             publish_metric_action: {
    #               dimensions: [
    #                 {
    #                   value: 'Value' # required
    #                 }
    #               ] # required
    #             }
    #           } # required
    #         }
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: 'ResourceArn', # required
    #           priority: 1,
    #           override: {
    #             action: 'DROP_TO_ALERT' # accepts ["DROP_TO_ALERT"]
    #           }
    #         }
    #       ],
    #       stateful_default_actions: [
    #         'member'
    #       ],
    #       stateful_engine_options: {
    #         rule_order: 'DEFAULT_ACTION_ORDER' # accepts ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     }, # required
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: 'KeyId',
    #       type: 'CUSTOMER_KMS' # required - accepts ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFirewallPolicyOutput
    #   resp.data.update_token #=> String
    #   resp.data.firewall_policy_response #=> Types::FirewallPolicyResponse
    #   resp.data.firewall_policy_response.firewall_policy_name #=> String
    #   resp.data.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.data.firewall_policy_response.firewall_policy_id #=> String
    #   resp.data.firewall_policy_response.description #=> String
    #   resp.data.firewall_policy_response.firewall_policy_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.firewall_policy_response.tags #=> Array<Tag>
    #   resp.data.firewall_policy_response.tags[0] #=> Types::Tag
    #   resp.data.firewall_policy_response.tags[0].key #=> String
    #   resp.data.firewall_policy_response.tags[0].value #=> String
    #   resp.data.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.number_of_associations #=> Integer
    #   resp.data.firewall_policy_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.data.firewall_policy_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_policy_response.last_modified_time #=> Time
    #
    def create_firewall_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFirewallPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFirewallPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFirewallPolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::InsufficientCapacityException, Errors::InternalServerError]),
        data_parser: Parsers::CreateFirewallPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFirewallPolicy,
        stubs: @stubs,
        params_class: Params::CreateFirewallPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_firewall_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the specified stateless or stateful rule group, which includes the rules for
    #          network traffic inspection, a capacity setting, and tags. </p>
    #          <p>You provide your rule group specification in your request using either
    #             <code>RuleGroup</code> or <code>Rules</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleGroupInput}.
    #
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #
    # @option params [RuleGroup] :rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    #
    # @option params [String] :rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    #
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #
    # @option params [String] :description
    #   <p>A description of the rule group. </p>
    #
    # @option params [Integer] :capacity
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
    # @option params [Array<Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    #
    # @option params [SourceMetadata] :source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    #
    # @return [Types::CreateRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_group(
    #     rule_group_name: 'RuleGroupName', # required
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           'key' => {
    #             definition: [
    #               'member'
    #             ] # required
    #           }
    #         },
    #         port_sets: {
    #           'key' => {
    #           }
    #         }
    #       },
    #       rules_source: {
    #         rules_string: 'RulesString',
    #         rules_source_list: {
    #           targets: [
    #             'member'
    #           ], # required
    #           target_types: [
    #             'TLS_SNI' # accepts ["TLS_SNI", "HTTP_HOST"]
    #           ], # required
    #           generated_rules_type: 'ALLOWLIST' # required - accepts ["ALLOWLIST", "DENYLIST"]
    #         },
    #         stateful_rules: [
    #           {
    #             action: 'PASS', # required - accepts ["PASS", "DROP", "ALERT"]
    #             header: {
    #               protocol: 'IP', # required - accepts ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP"]
    #               source: 'Source', # required
    #               source_port: 'SourcePort', # required
    #               direction: 'FORWARD', # required - accepts ["FORWARD", "ANY"]
    #               destination: 'Destination', # required
    #               destination_port: 'DestinationPort' # required
    #             }, # required
    #             rule_options: [
    #               {
    #                 keyword: 'Keyword', # required
    #                 settings: [
    #                   'member'
    #                 ]
    #               }
    #             ] # required
    #           }
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [
    #             {
    #               rule_definition: {
    #                 match_attributes: {
    #                   sources: [
    #                     {
    #                       address_definition: 'AddressDefinition' # required
    #                     }
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1 # required
    #                     }
    #                   ],
    #                   protocols: [
    #                     1
    #                   ],
    #                   tcp_flags: [
    #                     {
    #                       flags: [
    #                         'FIN' # accepts ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]
    #                       ], # required
    #                     }
    #                   ]
    #                 }, # required
    #                 actions: [
    #                   'member'
    #                 ] # required
    #               }, # required
    #               priority: 1 # required
    #             }
    #           ], # required
    #           custom_actions: [
    #             {
    #               action_name: 'ActionName', # required
    #               action_definition: {
    #                 publish_metric_action: {
    #                   dimensions: [
    #                     {
    #                       value: 'Value' # required
    #                     }
    #                   ] # required
    #                 }
    #               } # required
    #             }
    #           ]
    #         }
    #       }, # required
    #       stateful_rule_options: {
    #         rule_order: 'DEFAULT_ACTION_ORDER' # accepts ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     },
    #     rules: 'Rules',
    #     type: 'STATELESS', # required - accepts ["STATELESS", "STATEFUL"]
    #     description: 'Description',
    #     capacity: 1, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: 'KeyId',
    #       type: 'CUSTOMER_KMS' # required - accepts ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #     },
    #     source_metadata: {
    #       source_arn: 'SourceArn',
    #       source_update_token: 'SourceUpdateToken'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRuleGroupOutput
    #   resp.data.update_token #=> String
    #   resp.data.rule_group_response #=> Types::RuleGroupResponse
    #   resp.data.rule_group_response.rule_group_arn #=> String
    #   resp.data.rule_group_response.rule_group_name #=> String
    #   resp.data.rule_group_response.rule_group_id #=> String
    #   resp.data.rule_group_response.description #=> String
    #   resp.data.rule_group_response.type #=> String, one of ["STATELESS", "STATEFUL"]
    #   resp.data.rule_group_response.capacity #=> Integer
    #   resp.data.rule_group_response.rule_group_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.rule_group_response.tags #=> Array<Tag>
    #   resp.data.rule_group_response.tags[0] #=> Types::Tag
    #   resp.data.rule_group_response.tags[0].key #=> String
    #   resp.data.rule_group_response.tags[0].value #=> String
    #   resp.data.rule_group_response.consumed_capacity #=> Integer
    #   resp.data.rule_group_response.number_of_associations #=> Integer
    #   resp.data.rule_group_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.data.rule_group_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.rule_group_response.source_metadata #=> Types::SourceMetadata
    #   resp.data.rule_group_response.source_metadata.source_arn #=> String
    #   resp.data.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.data.rule_group_response.sns_topic #=> String
    #   resp.data.rule_group_response.last_modified_time #=> Time
    #
    def create_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRuleGroup
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::InsufficientCapacityException, Errors::InternalServerError]),
        data_parser: Parsers::CreateRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRuleGroup,
        stubs: @stubs,
        params_class: Params::CreateRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>Firewall</a> and its <a>FirewallStatus</a>.
    #        This operation requires the firewall's <code>DeleteProtection</code> flag to be
    #             <code>FALSE</code>. You can't revert this operation. </p>
    #          <p>You can check whether a firewall is
    #          in use by reviewing the route tables for the Availability Zones where you have
    #          firewall subnet mappings. Retrieve the subnet mappings by calling <a>DescribeFirewall</a>.
    #          You define and update the route tables through Amazon VPC. As needed, update the route tables for the
    #          zones to remove the firewall endpoints. When the route tables no longer use the firewall endpoints,
    #          you can remove the firewall safely.</p>
    #          <p>To delete a firewall, remove the delete protection if you need to using <a>UpdateFirewallDeleteProtection</a>,
    #          then delete the firewall by calling <a>DeleteFirewall</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFirewallInput}.
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @return [Types::DeleteFirewallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall(
    #     firewall_name: 'FirewallName',
    #     firewall_arn: 'FirewallArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFirewallOutput
    #   resp.data.firewall #=> Types::Firewall
    #   resp.data.firewall.firewall_name #=> String
    #   resp.data.firewall.firewall_arn #=> String
    #   resp.data.firewall.firewall_policy_arn #=> String
    #   resp.data.firewall.vpc_id #=> String
    #   resp.data.firewall.subnet_mappings #=> Array<SubnetMapping>
    #   resp.data.firewall.subnet_mappings[0] #=> Types::SubnetMapping
    #   resp.data.firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.data.firewall.delete_protection #=> Boolean
    #   resp.data.firewall.subnet_change_protection #=> Boolean
    #   resp.data.firewall.firewall_policy_change_protection #=> Boolean
    #   resp.data.firewall.description #=> String
    #   resp.data.firewall.firewall_id #=> String
    #   resp.data.firewall.tags #=> Array<Tag>
    #   resp.data.firewall.tags[0] #=> Types::Tag
    #   resp.data.firewall.tags[0].key #=> String
    #   resp.data.firewall.tags[0].value #=> String
    #   resp.data.firewall.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall.encryption_configuration.key_id #=> String
    #   resp.data.firewall.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_status #=> Types::FirewallStatus
    #   resp.data.firewall_status.status #=> String, one of ["PROVISIONING", "DELETING", "READY"]
    #   resp.data.firewall_status.configuration_sync_state_summary #=> String, one of ["PENDING", "IN_SYNC"]
    #   resp.data.firewall_status.sync_states #=> Hash<String, SyncState>
    #   resp.data.firewall_status.sync_states['key'] #=> Types::SyncState
    #   resp.data.firewall_status.sync_states['key'].attachment #=> Types::Attachment
    #   resp.data.firewall_status.sync_states['key'].attachment.subnet_id #=> String
    #   resp.data.firewall_status.sync_states['key'].attachment.endpoint_id #=> String
    #   resp.data.firewall_status.sync_states['key'].attachment.status #=> String, one of ["CREATING", "DELETING", "SCALING", "READY"]
    #   resp.data.firewall_status.sync_states['key'].config #=> Hash<String, PerObjectStatus>
    #   resp.data.firewall_status.sync_states['key'].config['key'] #=> Types::PerObjectStatus
    #   resp.data.firewall_status.sync_states['key'].config['key'].sync_status #=> String, one of ["PENDING", "IN_SYNC"]
    #   resp.data.firewall_status.sync_states['key'].config['key'].update_token #=> String
    #
    def delete_firewall(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFirewallInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFirewallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFirewall
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidOperationException]),
        data_parser: Parsers::DeleteFirewall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFirewall,
        stubs: @stubs,
        params_class: Params::DeleteFirewallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_firewall
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>FirewallPolicy</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFirewallPolicyInput}.
    #
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @return [Types::DeleteFirewallPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_policy(
    #     firewall_policy_name: 'FirewallPolicyName',
    #     firewall_policy_arn: 'FirewallPolicyArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFirewallPolicyOutput
    #   resp.data.firewall_policy_response #=> Types::FirewallPolicyResponse
    #   resp.data.firewall_policy_response.firewall_policy_name #=> String
    #   resp.data.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.data.firewall_policy_response.firewall_policy_id #=> String
    #   resp.data.firewall_policy_response.description #=> String
    #   resp.data.firewall_policy_response.firewall_policy_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.firewall_policy_response.tags #=> Array<Tag>
    #   resp.data.firewall_policy_response.tags[0] #=> Types::Tag
    #   resp.data.firewall_policy_response.tags[0].key #=> String
    #   resp.data.firewall_policy_response.tags[0].value #=> String
    #   resp.data.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.number_of_associations #=> Integer
    #   resp.data.firewall_policy_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.data.firewall_policy_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_policy_response.last_modified_time #=> Time
    #
    def delete_firewall_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFirewallPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFirewallPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFirewallPolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidOperationException]),
        data_parser: Parsers::DeleteFirewallPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFirewallPolicy,
        stubs: @stubs,
        params_class: Params::DeleteFirewallPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_firewall_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource policy that you created in a <a>PutResourcePolicy</a> request. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to delete. </p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourcePolicyException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>RuleGroup</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleGroupInput}.
    #
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    # @return [Types::DeleteRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_group(
    #     rule_group_name: 'RuleGroupName',
    #     rule_group_arn: 'RuleGroupArn',
    #     type: 'STATELESS' # accepts ["STATELESS", "STATEFUL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleGroupOutput
    #   resp.data.rule_group_response #=> Types::RuleGroupResponse
    #   resp.data.rule_group_response.rule_group_arn #=> String
    #   resp.data.rule_group_response.rule_group_name #=> String
    #   resp.data.rule_group_response.rule_group_id #=> String
    #   resp.data.rule_group_response.description #=> String
    #   resp.data.rule_group_response.type #=> String, one of ["STATELESS", "STATEFUL"]
    #   resp.data.rule_group_response.capacity #=> Integer
    #   resp.data.rule_group_response.rule_group_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.rule_group_response.tags #=> Array<Tag>
    #   resp.data.rule_group_response.tags[0] #=> Types::Tag
    #   resp.data.rule_group_response.tags[0].key #=> String
    #   resp.data.rule_group_response.tags[0].value #=> String
    #   resp.data.rule_group_response.consumed_capacity #=> Integer
    #   resp.data.rule_group_response.number_of_associations #=> Integer
    #   resp.data.rule_group_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.data.rule_group_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.rule_group_response.source_metadata #=> Types::SourceMetadata
    #   resp.data.rule_group_response.source_metadata.source_arn #=> String
    #   resp.data.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.data.rule_group_response.sns_topic #=> String
    #   resp.data.rule_group_response.last_modified_time #=> Time
    #
    def delete_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRuleGroup
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidOperationException]),
        data_parser: Parsers::DeleteRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRuleGroup,
        stubs: @stubs,
        params_class: Params::DeleteRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the data objects for the specified firewall. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFirewallInput}.
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @return [Types::DescribeFirewallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_firewall(
    #     firewall_name: 'FirewallName',
    #     firewall_arn: 'FirewallArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFirewallOutput
    #   resp.data.update_token #=> String
    #   resp.data.firewall #=> Types::Firewall
    #   resp.data.firewall.firewall_name #=> String
    #   resp.data.firewall.firewall_arn #=> String
    #   resp.data.firewall.firewall_policy_arn #=> String
    #   resp.data.firewall.vpc_id #=> String
    #   resp.data.firewall.subnet_mappings #=> Array<SubnetMapping>
    #   resp.data.firewall.subnet_mappings[0] #=> Types::SubnetMapping
    #   resp.data.firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.data.firewall.delete_protection #=> Boolean
    #   resp.data.firewall.subnet_change_protection #=> Boolean
    #   resp.data.firewall.firewall_policy_change_protection #=> Boolean
    #   resp.data.firewall.description #=> String
    #   resp.data.firewall.firewall_id #=> String
    #   resp.data.firewall.tags #=> Array<Tag>
    #   resp.data.firewall.tags[0] #=> Types::Tag
    #   resp.data.firewall.tags[0].key #=> String
    #   resp.data.firewall.tags[0].value #=> String
    #   resp.data.firewall.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall.encryption_configuration.key_id #=> String
    #   resp.data.firewall.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_status #=> Types::FirewallStatus
    #   resp.data.firewall_status.status #=> String, one of ["PROVISIONING", "DELETING", "READY"]
    #   resp.data.firewall_status.configuration_sync_state_summary #=> String, one of ["PENDING", "IN_SYNC"]
    #   resp.data.firewall_status.sync_states #=> Hash<String, SyncState>
    #   resp.data.firewall_status.sync_states['key'] #=> Types::SyncState
    #   resp.data.firewall_status.sync_states['key'].attachment #=> Types::Attachment
    #   resp.data.firewall_status.sync_states['key'].attachment.subnet_id #=> String
    #   resp.data.firewall_status.sync_states['key'].attachment.endpoint_id #=> String
    #   resp.data.firewall_status.sync_states['key'].attachment.status #=> String, one of ["CREATING", "DELETING", "SCALING", "READY"]
    #   resp.data.firewall_status.sync_states['key'].config #=> Hash<String, PerObjectStatus>
    #   resp.data.firewall_status.sync_states['key'].config['key'] #=> Types::PerObjectStatus
    #   resp.data.firewall_status.sync_states['key'].config['key'].sync_status #=> String, one of ["PENDING", "IN_SYNC"]
    #   resp.data.firewall_status.sync_states['key'].config['key'].update_token #=> String
    #
    def describe_firewall(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFirewallInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFirewallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFirewall
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeFirewall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFirewall,
        stubs: @stubs,
        params_class: Params::DescribeFirewallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_firewall
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the data objects for the specified firewall policy. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFirewallPolicyInput}.
    #
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @return [Types::DescribeFirewallPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_firewall_policy(
    #     firewall_policy_name: 'FirewallPolicyName',
    #     firewall_policy_arn: 'FirewallPolicyArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFirewallPolicyOutput
    #   resp.data.update_token #=> String
    #   resp.data.firewall_policy_response #=> Types::FirewallPolicyResponse
    #   resp.data.firewall_policy_response.firewall_policy_name #=> String
    #   resp.data.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.data.firewall_policy_response.firewall_policy_id #=> String
    #   resp.data.firewall_policy_response.description #=> String
    #   resp.data.firewall_policy_response.firewall_policy_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.firewall_policy_response.tags #=> Array<Tag>
    #   resp.data.firewall_policy_response.tags[0] #=> Types::Tag
    #   resp.data.firewall_policy_response.tags[0].key #=> String
    #   resp.data.firewall_policy_response.tags[0].value #=> String
    #   resp.data.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.number_of_associations #=> Integer
    #   resp.data.firewall_policy_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.data.firewall_policy_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_policy_response.last_modified_time #=> Time
    #   resp.data.firewall_policy #=> Types::FirewallPolicy
    #   resp.data.firewall_policy.stateless_rule_group_references #=> Array<StatelessRuleGroupReference>
    #   resp.data.firewall_policy.stateless_rule_group_references[0] #=> Types::StatelessRuleGroupReference
    #   resp.data.firewall_policy.stateless_rule_group_references[0].resource_arn #=> String
    #   resp.data.firewall_policy.stateless_rule_group_references[0].priority #=> Integer
    #   resp.data.firewall_policy.stateless_default_actions #=> Array<String>
    #   resp.data.firewall_policy.stateless_default_actions[0] #=> String
    #   resp.data.firewall_policy.stateless_fragment_default_actions #=> Array<String>
    #   resp.data.firewall_policy.stateless_custom_actions #=> Array<CustomAction>
    #   resp.data.firewall_policy.stateless_custom_actions[0] #=> Types::CustomAction
    #   resp.data.firewall_policy.stateless_custom_actions[0].action_name #=> String
    #   resp.data.firewall_policy.stateless_custom_actions[0].action_definition #=> Types::ActionDefinition
    #   resp.data.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action #=> Types::PublishMetricAction
    #   resp.data.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions #=> Array<Dimension>
    #   resp.data.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions[0] #=> Types::Dimension
    #   resp.data.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions[0].value #=> String
    #   resp.data.firewall_policy.stateful_rule_group_references #=> Array<StatefulRuleGroupReference>
    #   resp.data.firewall_policy.stateful_rule_group_references[0] #=> Types::StatefulRuleGroupReference
    #   resp.data.firewall_policy.stateful_rule_group_references[0].resource_arn #=> String
    #   resp.data.firewall_policy.stateful_rule_group_references[0].priority #=> Integer
    #   resp.data.firewall_policy.stateful_rule_group_references[0].override #=> Types::StatefulRuleGroupOverride
    #   resp.data.firewall_policy.stateful_rule_group_references[0].override.action #=> String, one of ["DROP_TO_ALERT"]
    #   resp.data.firewall_policy.stateful_default_actions #=> Array<String>
    #   resp.data.firewall_policy.stateful_default_actions[0] #=> String
    #   resp.data.firewall_policy.stateful_engine_options #=> Types::StatefulEngineOptions
    #   resp.data.firewall_policy.stateful_engine_options.rule_order #=> String, one of ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #
    def describe_firewall_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFirewallPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFirewallPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFirewallPolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeFirewallPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFirewallPolicy,
        stubs: @stubs,
        params_class: Params::DescribeFirewallPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_firewall_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the logging configuration for the specified firewall. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoggingConfigurationInput}.
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @return [Types::DescribeLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_configuration(
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoggingConfigurationOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.log_destination_configs #=> Array<LogDestinationConfig>
    #   resp.data.logging_configuration.log_destination_configs[0] #=> Types::LogDestinationConfig
    #   resp.data.logging_configuration.log_destination_configs[0].log_type #=> String, one of ["ALERT", "FLOW"]
    #   resp.data.logging_configuration.log_destination_configs[0].log_destination_type #=> String, one of ["S3", "CloudWatchLogs", "KinesisDataFirehose"]
    #   resp.data.logging_configuration.log_destination_configs[0].log_destination #=> Hash<String, String>
    #   resp.data.logging_configuration.log_destination_configs[0].log_destination['key'] #=> String
    #
    def describe_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoggingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoggingConfiguration
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a resource policy that you created in a <a>PutResourcePolicy</a> request. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to retrieve. </p>
    #
    # @return [Types::DescribeResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourcePolicyOutput
    #   resp.data.policy #=> String
    #
    def describe_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourcePolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourcePolicy,
        stubs: @stubs,
        params_class: Params::DescribeResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the data objects for the specified rule group. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRuleGroupInput}.
    #
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #              <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    # @return [Types::DescribeRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_group(
    #     rule_group_name: 'RuleGroupName',
    #     rule_group_arn: 'RuleGroupArn',
    #     type: 'STATELESS' # accepts ["STATELESS", "STATEFUL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRuleGroupOutput
    #   resp.data.update_token #=> String
    #   resp.data.rule_group #=> Types::RuleGroup
    #   resp.data.rule_group.rule_variables #=> Types::RuleVariables
    #   resp.data.rule_group.rule_variables.ip_sets #=> Hash<String, IPSet>
    #   resp.data.rule_group.rule_variables.ip_sets['key'] #=> Types::IPSet
    #   resp.data.rule_group.rule_variables.ip_sets['key'].definition #=> Array<String>
    #   resp.data.rule_group.rule_variables.ip_sets['key'].definition[0] #=> String
    #   resp.data.rule_group.rule_variables.port_sets #=> Hash<String, PortSet>
    #   resp.data.rule_group.rule_variables.port_sets['key'] #=> Types::PortSet
    #   resp.data.rule_group.rule_variables.port_sets['key'].definition #=> Array<String>
    #   resp.data.rule_group.rules_source #=> Types::RulesSource
    #   resp.data.rule_group.rules_source.rules_string #=> String
    #   resp.data.rule_group.rules_source.rules_source_list #=> Types::RulesSourceList
    #   resp.data.rule_group.rules_source.rules_source_list.targets #=> Array<String>
    #   resp.data.rule_group.rules_source.rules_source_list.targets[0] #=> String
    #   resp.data.rule_group.rules_source.rules_source_list.target_types #=> Array<String>
    #   resp.data.rule_group.rules_source.rules_source_list.target_types[0] #=> String, one of ["TLS_SNI", "HTTP_HOST"]
    #   resp.data.rule_group.rules_source.rules_source_list.generated_rules_type #=> String, one of ["ALLOWLIST", "DENYLIST"]
    #   resp.data.rule_group.rules_source.stateful_rules #=> Array<StatefulRule>
    #   resp.data.rule_group.rules_source.stateful_rules[0] #=> Types::StatefulRule
    #   resp.data.rule_group.rules_source.stateful_rules[0].action #=> String, one of ["PASS", "DROP", "ALERT"]
    #   resp.data.rule_group.rules_source.stateful_rules[0].header #=> Types::Header
    #   resp.data.rule_group.rules_source.stateful_rules[0].header.protocol #=> String, one of ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP"]
    #   resp.data.rule_group.rules_source.stateful_rules[0].header.source #=> String
    #   resp.data.rule_group.rules_source.stateful_rules[0].header.source_port #=> String
    #   resp.data.rule_group.rules_source.stateful_rules[0].header.direction #=> String, one of ["FORWARD", "ANY"]
    #   resp.data.rule_group.rules_source.stateful_rules[0].header.destination #=> String
    #   resp.data.rule_group.rules_source.stateful_rules[0].header.destination_port #=> String
    #   resp.data.rule_group.rules_source.stateful_rules[0].rule_options #=> Array<RuleOption>
    #   resp.data.rule_group.rules_source.stateful_rules[0].rule_options[0] #=> Types::RuleOption
    #   resp.data.rule_group.rules_source.stateful_rules[0].rule_options[0].keyword #=> String
    #   resp.data.rule_group.rules_source.stateful_rules[0].rule_options[0].settings #=> Array<String>
    #   resp.data.rule_group.rules_source.stateful_rules[0].rule_options[0].settings[0] #=> String
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions #=> Types::StatelessRulesAndCustomActions
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules #=> Array<StatelessRule>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0] #=> Types::StatelessRule
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition #=> Types::RuleDefinition
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes #=> Types::MatchAttributes
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources #=> Array<Address>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources[0] #=> Types::Address
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources[0].address_definition #=> String
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destinations #=> Array<Address>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports #=> Array<PortRange>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0] #=> Types::PortRange
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0].from_port #=> Integer
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0].to_port #=> Integer
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports #=> Array<PortRange>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.protocols #=> Array<Integer>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.protocols[0] #=> Integer
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags #=> Array<TCPFlagField>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0] #=> Types::TCPFlagField
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].flags #=> Array<String>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].flags[0] #=> String, one of ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].masks #=> Array<String>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.actions #=> Array<String>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.actions[0] #=> String
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].priority #=> Integer
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions #=> Array<CustomAction>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0] #=> Types::CustomAction
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_name #=> String
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition #=> Types::ActionDefinition
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition.publish_metric_action #=> Types::PublishMetricAction
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition.publish_metric_action.dimensions #=> Array<Dimension>
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition.publish_metric_action.dimensions[0] #=> Types::Dimension
    #   resp.data.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition.publish_metric_action.dimensions[0].value #=> String
    #   resp.data.rule_group.stateful_rule_options #=> Types::StatefulRuleOptions
    #   resp.data.rule_group.stateful_rule_options.rule_order #=> String, one of ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #   resp.data.rule_group_response #=> Types::RuleGroupResponse
    #   resp.data.rule_group_response.rule_group_arn #=> String
    #   resp.data.rule_group_response.rule_group_name #=> String
    #   resp.data.rule_group_response.rule_group_id #=> String
    #   resp.data.rule_group_response.description #=> String
    #   resp.data.rule_group_response.type #=> String, one of ["STATELESS", "STATEFUL"]
    #   resp.data.rule_group_response.capacity #=> Integer
    #   resp.data.rule_group_response.rule_group_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.rule_group_response.tags #=> Array<Tag>
    #   resp.data.rule_group_response.tags[0] #=> Types::Tag
    #   resp.data.rule_group_response.tags[0].key #=> String
    #   resp.data.rule_group_response.tags[0].value #=> String
    #   resp.data.rule_group_response.consumed_capacity #=> Integer
    #   resp.data.rule_group_response.number_of_associations #=> Integer
    #   resp.data.rule_group_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.data.rule_group_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.rule_group_response.source_metadata #=> Types::SourceMetadata
    #   resp.data.rule_group_response.source_metadata.source_arn #=> String
    #   resp.data.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.data.rule_group_response.sns_topic #=> String
    #   resp.data.rule_group_response.last_modified_time #=> Time
    #
    def describe_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRuleGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRuleGroup
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRuleGroup,
        stubs: @stubs,
        params_class: Params::DescribeRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>High-level information about a rule group, returned by operations like create and describe.
    #          You can use the information provided in the metadata to retrieve and manage a rule group.
    #          You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRuleGroupMetadataInput}.
    #
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :rule_group_arn
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    # @return [Types::DescribeRuleGroupMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_group_metadata(
    #     rule_group_name: 'RuleGroupName',
    #     rule_group_arn: 'RuleGroupArn',
    #     type: 'STATELESS' # accepts ["STATELESS", "STATEFUL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRuleGroupMetadataOutput
    #   resp.data.rule_group_arn #=> String
    #   resp.data.rule_group_name #=> String
    #   resp.data.description #=> String
    #   resp.data.type #=> String, one of ["STATELESS", "STATEFUL"]
    #   resp.data.capacity #=> Integer
    #   resp.data.stateful_rule_options #=> Types::StatefulRuleOptions
    #   resp.data.stateful_rule_options.rule_order #=> String, one of ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #   resp.data.last_modified_time #=> Time
    #
    def describe_rule_group_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRuleGroupMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRuleGroupMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRuleGroupMetadata
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeRuleGroupMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRuleGroupMetadata,
        stubs: @stubs,
        params_class: Params::DescribeRuleGroupMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rule_group_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified subnet associations from the firewall. This removes the
    #           firewall endpoints from the subnets and removes any network filtering protections that the endpoints
    #           were providing.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateSubnetsInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The unique identifiers for the subnets that you want to disassociate. </p>
    #
    # @return [Types::DisassociateSubnetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_subnets(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     subnet_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateSubnetsOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.subnet_mappings #=> Array<SubnetMapping>
    #   resp.data.subnet_mappings[0] #=> Types::SubnetMapping
    #   resp.data.subnet_mappings[0].subnet_id #=> String
    #   resp.data.update_token #=> String
    #
    def disassociate_subnets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateSubnetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateSubnetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateSubnets
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidOperationException, Errors::InvalidTokenException]),
        data_parser: Parsers::DisassociateSubnets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateSubnets,
        stubs: @stubs,
        params_class: Params::DisassociateSubnetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_subnets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the metadata for the firewall policies that you have defined. Depending on
    #          your setting for max results and the number of firewall policies, a single call might not
    #          return the full list. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallPoliciesInput}.
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListFirewallPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_policies(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallPoliciesOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewall_policies #=> Array<FirewallPolicyMetadata>
    #   resp.data.firewall_policies[0] #=> Types::FirewallPolicyMetadata
    #   resp.data.firewall_policies[0].name #=> String
    #   resp.data.firewall_policies[0].arn #=> String
    #
    def list_firewall_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewallPolicies
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServerError]),
        data_parser: Parsers::ListFirewallPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewallPolicies,
        stubs: @stubs,
        params_class: Params::ListFirewallPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewall_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the metadata for the firewalls that you have defined. If you provide VPC
    #          identifiers in your request, this returns only the firewalls for those VPCs.</p>
    #          <p>Depending on your setting for max results and the number of firewalls, a single call
    #          might not return the full list. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFirewallsInput}.
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    # @option params [Array<String>] :vpc_ids
    #   <p>The unique identifiers of the VPCs that you want Network Firewall to retrieve the firewalls
    #            for. Leave this blank to retrieve all firewalls that you have defined.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListFirewallsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewalls(
    #     next_token: 'NextToken',
    #     vpc_ids: [
    #       'member'
    #     ],
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFirewallsOutput
    #   resp.data.next_token #=> String
    #   resp.data.firewalls #=> Array<FirewallMetadata>
    #   resp.data.firewalls[0] #=> Types::FirewallMetadata
    #   resp.data.firewalls[0].firewall_name #=> String
    #   resp.data.firewalls[0].firewall_arn #=> String
    #
    def list_firewalls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFirewallsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFirewallsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFirewalls
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServerError]),
        data_parser: Parsers::ListFirewalls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFirewalls,
        stubs: @stubs,
        params_class: Params::ListFirewallsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_firewalls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the metadata for the rule groups that you have defined. Depending on your
    #          setting for max results and the number of rule groups, a single call might not return the
    #          full list. </p>
    #
    # @param [Hash] params
    #   See {Types::ListRuleGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @option params [String] :scope
    #   <p>The scope of the request. The default setting of <code>ACCOUNT</code> or a setting of
    #            <code>NULL</code> returns all of the rule groups in your account. A setting of
    #            <code>MANAGED</code> returns all available managed rule groups.</p>
    #
    # @option params [String] :managed_type
    #   <p>Indicates the general category of the Amazon Web Services managed rule group.</p>
    #
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains stateless rules. If it is stateful, it contains stateful rules.</p>
    #
    # @return [Types::ListRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     scope: 'MANAGED', # accepts ["MANAGED", "ACCOUNT"]
    #     managed_type: 'AWS_MANAGED_THREAT_SIGNATURES', # accepts ["AWS_MANAGED_THREAT_SIGNATURES", "AWS_MANAGED_DOMAIN_LISTS"]
    #     type: 'STATELESS' # accepts ["STATELESS", "STATEFUL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRuleGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.rule_groups #=> Array<RuleGroupMetadata>
    #   resp.data.rule_groups[0] #=> Types::RuleGroupMetadata
    #   resp.data.rule_groups[0].name #=> String
    #   resp.data.rule_groups[0].arn #=> String
    #
    def list_rule_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRuleGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRuleGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRuleGroups
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalServerError]),
        data_parser: Parsers::ListRuleGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRuleGroups,
        stubs: @stubs,
        params_class: Params::ListRuleGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rule_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the tags associated with the specified resource. Tags are key:value pairs that
    #          you can use to categorize and manage your resources, for purposes like billing. For
    #          example, you might set the tag key to "customer" and the value to the customer name or ID.
    #          You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through Network Firewall: firewalls, firewall
    #          policies, and rule groups. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
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

    # <p>Creates or updates an IAM policy for your rule group or firewall policy. Use this to share rule groups and firewall policies between accounts. This operation works in conjunction with the Amazon Web Services Resource Access Manager (RAM) service
    #            to manage resource sharing for Network Firewall. </p>
    #          <p>Use this operation to create or update a resource policy for your rule group or firewall policy. In the policy, you specify the accounts that you want to share the resource with and the operations that you want the accounts to be able to perform. </p>
    #          <p>When you add an account in the resource policy, you then run the following Resource Access Manager (RAM) operations to access and accept the shared rule group or firewall policy. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html">GetResourceShareInvitations</a> - Returns the Amazon Resource Names (ARNs) of the resource share invitations.  </p>
    #            </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html">AcceptResourceShareInvitation</a> - Accepts the share invitation for a specified resource share. </p>
    #            </li>
    #          </ul>
    #          <p>For additional information about resource sharing using RAM, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/what-is.html">Resource Access Manager User Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share rule groups and firewall policies with.</p>
    #
    # @option params [String] :policy
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
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     resource_arn: 'ResourceArn', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourcePolicyException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified resource. Tags are key:value pairs that you can
    #          use to categorize and manage your resources, for purposes like billing. For example, you
    #          might set the tag key to "customer" and the value to the customer name or ID. You can
    #          specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through Network Firewall: firewalls, firewall
    #          policies, and rule groups. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
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

    # <p>Removes the tags with the specified keys from the specified resource. Tags are key:value
    #          pairs that you can use to categorize and manage your resources, for purposes like billing.
    #          For example, you might set the tag key to "customer" and the value to the customer name or
    #          ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can manage tags for the Amazon Web Services resources that you manage through Network Firewall:
    #          firewalls, firewall policies, and rule groups. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p></p>
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError]),
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

    # <p>Modifies the flag, <code>DeleteProtection</code>, which indicates whether it is possible
    #          to delete the firewall. If the flag is set to <code>TRUE</code>, the firewall is protected
    #          against deletion. This setting helps protect against accidentally deleting a firewall
    #          that's in use. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallDeleteProtectionInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [Boolean] :delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #
    # @return [Types::UpdateFirewallDeleteProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_delete_protection(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     delete_protection: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallDeleteProtectionOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.delete_protection #=> Boolean
    #   resp.data.update_token #=> String
    #
    def update_firewall_delete_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallDeleteProtectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallDeleteProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallDeleteProtection
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException, Errors::ResourceOwnerCheckException]),
        data_parser: Parsers::UpdateFirewallDeleteProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallDeleteProtection,
        stubs: @stubs,
        params_class: Params::UpdateFirewallDeleteProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_delete_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the description for the specified firewall. Use the description to help you
    #          identify the firewall when you're working with it. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallDescriptionInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :description
    #   <p>The new description for the firewall. If you omit this setting, Network Firewall removes
    #            the description for the firewall.</p>
    #
    # @return [Types::UpdateFirewallDescriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_description(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallDescriptionOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.description #=> String
    #   resp.data.update_token #=> String
    #
    def update_firewall_description(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallDescriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallDescriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallDescription
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException]),
        data_parser: Parsers::UpdateFirewallDescription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallDescription,
        stubs: @stubs,
        params_class: Params::UpdateFirewallDescriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_description
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A complex type that contains settings for encryption of your firewall resources.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallEncryptionConfigurationInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #
    # @return [Types::UpdateFirewallEncryptionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_encryption_configuration(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     encryption_configuration: {
    #       key_id: 'KeyId',
    #       type: 'CUSTOMER_KMS' # required - accepts ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallEncryptionConfigurationOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.update_token #=> String
    #   resp.data.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.encryption_configuration.key_id #=> String
    #   resp.data.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #
    def update_firewall_encryption_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallEncryptionConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallEncryptionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallEncryptionConfiguration
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException, Errors::ResourceOwnerCheckException]),
        data_parser: Parsers::UpdateFirewallEncryptionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallEncryptionConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateFirewallEncryptionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_encryption_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the properties of the specified firewall policy.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallPolicyInput}.
    #
    # @option params [String] :update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [FirewallPolicy] :firewall_policy
    #   <p>The updated firewall policy to use for the firewall. </p>
    #
    # @option params [String] :description
    #   <p>A description of the firewall policy.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    #
    # @return [Types::UpdateFirewallPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_policy(
    #     update_token: 'UpdateToken', # required
    #     firewall_policy_arn: 'FirewallPolicyArn',
    #     firewall_policy_name: 'FirewallPolicyName',
    #     firewall_policy: {
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: 'ResourceArn', # required
    #           priority: 1 # required
    #         }
    #       ],
    #       stateless_default_actions: [
    #         'member'
    #       ], # required
    #       stateless_custom_actions: [
    #         {
    #           action_name: 'ActionName', # required
    #           action_definition: {
    #             publish_metric_action: {
    #               dimensions: [
    #                 {
    #                   value: 'Value' # required
    #                 }
    #               ] # required
    #             }
    #           } # required
    #         }
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: 'ResourceArn', # required
    #           priority: 1,
    #           override: {
    #             action: 'DROP_TO_ALERT' # accepts ["DROP_TO_ALERT"]
    #           }
    #         }
    #       ],
    #       stateful_default_actions: [
    #         'member'
    #       ],
    #       stateful_engine_options: {
    #         rule_order: 'DEFAULT_ACTION_ORDER' # accepts ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     }, # required
    #     description: 'Description',
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: 'KeyId',
    #       type: 'CUSTOMER_KMS' # required - accepts ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallPolicyOutput
    #   resp.data.update_token #=> String
    #   resp.data.firewall_policy_response #=> Types::FirewallPolicyResponse
    #   resp.data.firewall_policy_response.firewall_policy_name #=> String
    #   resp.data.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.data.firewall_policy_response.firewall_policy_id #=> String
    #   resp.data.firewall_policy_response.description #=> String
    #   resp.data.firewall_policy_response.firewall_policy_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.firewall_policy_response.tags #=> Array<Tag>
    #   resp.data.firewall_policy_response.tags[0] #=> Types::Tag
    #   resp.data.firewall_policy_response.tags[0].key #=> String
    #   resp.data.firewall_policy_response.tags[0].value #=> String
    #   resp.data.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.data.firewall_policy_response.number_of_associations #=> Integer
    #   resp.data.firewall_policy_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.data.firewall_policy_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.firewall_policy_response.last_modified_time #=> Time
    #
    def update_firewall_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallPolicy
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException]),
        data_parser: Parsers::UpdateFirewallPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallPolicy,
        stubs: @stubs,
        params_class: Params::UpdateFirewallPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the flag, <code>ChangeProtection</code>, which indicates whether it
    #          is possible to change the firewall. If the flag is set to <code>TRUE</code>, the firewall is protected
    #          from changes. This setting helps protect against accidentally changing a firewall that's in use.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFirewallPolicyChangeProtectionInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [Boolean] :firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    # @return [Types::UpdateFirewallPolicyChangeProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_policy_change_protection(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     firewall_policy_change_protection: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFirewallPolicyChangeProtectionOutput
    #   resp.data.update_token #=> String
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.firewall_policy_change_protection #=> Boolean
    #
    def update_firewall_policy_change_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFirewallPolicyChangeProtectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFirewallPolicyChangeProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFirewallPolicyChangeProtection
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException, Errors::ResourceOwnerCheckException]),
        data_parser: Parsers::UpdateFirewallPolicyChangeProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFirewallPolicyChangeProtection,
        stubs: @stubs,
        params_class: Params::UpdateFirewallPolicyChangeProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_firewall_policy_change_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the logging configuration for the specified firewall. </p>
    #          <p>To change the logging configuration, retrieve the <a>LoggingConfiguration</a> by calling <a>DescribeLoggingConfiguration</a>, then change it and provide
    #          the modified object to this update call. You must change the logging configuration one
    #             <a>LogDestinationConfig</a> at a time inside the retrieved <a>LoggingConfiguration</a> object. </p>
    #          <p>You can perform only one of the following actions in any call to
    #             <code>UpdateLoggingConfiguration</code>: </p>
    #          <ul>
    #             <li>
    #                <p>Create a new log destination object by adding a single
    #                   <code>LogDestinationConfig</code> array element to
    #                   <code>LogDestinationConfigs</code>.</p>
    #             </li>
    #             <li>
    #                <p>Delete a log destination object by removing a single
    #                   <code>LogDestinationConfig</code> array element from
    #                   <code>LogDestinationConfigs</code>.</p>
    #             </li>
    #             <li>
    #                <p>Change the <code>LogDestination</code> setting in a single
    #                   <code>LogDestinationConfig</code> array element.</p>
    #             </li>
    #          </ul>
    #          <p>You can't change the <code>LogDestinationType</code> or <code>LogType</code> in a
    #             <code>LogDestinationConfig</code>. To change these settings, delete the existing
    #             <code>LogDestinationConfig</code> object and create a new one, using two separate calls
    #          to this update operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLoggingConfigurationInput}.
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [LoggingConfiguration] :logging_configuration
    #   <p>Defines how Network Firewall performs logging for a firewall. If you omit this setting,
    #            Network Firewall disables logging for the firewall.</p>
    #
    # @return [Types::UpdateLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logging_configuration(
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     logging_configuration: {
    #       log_destination_configs: [
    #         {
    #           log_type: 'ALERT', # required - accepts ["ALERT", "FLOW"]
    #           log_destination_type: 'S3', # required - accepts ["S3", "CloudWatchLogs", "KinesisDataFirehose"]
    #           log_destination: {
    #             'key' => 'value'
    #           } # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLoggingConfigurationOutput
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.log_destination_configs #=> Array<LogDestinationConfig>
    #   resp.data.logging_configuration.log_destination_configs[0] #=> Types::LogDestinationConfig
    #   resp.data.logging_configuration.log_destination_configs[0].log_type #=> String, one of ["ALERT", "FLOW"]
    #   resp.data.logging_configuration.log_destination_configs[0].log_destination_type #=> String, one of ["S3", "CloudWatchLogs", "KinesisDataFirehose"]
    #   resp.data.logging_configuration.log_destination_configs[0].log_destination #=> Hash<String, String>
    #   resp.data.logging_configuration.log_destination_configs[0].log_destination['key'] #=> String
    #
    def update_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLoggingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLoggingConfiguration
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LogDestinationPermissionException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException]),
        data_parser: Parsers::UpdateLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the rule settings for the specified rule group. You use a rule group by
    #          reference in one or more firewall policies. When you modify a rule group, you modify all
    #          firewall policies that use the rule group. </p>
    #          <p>To update a rule group, first call <a>DescribeRuleGroup</a> to retrieve the
    #          current <a>RuleGroup</a> object, update the object as needed, and then provide
    #          the updated object to this call. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleGroupInput}.
    #
    # @option params [String] :update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #             <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [RuleGroup] :rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    #
    # @option params [String] :rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    #
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #              <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #
    # @option params [String] :description
    #   <p>A description of the rule group. </p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    #
    # @option params [SourceMetadata] :source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    #
    # @return [Types::UpdateRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_group(
    #     update_token: 'UpdateToken', # required
    #     rule_group_arn: 'RuleGroupArn',
    #     rule_group_name: 'RuleGroupName',
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           'key' => {
    #             definition: [
    #               'member'
    #             ] # required
    #           }
    #         },
    #         port_sets: {
    #           'key' => {
    #           }
    #         }
    #       },
    #       rules_source: {
    #         rules_string: 'RulesString',
    #         rules_source_list: {
    #           targets: [
    #             'member'
    #           ], # required
    #           target_types: [
    #             'TLS_SNI' # accepts ["TLS_SNI", "HTTP_HOST"]
    #           ], # required
    #           generated_rules_type: 'ALLOWLIST' # required - accepts ["ALLOWLIST", "DENYLIST"]
    #         },
    #         stateful_rules: [
    #           {
    #             action: 'PASS', # required - accepts ["PASS", "DROP", "ALERT"]
    #             header: {
    #               protocol: 'IP', # required - accepts ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP"]
    #               source: 'Source', # required
    #               source_port: 'SourcePort', # required
    #               direction: 'FORWARD', # required - accepts ["FORWARD", "ANY"]
    #               destination: 'Destination', # required
    #               destination_port: 'DestinationPort' # required
    #             }, # required
    #             rule_options: [
    #               {
    #                 keyword: 'Keyword', # required
    #                 settings: [
    #                   'member'
    #                 ]
    #               }
    #             ] # required
    #           }
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [
    #             {
    #               rule_definition: {
    #                 match_attributes: {
    #                   sources: [
    #                     {
    #                       address_definition: 'AddressDefinition' # required
    #                     }
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1 # required
    #                     }
    #                   ],
    #                   protocols: [
    #                     1
    #                   ],
    #                   tcp_flags: [
    #                     {
    #                       flags: [
    #                         'FIN' # accepts ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]
    #                       ], # required
    #                     }
    #                   ]
    #                 }, # required
    #                 actions: [
    #                   'member'
    #                 ] # required
    #               }, # required
    #               priority: 1 # required
    #             }
    #           ], # required
    #           custom_actions: [
    #             {
    #               action_name: 'ActionName', # required
    #               action_definition: {
    #                 publish_metric_action: {
    #                   dimensions: [
    #                     {
    #                       value: 'Value' # required
    #                     }
    #                   ] # required
    #                 }
    #               } # required
    #             }
    #           ]
    #         }
    #       }, # required
    #       stateful_rule_options: {
    #         rule_order: 'DEFAULT_ACTION_ORDER' # accepts ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     },
    #     rules: 'Rules',
    #     type: 'STATELESS', # accepts ["STATELESS", "STATEFUL"]
    #     description: 'Description',
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: 'KeyId',
    #       type: 'CUSTOMER_KMS' # required - accepts ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #     },
    #     source_metadata: {
    #       source_arn: 'SourceArn',
    #       source_update_token: 'SourceUpdateToken'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleGroupOutput
    #   resp.data.update_token #=> String
    #   resp.data.rule_group_response #=> Types::RuleGroupResponse
    #   resp.data.rule_group_response.rule_group_arn #=> String
    #   resp.data.rule_group_response.rule_group_name #=> String
    #   resp.data.rule_group_response.rule_group_id #=> String
    #   resp.data.rule_group_response.description #=> String
    #   resp.data.rule_group_response.type #=> String, one of ["STATELESS", "STATEFUL"]
    #   resp.data.rule_group_response.capacity #=> Integer
    #   resp.data.rule_group_response.rule_group_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.rule_group_response.tags #=> Array<Tag>
    #   resp.data.rule_group_response.tags[0] #=> Types::Tag
    #   resp.data.rule_group_response.tags[0].key #=> String
    #   resp.data.rule_group_response.tags[0].value #=> String
    #   resp.data.rule_group_response.consumed_capacity #=> Integer
    #   resp.data.rule_group_response.number_of_associations #=> Integer
    #   resp.data.rule_group_response.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.data.rule_group_response.encryption_configuration.type #=> String, one of ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"]
    #   resp.data.rule_group_response.source_metadata #=> Types::SourceMetadata
    #   resp.data.rule_group_response.source_metadata.source_arn #=> String
    #   resp.data.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.data.rule_group_response.sns_topic #=> String
    #   resp.data.rule_group_response.last_modified_time #=> Time
    #
    def update_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuleGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRuleGroup
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException]),
        data_parser: Parsers::UpdateRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRuleGroup,
        stubs: @stubs,
        params_class: Params::UpdateRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p></p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSubnetChangeProtectionInput}.
    #
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #              <p>You must specify the ARN or the name, and you can specify both. </p>
    #
    # @option params [Boolean] :subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #
    # @return [Types::UpdateSubnetChangeProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subnet_change_protection(
    #     update_token: 'UpdateToken',
    #     firewall_arn: 'FirewallArn',
    #     firewall_name: 'FirewallName',
    #     subnet_change_protection: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSubnetChangeProtectionOutput
    #   resp.data.update_token #=> String
    #   resp.data.firewall_arn #=> String
    #   resp.data.firewall_name #=> String
    #   resp.data.subnet_change_protection #=> Boolean
    #
    def update_subnet_change_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSubnetChangeProtectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSubnetChangeProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSubnetChangeProtection
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServerError, Errors::InvalidTokenException, Errors::ResourceOwnerCheckException]),
        data_parser: Parsers::UpdateSubnetChangeProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSubnetChangeProtection,
        stubs: @stubs,
        params_class: Params::UpdateSubnetChangeProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_subnet_change_protection
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
