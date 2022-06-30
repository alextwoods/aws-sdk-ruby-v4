# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::GlobalAccelerator
  # An API client for GlobalAccelerator_V20180706
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Global Accelerator</fullname>
  # 		       <p>This is the <i>AWS Global Accelerator API Reference</i>. This guide is for developers who need detailed information about
  # 			AWS Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the
  # 			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html">AWS Global Accelerator Developer Guide</a>.</p>
  #
  # 		       <p>AWS Global Accelerator is a service in which you create <i>accelerators</i> to improve the performance
  # 			of your applications for local and global users. Depending on the type of accelerator you choose, you can
  # 			gain additional benefits. </p>
  # 		       <ul>
  #             <li>
  #                <p>By using a standard accelerator, you can improve availability of your internet applications
  # 				that are used by a global audience. With a standard accelerator, Global Accelerator directs traffic to optimal endpoints over the AWS
  # 				global network. </p>
  #             </li>
  #             <li>
  #                <p>For other scenarios, you might choose a custom routing accelerator. With a custom routing accelerator, you
  # 				can use application logic to directly map one or more users to a specific endpoint among many endpoints.</p>
  #             </li>
  #          </ul>
  # 		       <important>
  # 			         <p>Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
  # 				US West (Oregon) Region to create or update accelerators.</p>
  # 		       </important>
  # 		       <p>By default, Global Accelerator provides you with two static IP addresses that you associate with your accelerator. With
  # 			a standard accelerator, instead of using the
  # 			IP addresses that Global Accelerator provides, you can configure these entry points to be IPv4 addresses from your own IP address ranges
  # 			that you bring to Global Accelerator. The static IP addresses are anycast from the AWS edge network. For a standard accelerator,
  # 			they distribute incoming application traffic across multiple endpoint resources in multiple AWS Regions, which increases
  # 			the availability of your applications. Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers,
  # 			Amazon EC2 instances, or Elastic IP addresses that are located in one AWS Region or multiple Regions. For custom routing
  # 			accelerators, you map traffic that arrives to the static IP addresses to specific Amazon EC2 servers in endpoints that
  # 			are virtual private cloud (VPC) subnets.</p>
  # 		
  # 		       <important>
  #             <p>The static IP addresses remain assigned to your accelerator for as long as it exists, even if you
  # 				disable the accelerator and it no longer accepts or routes traffic. However, when you
  # 					<i>delete</i> an accelerator, you lose the static IP addresses that
  # 				are assigned to it, so you can no longer route traffic by using them. You can use
  # 				IAM policies like tag-based permissions with Global Accelerator to limit the users who have
  # 				permissions to delete an accelerator. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html">Tag-based policies</a>.</p>
  #          </important>
  # 		       <p>For standard accelerators, Global Accelerator uses the AWS global network to route traffic to the optimal regional endpoint based
  # 			on health, client location, and policies that you configure. The service reacts instantly to
  # 			changes in health or configuration to ensure that internet traffic from clients is always
  # 			directed to healthy endpoints.</p>
  # 		
  # 		       <p>For a list of the AWS Regions where Global Accelerator and other services are currently supported, see the
  # 			<a href="https://docs.aws.amazon.com/about-aws/global-infrastructure/regional-product-services/">AWS
  # 				Region Table</a>.</p>
  #
  # 		       <p>AWS Global Accelerator includes the following components:</p>
  # 		       <dl>
  #             <dt>Static IP addresses</dt>
  #             <dd>
  #                <p>Global Accelerator provides you with a set of two static IP addresses that are anycast from the AWS edge
  # 					network. If you bring your own IP address range to AWS (BYOIP) to use with a standard accelerator, you
  # 					can instead assign IP addresses from your own pool to use with your accelerator. For more information,
  # 					see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">
  # 						Bring your own IP addresses (BYOIP) in AWS Global Accelerator</a>.</p>
  # 					          <p>The IP addresses serve as single fixed entry points for your clients. If you already have Elastic
  # 						Load Balancing load balancers, Amazon EC2 instances, or Elastic IP address resources set up for your applications,
  # 						you can easily add those to a standard accelerator in Global Accelerator. This allows Global Accelerator to use static IP addresses
  # 						to access the resources.</p>
  # 					          <p>The static IP addresses remain assigned to your accelerator for as long as it exists, even
  # 						if you disable the accelerator and it no longer accepts or routes traffic.
  # 						However, when you <i>delete</i> an accelerator, you lose the
  # 						static IP addresses that are assigned to it, so you can no longer route
  # 						traffic by using them. You can use IAM policies like tag-based permissions
  # 						with Global Accelerator to delete an accelerator. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html">Tag-based policies</a>.</p>
  # 				        </dd>
  #             <dt>Accelerator</dt>
  #             <dd>
  #                <p>An accelerator directs traffic to endpoints over the AWS global network to improve the
  # 					performance of your internet applications. Each accelerator includes one or more listeners.</p>
  # 					          <p>There are two types of accelerators:</p>
  # 					          <ul>
  #                   <li>
  #                      <p>A <i>standard</i> accelerator directs traffic to the optimal AWS endpoint based
  # 							on several factors, including the user’s location, the health of the endpoint, and the endpoint weights
  # 							that you configure. This improves the availability and performance of your applications.
  # 							Endpoints can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP addresses.</p>
  #                   </li>
  #                   <li>
  #                      <p>A <i>custom routing</i> accelerator directs traffic to one of possibly thousands of
  # 								Amazon EC2 instances running in a single or multiple virtual private
  # 								clouds (VPCs). With custom routing, listener ports are mapped to
  # 								statically associate port ranges with VPC subnets, which
  # 								allows Global Accelerator to determine an EC2 instance IP address at the time of
  # 								connection. By default, all port mapping destinations in a VPC
  # 								subnet can't receive traffic. You can choose to configure all
  # 								destinations in the subnet to receive traffic, or to specify
  # 								individual port mappings that can receive traffic.</p>
  #                   </li>
  #                </ul>
  # 					          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-accelerator-types.html">Types of accelerators</a>.</p>
  # 				        </dd>
  #             <dt>DNS name</dt>
  #             <dd>
  #                <p>Global Accelerator assigns each accelerator a default Domain Name System (DNS) name, similar to
  # 					<code>a1234567890abcdef.awsglobalaccelerator.com</code>, that points to
  # 					the static IP addresses that Global Accelerator assigns to you or that you choose from your
  # 					own IP address range. Depending on the use
  # 					case, you can use your accelerator's static IP addresses or DNS name to
  # 					route traffic to your accelerator, or set up DNS records to route traffic using
  # 					your own custom domain name.</p>
  # 				        </dd>
  #             <dt>Network zone</dt>
  #             <dd>
  #                <p>A network zone services the static IP addresses for your accelerator from a unique IP subnet. Similar to an
  # 					AWS Availability Zone, a network zone is an isolated unit with its own set of physical infrastructure.
  # 					When you configure an accelerator, by default, Global Accelerator allocates two IPv4 addresses for it. If one IP address from a
  # 					network zone becomes unavailable due to IP address blocking by certain client networks, or network
  # 					disruptions, then client applications can retry on the healthy static IP address from the other isolated
  # 					network zone.</p>
  # 				        </dd>
  #             <dt>Listener</dt>
  #             <dd>
  #                <p>A listener processes inbound connections from clients to Global Accelerator, based on the port (or port range)
  # 					and protocol (or protocols) that you configure. A listener can be configured for TCP, UDP, or both TCP and UDP protocols. Each
  # 					listener has one or more endpoint groups associated with it, and traffic is forwarded
  # 					to endpoints in one of the groups. You associate endpoint groups with listeners by specifying the Regions that you
  # 					want to distribute traffic to. With a standard accelerator, traffic is distributed to optimal endpoints within the endpoint
  # 					groups associated with a listener.</p>
  #             </dd>
  #             <dt>Endpoint group</dt>
  #             <dd>
  #                <p>Each endpoint group is associated with a specific AWS Region. Endpoint groups include one or
  # 					more endpoints in the Region. With a standard accelerator, you can increase or reduce the percentage of
  # 					traffic that would be otherwise directed to an endpoint group by adjusting a
  # 					setting called a <i>traffic dial</i>. The traffic dial lets
  # 					you easily do performance testing or blue/green deployment testing, for example, for new
  # 					releases across different AWS Regions. </p>
  # 				        </dd>
  #             <dt>Endpoint</dt>
  #             <dd>
  #                <p>An endpoint is a resource that Global Accelerator directs traffic to.</p>
  # 					          <p>Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP
  # 						addresses. An Application Load Balancer endpoint can be internet-facing or internal. Traffic for
  # 						standard accelerators is routed to endpoints based on the health of the
  # 						endpoint along with configuration options that you choose, such as endpoint
  # 						weights. For each endpoint, you can configure weights, which are numbers
  # 						that you can use to specify the proportion of traffic to route to each one.
  # 						This can be useful, for example, to do performance testing within a
  # 						Region.</p>
  # 					          <p>Endpoints for custom routing accelerators are virtual private cloud (VPC) subnets with one
  # 						or many EC2 instances.</p>
  # 				        </dd>
  #          </dl>
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
    def initialize(config = AWS::SDK::GlobalAccelerator::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associate a virtual private cloud (VPC) subnet endpoint with your custom routing accelerator.</p>
    # 	        <p>The listener port range must be large enough to support the number of IP addresses that can be
    # 		specified in your subnet. The number of ports required is: subnet size times the number
    # 		of ports per destination EC2 instances. For example, a subnet defined as /24 requires a listener
    # 		port range of at least 255 ports. </p>
    # 	        <p>Note: You must have enough remaining listener ports available to
    # 		map to the subnet ports, or the call will fail with a LimitExceededException.</p>
    # 	        <p>By default, all destinations in a subnet in a custom routing accelerator cannot receive traffic. To enable all
    # 			destinations to receive traffic, or to specify individual port mappings that can receive
    # 			traffic, see the <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html">
    # 				AllowCustomRoutingTraffic</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::AddCustomRoutingEndpointsInput}.
    #
    # @option params [Array<CustomRoutingEndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects to add to a custom routing accelerator.</p>
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>
    #
    # @return [Types::AddCustomRoutingEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_custom_routing_endpoints(
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: 'EndpointId'
    #       }
    #     ], # required
    #     endpoint_group_arn: 'EndpointGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddCustomRoutingEndpointsOutput
    #   resp.data.endpoint_descriptions #=> Array<CustomRoutingEndpointDescription>
    #   resp.data.endpoint_descriptions[0] #=> Types::CustomRoutingEndpointDescription
    #   resp.data.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.data.endpoint_group_arn #=> String
    #
    def add_custom_routing_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddCustomRoutingEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddCustomRoutingEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddCustomRoutingEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::EndpointGroupNotFoundException, Errors::EndpointAlreadyExistsException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::AddCustomRoutingEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddCustomRoutingEndpoints,
        stubs: @stubs,
        params_class: Params::AddCustomRoutingEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_custom_routing_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Advertises an IPv4 address range that is provisioned for use with your AWS resources
    # 			through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to
    # 			the specified addresses starts routing to AWS because of propagation delays. </p>
    # 		       <p>To stop advertising the BYOIP address range, use <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html">
    # 			WithdrawByoipCidr</a>.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    # 			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AdvertiseByoipCidrInput}.
    #
    # @option params [String] :cidr
    #   <p>The address range, in CIDR notation. This must be the exact range that you provisioned.
    #   			You can't advertise only a portion of the provisioned range.</p>
    #
    # @return [Types::AdvertiseByoipCidrOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.advertise_byoip_cidr(
    #     cidr: 'Cidr' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AdvertiseByoipCidrOutput
    #   resp.data.byoip_cidr #=> Types::ByoipCidr
    #   resp.data.byoip_cidr.cidr #=> String
    #   resp.data.byoip_cidr.state #=> String, one of ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"]
    #   resp.data.byoip_cidr.events #=> Array<ByoipCidrEvent>
    #   resp.data.byoip_cidr.events[0] #=> Types::ByoipCidrEvent
    #   resp.data.byoip_cidr.events[0].message #=> String
    #   resp.data.byoip_cidr.events[0].timestamp #=> Time
    #
    def advertise_byoip_cidr(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AdvertiseByoipCidrInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AdvertiseByoipCidrInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AdvertiseByoipCidr
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ByoipCidrNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::AccessDeniedException, Errors::IncorrectCidrStateException]),
        data_parser: Parsers::AdvertiseByoipCidr
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AdvertiseByoipCidr,
        stubs: @stubs,
        params_class: Params::AdvertiseByoipCidrOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :advertise_byoip_cidr
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that can receive traffic
    # 			for a custom routing accelerator. You can allow traffic to all destinations in the subnet endpoint, or allow traffic to a
    # 			specified list of destination IP addresses and ports in the subnet. Note that you cannot specify IP addresses or ports
    # 			outside of the range that you configured for the endpoint group.</p>
    # 		       <p>After you make changes, you can verify that the updates are complete by checking the status of your
    # 			accelerator: the status changes from IN_PROGRESS to DEPLOYED.</p>
    #
    # @param [Hash] params
    #   See {Types::AllowCustomRoutingTrafficInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    #
    # @option params [Array<String>] :destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive
    #   			traffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>
    #   		       <p>
    #               <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is
    #   		not specified.</p>
    #
    # @option params [Array<Integer>] :destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>
    #
    # @option params [Boolean] :allow_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic
    #   			from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #   		       <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #   		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed
    #   			to receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #   		       <p>The default value is FALSE.</p>
    #
    # @return [Types::AllowCustomRoutingTrafficOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allow_custom_routing_traffic(
    #     endpoint_group_arn: 'EndpointGroupArn', # required
    #     endpoint_id: 'EndpointId', # required
    #     destination_addresses: [
    #       'member'
    #     ],
    #     destination_ports: [
    #       1
    #     ],
    #     allow_all_traffic_to_endpoint: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AllowCustomRoutingTrafficOutput
    #
    def allow_custom_routing_traffic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AllowCustomRoutingTrafficInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AllowCustomRoutingTrafficInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AllowCustomRoutingTraffic
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::AllowCustomRoutingTraffic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AllowCustomRoutingTraffic,
        stubs: @stubs,
        params_class: Params::AllowCustomRoutingTrafficOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :allow_custom_routing_traffic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic
    # 			to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. </p>	
    # 		       <important>
    # 			         <p>Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
    # 				US West (Oregon) Region to create or update accelerators.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::CreateAcceleratorInput}.
    #
    # @option params [String] :name
    #   <p>The name of an accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    # @option params [Array<String>] :ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose IP addresses
    #   			from your own pool to use for the accelerator's static IP addresses when you create an accelerator. You can
    #   			specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #   		       <p>Only one IP address from each of your IP address ranges can be used for each accelerator. If you specify only
    #   			one IP address from your IP address range, Global Accelerator assigns a second static IP address for the
    #   			accelerator from the AWS IP address pool.</p>
    #   		       <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new
    #   			accelerator with the new addresses.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    #   			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   		       <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of an accelerator.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Create tags for an accelerator.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   			in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @return [Types::CreateAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_accelerator(
    #     name: 'Name', # required
    #     ip_address_type: 'IPV4', # accepts ["IPV4"]
    #     ip_addresses: [
    #       'member'
    #     ],
    #     enabled: false,
    #     idempotency_token: 'IdempotencyToken', # required
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
    #   resp.data #=> Types::CreateAcceleratorOutput
    #   resp.data.accelerator #=> Types::Accelerator
    #   resp.data.accelerator.accelerator_arn #=> String
    #   resp.data.accelerator.name #=> String
    #   resp.data.accelerator.ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerator.enabled #=> Boolean
    #   resp.data.accelerator.ip_sets #=> Array<IpSet>
    #   resp.data.accelerator.ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerator.ip_sets[0].ip_family #=> String
    #   resp.data.accelerator.ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerator.dns_name #=> String
    #   resp.data.accelerator.status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerator.created_time #=> Time
    #   resp.data.accelerator.last_modified_time #=> Time
    #
    def create_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccelerator,
        stubs: @stubs,
        params_class: Params::CreateAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a custom routing accelerator. A custom routing accelerator directs traffic to one of possibly thousands
    # 		of Amazon EC2 instance destinations running in a single or multiple virtual private clouds (VPC) subnet endpoints.</p>
    # 	        <p>Be aware that, by default, all destination EC2 instances in a VPC subnet endpoint cannot receive
    # 			traffic. To enable all destinations to receive traffic, or to specify individual port
    # 			mappings that can receive traffic, see the <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html">
    # 				AllowCustomRoutingTraffic</a> operation.</p>
    # 	        <important>
    # 		          <p>Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
    # 			US West (Oregon) Region to create or update accelerators.</p>
    # 	        </important>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomRoutingAcceleratorInput}.
    #
    # @option params [String] :name
    #   <p>The name of a custom routing accelerator. The name can have a maximum of 64 characters, must contain
    #   		only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    # @option params [Array<String>] :ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose IP addresses
    #   				from your own pool to use for the accelerator's static IP addresses when you create an accelerator. You can
    #   				specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #   			      <p>Only one IP address from each of your IP address ranges can be used for each accelerator. If you specify only
    #   				one IP address from your IP address range, Global Accelerator assigns a second static IP address for the
    #   				accelerator from the AWS IP address pool.</p>
    #   			      <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new
    #   				accelerator with the new addresses.</p>
    #   			      <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring
    #   				your own IP addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   	        <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that
    #   			is, the uniqueness—of the request.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Create tags for an accelerator.</p>
    #   	        <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   		in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @return [Types::CreateCustomRoutingAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_routing_accelerator(
    #     name: 'Name', # required
    #     ip_address_type: 'IPV4', # accepts ["IPV4"]
    #     ip_addresses: [
    #       'member'
    #     ],
    #     enabled: false,
    #     idempotency_token: 'IdempotencyToken', # required
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
    #   resp.data #=> Types::CreateCustomRoutingAcceleratorOutput
    #   resp.data.accelerator #=> Types::CustomRoutingAccelerator
    #   resp.data.accelerator.accelerator_arn #=> String
    #   resp.data.accelerator.name #=> String
    #   resp.data.accelerator.ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerator.enabled #=> Boolean
    #   resp.data.accelerator.ip_sets #=> Array<IpSet>
    #   resp.data.accelerator.ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerator.ip_sets[0].ip_family #=> String
    #   resp.data.accelerator.ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerator.dns_name #=> String
    #   resp.data.accelerator.status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerator.created_time #=> Time
    #   resp.data.accelerator.last_modified_time #=> Time
    #
    def create_custom_routing_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomRoutingAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomRoutingAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomRoutingAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateCustomRoutingAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomRoutingAccelerator,
        stubs: @stubs,
        params_class: Params::CreateCustomRoutingAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_routing_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an endpoint group for the specified listener for a custom routing accelerator.
    # 		An endpoint group is a collection of endpoints in one AWS
    # 		Region. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomRoutingEndpointGroupInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener for a custom routing endpoint.</p>
    #
    # @option params [String] :endpoint_group_region
    #   <p>The AWS Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   		specific Region.</p>
    #
    # @option params [Array<CustomRoutingDestinationConfiguration>] :destination_configurations
    #   <p>Sets the port range and protocol for all endpoints (virtual private cloud subnets) in a custom routing endpoint group to accept
    #   		client traffic on.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    #
    # @return [Types::CreateCustomRoutingEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_routing_endpoint_group(
    #     listener_arn: 'ListenerArn', # required
    #     endpoint_group_region: 'EndpointGroupRegion', # required
    #     destination_configurations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         protocols: [
    #           'TCP' # accepts ["TCP", "UDP"]
    #         ] # required
    #       }
    #     ], # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomRoutingEndpointGroupOutput
    #   resp.data.endpoint_group #=> Types::CustomRoutingEndpointGroup
    #   resp.data.endpoint_group.endpoint_group_arn #=> String
    #   resp.data.endpoint_group.endpoint_group_region #=> String
    #   resp.data.endpoint_group.destination_descriptions #=> Array<CustomRoutingDestinationDescription>
    #   resp.data.endpoint_group.destination_descriptions[0] #=> Types::CustomRoutingDestinationDescription
    #   resp.data.endpoint_group.destination_descriptions[0].from_port #=> Integer
    #   resp.data.endpoint_group.destination_descriptions[0].to_port #=> Integer
    #   resp.data.endpoint_group.destination_descriptions[0].protocols #=> Array<String>
    #   resp.data.endpoint_group.destination_descriptions[0].protocols[0] #=> String, one of ["TCP", "UDP"]
    #   resp.data.endpoint_group.endpoint_descriptions #=> Array<CustomRoutingEndpointDescription>
    #   resp.data.endpoint_group.endpoint_descriptions[0] #=> Types::CustomRoutingEndpointDescription
    #   resp.data.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #
    def create_custom_routing_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomRoutingEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomRoutingEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomRoutingEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPortRangeException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::EndpointGroupAlreadyExistsException, Errors::AccessDeniedException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::CreateCustomRoutingEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomRoutingEndpointGroup,
        stubs: @stubs,
        params_class: Params::CreateCustomRoutingEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_routing_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a listener to process inbound connections from clients to a custom routing accelerator.
    # 			Connections arrive to assigned static IP addresses on the port range that you specify. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomRoutingListenerInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for a custom routing listener.</p>
    #
    # @option params [Array<PortRange>] :port_ranges
    #   <p>The port range to support for connections from clients to your accelerator.</p>
    #   	        <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
    #   		endpoints for custom routing accelerators</a>.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    #
    # @return [Types::CreateCustomRoutingListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_routing_listener(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ], # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomRoutingListenerOutput
    #   resp.data.listener #=> Types::CustomRoutingListener
    #   resp.data.listener.listener_arn #=> String
    #   resp.data.listener.port_ranges #=> Array<PortRange>
    #   resp.data.listener.port_ranges[0] #=> Types::PortRange
    #   resp.data.listener.port_ranges[0].from_port #=> Integer
    #   resp.data.listener.port_ranges[0].to_port #=> Integer
    #
    def create_custom_routing_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomRoutingListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomRoutingListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomRoutingListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPortRangeException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateCustomRoutingListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomRoutingListener,
        stubs: @stubs,
        params_class: Params::CreateCustomRoutingListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_routing_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS
    # 			Region. A resource must be valid and active when you add it as an endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEndpointGroupInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [String] :endpoint_group_region
    #   <p>The AWS Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   			specific Region.</p>
    #
    # @option params [Array<EndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects.</p>
    #
    # @option params [Float] :traffic_dial_percentage
    #   <p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #   		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #   		       <p>The default value is 100.</p>
    #
    # @option params [Integer] :health_check_port
    #   <p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   			is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the
    #   			first port in the list.</p>
    #
    # @option params [String] :health_check_protocol
    #   <p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #
    # @option params [String] :health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    #
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    #
    # @option params [Integer] :threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #
    # @option params [Array<PortOverride>] :port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
    #   			For example, you can create a port override in which the listener
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080
    #   			and 1443, respectively, on the endpoints.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @return [Types::CreateEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_group(
    #     listener_arn: 'ListenerArn', # required
    #     endpoint_group_region: 'EndpointGroupRegion', # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: 'EndpointId',
    #         weight: 1,
    #         client_ip_preservation_enabled: false
    #       }
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: 'TCP', # accepts ["TCP", "HTTP", "HTTPS"]
    #     health_check_path: 'HealthCheckPath',
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     idempotency_token: 'IdempotencyToken', # required
    #     port_overrides: [
    #       {
    #         listener_port: 1,
    #         endpoint_port: 1
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEndpointGroupOutput
    #   resp.data.endpoint_group #=> Types::EndpointGroup
    #   resp.data.endpoint_group.endpoint_group_arn #=> String
    #   resp.data.endpoint_group.endpoint_group_region #=> String
    #   resp.data.endpoint_group.endpoint_descriptions #=> Array<EndpointDescription>
    #   resp.data.endpoint_group.endpoint_descriptions[0] #=> Types::EndpointDescription
    #   resp.data.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.data.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.data.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of ["INITIAL", "HEALTHY", "UNHEALTHY"]
    #   resp.data.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.data.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.data.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.data.endpoint_group.health_check_port #=> Integer
    #   resp.data.endpoint_group.health_check_protocol #=> String, one of ["TCP", "HTTP", "HTTPS"]
    #   resp.data.endpoint_group.health_check_path #=> String
    #   resp.data.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.data.endpoint_group.threshold_count #=> Integer
    #   resp.data.endpoint_group.port_overrides #=> Array<PortOverride>
    #   resp.data.endpoint_group.port_overrides[0] #=> Types::PortOverride
    #   resp.data.endpoint_group.port_overrides[0].listener_port #=> Integer
    #   resp.data.endpoint_group.port_overrides[0].endpoint_port #=> Integer
    #
    def create_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::EndpointGroupAlreadyExistsException, Errors::AccessDeniedException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::CreateEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEndpointGroup,
        stubs: @stubs,
        params_class: Params::CreateEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static
    # 			IP addresses on a port, port range, or list of port ranges that you specify. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateListenerInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of your accelerator.</p>
    #
    # @option params [Array<PortRange>] :port_ranges
    #   <p>The list of port ranges to support for connections from clients to your accelerator.</p>
    #
    # @option params [String] :protocol
    #   <p>The protocol for connections from clients to your accelerator.</p>
    #
    # @option params [String] :client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #   		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   			affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #   		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #   		       <p>The default value is <code>NONE</code>.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #
    # @return [Types::CreateListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ], # required
    #     protocol: 'TCP', # required - accepts ["TCP", "UDP"]
    #     client_affinity: 'NONE', # accepts ["NONE", "SOURCE_IP"]
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateListenerOutput
    #   resp.data.listener #=> Types::Listener
    #   resp.data.listener.listener_arn #=> String
    #   resp.data.listener.port_ranges #=> Array<PortRange>
    #   resp.data.listener.port_ranges[0] #=> Types::PortRange
    #   resp.data.listener.port_ranges[0].from_port #=> Integer
    #   resp.data.listener.port_ranges[0].to_port #=> Integer
    #   resp.data.listener.protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.listener.client_affinity #=> String, one of ["NONE", "SOURCE_IP"]
    #
    def create_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPortRangeException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateListener,
        stubs: @stubs,
        params_class: Params::CreateListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources
    # 			(listeners and endpoint groups). To disable the accelerator, update the accelerator to set <code>Enabled</code> to false.</p>
    # 		       <important>
    #             <p>When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses.
    # 			Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges.
    # 		</p>
    # 		          <p>The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and
    # 			it no longer accepts or routes traffic. However, when you <i>delete</i> an accelerator, you lose the
    # 			static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them.
    # 			As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You
    # 			can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information,
    # 			see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html">Authentication and Access Control</a> in
    # 			the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteAcceleratorInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of an accelerator.</p>
    #
    # @return [Types::DeleteAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_accelerator(
    #     accelerator_arn: 'AcceleratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAcceleratorOutput
    #
    def delete_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotDisabledException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::AssociatedListenerFoundException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccelerator,
        stubs: @stubs,
        params_class: Params::DeleteAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a custom routing accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources
    # 		(listeners and endpoint groups). To disable the accelerator, update the accelerator to set <code>Enabled</code> to false.</p>
    # 	        <important>
    #             <p>When you create a custom routing accelerator, by default, Global Accelerator provides you with a set of two static IP addresses.
    # 	</p>
    # 		          <p>The IP
    # 			addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and
    # 			it no longer accepts or routes traffic. However, when you <i>delete</i> an accelerator, you lose the
    # 			static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them.
    # 			As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You
    # 			can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information,
    # 			see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html">Authentication and Access Control</a> in
    # 			the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomRoutingAcceleratorInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to delete.</p>
    #
    # @return [Types::DeleteCustomRoutingAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_routing_accelerator(
    #     accelerator_arn: 'AcceleratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomRoutingAcceleratorOutput
    #
    def delete_custom_routing_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomRoutingAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomRoutingAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomRoutingAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotDisabledException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::AssociatedListenerFoundException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteCustomRoutingAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomRoutingAccelerator,
        stubs: @stubs,
        params_class: Params::DeleteCustomRoutingAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_routing_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an endpoint group from a listener for a custom routing accelerator.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomRoutingEndpointGroupInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    #
    # @return [Types::DeleteCustomRoutingEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_routing_endpoint_group(
    #     endpoint_group_arn: 'EndpointGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomRoutingEndpointGroupOutput
    #
    def delete_custom_routing_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomRoutingEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomRoutingEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomRoutingEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointGroupNotFoundException]),
        data_parser: Parsers::DeleteCustomRoutingEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomRoutingEndpointGroup,
        stubs: @stubs,
        params_class: Params::DeleteCustomRoutingEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_routing_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a listener for a custom routing accelerator.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomRoutingListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to delete.</p>
    #
    # @return [Types::DeleteCustomRoutingListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_routing_listener(
    #     listener_arn: 'ListenerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomRoutingListenerOutput
    #
    def delete_custom_routing_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomRoutingListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomRoutingListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomRoutingListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::AssociatedEndpointGroupFoundException, Errors::InternalServiceErrorException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::DeleteCustomRoutingListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomRoutingListener,
        stubs: @stubs,
        params_class: Params::DeleteCustomRoutingListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_routing_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an endpoint group from a listener.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointGroupInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    #
    # @return [Types::DeleteEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_group(
    #     endpoint_group_arn: 'EndpointGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointGroupOutput
    #
    def delete_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointGroupNotFoundException]),
        data_parser: Parsers::DeleteEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpointGroup,
        stubs: @stubs,
        params_class: Params::DeleteEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a listener from an accelerator.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @return [Types::DeleteListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener(
    #     listener_arn: 'ListenerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteListenerOutput
    #
    def delete_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::AssociatedEndpointGroupFoundException, Errors::InternalServiceErrorException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::DeleteListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteListener,
        stubs: @stubs,
        params_class: Params::DeleteListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that cannot receive traffic
    # 			for a custom routing accelerator. You can deny traffic to all destinations in the VPC endpoint, or deny traffic to a
    # 			specified list of destination IP addresses and ports. Note that you cannot specify IP addresses
    # 			or ports outside of the range that you configured for the endpoint group.</p>
    # 		       <p>After you make changes, you can verify that the updates are complete by checking the status of your
    # 			accelerator: the status changes from IN_PROGRESS to DEPLOYED.</p>
    #
    # @param [Hash] params
    #   See {Types::DenyCustomRoutingTrafficInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    #
    # @option params [Array<String>] :destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to prevent from receiving
    #   			traffic. The IP addresses must be a subset of the IP addresses allowed for the VPC subnet associated with the
    #   			endpoint group.</p>
    #
    # @option params [Array<Integer>] :destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) in a subnet endpoint that you want to prevent from
    #   			receiving traffic.</p>
    #
    # @option params [Boolean] :deny_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint <i>cannot</i>
    #   			receive traffic from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #   		       <p>When set to TRUE, <i>no</i> destinations in the custom routing VPC subnet can receive traffic. Note
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #   		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that cannot receive
    #   			traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #   		       <p>The default value is FALSE.</p>
    #
    # @return [Types::DenyCustomRoutingTrafficOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deny_custom_routing_traffic(
    #     endpoint_group_arn: 'EndpointGroupArn', # required
    #     endpoint_id: 'EndpointId', # required
    #     destination_addresses: [
    #       'member'
    #     ],
    #     destination_ports: [
    #       1
    #     ],
    #     deny_all_traffic_to_endpoint: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DenyCustomRoutingTrafficOutput
    #
    def deny_custom_routing_traffic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DenyCustomRoutingTrafficInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DenyCustomRoutingTrafficInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DenyCustomRoutingTraffic
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DenyCustomRoutingTraffic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DenyCustomRoutingTraffic,
        stubs: @stubs,
        params_class: Params::DenyCustomRoutingTrafficOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deny_custom_routing_traffic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Releases the specified address range that you provisioned to use with your AWS resources
    # 			through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. </p>
    # 		       <p>Before you can release an address range, you must stop advertising it by using <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html">WithdrawByoipCidr</a> and you must not have
    # 			any accelerators that are using static IP addresses allocated from its address range.
    # 		</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    # 			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprovisionByoipCidrInput}.
    #
    # @option params [String] :cidr
    #   <p>The address range, in CIDR notation. The prefix must be the same prefix that you specified
    #   			when you provisioned the address range.</p>
    #
    # @return [Types::DeprovisionByoipCidrOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprovision_byoip_cidr(
    #     cidr: 'Cidr' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprovisionByoipCidrOutput
    #   resp.data.byoip_cidr #=> Types::ByoipCidr
    #   resp.data.byoip_cidr.cidr #=> String
    #   resp.data.byoip_cidr.state #=> String, one of ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"]
    #   resp.data.byoip_cidr.events #=> Array<ByoipCidrEvent>
    #   resp.data.byoip_cidr.events[0] #=> Types::ByoipCidrEvent
    #   resp.data.byoip_cidr.events[0].message #=> String
    #   resp.data.byoip_cidr.events[0].timestamp #=> Time
    #
    def deprovision_byoip_cidr(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprovisionByoipCidrInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprovisionByoipCidrInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprovisionByoipCidr
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ByoipCidrNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::AccessDeniedException, Errors::IncorrectCidrStateException]),
        data_parser: Parsers::DeprovisionByoipCidr
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprovisionByoipCidr,
        stubs: @stubs,
        params_class: Params::DeprovisionByoipCidrOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprovision_byoip_cidr
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe an accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAcceleratorInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    #
    # @return [Types::DescribeAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator(
    #     accelerator_arn: 'AcceleratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAcceleratorOutput
    #   resp.data.accelerator #=> Types::Accelerator
    #   resp.data.accelerator.accelerator_arn #=> String
    #   resp.data.accelerator.name #=> String
    #   resp.data.accelerator.ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerator.enabled #=> Boolean
    #   resp.data.accelerator.ip_sets #=> Array<IpSet>
    #   resp.data.accelerator.ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerator.ip_sets[0].ip_family #=> String
    #   resp.data.accelerator.ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerator.dns_name #=> String
    #   resp.data.accelerator.status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerator.created_time #=> Time
    #   resp.data.accelerator.last_modified_time #=> Time
    #
    def describe_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccelerator,
        stubs: @stubs,
        params_class: Params::DescribeAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe the attributes of an accelerator.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAcceleratorAttributesInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>
    #
    # @return [Types::DescribeAcceleratorAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator_attributes(
    #     accelerator_arn: 'AcceleratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAcceleratorAttributesOutput
    #   resp.data.accelerator_attributes #=> Types::AcceleratorAttributes
    #   resp.data.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.data.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.data.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    def describe_accelerator_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAcceleratorAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAcceleratorAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAcceleratorAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeAcceleratorAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAcceleratorAttributes,
        stubs: @stubs,
        params_class: Params::DescribeAcceleratorAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_accelerator_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomRoutingAcceleratorInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    #
    # @return [Types::DescribeCustomRoutingAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_accelerator(
    #     accelerator_arn: 'AcceleratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomRoutingAcceleratorOutput
    #   resp.data.accelerator #=> Types::CustomRoutingAccelerator
    #   resp.data.accelerator.accelerator_arn #=> String
    #   resp.data.accelerator.name #=> String
    #   resp.data.accelerator.ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerator.enabled #=> Boolean
    #   resp.data.accelerator.ip_sets #=> Array<IpSet>
    #   resp.data.accelerator.ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerator.ip_sets[0].ip_family #=> String
    #   resp.data.accelerator.ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerator.dns_name #=> String
    #   resp.data.accelerator.status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerator.created_time #=> Time
    #   resp.data.accelerator.last_modified_time #=> Time
    #
    def describe_custom_routing_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomRoutingAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomRoutingAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomRoutingAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeCustomRoutingAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomRoutingAccelerator,
        stubs: @stubs,
        params_class: Params::DescribeCustomRoutingAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_routing_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe the attributes of a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomRoutingAcceleratorAttributesInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to describe the attributes for.</p>
    #
    # @return [Types::DescribeCustomRoutingAcceleratorAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_accelerator_attributes(
    #     accelerator_arn: 'AcceleratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomRoutingAcceleratorAttributesOutput
    #   resp.data.accelerator_attributes #=> Types::CustomRoutingAcceleratorAttributes
    #   resp.data.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.data.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.data.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    def describe_custom_routing_accelerator_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomRoutingAcceleratorAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomRoutingAcceleratorAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomRoutingAcceleratorAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeCustomRoutingAcceleratorAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomRoutingAcceleratorAttributes,
        stubs: @stubs,
        params_class: Params::DescribeCustomRoutingAcceleratorAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_routing_accelerator_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe an endpoint group for a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomRoutingEndpointGroupInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    #
    # @return [Types::DescribeCustomRoutingEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_endpoint_group(
    #     endpoint_group_arn: 'EndpointGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomRoutingEndpointGroupOutput
    #   resp.data.endpoint_group #=> Types::CustomRoutingEndpointGroup
    #   resp.data.endpoint_group.endpoint_group_arn #=> String
    #   resp.data.endpoint_group.endpoint_group_region #=> String
    #   resp.data.endpoint_group.destination_descriptions #=> Array<CustomRoutingDestinationDescription>
    #   resp.data.endpoint_group.destination_descriptions[0] #=> Types::CustomRoutingDestinationDescription
    #   resp.data.endpoint_group.destination_descriptions[0].from_port #=> Integer
    #   resp.data.endpoint_group.destination_descriptions[0].to_port #=> Integer
    #   resp.data.endpoint_group.destination_descriptions[0].protocols #=> Array<String>
    #   resp.data.endpoint_group.destination_descriptions[0].protocols[0] #=> String, one of ["TCP", "UDP"]
    #   resp.data.endpoint_group.endpoint_descriptions #=> Array<CustomRoutingEndpointDescription>
    #   resp.data.endpoint_group.endpoint_descriptions[0] #=> Types::CustomRoutingEndpointDescription
    #   resp.data.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #
    def describe_custom_routing_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomRoutingEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomRoutingEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomRoutingEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointGroupNotFoundException]),
        data_parser: Parsers::DescribeCustomRoutingEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomRoutingEndpointGroup,
        stubs: @stubs,
        params_class: Params::DescribeCustomRoutingEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_routing_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The description of a listener for a custom routing accelerator.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomRoutingListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    #
    # @return [Types::DescribeCustomRoutingListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_listener(
    #     listener_arn: 'ListenerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomRoutingListenerOutput
    #   resp.data.listener #=> Types::CustomRoutingListener
    #   resp.data.listener.listener_arn #=> String
    #   resp.data.listener.port_ranges #=> Array<PortRange>
    #   resp.data.listener.port_ranges[0] #=> Types::PortRange
    #   resp.data.listener.port_ranges[0].from_port #=> Integer
    #   resp.data.listener.port_ranges[0].to_port #=> Integer
    #
    def describe_custom_routing_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomRoutingListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomRoutingListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomRoutingListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::DescribeCustomRoutingListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomRoutingListener,
        stubs: @stubs,
        params_class: Params::DescribeCustomRoutingListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_routing_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe an endpoint group. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointGroupInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    #
    # @return [Types::DescribeEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_group(
    #     endpoint_group_arn: 'EndpointGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointGroupOutput
    #   resp.data.endpoint_group #=> Types::EndpointGroup
    #   resp.data.endpoint_group.endpoint_group_arn #=> String
    #   resp.data.endpoint_group.endpoint_group_region #=> String
    #   resp.data.endpoint_group.endpoint_descriptions #=> Array<EndpointDescription>
    #   resp.data.endpoint_group.endpoint_descriptions[0] #=> Types::EndpointDescription
    #   resp.data.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.data.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.data.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of ["INITIAL", "HEALTHY", "UNHEALTHY"]
    #   resp.data.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.data.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.data.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.data.endpoint_group.health_check_port #=> Integer
    #   resp.data.endpoint_group.health_check_protocol #=> String, one of ["TCP", "HTTP", "HTTPS"]
    #   resp.data.endpoint_group.health_check_path #=> String
    #   resp.data.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.data.endpoint_group.threshold_count #=> Integer
    #   resp.data.endpoint_group.port_overrides #=> Array<PortOverride>
    #   resp.data.endpoint_group.port_overrides[0] #=> Types::PortOverride
    #   resp.data.endpoint_group.port_overrides[0].listener_port #=> Integer
    #   resp.data.endpoint_group.port_overrides[0].endpoint_port #=> Integer
    #
    def describe_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointGroupNotFoundException]),
        data_parser: Parsers::DescribeEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpointGroup,
        stubs: @stubs,
        params_class: Params::DescribeEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe a listener. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    #
    # @return [Types::DescribeListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listener(
    #     listener_arn: 'ListenerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeListenerOutput
    #   resp.data.listener #=> Types::Listener
    #   resp.data.listener.listener_arn #=> String
    #   resp.data.listener.port_ranges #=> Array<PortRange>
    #   resp.data.listener.port_ranges[0] #=> Types::PortRange
    #   resp.data.listener.port_ranges[0].from_port #=> Integer
    #   resp.data.listener.port_ranges[0].to_port #=> Integer
    #   resp.data.listener.protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.listener.client_affinity #=> String, one of ["NONE", "SOURCE_IP"]
    #
    def describe_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::DescribeListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeListener,
        stubs: @stubs,
        params_class: Params::DescribeListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the accelerators for an AWS account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAcceleratorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListAcceleratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accelerators(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAcceleratorsOutput
    #   resp.data.accelerators #=> Array<Accelerator>
    #   resp.data.accelerators[0] #=> Types::Accelerator
    #   resp.data.accelerators[0].accelerator_arn #=> String
    #   resp.data.accelerators[0].name #=> String
    #   resp.data.accelerators[0].ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerators[0].enabled #=> Boolean
    #   resp.data.accelerators[0].ip_sets #=> Array<IpSet>
    #   resp.data.accelerators[0].ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerators[0].ip_sets[0].ip_family #=> String
    #   resp.data.accelerators[0].ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerators[0].ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerators[0].dns_name #=> String
    #   resp.data.accelerators[0].status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerators[0].created_time #=> Time
    #   resp.data.accelerators[0].last_modified_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_accelerators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAcceleratorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAcceleratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccelerators
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListAccelerators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccelerators,
        stubs: @stubs,
        params_class: Params::ListAcceleratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accelerators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IP address ranges that were specified in calls to <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html">ProvisionByoipCidr</a>, including
    # 			the current state and a history of state changes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListByoipCidrsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make
    #   			another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListByoipCidrsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_byoip_cidrs(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListByoipCidrsOutput
    #   resp.data.byoip_cidrs #=> Array<ByoipCidr>
    #   resp.data.byoip_cidrs[0] #=> Types::ByoipCidr
    #   resp.data.byoip_cidrs[0].cidr #=> String
    #   resp.data.byoip_cidrs[0].state #=> String, one of ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"]
    #   resp.data.byoip_cidrs[0].events #=> Array<ByoipCidrEvent>
    #   resp.data.byoip_cidrs[0].events[0] #=> Types::ByoipCidrEvent
    #   resp.data.byoip_cidrs[0].events[0].message #=> String
    #   resp.data.byoip_cidrs[0].events[0].timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_byoip_cidrs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListByoipCidrsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListByoipCidrsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListByoipCidrs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListByoipCidrs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListByoipCidrs,
        stubs: @stubs,
        params_class: Params::ListByoipCidrsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_byoip_cidrs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the custom routing accelerators for an AWS account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomRoutingAcceleratorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of custom routing Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListCustomRoutingAcceleratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_accelerators(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomRoutingAcceleratorsOutput
    #   resp.data.accelerators #=> Array<CustomRoutingAccelerator>
    #   resp.data.accelerators[0] #=> Types::CustomRoutingAccelerator
    #   resp.data.accelerators[0].accelerator_arn #=> String
    #   resp.data.accelerators[0].name #=> String
    #   resp.data.accelerators[0].ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerators[0].enabled #=> Boolean
    #   resp.data.accelerators[0].ip_sets #=> Array<IpSet>
    #   resp.data.accelerators[0].ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerators[0].ip_sets[0].ip_family #=> String
    #   resp.data.accelerators[0].ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerators[0].ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerators[0].dns_name #=> String
    #   resp.data.accelerators[0].status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerators[0].created_time #=> Time
    #   resp.data.accelerators[0].last_modified_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_custom_routing_accelerators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomRoutingAcceleratorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomRoutingAcceleratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomRoutingAccelerators
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListCustomRoutingAccelerators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomRoutingAccelerators,
        stubs: @stubs,
        params_class: Params::ListCustomRoutingAcceleratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_routing_accelerators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the endpoint groups that are associated with a listener for a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomRoutingEndpointGroupsInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to list endpoint groups for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListCustomRoutingEndpointGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_endpoint_groups(
    #     listener_arn: 'ListenerArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomRoutingEndpointGroupsOutput
    #   resp.data.endpoint_groups #=> Array<CustomRoutingEndpointGroup>
    #   resp.data.endpoint_groups[0] #=> Types::CustomRoutingEndpointGroup
    #   resp.data.endpoint_groups[0].endpoint_group_arn #=> String
    #   resp.data.endpoint_groups[0].endpoint_group_region #=> String
    #   resp.data.endpoint_groups[0].destination_descriptions #=> Array<CustomRoutingDestinationDescription>
    #   resp.data.endpoint_groups[0].destination_descriptions[0] #=> Types::CustomRoutingDestinationDescription
    #   resp.data.endpoint_groups[0].destination_descriptions[0].from_port #=> Integer
    #   resp.data.endpoint_groups[0].destination_descriptions[0].to_port #=> Integer
    #   resp.data.endpoint_groups[0].destination_descriptions[0].protocols #=> Array<String>
    #   resp.data.endpoint_groups[0].destination_descriptions[0].protocols[0] #=> String, one of ["TCP", "UDP"]
    #   resp.data.endpoint_groups[0].endpoint_descriptions #=> Array<CustomRoutingEndpointDescription>
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0] #=> Types::CustomRoutingEndpointDescription
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0].endpoint_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_custom_routing_endpoint_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomRoutingEndpointGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomRoutingEndpointGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomRoutingEndpointGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::ListCustomRoutingEndpointGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomRoutingEndpointGroups,
        stubs: @stubs,
        params_class: Params::ListCustomRoutingEndpointGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_routing_endpoint_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the listeners for a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomRoutingListenersInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list listeners for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListCustomRoutingListenersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_listeners(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomRoutingListenersOutput
    #   resp.data.listeners #=> Array<CustomRoutingListener>
    #   resp.data.listeners[0] #=> Types::CustomRoutingListener
    #   resp.data.listeners[0].listener_arn #=> String
    #   resp.data.listeners[0].port_ranges #=> Array<PortRange>
    #   resp.data.listeners[0].port_ranges[0] #=> Types::PortRange
    #   resp.data.listeners[0].port_ranges[0].from_port #=> Integer
    #   resp.data.listeners[0].port_ranges[0].to_port #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_custom_routing_listeners(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomRoutingListenersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomRoutingListenersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomRoutingListeners
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListCustomRoutingListeners
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomRoutingListeners,
        stubs: @stubs,
        params_class: Params::ListCustomRoutingListenersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_routing_listeners
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance
    # 		IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator.
    # 		For each subnet endpoint that you add, Global Accelerator creates a new static port mapping for the accelerator. The port
    # 		mappings don't change after Global Accelerator generates them, so you can retrieve and cache the full mapping on your servers. </p>
    # 	        <p>If you remove a subnet from your accelerator, Global Accelerator removes (reclaims) the port mappings. If you add a subnet to
    # 		your accelerator, Global Accelerator creates new port mappings (the existing ones don't change). If you add or remove EC2 instances
    # 		in your subnet, the port mappings don't change, because the mappings are created when you add the subnet to Global Accelerator.</p>
    # 	        <p>The mappings also include a flag for each destination denoting which destination IP addresses and
    # 		ports are allowed or denied traffic.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomRoutingPortMappingsInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list the custom routing port mappings for.</p>
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to list the custom routing port mappings for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListCustomRoutingPortMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_port_mappings(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     endpoint_group_arn: 'EndpointGroupArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomRoutingPortMappingsOutput
    #   resp.data.port_mappings #=> Array<PortMapping>
    #   resp.data.port_mappings[0] #=> Types::PortMapping
    #   resp.data.port_mappings[0].accelerator_port #=> Integer
    #   resp.data.port_mappings[0].endpoint_group_arn #=> String
    #   resp.data.port_mappings[0].endpoint_id #=> String
    #   resp.data.port_mappings[0].destination_socket_address #=> Types::SocketAddress
    #   resp.data.port_mappings[0].destination_socket_address.ip_address #=> String
    #   resp.data.port_mappings[0].destination_socket_address.port #=> Integer
    #   resp.data.port_mappings[0].protocols #=> Array<String>
    #   resp.data.port_mappings[0].protocols[0] #=> String, one of ["TCP", "UDP"]
    #   resp.data.port_mappings[0].destination_traffic_state #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.next_token #=> String
    #
    def list_custom_routing_port_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomRoutingPortMappingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomRoutingPortMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomRoutingPortMappings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointGroupNotFoundException]),
        data_parser: Parsers::ListCustomRoutingPortMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomRoutingPortMappings,
        stubs: @stubs,
        params_class: Params::ListCustomRoutingPortMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_routing_port_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The
    # 			response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that
    # 			span multiple custom routing accelerators in your account, or for scenarios where you only want to
    # 			list the port mappings for a specific destination instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomRoutingPortMappingsByDestinationInput}.
    #
    # @option params [String] :endpoint_id
    #   <p>The ID for the virtual private cloud (VPC) subnet.</p>
    #
    # @option params [String] :destination_address
    #   <p>The endpoint IP address in a virtual private cloud (VPC) subnet for which you want to receive back port
    #   		mappings.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListCustomRoutingPortMappingsByDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_port_mappings_by_destination(
    #     endpoint_id: 'EndpointId', # required
    #     destination_address: 'DestinationAddress', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomRoutingPortMappingsByDestinationOutput
    #   resp.data.destination_port_mappings #=> Array<DestinationPortMapping>
    #   resp.data.destination_port_mappings[0] #=> Types::DestinationPortMapping
    #   resp.data.destination_port_mappings[0].accelerator_arn #=> String
    #   resp.data.destination_port_mappings[0].accelerator_socket_addresses #=> Array<SocketAddress>
    #   resp.data.destination_port_mappings[0].accelerator_socket_addresses[0] #=> Types::SocketAddress
    #   resp.data.destination_port_mappings[0].accelerator_socket_addresses[0].ip_address #=> String
    #   resp.data.destination_port_mappings[0].accelerator_socket_addresses[0].port #=> Integer
    #   resp.data.destination_port_mappings[0].endpoint_group_arn #=> String
    #   resp.data.destination_port_mappings[0].endpoint_id #=> String
    #   resp.data.destination_port_mappings[0].endpoint_group_region #=> String
    #   resp.data.destination_port_mappings[0].destination_socket_address #=> Types::SocketAddress
    #   resp.data.destination_port_mappings[0].ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.destination_port_mappings[0].destination_traffic_state #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.next_token #=> String
    #
    def list_custom_routing_port_mappings_by_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomRoutingPortMappingsByDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomRoutingPortMappingsByDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomRoutingPortMappingsByDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointNotFoundException]),
        data_parser: Parsers::ListCustomRoutingPortMappingsByDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomRoutingPortMappingsByDestination,
        stubs: @stubs,
        params_class: Params::ListCustomRoutingPortMappingsByDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_routing_port_mappings_by_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the endpoint groups that are associated with a listener. </p>
    #
    # @param [Hash] params
    #   See {Types::ListEndpointGroupsInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListEndpointGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoint_groups(
    #     listener_arn: 'ListenerArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEndpointGroupsOutput
    #   resp.data.endpoint_groups #=> Array<EndpointGroup>
    #   resp.data.endpoint_groups[0] #=> Types::EndpointGroup
    #   resp.data.endpoint_groups[0].endpoint_group_arn #=> String
    #   resp.data.endpoint_groups[0].endpoint_group_region #=> String
    #   resp.data.endpoint_groups[0].endpoint_descriptions #=> Array<EndpointDescription>
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0] #=> Types::EndpointDescription
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0].endpoint_id #=> String
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0].weight #=> Integer
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0].health_state #=> String, one of ["INITIAL", "HEALTHY", "UNHEALTHY"]
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0].health_reason #=> String
    #   resp.data.endpoint_groups[0].endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.data.endpoint_groups[0].traffic_dial_percentage #=> Float
    #   resp.data.endpoint_groups[0].health_check_port #=> Integer
    #   resp.data.endpoint_groups[0].health_check_protocol #=> String, one of ["TCP", "HTTP", "HTTPS"]
    #   resp.data.endpoint_groups[0].health_check_path #=> String
    #   resp.data.endpoint_groups[0].health_check_interval_seconds #=> Integer
    #   resp.data.endpoint_groups[0].threshold_count #=> Integer
    #   resp.data.endpoint_groups[0].port_overrides #=> Array<PortOverride>
    #   resp.data.endpoint_groups[0].port_overrides[0] #=> Types::PortOverride
    #   resp.data.endpoint_groups[0].port_overrides[0].listener_port #=> Integer
    #   resp.data.endpoint_groups[0].port_overrides[0].endpoint_port #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_endpoint_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEndpointGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEndpointGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEndpointGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::ListEndpointGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEndpointGroups,
        stubs: @stubs,
        params_class: Params::ListEndpointGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_endpoint_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the listeners for an accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::ListListenersInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @return [Types::ListListenersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_listeners(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListListenersOutput
    #   resp.data.listeners #=> Array<Listener>
    #   resp.data.listeners[0] #=> Types::Listener
    #   resp.data.listeners[0].listener_arn #=> String
    #   resp.data.listeners[0].port_ranges #=> Array<PortRange>
    #   resp.data.listeners[0].port_ranges[0] #=> Types::PortRange
    #   resp.data.listeners[0].port_ranges[0].from_port #=> Integer
    #   resp.data.listeners[0].port_ranges[0].to_port #=> Integer
    #   resp.data.listeners[0].protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.listeners[0].client_affinity #=> String, one of ["NONE", "SOURCE_IP"]
    #   resp.data.next_token #=> String
    #
    def list_listeners(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListListenersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListListenersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListListeners
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListListeners
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListListeners,
        stubs: @stubs,
        params_class: Params::ListListenersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_listeners
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags for an accelerator. </p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    # 			in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
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

    # <p>Provisions an IP address range to use with your AWS resources through bring your own IP
    # 			addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned,
    # 			it is ready to be advertised using <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html">
    # 			AdvertiseByoipCidr</a>.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    # 			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ProvisionByoipCidrInput}.
    #
    # @option params [String] :cidr
    #   <p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can
    #   			specify is /24. The address range cannot overlap with another address range that you've brought
    #   			to this or another Region.</p>
    #
    # @option params [CidrAuthorizationContext] :cidr_authorization_context
    #   <p>A signed document that proves that you are authorized to bring the specified IP address range to
    #   			Amazon using BYOIP.
    #   		</p>
    #
    # @return [Types::ProvisionByoipCidrOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_byoip_cidr(
    #     cidr: 'Cidr', # required
    #     cidr_authorization_context: {
    #       message: 'Message', # required
    #       signature: 'Signature' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ProvisionByoipCidrOutput
    #   resp.data.byoip_cidr #=> Types::ByoipCidr
    #   resp.data.byoip_cidr.cidr #=> String
    #   resp.data.byoip_cidr.state #=> String, one of ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"]
    #   resp.data.byoip_cidr.events #=> Array<ByoipCidrEvent>
    #   resp.data.byoip_cidr.events[0] #=> Types::ByoipCidrEvent
    #   resp.data.byoip_cidr.events[0].message #=> String
    #   resp.data.byoip_cidr.events[0].timestamp #=> Time
    #
    def provision_byoip_cidr(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ProvisionByoipCidrInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ProvisionByoipCidrInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ProvisionByoipCidr
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::IncorrectCidrStateException]),
        data_parser: Parsers::ProvisionByoipCidr
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ProvisionByoipCidr,
        stubs: @stubs,
        params_class: Params::ProvisionByoipCidrOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :provision_byoip_cidr
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove endpoints from a custom routing accelerator.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveCustomRoutingEndpointsInput}.
    #
    # @option params [Array<String>] :endpoint_ids
    #   <p>The IDs for the endpoints. For custom routing accelerators, endpoint IDs are the virtual private cloud (VPC)
    #   		subnet IDs. </p>
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to remove endpoints from.</p>
    #
    # @return [Types::RemoveCustomRoutingEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_custom_routing_endpoints(
    #     endpoint_ids: [
    #       'member'
    #     ], # required
    #     endpoint_group_arn: 'EndpointGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveCustomRoutingEndpointsOutput
    #
    def remove_custom_routing_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveCustomRoutingEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveCustomRoutingEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveCustomRoutingEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::EndpointGroupNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::EndpointNotFoundException]),
        data_parser: Parsers::RemoveCustomRoutingEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveCustomRoutingEndpoints,
        stubs: @stubs,
        params_class: Params::RemoveCustomRoutingEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_custom_routing_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add tags to an accelerator resource. </p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    # 			in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
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

    # <p>Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value.
    # 			The operation succeeds even if you attempt to remove tags from an accelerator that was already removed.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    # 			in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key pairs that you want to remove from the specified resources.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
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

    # <p>Update an accelerator. </p>
    # 		
    # 		       <important>
    # 			         <p>Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
    # 				US West (Oregon) Region to create or update accelerators.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateAcceleratorInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The IP address type, which must be IPv4.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    # @return [Types::UpdateAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     name: 'Name',
    #     ip_address_type: 'IPV4', # accepts ["IPV4"]
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAcceleratorOutput
    #   resp.data.accelerator #=> Types::Accelerator
    #   resp.data.accelerator.accelerator_arn #=> String
    #   resp.data.accelerator.name #=> String
    #   resp.data.accelerator.ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerator.enabled #=> Boolean
    #   resp.data.accelerator.ip_sets #=> Array<IpSet>
    #   resp.data.accelerator.ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerator.ip_sets[0].ip_family #=> String
    #   resp.data.accelerator.ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerator.dns_name #=> String
    #   resp.data.accelerator.status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerator.created_time #=> Time
    #   resp.data.accelerator.last_modified_time #=> Time
    #
    def update_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccelerator,
        stubs: @stubs,
        params_class: Params::UpdateAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the attributes for an accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAcceleratorAttributesInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>
    #
    # @option params [Boolean] :flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   			the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @option params [String] :flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   				<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
    #   			bucket.</p>
    #
    # @option params [String] :flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   				<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #   		       <p>If you don’t specify a prefix, the flow logs are stored in the
    #   			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #   			      <p>s3-bucket_name//AWSLogs/aws_account_id</p>
    #
    # @return [Types::UpdateAcceleratorAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator_attributes(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: 'FlowLogsS3Bucket',
    #     flow_logs_s3_prefix: 'FlowLogsS3Prefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAcceleratorAttributesOutput
    #   resp.data.accelerator_attributes #=> Types::AcceleratorAttributes
    #   resp.data.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.data.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.data.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    def update_accelerator_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAcceleratorAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAcceleratorAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAcceleratorAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateAcceleratorAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAcceleratorAttributes,
        stubs: @stubs,
        params_class: Params::UpdateAcceleratorAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_accelerator_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCustomRoutingAcceleratorInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
    #   		hyphens (-), and must not begin or end with a hyphen.</p>
    #
    # @option params [String] :ip_address_type
    #   <p>The value for the address type must be IPv4.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #   	        <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #
    # @return [Types::UpdateCustomRoutingAcceleratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_routing_accelerator(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     name: 'Name',
    #     ip_address_type: 'IPV4', # accepts ["IPV4"]
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCustomRoutingAcceleratorOutput
    #   resp.data.accelerator #=> Types::CustomRoutingAccelerator
    #   resp.data.accelerator.accelerator_arn #=> String
    #   resp.data.accelerator.name #=> String
    #   resp.data.accelerator.ip_address_type #=> String, one of ["IPV4"]
    #   resp.data.accelerator.enabled #=> Boolean
    #   resp.data.accelerator.ip_sets #=> Array<IpSet>
    #   resp.data.accelerator.ip_sets[0] #=> Types::IpSet
    #   resp.data.accelerator.ip_sets[0].ip_family #=> String
    #   resp.data.accelerator.ip_sets[0].ip_addresses #=> Array<String>
    #   resp.data.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.data.accelerator.dns_name #=> String
    #   resp.data.accelerator.status #=> String, one of ["DEPLOYED", "IN_PROGRESS"]
    #   resp.data.accelerator.created_time #=> Time
    #   resp.data.accelerator.last_modified_time #=> Time
    #
    def update_custom_routing_accelerator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCustomRoutingAcceleratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCustomRoutingAcceleratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCustomRoutingAccelerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::UpdateCustomRoutingAccelerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCustomRoutingAccelerator,
        stubs: @stubs,
        params_class: Params::UpdateCustomRoutingAcceleratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_custom_routing_accelerator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the attributes for a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCustomRoutingAcceleratorAttributesInput}.
    #
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to update attributes for.</p>
    #
    # @option params [Boolean] :flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   		<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #   	        <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   		the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @option params [String] :flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   		<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
    #   		bucket.</p>
    #
    # @option params [String] :flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   		<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #   	        <p>If you don’t specify a prefix, the flow logs are stored in the
    #   		root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #   	        <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>
    #
    # @return [Types::UpdateCustomRoutingAcceleratorAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_routing_accelerator_attributes(
    #     accelerator_arn: 'AcceleratorArn', # required
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: 'FlowLogsS3Bucket',
    #     flow_logs_s3_prefix: 'FlowLogsS3Prefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCustomRoutingAcceleratorAttributesOutput
    #   resp.data.accelerator_attributes #=> Types::CustomRoutingAcceleratorAttributes
    #   resp.data.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.data.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.data.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    def update_custom_routing_accelerator_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCustomRoutingAcceleratorAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCustomRoutingAcceleratorAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCustomRoutingAcceleratorAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AcceleratorNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateCustomRoutingAcceleratorAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCustomRoutingAcceleratorAttributes,
        stubs: @stubs,
        params_class: Params::UpdateCustomRoutingAcceleratorAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_custom_routing_accelerator_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a listener for a custom routing accelerator. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCustomRoutingListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    #
    # @option params [Array<PortRange>] :port_ranges
    #   <p>The updated port range to support for connections from clients to your accelerator. If you remove ports that are
    #   	currently being used by a subnet endpoint, the call fails.</p>
    #   	        <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
    #   		endpoints for custom routing accelerators</a>.</p>
    #
    # @return [Types::UpdateCustomRoutingListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_routing_listener(
    #     listener_arn: 'ListenerArn', # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCustomRoutingListenerOutput
    #   resp.data.listener #=> Types::CustomRoutingListener
    #   resp.data.listener.listener_arn #=> String
    #   resp.data.listener.port_ranges #=> Array<PortRange>
    #   resp.data.listener.port_ranges[0] #=> Types::PortRange
    #   resp.data.listener.port_ranges[0].from_port #=> Integer
    #   resp.data.listener.port_ranges[0].to_port #=> Integer
    #
    def update_custom_routing_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCustomRoutingListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCustomRoutingListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCustomRoutingListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPortRangeException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::UpdateCustomRoutingListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCustomRoutingListener,
        stubs: @stubs,
        params_class: Params::UpdateCustomRoutingListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_custom_routing_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update an endpoint group. A resource must be valid and active when you add it as an endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEndpointGroupInput}.
    #
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #
    # @option params [Array<EndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects. A resource must be valid and active when you add it as an endpoint.</p>
    #
    # @option params [Float] :traffic_dial_percentage
    #   <p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #   		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #   		       <p>The default value is 100.</p>
    #
    # @option params [Integer] :health_check_port
    #   <p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   			is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses
    #   			the first port in the list.</p>
    #
    # @option params [String] :health_check_protocol
    #   <p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #
    # @option params [String] :health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    #
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    #
    # @option params [Integer] :threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #
    # @option params [Array<PortOverride>] :port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
    #   			For example, you can create a port override in which the listener
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080
    #   			and 1443, respectively, on the endpoints.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @return [Types::UpdateEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint_group(
    #     endpoint_group_arn: 'EndpointGroupArn', # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: 'EndpointId',
    #         weight: 1,
    #         client_ip_preservation_enabled: false
    #       }
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: 'TCP', # accepts ["TCP", "HTTP", "HTTPS"]
    #     health_check_path: 'HealthCheckPath',
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     port_overrides: [
    #       {
    #         listener_port: 1,
    #         endpoint_port: 1
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEndpointGroupOutput
    #   resp.data.endpoint_group #=> Types::EndpointGroup
    #   resp.data.endpoint_group.endpoint_group_arn #=> String
    #   resp.data.endpoint_group.endpoint_group_region #=> String
    #   resp.data.endpoint_group.endpoint_descriptions #=> Array<EndpointDescription>
    #   resp.data.endpoint_group.endpoint_descriptions[0] #=> Types::EndpointDescription
    #   resp.data.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.data.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.data.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of ["INITIAL", "HEALTHY", "UNHEALTHY"]
    #   resp.data.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.data.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.data.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.data.endpoint_group.health_check_port #=> Integer
    #   resp.data.endpoint_group.health_check_protocol #=> String, one of ["TCP", "HTTP", "HTTPS"]
    #   resp.data.endpoint_group.health_check_path #=> String
    #   resp.data.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.data.endpoint_group.threshold_count #=> Integer
    #   resp.data.endpoint_group.port_overrides #=> Array<PortOverride>
    #   resp.data.endpoint_group.port_overrides[0] #=> Types::PortOverride
    #   resp.data.endpoint_group.port_overrides[0].listener_port #=> Integer
    #   resp.data.endpoint_group.port_overrides[0].endpoint_port #=> Integer
    #
    def update_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEndpointGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::EndpointGroupNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEndpointGroup,
        stubs: @stubs,
        params_class: Params::UpdateEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a listener. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateListenerInput}.
    #
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    #
    # @option params [Array<PortRange>] :port_ranges
    #   <p>The updated list of port ranges for the connections from clients to the accelerator.</p>
    #
    # @option params [String] :protocol
    #   <p>The updated protocol for the connections from clients to the accelerator.</p>
    #
    # @option params [String] :client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #   		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   			affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #   		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #   		       <p>The default value is <code>NONE</code>.</p>
    #
    # @return [Types::UpdateListenerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_listener(
    #     listener_arn: 'ListenerArn', # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ],
    #     protocol: 'TCP', # accepts ["TCP", "UDP"]
    #     client_affinity: 'NONE' # accepts ["NONE", "SOURCE_IP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateListenerOutput
    #   resp.data.listener #=> Types::Listener
    #   resp.data.listener.listener_arn #=> String
    #   resp.data.listener.port_ranges #=> Array<PortRange>
    #   resp.data.listener.port_ranges[0] #=> Types::PortRange
    #   resp.data.listener.port_ranges[0].from_port #=> Integer
    #   resp.data.listener.port_ranges[0].to_port #=> Integer
    #   resp.data.listener.protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.listener.client_affinity #=> String, one of ["NONE", "SOURCE_IP"]
    #
    def update_listener(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateListenerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateListenerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateListener
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPortRangeException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::ListenerNotFoundException]),
        data_parser: Parsers::UpdateListener
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateListener,
        stubs: @stubs,
        params_class: Params::UpdateListenerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_listener
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops advertising an address range that is provisioned as an address pool.
    # 			You can perform this operation at most once every 10 seconds, even if you specify different address
    # 			ranges each time.</p>
    # 		       <p>It can take a few minutes before traffic to the specified addresses stops routing to AWS because of
    # 			propagation delays.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring Your Own
    # 			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::WithdrawByoipCidrInput}.
    #
    # @option params [String] :cidr
    #   <p>The address range, in CIDR notation.</p>
    #
    # @return [Types::WithdrawByoipCidrOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.withdraw_byoip_cidr(
    #     cidr: 'Cidr' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::WithdrawByoipCidrOutput
    #   resp.data.byoip_cidr #=> Types::ByoipCidr
    #   resp.data.byoip_cidr.cidr #=> String
    #   resp.data.byoip_cidr.state #=> String, one of ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"]
    #   resp.data.byoip_cidr.events #=> Array<ByoipCidrEvent>
    #   resp.data.byoip_cidr.events[0] #=> Types::ByoipCidrEvent
    #   resp.data.byoip_cidr.events[0].message #=> String
    #   resp.data.byoip_cidr.events[0].timestamp #=> Time
    #
    def withdraw_byoip_cidr(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::WithdrawByoipCidrInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::WithdrawByoipCidrInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::WithdrawByoipCidr
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ByoipCidrNotFoundException, Errors::InvalidArgumentException, Errors::InternalServiceErrorException, Errors::AccessDeniedException, Errors::IncorrectCidrStateException]),
        data_parser: Parsers::WithdrawByoipCidr
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::WithdrawByoipCidr,
        stubs: @stubs,
        params_class: Params::WithdrawByoipCidrOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :withdraw_byoip_cidr
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
