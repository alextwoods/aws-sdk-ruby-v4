# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Route53RecoveryCluster
  # An API client for ToggleCustomerAPI
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the Routing Control (Recovery Cluster) API Reference Guide for Amazon Route 53 Application Recovery Controller.</p>
  # 			      <p>With Route 53 ARC, you can use routing control with extreme reliability to
  # 			recover applications by rerouting traffic across
  # 			Availability Zones or Amazon Web Services Regions. Routing controls are simple on/off switches hosted
  # 			on a highly available cluster in Route 53 ARC. A cluster provides a set of five redundant Regional endpoints against which you
  # 			can run API calls to get or update the state of routing controls. To implement failover, you set
  # 			one routing control On and another one Off, to reroute traffic from one Availability Zone or Amazon Web Services Region
  # 			to another. </p>
  # 			      <p>
  #             <i>Be aware that you must specify a Regional endpoint for a cluster when you work with API cluster operations
  # 				to get or update routing control states in Route 53 ARC.</i> In addition, you must specify the US West (Oregon) Region
  # 				for Route 53 ARC API calls. For example, use the parameter <code>--region us-west-2</code> with AWS CLI commands.
  # 				For more information, see
  # 				<a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.api.html">
  # 					Get and update routing control states using the API</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
  # 		       <p>This API guide includes information about the API operations for how to get and update routing control states
  # 			in Route 53 ARC. To work with routing control in Route 53 ARC, you must first create the required components (clusters, control
  # 			panels, and routing controls) using the recovery cluster configuration API.</p>
  # 			      <p>For more information about working with routing control in Route 53 ARC, see the following:</p>
  # 		       <ul>
  #             <li>
  # 				           <p>Create clusters, control panels, and routing controls by using API operations. For more information,
  # 					see the <a href="https://docs.aws.amazon.com/recovery-cluster/latest/api/">Recovery Control Configuration API Reference Guide for Amazon Route 53 Application Recovery Controller</a>.</p>
  # 			         </li>
  #             <li>
  #                <p>Learn about the components in recovery control, including clusters,
  # 				routing controls, and control panels, and how to work with Route 53 ARC in the Amazon Web Services console. For more
  # 				information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/introduction-components.html#introduction-components-routing">
  # 					Recovery control components</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
  #             </li>
  #             <li>
  # 				           <p>Route 53 ARC also provides readiness checks that continually audit resources to help make sure that your
  # 					applications are scaled and ready to handle failover traffic. For more information about
  # 					the related API operations, see the <a href="https://docs.aws.amazon.com/recovery-readiness/latest/api/">Recovery Readiness API Reference Guide for Amazon Route 53 Application Recovery Controller</a>.</p>
  # 			         </li>
  #             <li>
  # 				           <p>For more information about creating resilient applications and preparing for
  # 					recovery readiness with Route 53 ARC, see the <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/">Amazon Route 53 Application Recovery Controller Developer Guide</a>.</p>
  # 			         </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::Route53RecoveryCluster::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Get the state for a routing control. A routing control is a simple on/off switch that you
    # 				can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    # 				the state is Off, traffic does not flow. </p>
    # 			      <p>Before you can create a routing control, you must first create a cluster, and then host the control
    # 				in a control panel on the cluster. For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html">
    # 					Create routing control structures</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.
    # 				You access one of the endpoints for the cluster to get or update the routing control state to
    # 				redirect traffic for your application. </p>
    # 			      <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations
    # 				to get or update routing control states in Route 53 ARC.</i>
    #          </p>
    # 			      <p>To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    # 				in sequence, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html">API examples</a>
    # 				in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # 			      <p>Learn more about working with routing controls in the following topics in the
    # 				Amazon Route 53 Application Recovery Controller Developer Guide:</p>
    # 			      <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 					Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with
    # 					routing controls in Route 53 ARC</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetRoutingControlStateInput}.
    #
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for the routing control that you want to get the state for.</p>
    #
    # @return [Types::GetRoutingControlStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_routing_control_state(
    #     routing_control_arn: 'RoutingControlArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoutingControlStateOutput
    #   resp.data.routing_control_arn #=> String
    #   resp.data.routing_control_state #=> String, one of ["On", "Off"]
    #   resp.data.routing_control_name #=> String
    #
    def get_routing_control_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoutingControlStateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoutingControlStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoutingControlState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::EndpointTemporarilyUnavailableException]),
        data_parser: Parsers::GetRoutingControlState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRoutingControlState,
        stubs: @stubs,
        params_class: Params::GetRoutingControlStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_routing_control_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List routing control names and Amazon Resource Names (ARNs), as well as the routing control
    # 			state for each routing control, along with the control panel name and control panel ARN for the routing controls.
    # 			If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists
    # 			all the routing controls in the cluster.</p>
    # 		       <p>A routing control is a simple on/off switch in Route 53 ARC that you
    # 			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    # 			the state is Off, traffic does not flow.</p>
    # 		       <p>Before you can create a routing control, you must first create a cluster, and then host the control
    # 			in a control panel on the cluster. For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html">
    # 				Create routing control structures</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.
    # 			You access one of the endpoints for the cluster to get or update the routing control state to
    # 			redirect traffic for your application. </p>
    # 		       <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations
    # 			to use this API operation to list routing controls in Route 53 ARC.</i>
    #          </p>
    # 		       <p>Learn more about working with routing controls in the following topics in the
    # 			Amazon Route 53 Application Recovery Controller Developer Guide:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 				Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with
    # 				routing controls in Route 53 ARC</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListRoutingControlsInput}.
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel of the routing controls to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of routing controls objects that you want to return with this call. The default value is 500.</p>
    #
    # @return [Types::ListRoutingControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_controls(
    #     control_panel_arn: 'ControlPanelArn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoutingControlsOutput
    #   resp.data.routing_controls #=> Array<RoutingControl>
    #   resp.data.routing_controls[0] #=> Types::RoutingControl
    #   resp.data.routing_controls[0].control_panel_arn #=> String
    #   resp.data.routing_controls[0].control_panel_name #=> String
    #   resp.data.routing_controls[0].routing_control_arn #=> String
    #   resp.data.routing_controls[0].routing_control_name #=> String
    #   resp.data.routing_controls[0].routing_control_state #=> String, one of ["On", "Off"]
    #   resp.data.next_token #=> String
    #
    def list_routing_controls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoutingControlsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoutingControlsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoutingControls
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::EndpointTemporarilyUnavailableException]),
        data_parser: Parsers::ListRoutingControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoutingControls,
        stubs: @stubs,
        params_class: Params::ListRoutingControlsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_routing_controls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set the state of the routing control to reroute traffic. You can set the value to be On or
    # 			Off. When the state is On, traffic flows to a cell. When the state is Off, traffic does not
    # 			flow.</p>
    # 			      <p>With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing
    # 				control state updates that help prevent unexpected outcomes, like fail open traffic routing. However,
    # 				there are scenarios when you might want to bypass the routing control safeguards that are enforced with
    # 				safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery,
    # 				and one or more safety rules might be unexpectedly preventing you from updating a routing control state to
    # 				reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change
    # 				a routing control state and fail over your application.</p>
    # 			      <p>The <code>SafetyRulesToOverride</code> property enables you override one or more safety rules and
    # 				update routing control states. For more information, see
    # 				<a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    # 					Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # 			      <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations
    # 				to get or update routing control states in Route 53 ARC.</i>
    #          </p>
    # 			      <p>To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    # 				in sequence, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html">API examples</a>
    # 				in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # 			      <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 					Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with routing controls overall</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingControlStateInput}.
    #
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for the routing control that you want to update the state for.</p>
    #
    # @option params [String] :routing_control_state
    #   <p>The state of the routing control. You can set the value to be On or Off.</p>
    #
    # @option params [Array<String>] :safety_rules_to_override
    #   <p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of
    #   			a routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated
    #   			by commas.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    #   			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #
    # @return [Types::UpdateRoutingControlStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_control_state(
    #     routing_control_arn: 'RoutingControlArn', # required
    #     routing_control_state: 'On', # required - accepts ["On", "Off"]
    #     safety_rules_to_override: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingControlStateOutput
    #
    def update_routing_control_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingControlStateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingControlStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingControlState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::EndpointTemporarilyUnavailableException]),
        data_parser: Parsers::UpdateRoutingControlState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingControlState,
        stubs: @stubs,
        params_class: Params::UpdateRoutingControlStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_control_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set multiple routing control states. You can set the value for each state to be On or Off.
    # 			When the state is On, traffic flows to a cell. When it's Off, traffic does not
    # 			flow.</p>
    # 			      <p>With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing
    # 				control state updates that help prevent unexpected outcomes, like fail open traffic routing. However,
    # 				there are scenarios when you might want to bypass the routing control safeguards that are enforced with
    # 				safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery,
    # 				and one or more safety rules might be unexpectedly preventing you from updating a routing control state to
    # 				reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change
    # 				a routing control state and fail over your application.</p>
    # 			      <p>The <code>SafetyRulesToOverride</code> property enables you override one or more safety rules and
    # 				update routing control states. For more information, see
    # 				<a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    # 					Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>			
    #          <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations
    # 				to get or update routing control states in Route 53 ARC.</i>
    #          </p>
    # 			      <p>To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    # 				in sequence, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html">API examples</a>
    # 				in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # 			      <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 					Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with routing controls overall</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingControlStatesInput}.
    #
    # @option params [Array<UpdateRoutingControlStateEntry>] :update_routing_control_state_entries
    #   <p>A set of routing control entries that you want to update.</p>
    #
    # @option params [Array<String>] :safety_rules_to_override
    #   <p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing
    #   			control states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated
    #   			by commas.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    #   			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #
    # @return [Types::UpdateRoutingControlStatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_control_states(
    #     update_routing_control_state_entries: [
    #       {
    #         routing_control_arn: 'RoutingControlArn', # required
    #         routing_control_state: 'On' # required - accepts ["On", "Off"]
    #       }
    #     ], # required
    #     safety_rules_to_override: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingControlStatesOutput
    #
    def update_routing_control_states(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingControlStatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingControlStatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingControlStates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceLimitExceededException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::EndpointTemporarilyUnavailableException]),
        data_parser: Parsers::UpdateRoutingControlStates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingControlStates,
        stubs: @stubs,
        params_class: Params::UpdateRoutingControlStatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_control_states
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
