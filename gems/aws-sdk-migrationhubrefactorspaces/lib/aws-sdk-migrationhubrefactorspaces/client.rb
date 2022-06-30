# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MigrationHubRefactorSpaces
  # An API client for RefactorSpaces
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Web Services Migration Hub Refactor Spaces</fullname>
  #
  #          <p>This API reference provides descriptions, syntax, and other details about each of the
  #       actions and data types for Amazon Web Services Migration Hub Refactor Spaces (Refactor Spaces). The topic for each action shows the API
  #       request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to
  #       access an API that is tailored to the programming language or platform that you're using. For
  #       more information, see <a href="https://aws.amazon.com/tools/#SDKs">Amazon Web Services SDKs</a>.</p>
  #          <p>To share Refactor Spaces environments with other Amazon Web Services accounts or with Organizations
  #       and their OUs, use Resource Access Manager's <code>CreateResourceShare</code> API. See <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> in the <i>Amazon Web Services RAM API Reference</i>.</p>
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
    def initialize(config = AWS::SDK::MigrationHubRefactorSpaces::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the
    #       applications created inside the environment, regardless of the account that creates the
    #       application. Refactor Spaces provisions an Amazon API Gateway, API Gateway VPC link, and
    #         Network Load Balancer for the application proxy inside your account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name to use for the application. </p>
    #
    # @option params [String] :environment_identifier
    #   <p>The unique identifier of the environment.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the virtual private cloud (VPC).</p>
    #
    # @option params [String] :proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #
    # @option params [ApiGatewayProxyInput] :api_gateway_proxy
    #   <p>A wrapper object holding the API Gateway endpoint type and stage name for the
    #         proxy. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'Name', # required
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     vpc_id: 'VpcId', # required
    #     proxy_type: 'API_GATEWAY', # required - accepts ["API_GATEWAY"]
    #     api_gateway_proxy: {
    #       endpoint_type: 'REGIONAL', # accepts ["REGIONAL", "PRIVATE"]
    #       stage_name: 'StageName'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.created_by_account_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.vpc_id #=> String
    #   resp.data.proxy_type #=> String, one of ["API_GATEWAY"]
    #   resp.data.api_gateway_proxy #=> Types::ApiGatewayProxyInput
    #   resp.data.api_gateway_proxy.endpoint_type #=> String, one of ["REGIONAL", "PRIVATE"]
    #   resp.data.api_gateway_proxy.stage_name #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and all
    #       Refactor Spaces applications, services, and routes created within the environment. They are referred
    #       to as the <i>environment owner</i>. The environment owner has cross-account
    #       visibility and control of Refactor Spaces resources that are added to the environment by other
    #       accounts that the environment is shared with. When creating an environment, Refactor Spaces
    #       provisions a transit gateway in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    #
    # @option params [String] :description
    #   <p>The description of the environment.</p>
    #
    # @option params [String] :network_fabric_type
    #   <p>The network fabric type of the environment.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    # @return [Types::CreateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment(
    #     name: 'Name', # required
    #     description: 'Description',
    #     network_fabric_type: 'TRANSIT_GATEWAY', # required - accepts ["TRANSIT_GATEWAY"]
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.network_fabric_type #=> String, one of ["TRANSIT_GATEWAY"]
    #   resp.data.owner_account_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def create_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironment,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the
    #       environment owner, regardless of which account creates the route. Routes target a service in
    #       the application. If an application does not have any routes, then the first route must be
    #       created as a <code>DEFAULT</code>
    #             <code>RouteType</code>.</p>
    #          <p>When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic
    #       to the target service as follows:</p>
    #          <ul>
    #             <li>
    #                <p>If the service has a URL endpoint, and the endpoint resolves to a private IP address,
    #           Refactor Spaces routes traffic using the API Gateway VPC link. </p>
    #             </li>
    #             <li>
    #                <p>If the service has a URL endpoint, and the endpoint resolves to a public IP address,
    #           Refactor Spaces routes traffic over the public internet.</p>
    #             </li>
    #             <li>
    #                <p>If the service has an Lambda function endpoint, then Refactor Spaces
    #           configures the Lambda function's resource policy to allow the application's
    #             API Gateway to invoke the function.</p>
    #             </li>
    #          </ul>
    #          <p>A one-time health check is performed on the service when the route is created. If the
    #       health check fails, the route transitions to <code>FAILED</code>, and no traffic is sent to
    #       the service.</p>
    #          <p>For Lambda functions, the Lambda function state is checked. If the
    #       function is not active, the function configuration is updated so that Lambda
    #       resources are provisioned. If the Lambda state is <code>Failed</code>, then the
    #       route creation fails. For more information, see the <a href="https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State">GetFunctionConfiguration's State response parameter</a> in the <i>Lambda Developer Guide</i>.</p>
    #          <p>For public URLs, a connection is opened to the public endpoint. If the URL is not
    #       reachable, the health check fails. For private URLs, a target group is created and the target
    #       group health check is run.</p>
    #          <p>The <code>HealthCheckProtocol</code>, <code>HealthCheckPort</code>, and
    #         <code>HealthCheckPath</code> are the same protocol, port, and path specified in the URL or
    #       health URL, if used. All other settings use the default values, as described in <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html">Health checks
    #         for your target groups</a>. The health check is considered successful if at least one
    #       target within the target group transitions to a healthy state.</p>
    #          <p>Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs, publicly-signed
    #       certificates are supported. Private Certificate Authorities (CAs) are permitted only if the
    #       CA's domain is publicly resolvable.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRouteInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which the route is created.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application within which the route is being created.</p>
    #
    # @option params [String] :service_identifier
    #   <p>The ID of the service in which the route is created. Traffic that matches this route is
    #         forwarded to this service.</p>
    #
    # @option params [String] :route_type
    #   <p>The route type of the route. <code>DEFAULT</code> indicates that all traffic that does not
    #         match another route is forwarded to the default route. Applications must have a default route
    #         before any other routes can be created. <code>URI_PATH</code> indicates a route that is based
    #         on a URI path.</p>
    #
    # @option params [UriPathRouteInput] :uri_path_route
    #   <p>The configuration for the URI path route type. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    # @return [Types::CreateRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     service_identifier: 'ServiceIdentifier', # required
    #     route_type: 'DEFAULT', # required - accepts ["DEFAULT", "URI_PATH"]
    #     uri_path_route: {
    #       source_path: 'SourcePath', # required
    #       activation_state: 'ACTIVE', # required - accepts ["ACTIVE"]
    #       member_methods: [
    #         'DELETE' # accepts ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    #       ],
    #       include_child_paths: false
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRouteOutput
    #   resp.data.route_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.created_by_account_id #=> String
    #   resp.data.route_type #=> String, one of ["DEFAULT", "URI_PATH"]
    #   resp.data.service_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.uri_path_route #=> Types::UriPathRouteInput
    #   resp.data.uri_path_route.source_path #=> String
    #   resp.data.uri_path_route.activation_state #=> String, one of ["ACTIVE"]
    #   resp.data.uri_path_route.member_methods #=> Array<String>
    #   resp.data.uri_path_route.member_methods[0] #=> String, one of ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    #   resp.data.uri_path_route.include_child_paths #=> Boolean
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def create_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRouteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoute,
        stubs: @stubs,
        params_class: Params::CreateRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the
    #       environment owner, regardless of which account in the environment creates the service.
    #       Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda
    #       function endpoint.</p>
    #          <important>
    #             <p>If an Amazon Web Services resource is launched in a service VPC, and you want it to be
    #         accessible to all of an environment’s services with VPCs and routes, apply the
    #           <code>RefactorSpacesSecurityGroup</code> to the resource. Alternatively, to add more
    #         cross-account constraints, apply your own security group.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service.</p>
    #
    # @option params [String] :description
    #   <p>The description of the service.</p>
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which the service is created.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application which the service is created.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC.</p>
    #
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint to use for the service. The type can be a URL in a VPC or an Lambda function.</p>
    #
    # @option params [UrlEndpointInput] :url_endpoint
    #   <p>The configuration for the URL endpoint type.</p>
    #
    # @option params [LambdaEndpointInput] :lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    # @return [Types::CreateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service(
    #     name: 'Name', # required
    #     description: 'Description',
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     vpc_id: 'VpcId',
    #     endpoint_type: 'LAMBDA', # required - accepts ["LAMBDA", "URL"]
    #     url_endpoint: {
    #       url: 'Url', # required
    #       health_url: 'HealthUrl'
    #     },
    #     lambda_endpoint: {
    #       arn: 'Arn' # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceOutput
    #   resp.data.service_id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.created_by_account_id #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.vpc_id #=> String
    #   resp.data.endpoint_type #=> String, one of ["LAMBDA", "URL"]
    #   resp.data.url_endpoint #=> Types::UrlEndpointInput
    #   resp.data.url_endpoint.url #=> String
    #   resp.data.url_endpoint.health_url #=> String
    #   resp.data.lambda_endpoint #=> Types::LambdaEndpointInput
    #   resp.data.lambda_endpoint.arn #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def create_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateService,
        stubs: @stubs,
        params_class: Params::CreateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first
    #       delete any services or routes within the application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #   resp.data.last_updated_time #=> Time
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first
    #       delete any applications and services within the environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @return [Types::DeleteEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment(
    #     environment_identifier: 'EnvironmentIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.last_updated_time #=> Time
    #
    def delete_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the resource policy set for the environment. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :identifier
    #   <p>Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     identifier: 'Identifier' # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces route.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment to delete the route from.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application to delete the route from.</p>
    #
    # @option params [String] :route_identifier
    #   <p>The ID of the route to delete.</p>
    #
    # @return [Types::DeleteRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     route_identifier: 'RouteIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteOutput
    #   resp.data.route_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.service_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #   resp.data.last_updated_time #=> Time
    #
    def delete_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoute,
        stubs: @stubs,
        params_class: Params::DeleteRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces service. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment that the service is in.</p>
    #
    # @option params [String] :application_identifier
    #   <p>Deletes a Refactor Spaces service.</p>
    #            <note>
    #               <p>The <code>RefactorSpacesSecurityGroup</code> security group must be removed from all
    #           Amazon Web Services resources in the virtual private cloud (VPC) prior to deleting a service with a URL
    #           endpoint in a VPC.</p>
    #            </note>
    #
    # @option params [String] :service_identifier
    #   <p>The ID of the service to delete.</p>
    #
    # @return [Types::DeleteServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     service_identifier: 'ServiceIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceOutput
    #   resp.data.service_id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.last_updated_time #=> Time
    #
    def delete_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteService,
        stubs: @stubs,
        params_class: Params::DeleteServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application.</p>
    #
    # @return [Types::GetApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.created_by_account_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.vpc_id #=> String
    #   resp.data.proxy_type #=> String, one of ["API_GATEWAY"]
    #   resp.data.api_gateway_proxy #=> Types::ApiGatewayProxyConfig
    #   resp.data.api_gateway_proxy.proxy_url #=> String
    #   resp.data.api_gateway_proxy.api_gateway_id #=> String
    #   resp.data.api_gateway_proxy.vpc_link_id #=> String
    #   resp.data.api_gateway_proxy.nlb_arn #=> String
    #   resp.data.api_gateway_proxy.nlb_name #=> String
    #   resp.data.api_gateway_proxy.endpoint_type #=> String, one of ["REGIONAL", "PRIVATE"]
    #   resp.data.api_gateway_proxy.stage_name #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.error #=> Types::ErrorResponse
    #   resp.data.error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.error.message #=> String
    #   resp.data.error.account_id #=> String
    #   resp.data.error.resource_identifier #=> String
    #   resp.data.error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.error.additional_details #=> Hash<String, String>
    #   resp.data.error.additional_details['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplication,
        stubs: @stubs,
        params_class: Params::GetApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces environment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    #
    # @return [Types::GetEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment(
    #     environment_identifier: 'EnvironmentIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.network_fabric_type #=> String, one of ["TRANSIT_GATEWAY"]
    #   resp.data.owner_account_id #=> String
    #   resp.data.transit_gateway_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.error #=> Types::ErrorResponse
    #   resp.data.error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.error.message #=> String
    #   resp.data.error.account_id #=> String
    #   resp.data.error.resource_identifier #=> String
    #   resp.data.error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.error.additional_details #=> Hash<String, String>
    #   resp.data.error.additional_details['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def get_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironment,
        stubs: @stubs,
        params_class: Params::GetEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the resource-based permission policy that is set for the given environment. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePolicyInput}.
    #
    # @option params [String] :identifier
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    #
    # @return [Types::GetResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy(
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePolicyOutput
    #   resp.data.policy #=> String
    #
    def get_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourcePolicy,
        stubs: @stubs,
        params_class: Params::GetResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces route.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRouteInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application. </p>
    #
    # @option params [String] :route_identifier
    #   <p>The ID of the route.</p>
    #
    # @return [Types::GetRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     route_identifier: 'RouteIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRouteOutput
    #   resp.data.route_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.created_by_account_id #=> String
    #   resp.data.route_type #=> String, one of ["DEFAULT", "URI_PATH"]
    #   resp.data.service_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.source_path #=> String
    #   resp.data.member_methods #=> Array<String>
    #   resp.data.member_methods[0] #=> String, one of ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    #   resp.data.include_child_paths #=> Boolean
    #   resp.data.path_resource_to_id #=> Hash<String, String>
    #   resp.data.path_resource_to_id['key'] #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.error #=> Types::ErrorResponse
    #   resp.data.error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.error.message #=> String
    #   resp.data.error.account_id #=> String
    #   resp.data.error.resource_identifier #=> String
    #   resp.data.error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.error.additional_details #=> Hash<String, String>
    #   resp.data.error.additional_details['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def get_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRouteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRoute,
        stubs: @stubs,
        params_class: Params::GetRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces service. </p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application.</p>
    #
    # @option params [String] :service_identifier
    #   <p>The ID of the service.</p>
    #
    # @return [Types::GetServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     service_identifier: 'ServiceIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceOutput
    #   resp.data.service_id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.created_by_account_id #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.vpc_id #=> String
    #   resp.data.endpoint_type #=> String, one of ["LAMBDA", "URL"]
    #   resp.data.url_endpoint #=> Types::UrlEndpointConfig
    #   resp.data.url_endpoint.url #=> String
    #   resp.data.url_endpoint.health_url #=> String
    #   resp.data.lambda_endpoint #=> Types::LambdaEndpointConfig
    #   resp.data.lambda_endpoint.arn #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.error #=> Types::ErrorResponse
    #   resp.data.error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.error.message #=> String
    #   resp.data.error.account_id #=> String
    #   resp.data.error.resource_identifier #=> String
    #   resp.data.error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.error.additional_details #=> Hash<String, String>
    #   resp.data.error.additional_details['key'] #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def get_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetService,
        stubs: @stubs,
        params_class: Params::GetServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment. </p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.application_summary_list #=> Array<ApplicationSummary>
    #   resp.data.application_summary_list[0] #=> Types::ApplicationSummary
    #   resp.data.application_summary_list[0].name #=> String
    #   resp.data.application_summary_list[0].arn #=> String
    #   resp.data.application_summary_list[0].owner_account_id #=> String
    #   resp.data.application_summary_list[0].created_by_account_id #=> String
    #   resp.data.application_summary_list[0].application_id #=> String
    #   resp.data.application_summary_list[0].environment_id #=> String
    #   resp.data.application_summary_list[0].vpc_id #=> String
    #   resp.data.application_summary_list[0].proxy_type #=> String, one of ["API_GATEWAY"]
    #   resp.data.application_summary_list[0].api_gateway_proxy #=> Types::ApiGatewayProxySummary
    #   resp.data.application_summary_list[0].api_gateway_proxy.proxy_url #=> String
    #   resp.data.application_summary_list[0].api_gateway_proxy.api_gateway_id #=> String
    #   resp.data.application_summary_list[0].api_gateway_proxy.vpc_link_id #=> String
    #   resp.data.application_summary_list[0].api_gateway_proxy.nlb_arn #=> String
    #   resp.data.application_summary_list[0].api_gateway_proxy.nlb_name #=> String
    #   resp.data.application_summary_list[0].api_gateway_proxy.endpoint_type #=> String, one of ["REGIONAL", "PRIVATE"]
    #   resp.data.application_summary_list[0].api_gateway_proxy.stage_name #=> String
    #   resp.data.application_summary_list[0].state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #   resp.data.application_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.application_summary_list[0].tags['key'] #=> String
    #   resp.data.application_summary_list[0].error #=> Types::ErrorResponse
    #   resp.data.application_summary_list[0].error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.application_summary_list[0].error.message #=> String
    #   resp.data.application_summary_list[0].error.account_id #=> String
    #   resp.data.application_summary_list[0].error.resource_identifier #=> String
    #   resp.data.application_summary_list[0].error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.application_summary_list[0].error.additional_details #=> Hash<String, String>
    #   resp.data.application_summary_list[0].error.additional_details['key'] #=> String
    #   resp.data.application_summary_list[0].last_updated_time #=> Time
    #   resp.data.application_summary_list[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplications,
        stubs: @stubs,
        params_class: Params::ListApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual private clouds (VPCs) that are part of the
    #       environment. </p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentVpcsInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @return [Types::ListEnvironmentVpcsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_vpcs(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentVpcsOutput
    #   resp.data.environment_vpc_list #=> Array<EnvironmentVpc>
    #   resp.data.environment_vpc_list[0] #=> Types::EnvironmentVpc
    #   resp.data.environment_vpc_list[0].environment_id #=> String
    #   resp.data.environment_vpc_list[0].vpc_id #=> String
    #   resp.data.environment_vpc_list[0].account_id #=> String
    #   resp.data.environment_vpc_list[0].cidr_blocks #=> Array<String>
    #   resp.data.environment_vpc_list[0].cidr_blocks[0] #=> String
    #   resp.data.environment_vpc_list[0].vpc_name #=> String
    #   resp.data.environment_vpc_list[0].last_updated_time #=> Time
    #   resp.data.environment_vpc_list[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_environment_vpcs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentVpcsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentVpcsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironmentVpcs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEnvironmentVpcs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironmentVpcs,
        stubs: @stubs,
        params_class: Params::ListEnvironmentVpcsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environment_vpcs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller
    #       account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @return [Types::ListEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentsOutput
    #   resp.data.environment_summary_list #=> Array<EnvironmentSummary>
    #   resp.data.environment_summary_list[0] #=> Types::EnvironmentSummary
    #   resp.data.environment_summary_list[0].name #=> String
    #   resp.data.environment_summary_list[0].arn #=> String
    #   resp.data.environment_summary_list[0].description #=> String
    #   resp.data.environment_summary_list[0].environment_id #=> String
    #   resp.data.environment_summary_list[0].network_fabric_type #=> String, one of ["TRANSIT_GATEWAY"]
    #   resp.data.environment_summary_list[0].owner_account_id #=> String
    #   resp.data.environment_summary_list[0].transit_gateway_id #=> String
    #   resp.data.environment_summary_list[0].state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.environment_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.environment_summary_list[0].tags['key'] #=> String
    #   resp.data.environment_summary_list[0].error #=> Types::ErrorResponse
    #   resp.data.environment_summary_list[0].error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.environment_summary_list[0].error.message #=> String
    #   resp.data.environment_summary_list[0].error.account_id #=> String
    #   resp.data.environment_summary_list[0].error.resource_identifier #=> String
    #   resp.data.environment_summary_list[0].error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.environment_summary_list[0].error.additional_details #=> Hash<String, String>
    #   resp.data.environment_summary_list[0].error.additional_details['key'] #=> String
    #   resp.data.environment_summary_list[0].last_updated_time #=> Time
    #   resp.data.environment_summary_list[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironments,
        stubs: @stubs,
        params_class: Params::ListEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application. </p>
    #
    # @param [Hash] params
    #   See {Types::ListRoutesInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @return [Types::ListRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routes(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoutesOutput
    #   resp.data.route_summary_list #=> Array<RouteSummary>
    #   resp.data.route_summary_list[0] #=> Types::RouteSummary
    #   resp.data.route_summary_list[0].route_id #=> String
    #   resp.data.route_summary_list[0].arn #=> String
    #   resp.data.route_summary_list[0].owner_account_id #=> String
    #   resp.data.route_summary_list[0].created_by_account_id #=> String
    #   resp.data.route_summary_list[0].route_type #=> String, one of ["DEFAULT", "URI_PATH"]
    #   resp.data.route_summary_list[0].service_id #=> String
    #   resp.data.route_summary_list[0].application_id #=> String
    #   resp.data.route_summary_list[0].environment_id #=> String
    #   resp.data.route_summary_list[0].source_path #=> String
    #   resp.data.route_summary_list[0].member_methods #=> Array<String>
    #   resp.data.route_summary_list[0].member_methods[0] #=> String, one of ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    #   resp.data.route_summary_list[0].include_child_paths #=> Boolean
    #   resp.data.route_summary_list[0].path_resource_to_id #=> Hash<String, String>
    #   resp.data.route_summary_list[0].path_resource_to_id['key'] #=> String
    #   resp.data.route_summary_list[0].state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #   resp.data.route_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.route_summary_list[0].tags['key'] #=> String
    #   resp.data.route_summary_list[0].error #=> Types::ErrorResponse
    #   resp.data.route_summary_list[0].error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.route_summary_list[0].error.message #=> String
    #   resp.data.route_summary_list[0].error.account_id #=> String
    #   resp.data.route_summary_list[0].error.resource_identifier #=> String
    #   resp.data.route_summary_list[0].error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.route_summary_list[0].error.additional_details #=> Hash<String, String>
    #   resp.data.route_summary_list[0].error.additional_details['key'] #=> String
    #   resp.data.route_summary_list[0].last_updated_time #=> Time
    #   resp.data.route_summary_list[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoutesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoutes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoutes,
        stubs: @stubs,
        params_class: Params::ListRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application. </p>
    #
    # @param [Hash] params
    #   See {Types::ListServicesInput}.
    #
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    #
    # @option params [String] :application_identifier
    #   <p>The ID of the application. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @return [Types::ListServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services(
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     application_identifier: 'ApplicationIdentifier', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicesOutput
    #   resp.data.service_summary_list #=> Array<ServiceSummary>
    #   resp.data.service_summary_list[0] #=> Types::ServiceSummary
    #   resp.data.service_summary_list[0].service_id #=> String
    #   resp.data.service_summary_list[0].name #=> String
    #   resp.data.service_summary_list[0].arn #=> String
    #   resp.data.service_summary_list[0].owner_account_id #=> String
    #   resp.data.service_summary_list[0].created_by_account_id #=> String
    #   resp.data.service_summary_list[0].description #=> String
    #   resp.data.service_summary_list[0].environment_id #=> String
    #   resp.data.service_summary_list[0].application_id #=> String
    #   resp.data.service_summary_list[0].vpc_id #=> String
    #   resp.data.service_summary_list[0].endpoint_type #=> String, one of ["LAMBDA", "URL"]
    #   resp.data.service_summary_list[0].url_endpoint #=> Types::UrlEndpointSummary
    #   resp.data.service_summary_list[0].url_endpoint.url #=> String
    #   resp.data.service_summary_list[0].url_endpoint.health_url #=> String
    #   resp.data.service_summary_list[0].lambda_endpoint #=> Types::LambdaEndpointSummary
    #   resp.data.service_summary_list[0].lambda_endpoint.arn #=> String
    #   resp.data.service_summary_list[0].state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.service_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.service_summary_list[0].tags['key'] #=> String
    #   resp.data.service_summary_list[0].error #=> Types::ErrorResponse
    #   resp.data.service_summary_list[0].error.code #=> String, one of ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #   resp.data.service_summary_list[0].error.message #=> String
    #   resp.data.service_summary_list[0].error.account_id #=> String
    #   resp.data.service_summary_list[0].error.resource_identifier #=> String
    #   resp.data.service_summary_list[0].error.resource_type #=> String, one of ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #   resp.data.service_summary_list[0].error.additional_details #=> Hash<String, String>
    #   resp.data.service_summary_list[0].error.additional_details['key'] #=> String
    #   resp.data.service_summary_list[0].last_updated_time #=> Time
    #   resp.data.service_summary_list[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServices,
        stubs: @stubs,
        params_class: Params::ListServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags of a resource. The caller account must be the same as the resource’s
    #         <code>OwnerAccountId</code>. Listing tags in other accounts is not supported. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy
    #       must contain the same actions and condition statements as the
    #         <code>arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment</code>
    #       permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the policy is being attached.
    #       </p>
    #
    # @option params [String] :policy
    #   <p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidResourcePolicyException]),
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

    # <p>Removes the tags of a given resource. Tags are metadata which can be used to manage a
    #       resource. To tag a resource, the caller account must be the same as the resource’s
    #         <code>OwnerAccountId</code>. Tagging resources in other accounts is not supported.</p>
    #          <note>
    #             <p>Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an
    #         environment’s transit gateway.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The new or modified tags for the resource. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata which can be used to
    #       manage a resource. To untag a resource, the caller account must be the same as the resource’s
    #         <code>OwnerAccountId</code>. Untagging resources across accounts is not supported. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys of the tags to be removed from the resource. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
