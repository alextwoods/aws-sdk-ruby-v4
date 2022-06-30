# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Route53RecoveryControlConfig
  # An API client for Route53RecoveryControlConfig
  # See {#initialize} for a full list of supported configuration options
  # <p>Recovery Control Configuration API Reference for Amazon Route 53 Application Recovery Controller</p>
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
    def initialize(config = AWS::SDK::Route53RecoveryControlConfig::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Create a new cluster. A cluster is a set of redundant Regional endpoints against which you can run API calls to update or get the state of one or more routing controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints (one for each supported Amazon Web Services Region) that you can use with API calls to the cluster data plane.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the cluster.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     client_token: 'ClientToken',
    #     cluster_name: 'ClusterName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_endpoints #=> Array<ClusterEndpoint>
    #   resp.data.cluster.cluster_endpoints[0] #=> Types::ClusterEndpoint
    #   resp.data.cluster.cluster_endpoints[0].endpoint #=> String
    #   resp.data.cluster.cluster_endpoints[0].region #=> String
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new control panel. A control panel represents a group of routing controls that can be changed together in a single transaction. You can use a control panel to centrally view the operational status of applications across your organization, and trigger multi-app failovers in a single transaction, for example, to fail over an Availability Zone or Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateControlPanelInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster for the control panel.</p>
    #
    # @option params [String] :control_panel_name
    #   <p>The name of the control panel.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the control panel.</p>
    #
    # @return [Types::CreateControlPanelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_control_panel(
    #     client_token: 'ClientToken',
    #     cluster_arn: 'ClusterArn', # required
    #     control_panel_name: 'ControlPanelName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateControlPanelOutput
    #   resp.data.control_panel #=> Types::ControlPanel
    #   resp.data.control_panel.cluster_arn #=> String
    #   resp.data.control_panel.control_panel_arn #=> String
    #   resp.data.control_panel.default_control_panel #=> Boolean
    #   resp.data.control_panel.name #=> String
    #   resp.data.control_panel.routing_control_count #=> Integer
    #   resp.data.control_panel.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def create_control_panel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateControlPanelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateControlPanelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateControlPanel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CreateControlPanel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateControlPanel,
        stubs: @stubs,
        params_class: Params::CreateControlPanelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_control_panel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new routing control.</p> <p>A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing.</p> <p>To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoutingControlInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that includes the routing control.</p>
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>
    #
    # @option params [String] :routing_control_name
    #   <p>The name of the routing control.</p>
    #
    # @return [Types::CreateRoutingControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_routing_control(
    #     client_token: 'ClientToken',
    #     cluster_arn: 'ClusterArn', # required
    #     control_panel_arn: 'ControlPanelArn',
    #     routing_control_name: 'RoutingControlName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRoutingControlOutput
    #   resp.data.routing_control #=> Types::RoutingControl
    #   resp.data.routing_control.control_panel_arn #=> String
    #   resp.data.routing_control.name #=> String
    #   resp.data.routing_control.routing_control_arn #=> String
    #   resp.data.routing_control.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def create_routing_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoutingControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoutingControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoutingControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CreateRoutingControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoutingControl,
        stubs: @stubs,
        params_class: Params::CreateRoutingControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_routing_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a safety rule in a control panel. Safety rules let you add safeguards around changing routing control states, and for enabling and disabling routing controls, to help prevent unexpected outcomes.</p> <p>There are two types of safety rules: assertion rules and gating rules.</p> <p>Assertion rule: An assertion rule enforces that, when you change a routing control state, that a certain criteria is met. For example, the criteria might be that at least one routing control state is On after the transation so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p> <p>Gating rule: A gating rule lets you configure a gating routing control as an overall "on/off" switch for a group of routing controls. Or, you can configure more complex gating scenarios, for example by configuring multiple gating routing controls.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html">Safety rules</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSafetyRuleInput}.
    #
    # @option params [NewAssertionRule] :assertion_rule
    #   <p>The assertion rule requested.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #
    # @option params [NewGatingRule] :gating_rule
    #   <p>The gating rule requested.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the safety rule.</p>
    #
    # @return [Types::CreateSafetyRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_safety_rule(
    #     assertion_rule: {
    #       asserted_controls: [
    #         'member'
    #       ], # required
    #       control_panel_arn: 'ControlPanelArn', # required
    #       name: 'Name', # required
    #       rule_config: {
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: 'ATLEAST' # required - accepts ["ATLEAST", "AND", "OR"]
    #       }, # required
    #       wait_period_ms: 1 # required
    #     },
    #     client_token: 'ClientToken',
    #     gating_rule: {
    #       control_panel_arn: 'ControlPanelArn', # required
    #       name: 'Name', # required
    #       wait_period_ms: 1 # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSafetyRuleOutput
    #   resp.data.assertion_rule #=> Types::AssertionRule
    #   resp.data.assertion_rule.asserted_controls #=> Array<String>
    #   resp.data.assertion_rule.asserted_controls[0] #=> String
    #   resp.data.assertion_rule.control_panel_arn #=> String
    #   resp.data.assertion_rule.name #=> String
    #   resp.data.assertion_rule.rule_config #=> Types::RuleConfig
    #   resp.data.assertion_rule.rule_config.inverted #=> Boolean
    #   resp.data.assertion_rule.rule_config.threshold #=> Integer
    #   resp.data.assertion_rule.rule_config.type #=> String, one of ["ATLEAST", "AND", "OR"]
    #   resp.data.assertion_rule.safety_rule_arn #=> String
    #   resp.data.assertion_rule.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.assertion_rule.wait_period_ms #=> Integer
    #   resp.data.gating_rule #=> Types::GatingRule
    #   resp.data.gating_rule.control_panel_arn #=> String
    #   resp.data.gating_rule.gating_controls #=> Array<String>
    #   resp.data.gating_rule.name #=> String
    #   resp.data.gating_rule.rule_config #=> Types::RuleConfig
    #   resp.data.gating_rule.safety_rule_arn #=> String
    #   resp.data.gating_rule.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.gating_rule.target_controls #=> Array<String>
    #   resp.data.gating_rule.wait_period_ms #=> Integer
    #
    def create_safety_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSafetyRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSafetyRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSafetyRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateSafetyRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSafetyRule,
        stubs: @stubs,
        params_class: Params::CreateSafetyRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_safety_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that you're deleting.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster_arn: 'ClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCluster
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCluster,
        stubs: @stubs,
        params_class: Params::DeleteClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a control panel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteControlPanelInput}.
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #
    # @return [Types::DeleteControlPanelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_control_panel(
    #     control_panel_arn: 'ControlPanelArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteControlPanelOutput
    #
    def delete_control_panel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteControlPanelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteControlPanelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteControlPanel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteControlPanel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteControlPanel,
        stubs: @stubs,
        params_class: Params::DeleteControlPanelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_control_panel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a routing control.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoutingControlInput}.
    #
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control that you're deleting.</p>
    #
    # @return [Types::DeleteRoutingControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_routing_control(
    #     routing_control_arn: 'RoutingControlArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoutingControlOutput
    #
    def delete_routing_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoutingControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoutingControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoutingControl
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteRoutingControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoutingControl,
        stubs: @stubs,
        params_class: Params::DeleteRoutingControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_routing_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a safety rule.</p>/&gt;
    #
    # @param [Hash] params
    #   See {Types::DeleteSafetyRuleInput}.
    #
    # @option params [String] :safety_rule_arn
    #   <p>The ARN of the safety rule.</p>
    #
    # @return [Types::DeleteSafetyRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_safety_rule(
    #     safety_rule_arn: 'SafetyRuleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSafetyRuleOutput
    #
    def delete_safety_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSafetyRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSafetyRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSafetyRule
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteSafetyRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSafetyRule,
        stubs: @stubs,
        params_class: Params::DeleteSafetyRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_safety_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Display the details about a cluster. The response includes the cluster name, endpoints, status, and Amazon Resource Name (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    # @return [Types::DescribeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster(
    #     cluster_arn: 'ClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_endpoints #=> Array<ClusterEndpoint>
    #   resp.data.cluster.cluster_endpoints[0] #=> Types::ClusterEndpoint
    #   resp.data.cluster.cluster_endpoints[0].endpoint #=> String
    #   resp.data.cluster.cluster_endpoints[0].region #=> String
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def describe_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCluster
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DescribeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCluster,
        stubs: @stubs,
        params_class: Params::DescribeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays details about a control panel.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeControlPanelInput}.
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #
    # @return [Types::DescribeControlPanelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_control_panel(
    #     control_panel_arn: 'ControlPanelArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeControlPanelOutput
    #   resp.data.control_panel #=> Types::ControlPanel
    #   resp.data.control_panel.cluster_arn #=> String
    #   resp.data.control_panel.control_panel_arn #=> String
    #   resp.data.control_panel.default_control_panel #=> Boolean
    #   resp.data.control_panel.name #=> String
    #   resp.data.control_panel.routing_control_count #=> Integer
    #   resp.data.control_panel.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def describe_control_panel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeControlPanelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeControlPanelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeControlPanel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DescribeControlPanel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeControlPanel,
        stubs: @stubs,
        params_class: Params::DescribeControlPanelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_control_panel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays details about a routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.</p> <p>To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRoutingControlInput}.
    #
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #
    # @return [Types::DescribeRoutingControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_routing_control(
    #     routing_control_arn: 'RoutingControlArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRoutingControlOutput
    #   resp.data.routing_control #=> Types::RoutingControl
    #   resp.data.routing_control.control_panel_arn #=> String
    #   resp.data.routing_control.name #=> String
    #   resp.data.routing_control.routing_control_arn #=> String
    #   resp.data.routing_control.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def describe_routing_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRoutingControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRoutingControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRoutingControl
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DescribeRoutingControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRoutingControl,
        stubs: @stubs,
        params_class: Params::DescribeRoutingControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_routing_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a safety rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSafetyRuleInput}.
    #
    # @option params [String] :safety_rule_arn
    #   <p>The ARN of the safety rule.</p>
    #
    # @return [Types::DescribeSafetyRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_safety_rule(
    #     safety_rule_arn: 'SafetyRuleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSafetyRuleOutput
    #   resp.data.assertion_rule #=> Types::AssertionRule
    #   resp.data.assertion_rule.asserted_controls #=> Array<String>
    #   resp.data.assertion_rule.asserted_controls[0] #=> String
    #   resp.data.assertion_rule.control_panel_arn #=> String
    #   resp.data.assertion_rule.name #=> String
    #   resp.data.assertion_rule.rule_config #=> Types::RuleConfig
    #   resp.data.assertion_rule.rule_config.inverted #=> Boolean
    #   resp.data.assertion_rule.rule_config.threshold #=> Integer
    #   resp.data.assertion_rule.rule_config.type #=> String, one of ["ATLEAST", "AND", "OR"]
    #   resp.data.assertion_rule.safety_rule_arn #=> String
    #   resp.data.assertion_rule.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.assertion_rule.wait_period_ms #=> Integer
    #   resp.data.gating_rule #=> Types::GatingRule
    #   resp.data.gating_rule.control_panel_arn #=> String
    #   resp.data.gating_rule.gating_controls #=> Array<String>
    #   resp.data.gating_rule.name #=> String
    #   resp.data.gating_rule.rule_config #=> Types::RuleConfig
    #   resp.data.gating_rule.safety_rule_arn #=> String
    #   resp.data.gating_rule.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.gating_rule.target_controls #=> Array<String>
    #   resp.data.gating_rule.wait_period_ms #=> Integer
    #
    def describe_safety_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSafetyRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSafetyRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSafetyRule
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSafetyRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSafetyRule,
        stubs: @stubs,
        params_class: Params::DescribeSafetyRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_safety_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of all Amazon Route 53 health checks associated with a specific routing control.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedRoute53HealthChecksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #
    # @return [Types::ListAssociatedRoute53HealthChecksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_route53_health_checks(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     routing_control_arn: 'RoutingControlArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedRoute53HealthChecksOutput
    #   resp.data.health_check_ids #=> Array<String>
    #   resp.data.health_check_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_route53_health_checks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedRoute53HealthChecksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedRoute53HealthChecksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedRoute53HealthChecks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAssociatedRoute53HealthChecks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedRoute53HealthChecks,
        stubs: @stubs,
        params_class: Params::ListAssociatedRoute53HealthChecksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_route53_health_checks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of all the clusters in an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersOutput
    #   resp.data.clusters #=> Array<Cluster>
    #   resp.data.clusters[0] #=> Types::Cluster
    #   resp.data.clusters[0].cluster_arn #=> String
    #   resp.data.clusters[0].cluster_endpoints #=> Array<ClusterEndpoint>
    #   resp.data.clusters[0].cluster_endpoints[0] #=> Types::ClusterEndpoint
    #   resp.data.clusters[0].cluster_endpoints[0].endpoint #=> String
    #   resp.data.clusters[0].cluster_endpoints[0].region #=> String
    #   resp.data.clusters[0].name #=> String
    #   resp.data.clusters[0].status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.next_token #=> String
    #
    def list_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusters
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusters,
        stubs: @stubs,
        params_class: Params::ListClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of control panels in an account or in a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListControlPanelsInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of a cluster.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListControlPanelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_panels(
    #     cluster_arn: 'ClusterArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListControlPanelsOutput
    #   resp.data.control_panels #=> Array<ControlPanel>
    #   resp.data.control_panels[0] #=> Types::ControlPanel
    #   resp.data.control_panels[0].cluster_arn #=> String
    #   resp.data.control_panels[0].control_panel_arn #=> String
    #   resp.data.control_panels[0].default_control_panel #=> Boolean
    #   resp.data.control_panels[0].name #=> String
    #   resp.data.control_panels[0].routing_control_count #=> Integer
    #   resp.data.control_panels[0].status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.next_token #=> String
    #
    def list_control_panels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListControlPanelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListControlPanelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListControlPanels
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListControlPanels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListControlPanels,
        stubs: @stubs,
        params_class: Params::ListControlPanelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_control_panels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoutingControlsInput}.
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListRoutingControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_controls(
    #     control_panel_arn: 'ControlPanelArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoutingControlsOutput
    #   resp.data.next_token #=> String
    #   resp.data.routing_controls #=> Array<RoutingControl>
    #   resp.data.routing_controls[0] #=> Types::RoutingControl
    #   resp.data.routing_controls[0].control_panel_arn #=> String
    #   resp.data.routing_controls[0].name #=> String
    #   resp.data.routing_controls[0].routing_control_arn #=> String
    #   resp.data.routing_controls[0].status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSafetyRulesInput}.
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListSafetyRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_safety_rules(
    #     control_panel_arn: 'ControlPanelArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSafetyRulesOutput
    #   resp.data.next_token #=> String
    #   resp.data.safety_rules #=> Array<Rule>
    #   resp.data.safety_rules[0] #=> Types::Rule
    #   resp.data.safety_rules[0].assertion #=> Types::AssertionRule
    #   resp.data.safety_rules[0].assertion.asserted_controls #=> Array<String>
    #   resp.data.safety_rules[0].assertion.asserted_controls[0] #=> String
    #   resp.data.safety_rules[0].assertion.control_panel_arn #=> String
    #   resp.data.safety_rules[0].assertion.name #=> String
    #   resp.data.safety_rules[0].assertion.rule_config #=> Types::RuleConfig
    #   resp.data.safety_rules[0].assertion.rule_config.inverted #=> Boolean
    #   resp.data.safety_rules[0].assertion.rule_config.threshold #=> Integer
    #   resp.data.safety_rules[0].assertion.rule_config.type #=> String, one of ["ATLEAST", "AND", "OR"]
    #   resp.data.safety_rules[0].assertion.safety_rule_arn #=> String
    #   resp.data.safety_rules[0].assertion.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.safety_rules[0].assertion.wait_period_ms #=> Integer
    #   resp.data.safety_rules[0].gating #=> Types::GatingRule
    #   resp.data.safety_rules[0].gating.control_panel_arn #=> String
    #   resp.data.safety_rules[0].gating.gating_controls #=> Array<String>
    #   resp.data.safety_rules[0].gating.name #=> String
    #   resp.data.safety_rules[0].gating.rule_config #=> Types::RuleConfig
    #   resp.data.safety_rules[0].gating.safety_rule_arn #=> String
    #   resp.data.safety_rules[0].gating.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.safety_rules[0].gating.target_controls #=> Array<String>
    #   resp.data.safety_rules[0].gating.wait_period_ms #=> Integer
    #
    def list_safety_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSafetyRulesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSafetyRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSafetyRules
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListSafetyRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSafetyRules,
        stubs: @stubs,
        params_class: Params::ListSafetyRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_safety_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
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
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Adds a tag to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Removes a tag from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys for the tags to be removed.</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Updates a control panel. The only update you can make to a control panel is to change the name of the control panel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateControlPanelInput}.
    #
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #
    # @option params [String] :control_panel_name
    #   <p>The name of the control panel.</p>
    #
    # @return [Types::UpdateControlPanelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_control_panel(
    #     control_panel_arn: 'ControlPanelArn', # required
    #     control_panel_name: 'ControlPanelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateControlPanelOutput
    #   resp.data.control_panel #=> Types::ControlPanel
    #   resp.data.control_panel.cluster_arn #=> String
    #   resp.data.control_panel.control_panel_arn #=> String
    #   resp.data.control_panel.default_control_panel #=> Boolean
    #   resp.data.control_panel.name #=> String
    #   resp.data.control_panel.routing_control_count #=> Integer
    #   resp.data.control_panel.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def update_control_panel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateControlPanelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateControlPanelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateControlPanel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::UpdateControlPanel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateControlPanel,
        stubs: @stubs,
        params_class: Params::UpdateControlPanelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_control_panel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a routing control. You can only update the name of the routing control. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingControlInput}.
    #
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #
    # @option params [String] :routing_control_name
    #   <p>The name of the routing control.</p>
    #
    # @return [Types::UpdateRoutingControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_control(
    #     routing_control_arn: 'RoutingControlArn', # required
    #     routing_control_name: 'RoutingControlName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingControlOutput
    #   resp.data.routing_control #=> Types::RoutingControl
    #   resp.data.routing_control.control_panel_arn #=> String
    #   resp.data.routing_control.name #=> String
    #   resp.data.routing_control.routing_control_arn #=> String
    #   resp.data.routing_control.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #
    def update_routing_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::UpdateRoutingControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingControl,
        stubs: @stubs,
        params_class: Params::UpdateRoutingControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a safety rule (an assertion rule or gating rule). You can only update the name and the waiting period for a safety rule. To make other updates, delete the safety rule and create a new one.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSafetyRuleInput}.
    #
    # @option params [AssertionRuleUpdate] :assertion_rule_update
    #   <p>The assertion rule to update.</p>
    #
    # @option params [GatingRuleUpdate] :gating_rule_update
    #   <p>The gating rule to update.</p>
    #
    # @return [Types::UpdateSafetyRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_safety_rule(
    #     assertion_rule_update: {
    #       name: 'Name', # required
    #       safety_rule_arn: 'SafetyRuleArn', # required
    #       wait_period_ms: 1 # required
    #     },
    #     gating_rule_update: {
    #       name: 'Name', # required
    #       safety_rule_arn: 'SafetyRuleArn', # required
    #       wait_period_ms: 1 # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSafetyRuleOutput
    #   resp.data.assertion_rule #=> Types::AssertionRule
    #   resp.data.assertion_rule.asserted_controls #=> Array<String>
    #   resp.data.assertion_rule.asserted_controls[0] #=> String
    #   resp.data.assertion_rule.control_panel_arn #=> String
    #   resp.data.assertion_rule.name #=> String
    #   resp.data.assertion_rule.rule_config #=> Types::RuleConfig
    #   resp.data.assertion_rule.rule_config.inverted #=> Boolean
    #   resp.data.assertion_rule.rule_config.threshold #=> Integer
    #   resp.data.assertion_rule.rule_config.type #=> String, one of ["ATLEAST", "AND", "OR"]
    #   resp.data.assertion_rule.safety_rule_arn #=> String
    #   resp.data.assertion_rule.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.assertion_rule.wait_period_ms #=> Integer
    #   resp.data.gating_rule #=> Types::GatingRule
    #   resp.data.gating_rule.control_panel_arn #=> String
    #   resp.data.gating_rule.gating_controls #=> Array<String>
    #   resp.data.gating_rule.name #=> String
    #   resp.data.gating_rule.rule_config #=> Types::RuleConfig
    #   resp.data.gating_rule.safety_rule_arn #=> String
    #   resp.data.gating_rule.status #=> String, one of ["PENDING", "DEPLOYED", "PENDING_DELETION"]
    #   resp.data.gating_rule.target_controls #=> Array<String>
    #   resp.data.gating_rule.wait_period_ms #=> Integer
    #
    def update_safety_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSafetyRuleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSafetyRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSafetyRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateSafetyRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSafetyRule,
        stubs: @stubs,
        params_class: Params::UpdateSafetyRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_safety_rule
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
